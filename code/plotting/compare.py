
from collections.abc import Iterable
from subprocess import Popen, PIPE
import matplotlib.pyplot as plt
import shutil

from slha_utils import mktmpfile, cleartmpfiles, copy_slha_with_replacement
import smoking_utils as sutils
from plot_utils import process2latex, plot_xsec_with_relerrs


neu_pids = [1000022, 1000023, 1000025, 1000035] # Neutralino PDG codes

LHAPDF_ROOT = '/usr/local/share/LHAPDF/' # Root for LHAPDF folder

def ensure_iterable(obj) -> Iterable:
    '''Ensures that obj is wrapped as an iterable if not already iterable.'''
    try:
        _ = iter(obj)
        return obj
    except TypeError:
        return (obj, )

def ensure_list(obj) -> Iterable:
    '''Ensures that obj is wrapped as an iterable if not already iterable.'''
    if isinstance(obj, list):
        return obj
    return [obj]

def compare2prospino(slha_filepath, processes):

    processes = ensure_iterable(processes)

    results = {}
    results['smoking'] = {}
    # results['prospino'] = {}
    results['resummino'] = {}

    queue = []

    tmpresfile_smoking = mktmpfile(extension='.out')
    tmpresfile_resummino = mktmpfile(extension='.out')
    for proc in processes:
        # Unpack the outgoing particle PDG codes
        pid1, pid2 = proc

        # To make sure that the subprocesses do not write to the same temporary files, I give them temporary file stems that are different
        # queue smoking job
        queue.append(f'-c smoking --pid1 {pid1} --pid2 {pid2} -r {slha_filepath} -o {tmpresfile_smoking} --tempstem smkng_{pid1}_{pid2}_ -P {sutils.PDF_SET} -S {sutils.S}')
        if sutils.VERBOSE: queue[-1] += ' -v'
        # queue resummino job
        queue.append(f'-c resummino --pid1 {pid1} --pid2 {pid2} -r {slha_filepath} -o {tmpresfile_resummino} --tempstem rsmmn_{pid1}_{pid2}_ -P {sutils.PDF_SET} -S {sutils.S}')
        if sutils.VERBOSE: queue[-1] += ' -v'

    # Now we can loop over all processes to be run
    # run_proc.py makes the correct smoking/resummino calls and writes results in common file format
    subprocs = [ Popen(('python run_proc.py ' + query).split(), stdout=PIPE, stderr=PIPE) for query in queue ]
    for subproc in subprocs:
        # This ensures all subprocesses are done before continuing
        subproc.wait()
        if sutils.VERBOSE:
            print(subproc.stdout.read().decode(), end='')
            print(subproc.stderr.read().decode(), end='')


    # prospino_results = sutils.read_prospino_result(slha_filepath)
    smoking_results = sutils.read_results(tmpresfile_smoking, order=0)
    resummino_results = sutils.read_results(tmpresfile_resummino, order=0)

    # Clearing temporary .out files
    cleartmpfiles('.out')

    # Read all results and fill results dictionaries
    for proc in processes:
        pid1, pid2 = proc
        proc_handle = str(pid1)[-2:] + '+' + str(pid2)[-2:]
        pid_handle = process2latex(proc)

        print(smoking_results)
        print(resummino_results)

        results['smoking'][pid_handle] = smoking_results[proc_handle]
        results['resummino'][pid_handle] = resummino_results[proc_handle]
        # results['prospino'][pid_handle] = prospino_results[proc_handle]

    return results

def compare_pdf_sets(slha_filepath, pdf_sets, processes, code=['smoking']):

    processes = ensure_iterable(processes)
    code = ensure_list(code)

    results = {}
    for c in code:
        results[c] = {}

    # Setting up a simple parallelization using subprocess module.
    # First, I will loop over all the run calls that will need to be made,
    # and queue them in the queue variable.
    # Then all the commands to be run are delegated to Popen
    # instances for parallelization.
    queue = []

    tmpresfiles = {c : {proc : mktmpfile('.out') for proc in processes} for c in code}
    for proc in processes:
        # Unpack the outgoing particle PDG codes
        pid1, pid2 = proc
        # for c in code:
        #     results[c][proc] = {}
        for pdf_set in pdf_sets:
            # To make sure that the subprocesses do not write to the same temporary files, I give them temporary file stems that are different.
            for c in code:
                queue.append(f'-c {c} --pid1 {pid1} --pid2 {pid2} -r {slha_filepath} -l {sutils.PDF_SET} -o {tmpresfiles[c][proc]} --tempstem smkng_{pid1}_{pid2}_{sutils.PDF_SET}_ -P {sutils.PDF_SET} -S {sutils.S}')
                if sutils.VERBOSE: queue[-1] += ' -v'

    # Now we can loop over all processes to be run
    # run_proc.py makes the correct smoking/resummino calls and writes results in common file format
    subprocs = [ Popen(('python run_proc.py ' + query).split(), stdout=PIPE, stderr=PIPE) for query in queue ]
    for subproc in subprocs:
        # This ensures all subprocesses are done before continuing
        subproc.wait()
        if sutils.VERBOSE:
            print(subproc.stdout.read().decode(), end='')
            print(subproc.stderr.read().decode(), end='')


    results = {
        c : {process2latex(proc) : sutils.read_results(tmpresfiles[c][proc]) for proc in processes}
        for c in code
    }

    # Clearing temporary .out files
    cleartmpfiles('.out')

    return results

