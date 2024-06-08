
import os
import argparse

from slha_utils import *
from smoking_utils import *

original_pdf_set = PDF_SET

LHAPDF_ROOT = '/usr/local/share/LHAPDF/'
SMOKING_ROOT = '/home/carlmfe/Documents/master/smoking/'
available_pdf_sets = [ f.name for f in os.scandir(LHAPDF_ROOT) if f.is_dir() ]

neu_pids = [1000022, 1000023, 1000025, 1000035]
slep_pids = [1000011, 1000013, 1000015, 2000011, 2000013, 2000015, -1000011, -1000013, -1000015, -2000011, -2000013, -2000015]
sneu_pids = [1000012, 1000014, 1000016]

parser = argparse.ArgumentParser()
parser.add_argument('--code', '-c', default='smoking', choices=['smoking', 'resummino'])
parser.add_argument('--pid1', dest='pid1', default=1000022, choices=neu_pids+slep_pids+sneu_pids, type=int)
parser.add_argument('--pid2', dest='pid2', default=1000023, choices=neu_pids+slep_pids+sneu_pids, type=int)
parser.add_argument('-r', '--readfile', dest='readfile', default=SMOKING_ROOT+'example/sps1a.slha')
parser.add_argument('-P', '--PDF', dest='pdf_set', default='PDF4LHC21_40_pdfas', choices=available_pdf_sets)
parser.add_argument('--nlo', dest='NLO', action='store_true')
parser.add_argument('--tnum', dest='tnum', action='store_true')
parser.add_argument('-S', '--center-of-mass-energy', dest='S', default=13600, type=float)
parser.add_argument('-v', '--verbose', dest='verbose', action='store_true')
parser.add_argument('-o', '--outifle', dest='outfile', default='__temp')
parser.add_argument('-l', '--label', dest='label', default=None)
parser.add_argument('--tempstem', dest='tempstem', default=None)
parser.add_argument('--error', dest='error', type=str, default=None)
parser.add_argument('--scale_scheme', dest='scale_scheme', type=int, default=None)
parser.add_argument('--central_scale', dest='central_scale', nargs='+', type=float, default=None)
clargs = parser.parse_args()

pid1 = int(clargs.pid1)
pid2 = int(clargs.pid2)

set_verbosity(clargs.verbose)
set_pdf_set(clargs.pdf_set)

set_centre_of_mass_energy(clargs.S)

if clargs.outfile == '__temp':
    outfile = mktmpfile(extension = '.out')
else:
    outfile = clargs.outfile

tmpresfile = mktmpfile(extension = '.out', stem = clargs.tempstem)
if clargs.code == 'smoking':
    run_cross_section(clargs.readfile, tmpresfile, pid1, pid2, clargs.tnum, clargs.NLO, error=clargs.error, scale_scheme=clargs.scale_scheme, central_scale=clargs.central_scale)
elif clargs.code == 'resummino':
    if clargs.error == 'scale':
        tmpresfile_upper = mktmpfile(extension = '.out', stem = clargs.tempstem)
        tmpresfile_lower = mktmpfile(extension = '.out', stem = clargs.tempstem)
        run_resummino(clargs.readfile, (pid1, pid2), tmpresfile, clargs.tempstem, clargs.NLO)
        run_resummino(clargs.readfile, (pid1, pid2), tmpresfile_upper, clargs.tempstem, clargs.NLO, mu=2.0)
        run_resummino(clargs.readfile, (pid1, pid2), tmpresfile_lower, clargs.tempstem, clargs.NLO, mu=0.5)

    else:
        run_resummino(clargs.readfile, (pid1, pid2), tmpresfile, clargs.tempstem, clargs.NLO)


if clargs.code == 'resummino' and clargs.error == 'scale':
    write_results(
        tmpresfile,
        outfile,
        (pid1, pid2),
        clargs.label,
        order = 1 if clargs.NLO else 0,
        error=clargs.error,
        uperrorfilename=tmpresfile_upper,
        lwerrorfilename=tmpresfile_lower
    )
    os.remove(tmpresfile)
    os.remove(tmpresfile_upper)
    os.remove(tmpresfile_lower)

else:
    write_results(
        tmpresfile,
        outfile,
        (pid1, pid2),
        clargs.label,
        order = 1 if clargs.NLO else 0,
        error=clargs.error
    )
    os.remove(tmpresfile)



set_pdf_set(original_pdf_set)
