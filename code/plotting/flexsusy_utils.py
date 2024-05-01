import os
import subprocess

FLEXIBLESUSY_ROOT = 'flexiblesusy/'

def generate_infiles(slha_filepath: str, replace_rules: list[dict], outdir: str, extension: str = '.in'):

    if outdir[-1] != '/':
        outdir += '/'

    slha_filestem = slha_filepath.split('.')[0]
    slha_filestem = slha_filestem.split('/')[-1]

    for replace_rule in replace_rules:
        label = '_'.join(replace_rule.values()).replace('.', '')
        outfile = open(outdir + slha_filestem + '_' + label + extension, 'w')
        with open(slha_filepath, 'r') as infile:
            contents = infile.read()
        for item in replace_rule.items():
            contents = contents.replace(*item)
        outfile.write(contents)
        outfile.close()


def generate_spectra(model: str, infiles: list[str], outdir: str, extension: str = '.slha'):

    if outdir[-1] != '/':
        outdir += '/'

    queue = []

    for infile in infiles:
        outfilename = infile.split('.')[0]
        outfilename = outfilename.split('/')[-1]
        outfilename += extension

        queue.append([
            f'{FLEXIBLESUSY_ROOT+model}/run_{model}.x',
            f'--slha-input-file={infile}',
            f'--slha-output-file={outdir+outfilename}'
        ])

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

    from math import cos, sin, pi
    import pyslha

    test_root = 'slha//muCPV/'

    slha_filename = 'csps1a.in.MSSMCPV'

    n = 100

    param_points = [{'@c' : str(cos((2*i-n)/n*pi)), '@s' : str(sin((2*i-n)/n*pi)), '@p' : str((2*i-n)/n*pi)} for i in range(n)]

    generate_infiles(test_root+slha_filename, param_points, test_root+'input', extension='.in.CMSSMCPV')


    infiles = [ test_root+'input/'+f.name for f in os.scandir(test_root+'input') if f.is_file() ]

    generate_spectra('CMSSMCPV', infiles, test_root+'generated')


    for spectrumfile in [ test_root+'generated/'+f.name for f in os.scandir(test_root+'generated/') if f.is_file()]:
        
        readfile = pyslha.read(spectrumfile)

        try:
            readfile.blocks['IMUSQMIX']
        except KeyError:
            pad_flexiblesusy_spectrum(spectrumfile)

