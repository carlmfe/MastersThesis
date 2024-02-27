import matplotlib.pyplot as plt
from matplotlib import rc
from collections.abc import Iterable

from slha_utils import *
from smoking_utils import *
from plot_utils import *


neu_pids = [1000022, 1000023, 1000025, 1000035] # Neutralino PDG codes

LHAPDF_ROOT = '/usr/local/share/LHAPDF/' # Root for LHAPDF folder

def ensure_iterable(obj) -> Iterable:
    '''Ensures that obj is wrapped as an iterable if not already iterable.'''
    try:
        _ = iter(obj)
        res = obj
    except TypeError:
        res = (obj, )
    return res

def compare2prospino(slha_filepath, processes):
    processes = ensure_iterable(processes)

    results = dict()
    results['smoking'] = dict()
    results['prospino'] = dict()
    results['resummino'] = dict()

    queue = list()

    tmpresfile_smoking = mktmpfile(extension='.out')
    tmpresfile_resummino = mktmpfile(extension='.out')
    for proc in processes:
        # Unpack the outgoing particle PDG codes
        pid1, pid2 = proc

        # To make sure that the subprocesses do not write to the same temporary files, I give them temporary file stems that are different
        # queue smoking job
        queue.append(f'-c smoking --pid1 {pid1} --pid2 {pid2} -r {slha_filepath} -o {tmpresfile_smoking} --tempstem smkng_{pid1}_{pid2}_ -P {PDF_SET} -S {S}')
        if VERBOSE: queue[-1] += ' -v'
        # queue resummino job
        queue.append(f'-c resummino --pid1 {pid1} --pid2 {pid2} -r {slha_filepath} -o {tmpresfile_resummino} --tempstem rsmmn_{pid1}_{pid2}_ -P {PDF_SET} -S {S}')
        if VERBOSE: queue[-1] += ' -v'

    # Now we can loop over all processes to be run
    # run_proc.py makes the correct smoking/resummino calls and writes results in common file format
    subprocs = [ subprocess.Popen(('python run_proc.py ' + query).split()) for query in queue ]
    for subproc in subprocs:
        # This ensures all subprocesses are done before continuing
        subproc.wait()

    prospino_results = read_prospino_result(slha_filepath)
    smoking_results = read_results(tmpresfile_smoking)
    resummino_results = read_results(tmpresfile_resummino)

    # Clearing temporary .out files
    cleartmpfiles('.out')

    # Read all results and fill results dictionaries
    for proc in processes:
        pid1, pid2 = proc
        proc_handle = str(pid1)[-2:] + '+' + str(pid2)[-2:]
        pid_handle = pid2sym[pid1] + '+' + pid2sym[pid2]

        results['smoking'][pid_handle] = smoking_results[proc_handle]
        results['resummino'][pid_handle] = resummino_results[proc_handle]
        results['prospino'][pid_handle] = prospino_results[proc_handle]

    return results

def compare_pdf_sets(slha_filepath, pdf_sets, processes, code='smoking'):
    processes = ensure_iterable(processes)

    original_pdf_set = PDF_SET

    results = dict()
    pid_handles = list()

    for pdf_set in pdf_sets:
        set_pdf_set(pdf_set)

        results[pdf_set] = dict()

        for proc in processes:
            tmpresfile = mktmpfile(extension='.out')

            # Unpack the outgoing particle PDG codes
            pid1, pid2 = proc
            pid_handle = pid2sym[pid1] + '+' + pid2sym[pid2]

            if code == 'smoking':
                proc_handle = f'{pid1-1000000}+{pid2-1000000}'
                run_cross_section(slha_filepath, tmpresfile, pid1, pid2)
                results[pdf_set][pid_handle] = read_smoking_result(tmpresfile)[proc_handle]

            if code == 'resummino':
                run_resummino(slha_filepath, (pid1, pid2), tmpresfile)
                results[pdf_set][pid_handle] = 1e3*float(read_resummino_result(tmpresfile)['lo'])

            os.remove(tmpresfile)

    set_pdf_set(original_pdf_set)

    fig, ax = plt.subplots()

    ax.set_yscale('log')

    for pdf_set in pdf_sets:
        ax.scatter(results[pdf_set].keys(), results[pdf_set].values())

    return results

