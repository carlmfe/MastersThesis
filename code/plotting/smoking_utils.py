import sys
import os
import subprocess
import shutil

from slha_utils import *

SMOKING_ROOT = "/home/carlmfe/Documents/master/smoking/"
BIN_ROOT = "bin/"
PDF_SET = "PDF4LHC21_40_pdfas"
# PDF_SET = "CT14lo"
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

def run_neutralino_production(slha_filepath, outfilepath, tnum = False):
    clargs = [
        BIN_ROOT+"run_neutralino_production",
        "-o", "0",
        "-S", str(S),
        "-r", slha_filepath,
        "-w", outfilepath,
        "-P", PDF_SET
    ]
    if tnum: clargs.append("--tnum")
    output = subprocess.run(clargs, capture_output=not VERBOSE)

def run_neu_prod_wreplacement(slha_filepath, vals, tnum = False):
    result = list()

    ROOT = os.getcwd() + "/"

    temp = open("temp_output.slha", "w")
    temp.close()
    for val in vals:
        temp_file = open("temp.slha", "w")
        with open(slha_filepath, "r") as slhafile:
            temp_file.write(
                "".join(slhafile.readlines()).replace("@a", str(val))
            )
        temp_file.close()
        # run_neutralino_production(SMOKING_ROOT+"example/hino.slha", ROOT+"temp_output.slha", tnum = tnum)
        run_cross_section(ROOT+"temp.slha", ROOT+"temp_output.slha", pid1=1000022, pid2=1000023, tnum = tnum)
        result.append(read_smoking_result("temp_output.slha"))
    os.remove("temp.slha")
    os.remove("temp_output.slha")
    
    return result

def run_cross_section(slha_filepath, outfilepath, pid1, pid2, tnum = False):
    clargs = [
        BIN_ROOT+"cross_section",
        "--pid1", str(pid1),
        "--pid2", str(pid2),
        "-o", "0",
        "-S", str(S),
        "-r", slha_filepath,
        "-w", outfilepath,
        "-P", PDF_SET
    ]
    if tnum: clargs.append("--tnum")
    output = subprocess.run(clargs, capture_output=not VERBOSE)

def run_resummino(slha_filepath, processes, outfilepath=None, tempstem=None):
    try:
        _ = iter(processes[0])
    except TypeError:
        processes = (processes, )

    for proc in processes:
        tmpinfile = mktmpfile(extension=".in", stem=tempstem)

        write_ressumino_infile(proc, slha_filepath, tmpinfile)
        clargs = [
            "resummino",
            tmpinfile,
            "-l",
        ]
        if outfilepath is not None:
            clargs.append("-o")
            clargs.append(outfilepath)
        output = subprocess.run(clargs, capture_output=not VERBOSE)
        os.remove(tmpinfile)

def write_ressumino_infile(proc, slha_filepath, filename):
    outfile = open(filename, "w")
    file_contents = "\n".join([
        "collider_type = proton-proton",
        f"center_of_mass_energy = {S}",
        f"particle1 = {proc[0]}",
        f"particle2 = {proc[1]}",
        "result = total",
        f"slha = {slha_filepath}",
        f"pdf_lo = {PDF_SET}",
        "mu_f = 0.5",
        "mu_r = 2.0"
    ])
    for line in file_contents:
        outfile.write(line)
    outfile.close()

def read_resummino_result(filepath):
    with open(filepath, "r") as infile:
        entries = ("".join(infile.readlines())).split("\n")[1:-1]
        results = dict()
        for entry in entries:
            entry = entry.replace(",", "")
            entry = entry.replace(r'"', "")
            key, value = entry.split(": ")
            results[key] = value
        # print(entries)
        # results = eval("".join(infile.readlines()))
    return results

def id_result_file(result_filepath):
    with open(result_filepath) as resfile:
        header = resfile.readline()

        if header == "{\n":
            return "resummino"
        else:
            for line in resfile.readlines():
                if "smoking" in line:
                    return "smoking"
        if header == "# SOFTSUSY4.1.5 SLHA compliant output\n":
            return "prospino"
        else:
            # TODO: perhaps raise error
            return

def write_results(infilename, outfilename, process, id=None):
    result_type = id_result_file(infilename)

    pid1, pid2 = process
    proc_handle = f"{pid1-1000000}+{pid2-1000000}"
    if id is None: id = proc_handle



    if result_type == "smoking":
        res = read_smoking_result(infilename)
        val = float(res[proc_handle])
    elif result_type == "resummino":
        res = read_resummino_result(infilename)
        val = (float(res["lo"]) + float(res["nlo"]) + float(res["nll"]) + float(res["nllj"]))
    elif result_type == "prospino":
        res = read_prospino_result(infilename)
        val = float(res[proc_handle])
    else:
        # TODO: raise error perhaps
        return

    with open(outfilename, "a") as outfile:
        outfile.write(f"{id}, {val}\n")

def read_results(infilename):
    
    result = dict()

    with open(infilename, "r") as infile:
        for line in infile.readlines():
            key, val = line.split(", ")
            try:
                key = float(key)
            except ValueError:
                pass
            result[key] = float(val)

    return result
