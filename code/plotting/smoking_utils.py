
import os
import subprocess

from slha_utils import *

SMOKING_ROOT = '/home/carlmfe/Documents/master/smoking/'
BIN_ROOT = 'bin/'
PDF_SET = 'PDF4LHC21_40_pdfas'
# PDF_SET = 'CT14lo'
VERBOSE = True
S = 13000

def set_verbosity(verbose):
    global VERBOSE
    VERBOSE = verbose

def set_pdf_set(pdf_set):
    global PDF_SET
    PDF_SET = pdf_set

def set_centre_of_mass_energy(s):
    global S
    S = s

def run_cross_section(slha_filepath, outfilepath, pid1, pid2, tnum = False, NLO = False, error=None, scale_scheme=None, central_scale=None):
    try:
        iter(central_scale)
    except TypeError:
        central_scale = (central_scale,)
    clargs = [
        BIN_ROOT+'cross_section',
        '--pid1', str(pid1),
        '--pid2', str(pid2),
        '-S', str(S),
        '-r', slha_filepath,
        '-w', outfilepath,
        '-P', PDF_SET
    ]
    if scale_scheme is not None:
        clargs.append('--scale_scheme')
        clargs.append(str(scale_scheme))
    else:
        pass
        # clargs.append('--scale_scheme')
        # clargs.append('1')

    if central_scale[0] is not None:
        clargs.append('--central_scale')
        clargs.extend([str(arg) for arg in central_scale])
    else:
        pass
        # clargs.append('--central_scale')
        # clargs.append('4.66491036E+02')

    if tnum: clargs.append('--tnum')
    if NLO: clargs.extend(['-o', '1'])
    else: clargs.extend(['-o', '0'])
    if error in ['pdf', 'all']:
        clargs.append('--pdf_error')
    if error in ['scale', 'all']:
        clargs.append('--scale_error')
    if error in ['alphas', 'all']:
        clargs.append('--alphas_error')

    # print(' '.join(clargs))
    # exit(1)

    output = subprocess.run(clargs, capture_output=not VERBOSE)
    # output = subprocess.run(clargs, capture_output=True)


def run_resummino(slha_filepath, processes, outfilepath = None, tempstem = None, NLO = False, mu = None):
    try:
        _ = iter(processes[0])
    except TypeError:
        processes = (processes, )

    for proc in processes:
        tmpinfile = mktmpfile(extension='.in', stem=tempstem)

        if mu is not None:
            try:
                iter(mu)
            except TypeError:
                mu = [mu, mu]
            write_ressumino_infile(tmpinfile, particle1 = proc[0], particle2 = proc[1], slha=slha_filepath, mu_f = mu[0], mu_r = mu[1])
        else:
            write_ressumino_infile(tmpinfile, particle1 = proc[0], particle2 = proc[1], slha=slha_filepath)

        clargs = [
            'resummino',
            # '/home/carlmfe/Documents/master/resummino_ckmdiag/bin/resummino',
            tmpinfile,
            '-n' if NLO else '-l',
            # '-l',
        ]
        if outfilepath is not None:
            clargs.append('-o')
            clargs.append(outfilepath)
        output = subprocess.run(clargs, capture_output=not VERBOSE)
        os.remove(tmpinfile)

def write_ressumino_infile(filename, **contents):

    if 'collider_type' not in contents:
        contents['collider_type'] = 'proton-proton'
    if 'center_of_mass_energy' not in contents:
        contents['center_of_mass_energy'] = S
    if 'result' not in contents:
        contents['result'] = 'total'
    if 'pdf_lo' not in contents:
        contents['pdf_lo'] = PDF_SET
        contents['pdf_nlo'] = PDF_SET
        contents['pdf_nnll'] = PDF_SET
    if 'mu_f' not in contents:
        contents['mu_f'] = 1.0
    if 'mu_r' not in contents:
        contents['mu_r'] = 1.0

    outfile = open(filename, 'w')
    for key, value in contents.items():
        outfile.write(f"{key} = {value}\n")
    outfile.close()