def compare2resummino(slha_filepath: str, proc: tuple[int], param_points: list[dict], tnum: bool=False, NLO: bool=False) -> dict[str, dict[any, float]]:
    '''Runs smoking and resummino for given proc using slha file located at slha_filepath replacing
    any '@a' in slha file with values listed in param_vals and returns results in dictionary ordered
    as
    results['smoking'] = dict[param_val -> cross_section]
    results['resummino'] = dict[param_val -> cross_section]'''

    # Unpack the outgoing particle PDG codes
    pid1, pid2 = proc

    # Set up results dictionary
    results = {}
    results['smoking'] = {}
    results['resummino'] = {}
    results['smoking']['LO'] = {}
    results['resummino']['LO'] = {}
    if NLO:
        results['smoking']['NLO'] = {}
        results['resummino']['NLO'] = {}

    tmpresfile_smoking = mktmpfile('.smoking') # temporary file to store smoking results
    tmpresfile_resummino = mktmpfile('.resummino') # temporary file to store resummino results

    # Setting up a simple parallelization using subprocess module.
    # First, I will loop over all the run calls that will need to be made,
    # and queue them in the queue variable.
    # Then all the commands to be run are delegated to Popen
    # instances for parallelization.
    queue = [] # Holds all commands to be run

    # One smoking call and one resummino call will be made for every parameter value
    for param_point in param_points:
        tmpslhafile = mktmpfile(extension='.out') # Temporary file for storing .slha file with @a replaced with current param_val

        copy_slha_with_replacement(slha_filepath, tmpslhafile, param_point.items())

        param_label = '-'.join([str(param_val) for param_val in param_point.values()])

        # To make sure that the subprocesses do not write to the same temporary files, I give them temporary file stems that are different.
        # queue smoking job
        queue.append(f'-c smoking --pid1 {pid1} --pid2 {pid2} -r {tmpslhafile} -o {tmpresfile_smoking} -l {param_label} --tempstem smkng{param_label}_ -P {sutils.PDF_SET} -S {sutils.S} --error scale')
        if sutils.VERBOSE: queue[-1] += ' -v'
        if NLO: queue[-1] += ' --nlo'
        if tnum: queue[-1] += ' --tnum'
        # queue resummino job
        queue.append(f'-c resummino --pid1 {pid1} --pid2 {pid2} -r {tmpslhafile} -o {tmpresfile_resummino} -l {param_label} --tempstem rsmmn{param_label}_ -P {sutils.PDF_SET} -S {sutils.S} --error scale')
        if sutils.VERBOSE: queue[-1] += ' -v'
        if NLO: queue[-1] += ' --nlo'

    # Now we can loop over all processes to be run
    # run_proc.py makes the correct smoking/resummino calls and writes results in common file format
    subprocs = [ Popen(('python run_proc.py ' + query).split(), stdout=PIPE, stderr=PIPE) for query in queue ]
    for subproc in subprocs:
        # This ensures all subprocesses are done before continuing
        if sutils.VERBOSE:
            print(subproc.stdout.read().decode(), end='')
            print(subproc.stderr.read().decode(), end='')
        subproc.wait()


    # Clearing temporary .slha and .out files
    cleartmpfiles('.slha')
    cleartmpfiles('.out')

    # Read all results and fill results dictionaries
    central_res = sutils.read_results(tmpresfile_smoking, order=0, mu_f = 1.0, mu_r = 1.0)
    upper_res = sutils.read_results(tmpresfile_smoking, order=0, mu_f = 2.0, mu_r = 2.0)
    lower_res = sutils.read_results(tmpresfile_smoking, order=0, mu_f = 0.5, mu_r = 0.5)
    for key in central_res:
        results['smoking']['LO'][key] = (central_res[key], upper_res[key], lower_res[key])
    central_res = sutils.read_results(tmpresfile_resummino, order=0, mu_f = 1.0, mu_r = 1.0)
    upper_res = sutils.read_results(tmpresfile_resummino, order=0, mu_f = 2.0, mu_r = 2.0)
    lower_res = sutils.read_results(tmpresfile_resummino, order=0, mu_f = 0.5, mu_r = 0.5)
    for key in central_res:
        results['resummino']['LO'][key] = (central_res[key], upper_res[key], lower_res[key])

    if NLO:
        central_res = sutils.read_results(tmpresfile_smoking, order=1, mu_f = 1.0, mu_r = 1.0)
        upper_res = sutils.read_results(tmpresfile_smoking, order=1, mu_f = 2.0, mu_r = 2.0)
        lower_res = sutils.read_results(tmpresfile_smoking, order=1, mu_f = 0.5, mu_r = 0.5)
        for key in central_res:
            results['smoking']['NLO'][key] = (central_res[key], upper_res[key], lower_res[key])
        central_res = sutils.read_results(tmpresfile_resummino, order=1, mu_f = 1.0, mu_r = 1.0)
        upper_res = sutils.read_results(tmpresfile_resummino, order=1, mu_f = 2.0, mu_r = 2.0)
        lower_res = sutils.read_results(tmpresfile_resummino, order=1, mu_f = 0.5, mu_r = 0.5)
        for key in central_res:
            results['resummino']['NLO'][key] = (central_res[key], upper_res[key], lower_res[key])



    # results['smoking'] = sutils.read_results(tmpresfile_smoking, order = 1 if NLO else 0, mu_f = 1.0, mu_r = 1.0)
    # results['resummino'] = sutils.read_results(tmpresfile_resummino, order = 1 if NLO else 0, mu_f = 1.0, mu_r = 1.0)

    # Clearing temporary result files
    cleartmpfiles('.smoking')
    cleartmpfiles('.resummino')

    return results

