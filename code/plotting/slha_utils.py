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

def mktmpcopy(filepath, stem=None, rootpath=None):
    extension = filepath.split(".")[-1]

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
    with open(filepath, "r") as infile:
        tmp.write(infile.read())
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

def read_smoking_result(filepath, order = 0):
    results = {}

    with open(filepath, "r") as results_file:
        is_result = False
        curr_results = {}
        for line in results_file.readlines():
            split_line = line.split()
            if len(split_line) == 0:
                continue
            if is_result:
                if "smoking" in split_line:
                    if int(split_line[1]) == order:
                        curr_results[" ".join(split_line[:6])] = float(split_line[6])
                else:
                    is_result = False
                    if len(curr_results.values()) == 1:
                        results[pid1+"+"+pid2] = float(curr_results.values()[0])
                    else:
                        results[pid1+"+"+pid2] = curr_results
                    curr_results = {}
            if split_line[0] == "XSECTION":
                pid1 = split_line[5][-2:]
                pid2 = split_line[6][-2:]
                is_result = True
    # Write any remaining results.
    if is_result:
        if len(curr_results.values()) == 1:
            results[pid1+"+"+pid2] = float(list(curr_results.values())[0])
        else:
            results[pid1+"+"+pid2] = curr_results
        curr_results = {}
    return results

def read_prospino_result(filepath):
    results = {}

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
    results = []

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
    avg_masses = []
    mass_idcs_sorted = []
    mass_idx_func = lambda idx1, idx2 : idx1*(9-idx1) // 2 + (idx2-idx1)

    for idx1 in range(4):
        for idx2 in range(idx1, 4):
            avg_mass = 0.5 * (abs(masses[idx1]) + abs(masses[idx2]))
            for mass_idx, mass in enumerate(avg_masses):
                if avg_mass < mass:
                    avg_masses.insert(mass_idx, mass)
                    mass_idcs_sorted.insert(mass_idx, mass_idx_func(idx1, idx2))
                    break
            if mass_idx_func(idx1, idx2) not in mass_idcs_sorted:
                avg_masses.append(avg_mass)
                mass_idcs_sorted.append(mass_idx_func(idx1, idx2))

    return mass_idcs_sorted

def copy_slha_with_replacement(slha_filepath, filename, rules):
    outfile = open(filename, "w")

    with open(slha_filepath, "r") as infile:
        for line in infile.readlines():
            line_replaced = line
            for rule in rules:
                line_replaced = line_replaced.replace(*rule)
            outfile.write(line_replaced)

def read_parameter_info(slha_dir):
    # Find parameters defining each file in slha_dir
    param_info = {}
    for f in os.scandir(slha_dir):
        if f.name[-4:] == 'info':
            with open(slha_dir + f.name, 'r') as infofile:
                for line in infofile.readlines():
                    splitline = line.split(' ')
                    param_info[splitline[0]] = eval(' '.join(splitline[2:]))

    return param_info
