
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

def run_cross_section(slha_filepath, outfilepath, pid1, pid2, tnum = False):
    clargs = [
        BIN_ROOT+'cross_section',
        '--pid1', str(pid1),
        '--pid2', str(pid2),
        '-o', '0',
        '-S', str(S),
        '-r', slha_filepath,
        '-w', outfilepath,
        '-P', PDF_SET
    ]
    if tnum: clargs.append('--tnum')
    output = subprocess.run(clargs, capture_output=not VERBOSE)

def run_resummino(slha_filepath, processes, outfilepath=None, tempstem=None):
    try:
        _ = iter(processes[0])
    except TypeError:
        processes = (processes, )

    for proc in processes:
        tmpinfile = mktmpfile(extension='.in', stem=tempstem)

        write_ressumino_infile(tmpinfile, particle1 = proc[0], particle2 = proc[1], slha=slha_filepath)
        clargs = [
            'resummino',
            tmpinfile,
            '-l',
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
        # print(entries)
        # results = eval(''.join(infile.readlines()))
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
        
def write_results(infilename, outfilename, process, key=None):
    result_type = id_result_file(infilename)

    pid1, pid2 = process
    proc_handle = f"{pid1-1000000}+{pid2-1000000}"
    if key is None: key = proc_handle

    if result_type == 'smoking':
        res = read_smoking_result(infilename)
        val = float(res[proc_handle])
    elif result_type == 'resummino':
        res = read_resummino_result(infilename)
        val = (float(res['lo']) + float(res['nlo']) + float(res['nll']) + float(res['nllj']))
    elif result_type == 'prospino':
        res = read_prospino_result(infilename)
        val = float(res[proc_handle])
    else:
        # TODO: raise error perhaps
        return

    with open(outfilename, 'a') as outfile:
        outfile.write(f"{key}, {val}\n")

def read_results(infilename):
    
    result = {}

    with open(infilename, 'r') as infile:
        for line in infile.readlines():
            key, val = line.split(', ')
            try:
                key = float(key)
            except ValueError:
                pass
            result[key] = float(val)

    return result