def compare2resummino(slha_filepath: str, proc: tuple[int], param_vals: list[float], tnum: bool=False) -> dict[str, dict[any, float]]:
    '''Runs smoking and resummino for given proc using slha file located at slha_filepath replacing any
    '@a' in slha file with values listed in param_vals and returns results in dictionary ordered as
    results['smoking'] = dict[param_val -> cross_section]
    results['resummino'] = dict[param_val -> cross_section]'''

    # Unpack the outgoing particle PDG codes
    pid1, pid2 = proc

    # Set up results dictionary
    results = dict()
    results['smoking'] = dict()
    results['resummino'] = dict()

    tmpresfile_smoking = mktmpfile('.smoking') # temporary file to store smoking results
    tmpresfile_resummino = mktmpfile('.resummino') # temporary file to store resummino results


    '''
    Setting up a simple parallelization using subprocess module.
    First, I will loop over all the run calls that will need to be made, and queue them in the queue variable.
    Then all the commands to be run are delegated to subprocess.Popen instances for parallelization.
    '''

    queue = list() # Holds all commands to be run

    # One smoking call and one resummino call will be made for every parameter value
    for param_val in param_vals:
        tmpslhafile = mktmpfile(extension='.slha') # Temporary file for storing .slha file with @a replaced with current param_val

        copy_slha_with_replacement(slha_filepath, tmpslhafile, ('@a', str(param_val)))

        # To make sure that the subprocesses do not write to the same temporary files, I give them temporary file stems that are different
        # queue smoking job
        queue.append(f'-c smoking --pid1 {pid1} --pid2 {pid2} -r {tmpslhafile} -o {tmpresfile_smoking} -l {param_val} --tempstem smkng{param_val}_ -P {PDF_SET} -S {S}')
        if VERBOSE: queue[-1] += ' -v'
        # queue resummino job
        queue.append(f'-c resummino --pid1 {pid1} --pid2 {pid2} -r {tmpslhafile} -o {tmpresfile_resummino} -l {param_val} --tempstem rsmmn{param_val}_ -P {PDF_SET} -S {S}')
        if VERBOSE: queue[-1] += ' -v'

    # Now we can loop over all processes to be run
    # run_proc.py makes the correct smoking/resummino calls and writes results in common file format
    subprocs = [ subprocess.Popen(('python run_proc.py ' + query).split()) for query in queue ]
    for subproc in subprocs:
        # This ensures all subprocesses are done before continuing
        subproc.wait()

    # Clearing temporary .slha and .out files
    cleartmpfiles('.slha')
    cleartmpfiles('.out')

    # Read all results and fill results dictionaries
    for param_val in param_vals:
        results['smoking'] = read_results(tmpresfile_smoking)
        results['resummino'] = read_results(tmpresfile_resummino)

    # Clearing temporary result files
    cleartmpfiles('.smoking')
    cleartmpfiles('.resummino')

    return results

def compare_numeric_analytic(slha_filepath, processes):
    processes = ensure_iterable(processes)

    results = dict()
    results['analytic'] = dict()
    results['numeric'] = dict()

    queue = list()

    tmpresfile_analytic = mktmpfile(extension='.out')
    tmpresfile_numeric = mktmpfile(extension='.out')

    for proc in processes:
        # Unpack the outgoing particle PDG codes
        pid1, pid2 = proc

        # To make sure that the subprocesses do not write to the same temporary files, I give them temporary file stems that are different
        # queue analytic job
        queue.append(f'-c smoking --pid1 {pid1} --pid2 {pid2} -r {slha_filepath} -o {tmpresfile_analytic} --tempstem nltc{pid1}_{pid2}_ -P {PDF_SET} -S {S}')
        if VERBOSE: queue[-1] += ' -v'
        # queue numeric job
        queue.append(f'-c smoking --tnum --pid1 {pid1} --pid2 {pid2} -r {slha_filepath} -o {tmpresfile_numeric} --tempstem nmrc{pid1}_{pid2}_ -P {PDF_SET} -S {S}')
        if VERBOSE: queue[-1] += ' -v'

    # Now we can loop over all processes to be run
    # run_proc.py makes the correct smoking/resummino calls and writes results in common file format
    subprocs = [ subprocess.Popen(('python run_proc.py ' + query).split()) for query in queue ]
    for subproc in subprocs:
        # This ensures all subprocesses are done before continuing
        subproc.wait()

    analytic_results = read_results(tmpresfile_analytic)
    numeric_results = read_results(tmpresfile_numeric)

    # Clearing temporary .out files
    cleartmpfiles('.out')

    # Read all results and fill results dictionaries
    for proc in processes:
        pid1, pid2 = proc
        proc_handle = str(pid1)[-2:] + '+' + str(pid2)[-2:]
        pid_handle = pid2sym[pid1] + '+' + pid2sym[pid2]

        results['analytic'][pid_handle] = analytic_results[proc_handle]
        results['numeric'][pid_handle] = numeric_results[proc_handle]

    return results

