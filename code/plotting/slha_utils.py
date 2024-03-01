import os

__TEMPSTEM = "__temp_"
__TEMPCNT = 0


def mktmpfile(extension="", stem=None, rootpath = None):
    if stem is None:
        stem = __TEMPSTEM

    global __TEMPCNT

    if rootpath is None:
        ROOT = os.getcwd() + "/"
    else:
        ROOT = rootpath
        if ROOT[-1] != "/":
            ROOT = ROOT + "/"
    tmpfilename = stem+str(__TEMPCNT)+extension
    tmp = open(ROOT+tmpfilename, "w")
    tmp.close()

    __TEMPCNT += 1

    return tmpfilename

def cleartmpfiles(extension="", stem=None, rootpath = None):
    if stem is None:
        stem = __TEMPSTEM

    if rootpath is None:
        ROOT = os.getcwd() + "/"
    else:
        if ROOT[-1] != "/":
            ROOT = ROOT + "/"
    for cnt in range(__TEMPCNT+1):
        try:
            os.remove(ROOT+stem+str(cnt)+extension)
        except FileNotFoundError:
            continue

def read_smoking_result(filepath):
    results = dict()

    with open(filepath, "r") as results_file:
        is_result = False
        for line in results_file.readlines():
            if is_result:
                results[pid1+"+"+pid2] = float(line[31:44])
                is_result = False
            if line[:8] == "XSECTION":
                pid1 = line[32:34]
                pid2 = line[40:42]
                is_result = True
    return results

def read_prospino_result(filepath):
    results = dict()

    with open(filepath, "r") as results_file:
        is_result = False
        for line in results_file.readlines():
            if is_result:
                entries = line.split()
                pid1 = entries[0][-2:]
                pid2 = entries[1][-2:]
                results[pid1+"+"+pid2] = 1e-3*float(entries[3])
                if pid1 == "35" and pid2 == "35":
                    return results
            if line[:21] == "BLOCK PROSPINO_OUTPUT":
                is_result = True

def read_masses(filepath):
    results = list()

    with open(filepath, "r") as slha_file:
        is_block_mass = False
        for line in slha_file.readlines():
            if is_block_mass:
                entries = line.split()
                pid = int(entries[0])
                if pid - 1000000 in [22, 23, 25, 35]:
                    results.append(abs(float(entries[1])))
                    if pid - 1000000 == 35:
                        return results
            if line[:10] == "BLOCK MASS":
                is_block_mass = True

def idxsort_masses(masses):
    avg_masses = list()
    mass_idcs_sorted = list()
    mass_idx_func = lambda idx1, idx2 : idx1*(9-idx1) // 2 + (idx2-idx1)

    for idx1 in range(4):
        for idx2 in range(idx1, 4):
            avg_mass = 0.5 * (masses[idx1]+masses[idx2])
            for mass_idx, mass in enumerate(avg_masses):
                if avg_mass < mass:
                    avg_masses.insert(mass_idx, mass)
                    mass_idcs_sorted.insert(mass_idx, mass_idx_func(idx1, idx2))
                    break
            if mass_idx_func(idx1, idx2) not in mass_idcs_sorted:
                avg_masses.append(avg_mass)
                mass_idcs_sorted.append(mass_idx_func(idx1, idx2))

    return mass_idcs_sorted

def copy_slha_with_replacement(slha_filepath, filename, rule):
    outfile = open(filename, "w")

    with open(slha_filepath, "r") as infile:
        for line in infile.readlines():
            outfile.write(line.replace(*rule))

    outfile.close()