def compare_numeric_analytic(slha_filepath, processes):

    processes = ensure_iterable(processes)

    results = {}
    results['analytic'] = {}
    results['numeric'] = {}

    queue = []

    tmpresfile_analytic = mktmpfile(extension='.out')
    tmpresfile_numeric = mktmpfile(extension='.out')

    for proc in processes:
        # Unpack the outgoing particle PDG codes
        pid1, pid2 = proc

        # To make sure that the subprocesses do not write to the same temporary files, I give them temporary file stems that are different
        # queue analytic job
        queue.append(f'-c smoking --pid1 {pid1} --pid2 {pid2} -r {slha_filepath} -o {tmpresfile_analytic} --tempstem nltc{pid1}_{pid2}_ -P {sutils.PDF_SET} -S {sutils.S}')
        if sutils.VERBOSE: queue[-1] += ' -v'
        # queue numeric job
        queue.append(f'-c smoking --tnum --pid1 {pid1} --pid2 {pid2} -r {slha_filepath} -o {tmpresfile_numeric} --tempstem nmrc{pid1}_{pid2}_ -P {sutils.PDF_SET} -S {sutils.S}')
        if sutils.VERBOSE: queue[-1] += ' -v'

    # Now we can loop over all processes to be run
    # run_proc.py makes the correct smoking/resummino calls and writes results in common file format
    subprocs = [ Popen(('python run_proc.py ' + query).split(), stdout=PIPE, stderr=PIPE) for query in queue ]
    for subproc in subprocs:
        # This ensures all subprocesses are done before continuing
        subproc.wait()
        if sutils.VERBOSE:
            print(subproc.stdout.read().decode(), end='')
            print(subproc.stderr.read().decode(), end='')


    analytic_results = sutils.read_results(tmpresfile_analytic)
    numeric_results = sutils.read_results(tmpresfile_numeric)

    # Clearing temporary .out files
    cleartmpfiles('.out')

    # Read all results and fill results dictionaries
    for proc in processes:
        pid1, pid2 = proc
        proc_handle = str(pid1)[-2:] + '+' + str(pid2)[-2:]
        pid_handle = process2latex(proc)

        results['analytic'][pid_handle] = analytic_results[proc_handle]
        results['numeric'][pid_handle] = numeric_results[proc_handle]

    return results