def read_resummino_result(filepath):
    with open(filepath, 'r') as infile:
        entries = (''.join(infile.readlines())).split('\n')[1:-1]
        results = {}
        for entry in entries:
            entry = entry.replace(',', '')
            entry = entry.replace(r'"', '')
            key, value = entry.split(': ')
            results[key] = value
    return results

def id_result_file(result_filepath):
    with open(result_filepath, 'r') as resfile:
        header = resfile.readline()

        if header == '{\n':
            return 'resummino'
        else:
            for line in resfile.readlines():
                if 'smoking' in line:
                    return 'smoking'
        if header == "# SOFTSUSY4.1.5 SLHA compliant output\n":
            return 'prospino'
        else:
            # TODO: perhaps raise error
            return
        
def write_results(infilename, outfilename, process, key = None, order = 0, error=None, uperrorfilename=None, lwerrorfilename=None):

    print("Reading result file ", infilename, " and outputing to ", outfilename)

    result_type = id_result_file(infilename)

    pid1, pid2 = process
    proc_handle = f"{pid1-1000000}+{pid2-1000000}"
    if key is None: key = proc_handle

    vals = []

    if result_type == 'smoking':
        for o in range(order+1):
            res = read_smoking_result(infilename, order = o)
            if isinstance(res[proc_handle], float):
                vals.append(str(res[proc_handle]))
            else:
                for settings, xsec in res[proc_handle].items():
                    vals.append(str(xsec) + f" ({settings})")
    elif result_type == 'resummino':
        order_strings = ['lo', 'nlo', 'nll', 'nllj']
        for o in range(order + 1):
            res = read_resummino_result(infilename)
            if error == 'scale':
                res_up = read_resummino_result(uperrorfilename)
                res_lw = read_resummino_result(lwerrorfilename)
                # Adding datastring to result
                # Datastring tells us (scale_scheme order 0 mu_F/mu_0 mu_R/mu_0 pdf_id)
                vals.append(str(res[order_strings[o]]) + f' (1 {o} 0 1.0 1.0 0)')
                vals.append(str(res_up[order_strings[o]]) + f' (1 {o} 0 2.0 2.0 0)')
                vals.append(str(res_lw[order_strings[o]]) + f' (1 {o} 0 0.5 0.5 0)')
            else:
                vals.append(str(res[order_strings[o]]))
    elif result_type == 'prospino':
        res = read_prospino_result(infilename)
        vals.append(str(res[proc_handle]))
    else:
        # TODO: raise error perhaps
        return
    
    with open(outfilename, 'a') as outfile:
        outfile.write(
            ", ".join([str(key)] + vals) + "\n"
        )
        # outfile.write(f"{key}, {}\n")

def read_results(infilename, order = None, mu_f = None, mu_r = None):
    
    result = {}

    with open(infilename, 'r') as infile:
        for line in infile.readlines():
            key = line.split(', ')[0]
            vals = line.split(', ')[1:]
            try:
                key = float(key)
            except ValueError:
                pass
                
            if order is not None:
                try:
                    result[key] = float(vals[order])
                except ValueError:
                    # In this case, vals contains datastrings
                    val_result = []
                    for val in vals:
                            val_data = val.replace('(', '').replace(')', '').split()[1:] # Shedding parentheses
                            # val_data tells us [scale_scheme, order, 0, mu_f, mu_r, pdf_id]
                            if val_data[1] != str(order):
                                continue
                            if mu_f is not None and val_data[3] != str(mu_f):
                                continue
                            if mu_r is not None and val_data[4] != str(mu_r):
                                continue
                            val_result.append(float(val.split()[0]))
                    result[key] = val_result[0] if len(val_result) == 1 else val_result
            else:
                result[key] = vals

    return result

def decipher_settings_string(settings_string):
    res = {}
    setting_names = ["output", "scale_scheme", "curr_order", "muF", "muR", "pdfid"]
    settings = settings_string.split()
    for setting_name, setting in zip(setting_names, settings):
        res[setting_name] = eval(setting)
    return res
