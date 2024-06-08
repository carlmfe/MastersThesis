import os
import subprocess

FLEXIBLESUSY_ROOT = 'flexiblesusy/'

def generate_infiles(slha_filepath: str, replace_rules: list[dict], outdir: str, extension: str = '.in'):

    if outdir[-1] != '/':
        outdir += '/'

    slha_filestem = slha_filepath.split('.')[0]
    slha_filestem = slha_filestem.split('/')[-1]

    infofile = open(outdir + slha_filestem + '.info', 'w')

    file_counter = 1
    for replace_rule in replace_rules:
        outfile = open(outdir + slha_filestem + '_' + str(file_counter) + extension, 'w')
        with open(slha_filepath, 'r') as infile:
            contents = infile.read()
        for item in replace_rule.items():
            contents = contents.replace(*item)
        outfile.write(contents)
        outfile.close()

        infofile.write(f"{slha_filestem + '_' + str(file_counter) + extension} : {list(replace_rule.values())}\n")

        file_counter += 1

    infofile.close()


def generate_spectra(model: str, infiles: list[str], outdir: str, extension: str = '.slha'):

    if outdir[-1] != '/':
        outdir += '/'

    queue = []

    for infile in infiles:
        if infile.split('.')[-1] == 'info':
            input_infofilename = infile
            output_infofilename = outdir + infile.split('/')[-1]
            break

    for infile in infiles:
        if infile == input_infofilename:
            continue

        outfilename = infile.split('.')[0]
        outfilename = outfilename.split('/')[-1]
        outfilename += extension

        queue.append([
            f'{FLEXIBLESUSY_ROOT+model}/run_{model}.x',
            f'--slha-input-file={infile}',
            f'--slha-output-file={outdir+outfilename}'
        ])

        with open(output_infofilename, 'a') as infofile:
            info = ''
            with open(input_infofilename, 'r') as input_info:
                for line in input_info.readlines():
                    if line.split()[0] == infile.split('/')[-1]:
                        info = ' '.join(line.split()[2:])
            infofile.write(f"{outfilename.split('/')[-1]} : {info}\n")

    # Now we can loop over all processes to be run
    subprocs = []
    for query in queue:
        subprocs.append(subprocess.Popen(query, stdout=subprocess.PIPE, stderr=subprocess.PIPE))
    for subproc in subprocs:
        # This ensures all subprocesses are done before continuing
        subproc.wait()
        print(subproc.stdout.read().decode(), end='')
        print(subproc.stderr.read().decode(), end='')

def pad_flexiblesusy_spectrum(filepath: str):

    contents = ''

    with open(filepath, 'r') as file:
        dsq_count = 0
        usq_count = 0
        for line in file.readlines():
            is_dsqmix = 'DSQMIX' in line
            is_usqmix = 'USQMIX' in line
            if is_dsqmix:
                dsq_count = 1
            if is_usqmix:
                usq_count = 1
            if dsq_count:
                if dsq_count == 38:
                    contents += imdsqmix_block
                    dsq_count = 0
                elif dsq_count < 38:
                    dsq_count += 1
            if usq_count:
                if usq_count == 38:
                    contents += imusqmix_block
                    usq_count = 0
                elif usq_count < 38:
                    usq_count += 1
            
            contents += line
    
    with open(filepath, 'w') as file:
        file.write(contents)

imdsqmix_block = '''Block IMDSQMIX
  1  1     0.00000000E+00   # Im(ZD(1,1))
  1  2     0.00000000E+00   # Im(ZD(1,2))
  1  3     0.00000000E+00   # Im(ZD(1,3))
  1  4     0.00000000E+00   # Im(ZD(1,4))
  1  5     0.00000000E+00   # Im(ZD(1,5))
  1  6     0.00000000E+00   # Im(ZD(1,6))
  2  1     0.00000000E+00   # Im(ZD(2,1))
  2  2     0.00000000E+00   # Im(ZD(2,2))
  2  3     0.00000000E+00   # Im(ZD(2,3))
  2  4     0.00000000E+00   # Im(ZD(2,4))
  2  5     0.00000000E+00   # Im(ZD(2,5))
  2  6     0.00000000E+00   # Im(ZD(2,6))
  3  1     0.00000000E+00   # Im(ZD(3,1))
  3  2     0.00000000E+00   # Im(ZD(3,2))
  3  3     0.00000000E+00   # Im(ZD(3,3))
  3  4     0.00000000E+00   # Im(ZD(3,4))
  3  5     0.00000000E+00   # Im(ZD(3,5))
  3  6     0.00000000E+00   # Im(ZD(3,6))
  4  1     0.00000000E+00   # Im(ZD(4,1))
  4  2     0.00000000E+00   # Im(ZD(4,2))
  4  3     0.00000000E+00   # Im(ZD(4,3))
  4  4     0.00000000E+00   # Im(ZD(4,4))
  4  5     0.00000000E+00   # Im(ZD(4,5))
  4  6     0.00000000E+00   # Im(ZD(4,6))
  5  1     0.00000000E+00   # Im(ZD(5,1))
  5  2     0.00000000E+00   # Im(ZD(5,2))
  5  3     0.00000000E+00   # Im(ZD(5,3))
  5  4     0.00000000E+00   # Im(ZD(5,4))
  5  5     0.00000000E+00   # Im(ZD(5,5))
  5  6     0.00000000E+00   # Im(ZD(5,6))
  6  1     0.00000000E+00   # Im(ZD(6,1))
  6  2     0.00000000E+00   # Im(ZD(6,2))
  6  3     0.00000000E+00   # Im(ZD(6,3))
  6  4     0.00000000E+00   # Im(ZD(6,4))
  6  5     0.00000000E+00   # Im(ZD(6,5))
  6  6     0.00000000E+00   # Im(ZD(6,6))
'''