def run4parameters(code: str, slha_filepath: str, proc: tuple[int], param_points: list[dict], tnum: bool=False) -> dict[str, dict[any, float]]:
    '''Runs using specified code for given proc using slha file located at slha_filepath replacing
    any key in dict-elements of param_points in slha file with values of these dicts, and returns results in dictionary ordered
    as
    results['-'.join(param_point.values())] -> cross_section'''

    # Unpack the outgoing particle PDG codes
    pid1, pid2 = proc

    # Set up results dictionary

    tmpresfile = mktmpfile(extension='.out') # temporary file to store smoking results

    # Setting up a simple parallelization using subprocess module.
    # First, I will loop over all the run calls that will need to be made,
    # and queue them in the queue variable.
    # Then all the commands to be run are delegated to Popen
    # instances for parallelization.
    queue = [] # Holds all commands to be run

    # One smoking call and one resummino call will be made for every parameter value
    for param_point in param_points:
        tmpslhafile = mktmpfile(extension='.in') # Temporary file for storing .slha file with @a replaced with current param_val

        copy_slha_with_replacement(slha_filepath, tmpslhafile, param_point.items())

        param_label = '-'.join([str(param_val) for param_val in param_point.values()])

        # To make sure that the subprocesses do not write to the same temporary files, I give them temporary file stems that are different.
        # queue smoking job
        queue.append(f'-c {code} --pid1 {pid1} --pid2 {pid2} -r {tmpslhafile} -o {tmpresfile} -l {param_label} --tempstem temp{param_label}_ -P {sutils.PDF_SET} -S {sutils.S}')
        if sutils.VERBOSE: queue[-1] += ' -v'
        if tnum: queue[-1] += ' --tnum'

    # Now we can loop over all processes to be run
    # run_proc.py makes the correct smoking/resummino calls and writes results in common file format
    subprocs = [ Popen(('python run_proc.py ' + query).split(), stdout=PIPE, stderr=PIPE) for query in queue ]
    for subproc in subprocs:
        # This ensures all subprocesses are done before continuing
        subproc.wait()
        if sutils.VERBOSE:
            print(subproc.stdout.read().decode(), end='')
            print(subproc.stderr.read().decode(), end='')


    # Clearing temporary .in files
    cleartmpfiles('.in')
    # Read all results and fill results dictionaries
    results = sutils.read_results(tmpresfile)
    # Clearing temporary result files
    cleartmpfiles('.out')

    return results

def run4slha(code: str, slha_filepaths: list[str], proc: tuple[int], tnum: bool=False, cache: str=None, order: int=0, error: str=None) -> dict[str, dict[any, float]]:
    '''Runs using specified code for given proc using slha files located at slha_filepath replacing
    any key in dict-elements of param_points in slha file with values of these dicts, and returns results in dictionary ordered
    as
    results[slha_filename] -> cross_section'''

    # Unpack the outgoing particle PDG codes
    pid1, pid2 = proc

    # Set up results dictionary

    tmpresfile = mktmpfile(extension='.out') # temporary file to store smoking results

    # Setting up a simple parallelization using subprocess module.
    # First, I will loop over all the run calls that will need to be made,
    # and queue them in the queue variable.
    # Then all the commands to be run are delegated to Popen
    # instances for parallelization.
    queue = [] # Holds all commands to be run

    # One smoking call and one resummino call will be made for every parameter value
    for slha_file in slha_filepaths:
        slha_label = '.'.join(slha_file.split('.')[:-1]) # Remove file extension
        slha_label = slha_label.split('/')[-1] # Remove path to slha-file
        # To make sure that the subprocesses do not write to the same temporary files, I give them temporary file stems that are different.
        # queue smoking job
        queue.append(f'-c {code} --pid1 {pid1} --pid2 {pid2} -r {slha_file} -o {tmpresfile} -l {slha_label} --tempstem temp{slha_label}_ -P {sutils.PDF_SET} -S {sutils.S}')
        if sutils.VERBOSE: queue[-1] += ' -v'
        if tnum: queue[-1] += ' --tnum'
        if order == 1: queue[-1] += ' --nlo'
        if error is not None:
            queue[-1] += f' --error {error}'

    # Now we can loop over all processes to be run
    # run_proc.py makes the correct smoking/resummino calls and writes results in common file format
    subprocs = [ Popen(('python run_proc.py ' + query).split(), stdout=PIPE, stderr=PIPE) for query in queue ]
    for subproc in subprocs:
        # This ensures all subprocesses are done before continuing
        subproc.wait()
        if sutils.VERBOSE:
            print(subproc.stdout.read().decode(), end='')
            print(subproc.stderr.read().decode(), end='')


    # Read all results and fill results dictionaries
    results = []
    for o in range(order+1):
        if error == 'scale':
            res_central = sutils.read_results(tmpresfile, order=order, mu_f=1.0, mu_r=1.0)
            res_upper = sutils.read_results(tmpresfile, order=order, mu_f=2.0, mu_r=2.0)
            res_lower = sutils.read_results(tmpresfile, order=order, mu_f=0.5, mu_r=0.5)
            results.append({key : (res_central[key], res_upper[key], res_lower[key]) for key in res_central})
        else:
            results.append(sutils.read_results(tmpresfile, order=order))
    if cache is not None:
        shutil.copy2(tmpresfile, cache)
    # Clearing temporary result files
    cleartmpfiles('.out')

    return results

