import os
import argparse

from slha_utils import *
from smoking_utils import *

original_pdf_set = PDF_SET

LHAPDF_ROOT = "/usr/local/share/LHAPDF/"
SMOKING_ROOT = "/home/carlmfe/Documents/master/smoking/"
available_pdf_sets = [ f.name for f in os.scandir(LHAPDF_ROOT) if f.is_dir() ]

neu_pids = [1000022, 1000023, 1000025, 1000035]

parser = argparse.ArgumentParser()
parser.add_argument("--code", "-c", default="smoking", choices=["smoking", "resummino"])
parser.add_argument("--pid1", dest="pid1", default=1000022, choices=neu_pids, type=int)
parser.add_argument("--pid2", dest="pid2", default=1000023, choices=neu_pids, type=int)
parser.add_argument("-r", "--readfile", dest="readfile", default=SMOKING_ROOT+"example/sps1a.slha")
parser.add_argument("-P", "--PDF", dest="pdf_set", default="PDF4LHC21_40_pdfas", choices=available_pdf_sets)
parser.add_argument("--tnum", dest="tnum", action="store_true")
parser.add_argument("-S", "--center-of-mass-energy", dest="S", default=13600, type=float)
parser.add_argument("-v", "--verbose", dest="verbose", action="store_true")
parser.add_argument("-o", "--outifle", dest="outfile", default="__temp")
parser.add_argument("-l", "--label", dest="label", default=None)
parser.add_argument("--tempstem", dest="tempstem", default=None)
clargs = parser.parse_args()

pid1 = int(clargs.pid1)
pid2 = int(clargs.pid2)

set_verbosity(clargs.verbose)
set_pdf_set(clargs.pdf_set)

set_centre_of_mass_energy(clargs.S)

if clargs.outfile == "__temp":
    outfile = mktmpfile(extension = ".out")
else:
    outfile = clargs.outfile

tmpresfile = mktmpfile(extension = ".out", stem = clargs.tempstem)
if clargs.code == "smoking":
    run_cross_section(clargs.readfile, tmpresfile, pid1, pid2, clargs.tnum)
elif clargs.code == "resummino":
    run_resummino(clargs.readfile, (pid1, pid2), tmpresfile, clargs.tempstem)
    
write_results(tmpresfile, outfile, (pid1, pid2), clargs.label)
os.remove(tmpresfile)

set_pdf_set(original_pdf_set)