imusqmix_block = '''Block IMUSQMIX
  1  1     0.00000000E+00   # Im(ZU(1,1))
  1  2     0.00000000E+00   # Im(ZU(1,2))
  1  3     0.00000000E+00   # Im(ZU(1,3))
  1  4     0.00000000E+00   # Im(ZU(1,4))
  1  5     0.00000000E+00   # Im(ZU(1,5))
  1  6     0.00000000E+00   # Im(ZU(1,6))
  2  1     0.00000000E+00   # Im(ZU(2,1))
  2  2     0.00000000E+00   # Im(ZU(2,2))
  2  3     0.00000000E+00   # Im(ZU(2,3))
  2  4     0.00000000E+00   # Im(ZU(2,4))
  2  5     0.00000000E+00   # Im(ZU(2,5))
  2  6     0.00000000E+00   # Im(ZU(2,6))
  3  1     0.00000000E+00   # Im(ZU(3,1))
  3  2     0.00000000E+00   # Im(ZU(3,2))
  3  3     0.00000000E+00   # Im(ZU(3,3))
  3  4     0.00000000E+00   # Im(ZU(3,4))
  3  5     0.00000000E+00   # Im(ZU(3,5))
  3  6     0.00000000E+00   # Im(ZU(3,6))
  4  1     0.00000000E+00   # Im(ZU(4,1))
  4  2     0.00000000E+00   # Im(ZU(4,2))
  4  3     0.00000000E+00   # Im(ZU(4,3))
  4  4     0.00000000E+00   # Im(ZU(4,4))
  4  5     0.00000000E+00   # Im(ZU(4,5))
  4  6     0.00000000E+00   # Im(ZU(4,6))
  5  1     0.00000000E+00   # Im(ZU(5,1))
  5  2     0.00000000E+00   # Im(ZU(5,2))
  5  3     0.00000000E+00   # Im(ZU(5,3))
  5  4     0.00000000E+00   # Im(ZU(5,4))
  5  5     0.00000000E+00   # Im(ZU(5,5))
  5  6     0.00000000E+00   # Im(ZU(5,6))
  6  1     0.00000000E+00   # Im(ZU(6,1))
  6  2     0.00000000E+00   # Im(ZU(6,2))
  6  3     0.00000000E+00   # Im(ZU(6,3))
  6  4     0.00000000E+00   # Im(ZU(6,4))
  6  5     0.00000000E+00   # Im(ZU(6,5))
  6  6     0.00000000E+00   # Im(ZU(6,6))
'''