def run4arguments(code: str, slha_filepath: str, proc: tuple[int], arguments: dict, tnum: bool=False, cache: str=None, order: int=0, error: str=None) -> dict[str, dict[any, float]]:
    '''Runs using specified code for given proc using slha files located at slha_filepath replacing
    any key in dict-elements of param_points in slha file with values of these dicts, and returns results in dictionary ordered
    as
    results[slha_filename] -> cross_section'''

    # Unpack the outgoing particle PDG codes
    pid1, pid2 = proc

    # Set up results dictionary

    tmpresfile = mktmpfile(extension='.out') # temporary file to store smoking results

    # Setting up a simple parallelization using subprocess module.
    # First, I will loop over all the run calls that will need to be made,
    # and queue them in the queue variable.
    # Then all the commands to be run are delegated to Popen
    # instances for parallelization.
    queue = [] # Holds all commands to be run

    # One smoking call and one resummino call will be made for every parameter value
    flag = list(arguments.keys())[0]
    arg_list = list(arguments.values())[0]
    for arg in arg_list:
        arg_label = '_'.join(str(arg).split())
        # To make sure that the subprocesses do not write to the same temporary files, I give them temporary file stems that are different.
        # queue smoking job
        queue.append(f'-c {code} --pid1 {pid1} --pid2 {pid2} -r {slha_filepath} -o {tmpresfile} -l {arg_label} --tempstem temp{arg_label}_ -P {sutils.PDF_SET} -S {sutils.S}')
        queue[-1] += f' {flag} {arg}'
        if sutils.VERBOSE: queue[-1] += ' -v'
        if tnum: queue[-1] += ' --tnum'
        if order == 1: queue[-1] += ' --nlo'
        if error is not None:
            queue[-1] += f' --error {error}'

    # Now we can loop over all processes to be run
    # run_proc.py makes the correct smoking/resummino calls and writes results in common file format
    subprocs = [ Popen(('python run_proc.py ' + query).split(), stdout=PIPE, stderr=PIPE) for query in queue ]
    for subproc in subprocs:
        # This ensures all subprocesses are done before continuing
        subproc.wait()
        if sutils.VERBOSE:
            print(subproc.stdout.read().decode(), end='')
            print(subproc.stderr.read().decode(), end='')


    # Read all results and fill results dictionaries
    results = sutils.read_results(tmpresfile, order=order)
    if cache is not None:
        shutil.copy2(tmpresfile, cache)
    # Clearing temporary result files
    cleartmpfiles('.out')

    return results

def savefig_with_info(filename, info=None):

    if filename[-4:] != '.pdf':
        filename = filename + '.pdf'

    plt.savefig(filename, format='pdf')

    if info is not None:
        infofile = filename[:-4] + '.info'

        outfile = open(infofile, 'w')
        outfile.write(INFO_HEADER.replace('@f', filename))
        outfile.write('\n')
        for key, value in info.items():
            outfile.write(f'{key}, {value}\n')
        outfile.close()

INFO_HEADER = "###This file lists info to recreate plot '@f'.###\n"