def savefig_with_info(filename, info=None):
    if filename[-4:] != '.pdf':
        filename = filename + ".pdf"

    plt.savefig(filename, format='pdf')

    if info is not None:
        infofile = filename[:-4] + ".info"
        
        outfile = open(infofile, 'w')
        outfile.write(INFO_HEADER.replace('@a', filename))
        outfile.write('\n')
        for key, value in info.items():
            outfile.write(f'{key}, {value}\n')
        outfile.close()

INFO_HEADER = "###This file lists command line arguments used to create plot '@a'.###\n"

if __name__ == '__main__':
    import os
    import argparse

    SLHA_ROOT = 'slha/'
    PLOT_ROOT = 'plots/'

    available_pdf_sets = [ f.name for f in os.scandir(LHAPDF_ROOT) if f.is_dir() ]

    parser = argparse.ArgumentParser()
    parser.add_argument('--pid1', dest='pid1', default=1000022, choices=neu_pids, type=int)
    parser.add_argument('--pid2', dest='pid2', default=1000023, choices=neu_pids, type=int)
    parser.add_argument('-P', '--PDF', dest='pdf_set', default='PDF4LHC21_40_pdfas', choices=available_pdf_sets)
    parser.add_argument('-S', '--center-of-mass-energy', dest='S', default=13600, type=float)
    parser.add_argument('-v', '--verbose', dest='verbose', action='store_true')
    clargs = parser.parse_args()
    plot_info = clargs.__dict__


    pid1 = int(clargs.pid1)
    pid2 = int(clargs.pid2)

    set_verbosity(clargs.verbose)
    set_pdf_set(clargs.pdf_set)
    set_centre_of_mass_energy(clargs.S)

    # Must import smoking_utils again to make use of updated values for values that are set
    # TODO: Do this another, cleaner way perhaps?
    from smoking_utils import *

    '''
    slha_filename = 'wino.slha'
    # slha_filename = 'hino.slha'
    param_range = [n*100 for n in range(1, 16)]
    res = compare2resummino(SLHA_ROOT+slha_filename, (pid1, pid2), param_range, tnum=False)
    xlabel = r'$\chi^0$ mass [GeV]'
    plot_info["slha"] = slha_filename
    plot_info["param"] = "Neutralino mass [GeV]"
    plot_info["param_range"] = param_range

    # slha_filename = 'wino_sqmass.slha'
    # param_range = [1e3 + (1e5-1e3)*(n-1)/14 for n in range(1, 16)]
    # res = compare2resummino(SLHA_ROOT+slha_filename, (pid1, pid2), param_range, tnum=False)
    # xlabel = 'Squark mass [GeV]'
    # plot_info["slha"] = slha_filename
    # plot_info["param"] = "Neutralino mass [GeV]"
    # plot_info["param_range"] = param_range

    Z_mass = 9.11870000E+01
    W_mass = 8.04961219E+01

    # slha_filename = 'wino_Zmass.slha'
    # # slha_filename = 'hino_Zmass.slha'
    # param_range = [(W_mass/Z_mass + (1.3-W_mass/Z_mass)*n/14)*Z_mass for n in range(15)]
    # res = compare2resummino(SLHA_ROOT+slha_filename, (pid1, pid2), param_range, tnum=False)
    # xlabel = r'$m_Z$ [GeV]'
    # plot_info["slha"] = slha_filename
    # plot_info["param"] = "Z-mass [GeV]"
    # plot_info["param_range"] = param_range

    # # slha_filename = 'wino_Wmass.slha'
    # slha_filename = 'hino_Wmass.slha'
    # param_range = [(0.7 + (Z_mass/W_mass-0.7)*n/14)*W_mass for n in range(15)]
    # res = compare2resummino(SLHA_ROOT+slha_filename, (pid1, pid2), param_range, tnum=False)
    # xlabel = r'$m_W$ [GeV]'
    # plot_info["slha"] = slha_filename
    # plot_info["param"] = "Z-mass [GeV]"
    # plot_info["param_range"] = param_range

    # pdg_results = [3673,276.1,58.07,17.94,6.805,2.932,1.378,0.6891,0.3613,0.1966,0.1101,0.06318,0.03699,0.02204,0.01333]

    smoking_keys_sorted = sorted(res['smoking'].keys())
    smoking_results = {key : res['smoking'][key] for key in smoking_keys_sorted}
    resummino_keys_sorted = sorted(res['resummino'].keys())
    resummino_results = {key : res['resummino'][key] for key in resummino_keys_sorted}


    fig, axes = plot_xsec_with_relerrs(smoking_results, resummino_results, labels = ['smoking', 'resummino'], scatter=False)

    axes[0].set_ylabel(r'$\sigma$ [pb]')
    axes[1].set_ylabel(r'relative error')
    axes[1].set_xlabel(xlabel)
    axes[1].set_ylim([0, 1])

    savefig_with_info(PLOT_ROOT+slha_filename.replace('.slha', ''), info=plot_info)
    plt.show()

    '''
    slha_filepath = SMOKING_ROOT + 'EW/1_1_15.slha'
    # slha_filepath = SMOKING_ROOT + 'EW/11_111_3.slha'
    # slha_filepath = SMOKING_ROOT + 'example/sps1a.slha'

    processes = list()
    for i in range(4):
        for j in range(i, 4):
            processes.append((neu_pids[i], neu_pids[j]))

    # compare_pdf_sets(slha_filepath, processes, ['PDF4LHC21_40_pdfas', 'PDF4LHC15_nnlo_100', 'CT14lo'], code='resummino')
    # plt.show()

    res = compare2prospino(slha_filepath, processes)
    plot_info["slha"] =  slha_filepath
    plot_info["processes"] = processes

    fig, axes = plot_xsec_with_relerrs(res['smoking'], [res['resummino'], res['prospino']], labels = ['smoking', 'resummino', 'prospino'])
    axes[1].set_ylim([0, 1])
    axes[0].set_ylabel(r"$\sigma$ [pb]")
    axes[1].set_ylabel("relative error")
    axes[1].set_xlabel("process")
    # savefig_with_info(PLOT_ROOT+'compare_prospino'+slha_filepath.split('/')[-1], info=plot_info)

    # res = compare2prospino(slha_filepath, processes)
    # plot_info["slha"] =  slha_filepath
    # plot_info["processes"] = processes

    # fig, axes = plot_xsec_with_relerrs(res['smoking'], [res['resummino']], labels = ['smoking', 'resummino'])
    # axes[1].set_ylim([0, 1])
    # axes[0].set_ylabel(r"$\sigma$ [pb]")
    # axes[1].set_ylabel("relative error")
    # axes[1].set_xlabel("process")




    # res = compare_numeric_analytic(slha_filepath, processes)
    # plot_info["slha"] = slha_filepath
    # plot_info["processes"] = processes

    # fig, axes = plot_xsec_with_relerrs(res["analytic"], res["numeric"], labels = ["analtyic", "numeric"])
    # axes[1].set_ylim([0, 1])
    # axes[0].set_ylabel(r"$\sigma$ [pb]")
    # axes[1].set_ylabel("relative error")
    # axes[1].set_xlabel("process")


    # savefig_with_info(PLOT_ROOT+'compare_numeric_analytic'+slha_filepath.split('/')[-1], info=plot_info)


    plt.show()
    '''
    '''