if __name__ == '__main__':

    from math import cos, sin, pi, exp, log
    import pyslha
    from slha_utils import copy_slha_with_replacement


    #######################################################
    ### Generate slha files for squark/gluino mass plot ###
    #######################################################
    '''
    '''
    test_root = 'slha/squarkGluinoMass/'

    # slha_dir = 'csps1a_unnatural/'
    # slha_dir = 'hino_unnatural/'
    slha_dir = 'hino_unnatural_loggrid/'


    FLEXIBLESUSY_MODEL = 'MSSMCPV'

    # slha_filename = 'csps1a_unnatural.in'
    slha_filename = 'hino_unnatural.in'
    # slha_filestem = 'csps1a'
    slha_filestem = 'hino'

    n = 10

    param_points = []
    M0 = 200
    Mf = 1100

    # for idx1 in range(n):
    #     usq_mass = (Mf-M0)/(n-1) * idx1 + M0
    #     for idx2 in range(n):
    #         dsq_mass = (Mf-M0)/(n-1) * idx2 + M0

    #         param_points.append({'@u' : str(usq_mass), '@d' : str(dsq_mass)})

    # for idx1 in range(n):
    #     squark_mass = (Mf-M0)/(n-1) * idx1 + M0
    #     for idx2 in range(n):
    #         gluino_mass = (Mf-M0)/(n-1) * idx2 + M0

    #         param_points.append({'@g' : str(gluino_mass), '@m' : str(squark_mass)})

    for idx1 in range(2*n):
        squark_mass = M0**(1 - idx1/(2*n-1)) * Mf**(idx1/(2*n-1))
        for idx2 in range(2*n):
            gluino_mass = M0**(1 - idx2/(2*n-1)) * Mf**(idx2/(2*n-1))

            param_points.append({'@g' : str(gluino_mass), '@m' : str(squark_mass)})

    with open(test_root + slha_dir + slha_filestem + '.info', 'w') as infofile:
        for idx, param_rules in enumerate(param_points):
            replace_rules = [[key, val] for key, val in param_rules.items()]
            copy_slha_with_replacement(test_root + slha_filename, test_root + slha_dir + slha_filestem + '_' + str(idx) + '.slha', replace_rules)
            infofile.write(f"{slha_filestem + '_' + str(idx) + '.slha'} : {list(param_rules.values())}\n")





    exit(1)

    #######################################
    ### Generate slha files for mu plot ###
    #######################################
    '''
    test_root = 'slha/muCPV/'
    # test_root = 'slha/hinoCPV/'
    FLEXIBLESUSY_MODEL = 'CMSSMCPV'
    # FLEXIBLESUSY_MODEL = 'MSSMCPV'

    slha_filename = 'csps1a.in.CMSSMCPV'
    # slha_filename = 'hino.in.MSSMCPV'

    n = 50

    # param_points = [{'@c' : str(cos((2*i-n)/n*pi)), '@s' : str(sin((2*i-n)/n*pi)), '@p' : str((2*i-n)/n*pi)} for i in range(n)]
    param_points = [{'@c' : str(cos((2*i-n)/n*pi)), '@s' : str(sin((2*i-n)/n*pi))} for i in range(n)]
    # absMu = 100
    # param_points = [{'@r' : str(absMu*cos((2*i-n)/n*pi)), '@i' : str(absMu*sin((2*i-n)/n*pi))} for i in range(n)]
    '''


    #########################################
    ### Generate slha files for colorplot ###
    #########################################
    '''
    test_root = 'slha/hinoMassCPV/'
    FLEXIBLESUSY_MODEL = 'MSSMCPV'

    slha_filename = 'hino.in.MSSMCPV'

    n = 10

    param_points = []
    mu0 = 100
    muf = 1000
    for idx1 in range(n):
        absMu = (muf-mu0)/(n-1) * idx1 + mu0
        for idx2 in range(n):
            cphi = cos((2*idx2-n)/n*pi)
            sphi = sin((2*idx2-n)/n*pi)
            param_points.append({'@r' : str(absMu * cphi), '@i' : str(absMu * sphi)})
    '''


    ################################################
    ### Generate slha files for squark mass plot ###
    ################################################

    '''
    test_root = 'slha/squarkGluinoMass/'
    FLEXIBLESUSY_MODEL = 'MSSMCPV'

    slha_filename = 'hino.in.MSSMCPV'

    n = 10

    param_points = []
    M0 = 1000
    Mf = 2000
    for idx1 in range(n):
        squark_mass = (Mf-M0)/(n-1) * idx1 + M0
        for idx2 in range(n):
            gluino_mass = (Mf-M0)/(n-1) * idx2 + M0

            param_points.append({'@g' : str(gluino_mass), '@m' : str(squark_mass)})
    '''

    ############################################
    ### Generate slha files for abs(mu) plot ###
    ############################################
    '''
    test_root = 'slha/hinoError/'
    FLEXIBLESUSY_MODEL = 'MSSMCPV'
    
    slha_filename = 'hino.in.MSSMCPV'

    n = 30

    mumin = 100
    mumax = 1000

    param_points = [{'@m' : str((mumax - mumin)*i/(n-1) + mumin)} for i in range(n)]
    '''

    ########################
    ### Generate spectra ###
    ########################

    if not os.path.exists(test_root+'input'):
        os.mkdir(test_root+'input')
    if not os.path.exists(test_root+'generated'):
        os.mkdir(test_root+'generated')

    generate_infiles(test_root+slha_filename, param_points, test_root+'input', extension=f'.in.{FLEXIBLESUSY_MODEL}')

    infiles = [ test_root+'input/'+f.name for f in os.scandir(test_root+'input') if f.is_file() ]

    generate_spectra(FLEXIBLESUSY_MODEL, infiles, test_root+'generated')

    for spectrumfile in [ test_root+'generated/'+f.name for f in os.scandir(test_root+'generated/') if f.is_file() and f.name[-4:] != 'info']:
        
        readfile = pyslha.read(spectrumfile, ignorenomass=True)

        try:
            readfile.blocks['IMUSQMIX']
        except KeyError:
            print(f'Padding imaginary blocks  in {spectrumfile}!')
            pad_flexiblesusy_spectrum(spectrumfile)