if __name__ == '__main__':
    import os
    import argparse
    import pickle
    from math import atan2, pi
    import pyslha

    from slha_utils import idxsort_masses, read_masses
    from smoking_utils import SMOKING_ROOT

    SLHA_ROOT = 'slha/'
    PLOT_ROOT = 'plots/'

    available_pdf_sets = [ f.name for f in os.scandir(LHAPDF_ROOT) if f.is_dir() ]

    parser = argparse.ArgumentParser()
    parser.add_argument('--pid1', dest='pid1', default=1000022, choices=neu_pids, type=int)
    parser.add_argument('--pid2', dest='pid2', default=1000023, choices=neu_pids, type=int)
    parser.add_argument('-P', '--PDF', dest='pdf_set', default='PDF4LHC21_40_pdfas', choices=available_pdf_sets)
    parser.add_argument('-S', '--center-of-mass-energy', dest='S', default=13600, type=float)
    parser.add_argument('-v', '--VERBOSE', dest='VERBOSE', action='store_true')
    parser.add_argument('--nlo', dest='NLO', action='store_true')
    parser.add_argument('--cache', '-c', dest='cache', type=str, default=None)

    clargs = parser.parse_args()
    plot_info = clargs.__dict__


    pid1 = int(clargs.pid1)
    pid2 = int(clargs.pid2)

    sutils.set_verbosity(clargs.VERBOSE)
    sutils.set_pdf_set(clargs.pdf_set)
    sutils.set_centre_of_mass_energy(clargs.S)

    '''
    '''

    # slha_filename = 'pure_scenarios/wino.slha'
    # slha_filename = 'pure_scenarios/hino.slha'
    # cache_name = 'pure_scenarios/hinoMassCache.pkl'
    # param_range = [n*100 for n in range(1, 16)]
    # if os.path.isfile(PLOT_ROOT + cache_name):
    #     with open(PLOT_ROOT + cache_name, 'rb') as cache:
    #         res = pickle.load(cache)
    #         print(f'Loading cache from {PLOT_ROOT + cache_name}')
    # else:
    #     res = compare2resummino(SLHA_ROOT+slha_filename, (pid1, pid2), [{'@a' : str(param_val)} for param_val in param_range], tnum=False, NLO=clargs.NLO)
    #     with open(PLOT_ROOT + cache_name, 'wb') as cache:
    #         pickle.dump(res, cache)
    #         print(f'Caching results to {PLOT_ROOT + cache_name}')

    # xlabel = r'$m_{\tilde{\chi}}$ [GeV]'
    # plot_info['slha'] = slha_filename
    # plot_info['param'] = 'Neutralino mass [GeV]'
    # plot_info['param_range'] = param_range

    # slha_filename = 'muCPV/generated/csps1a_26.slha'
    # cache_name = 'muCPV/csps1aCache.pkl'
    # param_range = [n*100 for n in range(1, 16)]
    # if os.path.isfile(PLOT_ROOT + cache_name):
    #     with open(PLOT_ROOT + cache_name, 'rb') as cache:
    #         res = pickle.load(cache)
    #         print(f'Loading cache from {PLOT_ROOT + cache_name}')
    # else:
    #     res = compare2resummino(SLHA_ROOT+slha_filename, (pid1, pid2), [{'@a' : str(param_val)} for param_val in param_range], tnum=False, NLO=clargs.NLO)
    #     with open(PLOT_ROOT + cache_name, 'wb') as cache:
    #         pickle.dump(res, cache)
    #         print(f'Caching results to {PLOT_ROOT + cache_name}')

    # xlabel = r'$m_{\tilde{\chi}}$ [GeV]'
    # plot_info['slha'] = slha_filename
    # plot_info['param'] = 'Neutralino mass [GeV]'
    # plot_info['param_range'] = param_range

    slha_filename = 'squarkGluinoMass/hino_unnatural/hino_1.slha'
    cache_name = 'squarkGluinoResumminoTest.pkl'
    param_range = [n*100 for n in range(1, 16)]
    if os.path.isfile(PLOT_ROOT + cache_name):
        with open(PLOT_ROOT + cache_name, 'rb') as cache:
            res = pickle.load(cache)
            print(f'Loading cache from {PLOT_ROOT + cache_name}')
    else:
        res = compare2resummino(SLHA_ROOT+slha_filename, (pid1, pid2), [{'@a' : str(param_val)} for param_val in param_range], tnum=False, NLO=clargs.NLO)
        with open(PLOT_ROOT + cache_name, 'wb') as cache:
            pickle.dump(res, cache)
            print(f'Caching results to {PLOT_ROOT + cache_name}')

    xlabel = r'$m_{\tilde{\chi}}$ [GeV]'
    plot_info['slha'] = slha_filename
    plot_info['param'] = 'Neutralino mass [GeV]'
    plot_info['param_range'] = param_range


    XSecWGroup_results = {
        100 : 3673*1e-3,
        200 : 276.1*1e-3,
        300 : 58.07*1e-3,
        400 : 17.94*1e-3,
        500 : 6.805*1e-3,
        600 : 2.932*1e-3,
        700 : 1.378*1e-3,
        800 : 0.6891*1e-3,
        900 : 0.3613*1e-3,
        1000 : 0.1966*1e-3,
        1100 : 0.1101*1e-3,
        1200 : 0.06318*1e-3,
        1300 : 0.03699*1e-3,
        1400 : 0.02204*1e-3,
        1500 : 0.01333*1e-3
    }
    XSecWGroup_upper = {
        100 : 3673*1e-3*1.022,
        200 : 276.1*1e-3*1.011,
        300 : 58.07*1e-3*1.007,
        400 : 17.94*1e-3*1.005,
        500 : 6.805*1e-3*1.004,
        600 : 2.932*1e-3*1.004,
        700 : 1.378*1e-3*1.004,
        800 : 0.6891*1e-3*1.004,
        900 : 0.3613*1e-3*1.003,
        1000 : 0.1966*1e-3*1.003,
        1100 : 0.1101*1e-3*1.003,
        1200 : 0.06318*1e-3*1.003,
        1300 : 0.03699*1e-3*1.003,
        1400 : 0.02204*1e-3*1.003,
        1500 : 0.01333*1e-3*1.002
    }
    XSecWGroup_lower = {
        100 : 3673*1e-3*0.970,
        200 : 276.1*1e-3*0.987,
        300 : 58.07*1e-3*0.993,
        400 : 17.94*1e-3*0.995,
        500 : 6.805*1e-3*0.996,
        600 : 2.932*1e-3*0.997,
        700 : 1.378*1e-3*0.998,
        800 : 0.6891*1e-3*0.998,
        900 : 0.3613*1e-3*0.998,
        1000 : 0.1966*1e-3*0.999,
        1100 : 0.1101*1e-3*0.999,
        1200 : 0.06318*1e-3*0.999,
        1300 : 0.03699*1e-3*0.999,
        1400 : 0.02204*1e-3*0.999,
        1500 : 0.01333*1e-3*0.999
    }

    # slha_filename = 'pure_scenarios/wino_sqmass.slha'
    # param_range = [1e3 + (1e5-1e3)*(n-1)/14 for n in range(1, 16)]
    # res = compare2resummino(SLHA_ROOT+slha_filename, (pid1, pid2), [{'@a' : str(param_val)} for param_val in param_range], tnum=False)
    # xlabel = 'Squark mass [GeV]'
    # plot_info['slha'] = slha_filename
    # plot_info['param'] = 'Squark mass [GeV]'
    # plot_info['param_range'] = param_range

    Z_mass = 9.11870000E+01
    W_mass = 8.04961219E+01

    # # slha_filename = 'pure_scenarios/wino_Zmass.slha'
    # slha_filename = 'pure_scenarios/hino_Zmass.slha'
    # param_range = [(W_mass/Z_mass + (1.3-W_mass/Z_mass)*n/14)*Z_mass for n in range(15)]
    # res = compare2resummino(SLHA_ROOT+slha_filename, (pid1, pid2), [{'@a' : str(param_val)} for param_val in param_range], tnum=False)
    # xlabel = r'$m_Z$ [GeV]'
    # plot_info['slha'] = slha_filename
    # plot_info['param'] = 'Z-mass [GeV]'
    # plot_info['param_range'] = param_range

    # # slha_filename = 'pure_scenarios/wino_Wmass.slha'
    # slha_filename = 'pure_scenarios/hino_Wmass.slha'
    # param_range = [(0.7 + (Z_mass/W_mass-0.7)*n/14)*W_mass for n in range(15)]
    # res = compare2resummino(SLHA_ROOT+slha_filename, (pid1, pid2), [{'@a' : str(param_val)} for param_val in param_range], tnum=False)
    # xlabel = r'$m_W$ [GeV]'
    # plot_info['slha'] = slha_filename
    # plot_info['param'] = 'Z-mass [GeV]'
    # plot_info['param_range'] = param_range

    # pdg_results = [3673,276.1,58.07,17.94,6.805,2.932,1.378,0.6891,0.3613,0.1966,0.1101,0.06318,0.03699,0.02204,0.01333]

    # smoking_keys_sorted = sorted(res['smoking'].keys())
    # smoking_results = {key : float(res['smoking']['NLO' if clargs.NLO else 'LO'][key]) for key in smoking_keys_sorted}
    # resummino_keys_sorted = sorted(res['resummino'].keys())
    # resummino_results = {key : float(res['resummino']['NLO' if clargs.NLO else 'LO'][key]) for key in resummino_keys_sorted}


    smoking_keys_sorted = sorted(res['smoking']['LO'])
    smoking_results = {key : [(key / param_range[-1])**0 * xsec for xsec in res['smoking']['NLO' if clargs.NLO else 'LO'][key]] for key in smoking_keys_sorted}
    smoking_central_results = {key : smoking_results[key][0] for key in smoking_results}

    resummino_keys_sorted = sorted(res['resummino']['LO'])
    resummino_results = {key : [(key / param_range[-1])**0 * xsec for xsec in res['resummino']['NLO' if clargs.NLO else 'LO'][key]] for key in smoking_keys_sorted}
    resummino_central_results = {key : resummino_results[key][0] for key in resummino_results}

    XSecWGroup_results = {key : (key / param_range[-1])**0 * val for key, val in XSecWGroup_results.items()}
    XSecWGroup_upper = {key : (key / param_range[-1])**0 * val for key, val in XSecWGroup_upper.items()}
    XSecWGroup_lower = {key : (key / param_range[-1])**0 * val for key, val in XSecWGroup_lower.items()}

    # fig, axes = plot_xsec_with_relerrs(smoking_central_results, [resummino_central_results, XSecWGroup_results], labels = ['smoking', 'resummino', 'XSec Working Group'], scatter=False)
    fig, axes = plot_xsec_with_relerrs(smoking_central_results, [resummino_central_results,], labels = ['smoking', 'resummino'], scatter=False)
    axes[0].fill_between(smoking_keys_sorted, [res[2] for res in smoking_results.values()], [res[1] for res in smoking_results.values()], alpha=0.5)
    axes[0].fill_between(resummino_keys_sorted, [res[2] for res in resummino_results.values()], [res[1] for res in resummino_results.values()], alpha=0.5)
    axes[0].fill_between(XSecWGroup_results.keys(), XSecWGroup_lower.values(), XSecWGroup_upper.values(), alpha=0.5)

    # if clargs.NLO:
    #     axes[0].plot(smoking_keys_sorted, [res['smoking']['LO'][key][0] for key in smoking_keys_sorted], label='smoking LO', ls='--', c='gray')
    #     axes[0].fill_between(
    #         smoking_keys_sorted,
    #         [res['smoking']['LO'][key][2] for key in smoking_keys_sorted],
    #         [res['smoking']['LO'][key][1] for key in smoking_keys_sorted],
    #         color='gray', alpha=0.5
    #     )

    axes[0].set_ylabel(r'$\sigma$ [pb]')
    axes[1].set_ylabel(r'$\frac{\sigma_{\mathrm{smoking}} - \sigma_{\mathrm{other}}}{\sigma_{\mathrm{other}}}$')
    axes[1].set_xlabel(xlabel)
    axes[1].set_ylim(bottom=max([axes[1].get_ylim()[0], -1.0]), top=min([axes[1].get_ylim()[1], 1.0]))
    # axes[1].set_ylim(bottom=-1, top=1)

    # savefig_with_info(PLOT_ROOT+slha_filename.replace('.slha', '') + ('NLO' if clargs.NLO else ''), info=plot_info)
    plt.show()

    '''
    # slha_filepath = SMOKING_ROOT + 'EW/1_1_15.slha'
    # slha_filepath = SMOKING_ROOT + 'EW/11_111_3.slha'
    # slha_filepath = SMOKING_ROOT + 'example/sps1a.slha'
    slha_filepath = 'slha/benchmark/sps1a_mod.slha' # \phi_\mu = 0 in cSPS1a

    processes = []
    for i in range(4):
        for j in range(i, 4):
            processes.append((neu_pids[i], neu_pids[j]))

    # pdf_sets = ['PDF4LHC21_40_pdfas', 'PDF4LHC15_nnlo_100', 'CT14nlo']
    # res = compare_pdf_sets(slha_filepath, processes=processes, pdf_sets=pdf_sets, code=['smoking'])

    # res1 = {process2latex(proc) : res['smoking'][process2latex(proc)][pdf_sets[0]] for proc in processes}
    # res2 = [
    #     {process2latex(proc) : res['smoking'][process2latex(proc)][pdf_set] for proc in processes}
    #     for pdf_set in pdf_sets[1:]
    # ]

    # fig, axes = plot_xsec_with_relerrs(res1, res2, labels=pdf_sets)
    # plot_info['slha'] =  slha_filepath
    # plot_info['processes'] = processes
    # plot_info['pdf_sets'] = pdf_sets
    # savefig_with_info(PLOT_ROOT+'compare_pdf_'+slha_filepath.rsplit('/', maxsplit=1)[-1].replace('.slha', ''), info=plot_info)



    res = compare2prospino(slha_filepath, processes)
    plot_info['slha'] =  slha_filepath
    plot_info['processes'] = processes

    proc_keys = [process2latex(proc) for proc in processes]

    slha = pyslha.read(slha_filepath)
    masses = [float(slha.blocks['MASS'][pid]) for pid in [1000022, 1000023, 1000025, 1000035]]


    # sort_idcs = idxsort_masses(read_masses(slha_filepath))
    sort_idcs = idxsort_masses(masses)
    proc_keys_sorted = [proc_keys[idx] for idx in sort_idcs]

    smoking_results = {key : res['smoking'][key] for key in proc_keys_sorted}
    resummino_results = {key : res['resummino'][key] for key in proc_keys_sorted}
    # prospino_results = {key : res['prospino'][key] for key in proc_keys_sorted}

    # fig, axes = plot_xsec_with_relerrs(smoking_results, [resummino_results, prospino_results], labels = ['smoking', 'resummino', 'prospino'])
    fig, axes = plot_xsec_with_relerrs(smoking_results, [resummino_results], labels = ['smoking', 'resummino', 'prospino'])
    axes[1].set_ylim(bottom=max([axes[1].get_ylim()[0], -1.0]), top=min([axes[1].get_ylim()[1], 1.0]))
    axes[0].set_ylabel(r'$\sigma$ [pb]')
    axes[1].set_ylabel(r'$\frac{\sigma_s - \sigma_p}{\sigma_p}$')
    axes[1].set_xlabel('process')
    savefig_with_info(PLOT_ROOT+'compare_prospino_'+slha_filepath.rsplit('/', maxsplit=1)[-1].replace('.slha', ''), info=plot_info)



    # res = compare_numeric_analytic(slha_filepath, processes)
    # plot_info['slha'] = slha_filepath
    # plot_info['processes'] = processes

    # fig, axes = plot_xsec_with_relerrs(res['analytic'], res['numeric'], labels = ['analtyic', 'numeric'])
    # axes[1].set_ylim(bottom=0.0, top=min([axes[1].get_ylim()[1], 1.0]))
    # axes[0].set_ylabel(r'$\sigma$ [pb]')
    # axes[1].set_ylabel('relative error')
    # axes[1].set_xlabel('process')


    # savefig_with_info(PLOT_ROOT+'compare_numeric_analytic_'+slha_filepath.split('/')[-1].replace('.slha', ''), info=plot_info)



    plt.show()
    '''
