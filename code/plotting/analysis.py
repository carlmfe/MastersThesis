
from math import pi, atan2
import numpy as np
import matplotlib.pyplot as plt
from plot_utils import process2latex, pid2sym, plot_xsec_with_relerrs
from compare import run4slha, savefig_with_info

import pyslha

neu_pids = [1000022, 1000023, 1000025, 1000035]
usq_pids = [1000002, 1000004, 1000006, 2000002, 2000004, 2000006]


def squark_unitary_plot(slha_dir, plotname = None):
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() ]

    R2s = np.zeros((len(slha_paths), 6, 6))
    phimus = []
    for idx, slha_file in enumerate(slha_paths): 
        slha = pyslha.read(slha_file)

        R = np.array([[slha.blocks['USQMIX'][i,j] for j in range(1, 7)] for i in range(1, 7)])

        R2s[idx, :, :] = R.T @ R

    target = np.eye(6, 6)

    print(R2s[len(R2s)//2])

    R2_means = np.mean(R2s, axis=0)
    R2_stds = np.mean(target[np.newaxis, :, :] - R2s, axis=0)

    fig, ax = plt.subplots()

    c = ax.imshow(R2_stds, cmap='RdBu')

    for i in range(6):
        for j in range(6):
            ax.text(i, j, f"{R2_means[i, j] : 5.3e}", ha = 'center', va = 'center', color='w')

    ax.grid(False)

    fig.colorbar(c, ax=ax)

    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def squark_mixing_plot(slha_dir, pid, plotname = None):
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() ]

    isq = usq_pids.index(pid) + 1

    mixings = {flavor : [] for flavor in range(1, 7)}
    phimus = {flavor : [] for flavor in range(1, 7)}
    for slha_file in slha_paths:
        cphi, sphi = slha_file.split('_')[-3:-1]
        if cphi[0] == '0': cphi = '0.' + cphi[1:]
        elif cphi[:2] == '-0': cphi = '-0.' + cphi[2:]
        if sphi[0] == '0': sphi = '0.' + sphi[1:]
        elif sphi[:2] == '-0': sphi = '-0.' + sphi[2:]
        phimu = atan2(float(sphi), float(cphi))

    
        slha = pyslha.read(slha_file)
        for flavor in range(1, 7):
            phimus[flavor].append(phimu if phimu > 0 else 2*pi+phimu)
            Rij2 = slha.blocks['USQMIX'][isq, flavor]**2 + slha.blocks['IMUSQMIX'][isq, flavor]**2
            mixings[flavor].append(Rij2)

    fig, ax = plt.subplots()

    mixings_sum = [0.0] * len(slha_paths)
    for flavor in range(1, 7):
        phimus_sorted = sorted(phimus[flavor])
        mixings_sorted = [mixing for _, mixing in sorted(zip(phimus[flavor], mixings[flavor]), key = lambda pair: pair[0])]

        for idx, sorted_mixing in enumerate(mixings_sorted):
            mixings_sum[idx] += sorted_mixing

        ax.plot(phimus_sorted, mixings_sorted, label=f'$i={flavor}$ (' + pid2sym[usq_pids[flavor-1]] + ')')

    ax.plot(phimus_sorted, mixings_sum, ls='--', c='gray', label='sum')

    ax.legend()
    ax.set_xlabel(r'phase of $\mu$')
    ax.set_ylabel(r'$|R^{\tilde{u}}_{'+str(isq)+r'i}|^2$')
    ax.set_xticks([i*pi/3 for i in range(7)], ['0', r'$\frac{1}{3}\pi$', r'$\frac{2}{3}\pi$', r'$\pi$', r'$\frac{4}{3}\pi$', r'$\frac{5}{3}\pi$', r'$2\pi$'])

    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def squark_mass_plot(slha_dir, plotname = None):
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() ]

    masses = {pid : [] for pid in usq_pids}
    phimus = {pid : [] for pid in usq_pids}
    for slha_file in slha_paths:
        cphi, sphi = slha_file.split('_')[-3:-1]
        if cphi[0] == '0': cphi = '0.' + cphi[1:]
        elif cphi[:2] == '-0': cphi = '-0.' + cphi[2:]
        if sphi[0] == '0': sphi = '0.' + sphi[1:]
        elif sphi[:2] == '-0': sphi = '-0.' + sphi[2:]
        phimu = atan2(float(sphi), float(cphi))

    
        slha = pyslha.read(slha_file)
        for pid in usq_pids:
            phimus[pid].append(phimu if phimu > 0 else 2*pi+phimu)
            masses[pid].append(slha.blocks['MASS'][pid])

    fig, ax = plt.subplots()

    for pid in usq_pids:
        phimus_sorted = sorted(phimus[pid])
        masses_sorted = [mass for _, mass in sorted(zip(phimus[pid], masses[pid]), key = lambda pair: pair[0])]

        ax.plot(phimus_sorted, masses_sorted, label=pid)

    ax.legend()
    ax.set_xlabel(r'phase of $\mu$')
    ax.set_ylabel(r'$m$ [GeV]')
    ax.set_xticks([i*pi/3 for i in range(7)], ['0', r'$\frac{1}{3}\pi$', r'$\frac{2}{3}\pi$', r'$\pi$', r'$\frac{4}{3}\pi$', r'$\frac{5}{3}\pi$', r'$2\pi$'])


    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def mass_plot(slha_dir, plotname = None):
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() ]

    masses = {pid : [] for pid in neu_pids}
    phimus = {pid : [] for pid in neu_pids}
    for slha_file in slha_paths:
        cphi, sphi = slha_file.split('_')[-3:-1]
        if cphi[0] == '0': cphi = '0.' + cphi[1:]
        elif cphi[:2] == '-0': cphi = '-0.' + cphi[2:]
        if sphi[0] == '0': sphi = '0.' + sphi[1:]
        elif sphi[:2] == '-0': sphi = '-0.' + sphi[2:]
        phimu = atan2(float(sphi), float(cphi))

    
        slha = pyslha.read(slha_file)
        for pid in neu_pids:
            phimus[pid].append(phimu if phimu > 0 else 2*pi+phimu)
            masses[pid].append(slha.blocks['MASS'][pid])

    fig, ax = plt.subplots()

    for pid in neu_pids:
        phimus_sorted = sorted(phimus[pid])
        masses_sorted = [mass for _, mass in sorted(zip(phimus[pid], masses[pid]), key = lambda pair: pair[0])]

        ax.plot(phimus_sorted, masses_sorted, label=pid2sym[pid])

    ax.legend()
    ax.set_xlabel(r'phase of $\mu$')
    ax.set_ylabel(r'$m$ [GeV]')
    ax.set_xticks([i*pi/3 for i in range(7)], ['0', r'$\frac{1}{3}\pi$', r'$\frac{2}{3}\pi$', r'$\pi$', r'$\frac{4}{3}\pi$', r'$\frac{5}{3}\pi$', r'$2\pi$'])


    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def mixing_plot(slha_dir, pid, plotname = None):
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() ]

    ineu = neu_pids.index(pid) + 1

    mixings = {flavor : [] for flavor in range(1, 5)}
    phimus = {flavor : [] for flavor in range(1, 5)}
    for slha_file in slha_paths:
        cphi, sphi = slha_file.split('_')[-3:-1]
        if cphi[0] == '0': cphi = '0.' + cphi[1:]
        elif cphi[:2] == '-0': cphi = '-0.' + cphi[2:]
        if sphi[0] == '0': sphi = '0.' + sphi[1:]
        elif sphi[:2] == '-0': sphi = '-0.' + sphi[2:]
        phimu = atan2(float(sphi), float(cphi))

    
        slha = pyslha.read(slha_file)
        for flavor in range(1, 5):
            phimus[flavor].append(phimu if phimu > 0 else 2*pi+phimu)
            Nij2 = slha.blocks['NMIX'][ineu, flavor]**2 + slha.blocks['IMNMIX'][ineu, flavor]**2
            mixings[flavor].append(Nij2)

    fig, ax = plt.subplots()

    for flavor in range(1, 5):
        phimus_sorted = sorted(phimus[flavor])
        mixings_sorted = [mixing for _, mixing in sorted(zip(phimus[flavor], mixings[flavor]), key = lambda pair: pair[0])]

        ax.plot(phimus_sorted, mixings_sorted, label=flavor)

    ax.legend()
    ax.set_xlabel(r'phase of $\mu$')
    ax.set_ylabel(r'$|N|^2$')
    ax.set_xticks([i*pi/3 for i in range(7)], ['0', r'$\frac{1}{3}\pi$', r'$\frac{2}{3}\pi$', r'$\pi$', r'$\frac{4}{3}\pi$', r'$\frac{5}{3}\pi$', r'$2\pi$'])

    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def mu_plot(slha_dir, processes, plotname = None):
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() ]

    phimu_list = {}
    xsec_list = {}

    for proc in processes:
        pid1, pid2 = proc
        proc_handle = process2latex(proc)
        phimu_list[proc_handle] = []
        xsec_list[proc_handle] = []

        res = run4slha('smoking', slha_paths, (pid1, pid2), tnum=False)

        for key, value in res.items():
            cphi, sphi, phi = key.split('_')[-3:]
            if cphi[0] == '0': cphi = '0.' + cphi[1:]
            elif cphi[:2] == '-0': cphi = '-0.' + cphi[2:]
            if sphi[0] == '0': sphi = '0.' + sphi[1:]
            elif sphi[:2] == '-0': sphi = '-0.' + sphi[2:]
            phimu = atan2(float(sphi), float(cphi))

            phimu_list[proc_handle].append(phimu if phimu >= 0 else 2*pi+phimu)
            xsec_list[proc_handle].append(value)

    fig, ax = plt.subplots()
    for proc_handle, phimus in phimu_list.items():
        phimus_sorted = sorted(phimus)
        xsecs_sorted = [xsec for _, xsec in sorted(zip(phimus, xsec_list[proc_handle]), key=lambda pair: pair[0])]

        benchmark = xsecs_sorted[0]
        rel_dev = [(xsec-benchmark)/benchmark for xsec in xsecs_sorted]

        ax.plot(phimus_sorted, rel_dev, label=proc_handle)

        # ax.plot(phimus_sorted, xsecs_sorted, label=proc_handle)

    # ax.set_yscale('log')
    ax.legend()
    ax.set_xlabel('phase of $\mu$')
    ax.set_ylabel('relative deviance')
    ax.set_xticks([i*pi/3 for i in range(7)], ['0', r'$\frac{1}{3}\pi$', r'$\frac{2}{3}\pi$', r'$\pi$', r'$\frac{4}{3}\pi$', r'$\frac{5}{3}\pi$', r'$2\pi$'])

    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()


if __name__ == '__main__':
    import os
    import argparse
    from collections.abc import Iterable
    from subprocess import Popen, PIPE
    import matplotlib.pyplot as plt

    from slha_utils import mktmpfile, mktmpcopy, cleartmpfiles, copy_slha_with_replacement
    from compare import LHAPDF_ROOT, run4slha
    import smoking_utils as sutils
    from slha_utils import idxsort_masses, read_masses
    from smoking_utils import SMOKING_ROOT

    SLHA_ROOT = 'slha/'
    PLOT_ROOT = 'plots/'

    available_pdf_sets = [ f.name for f in os.scandir(LHAPDF_ROOT) if f.is_dir() ]

    parser = argparse.ArgumentParser()
    parser.add_argument('-P', '--PDF', dest='pdf_set', default='PDF4LHC21_40_pdfas', choices=available_pdf_sets)
    parser.add_argument('-S', '--center-of-mass-energy', dest='S', default=13600, type=float)
    parser.add_argument('-v', '--verbose', dest='verbose', action='store_true')
    parser.add_argument('--muplot', dest='plot_mu_phase', action='store_true')
    parser.add_argument('--indir', dest='indir', type=str)
    parser.add_argument('-n', '--plotname', dest='plotname', type=str, default=None)
    parser.add_argument('--mixplot', dest='mixplot', action='store_true')
    parser.add_argument('--pid', dest='pid', type=int)
    parser.add_argument('--massplot', dest='massplot', action='store_true')
    parser.add_argument('--sq-unitarity-plot', dest='sq_unitary', action='store_true')
    parser.add_argument('--usqmixplot', dest='usqmixplot', action='store_true')
    parser.add_argument('--usqmassplot', dest='usqmassplot', action='store_true')
    clargs = parser.parse_args()
    plot_info = clargs.__dict__

    sutils.set_verbosity(clargs.verbose)
    sutils.set_pdf_set(clargs.pdf_set)
    sutils.set_centre_of_mass_energy(clargs.S)

    if clargs.plot_mu_phase:
        process_queue = [
            [(1000022, 1000022), (1000023, 1000023), (1000025, 1000025), (1000035, 1000035)],
            [(1000022, 1000022), (1000022, 1000023), (1000022, 1000025), (1000022, 1000035)],
            [(1000023, 1000022), (1000023, 1000023), (1000023, 1000025), (1000023, 1000035)],
            [(1000025, 1000022), (1000025, 1000023), (1000025, 1000025), (1000025, 1000035)],
            [(1000035, 1000022), (1000035, 1000023), (1000035, 1000025), (1000035, 1000035)]
        ]
        for idx, processes in enumerate(process_queue):
            mu_plot(clargs.indir, [sorted(proc) for proc in processes], clargs.plotname+str(idx))
            plt.clf()

    if clargs.mixplot:
        mixing_plot(clargs.indir, clargs.pid, clargs.plotname)

    if clargs.massplot:
        mass_plot(clargs.indir, clargs.plotname)

    if clargs.sq_unitary:
        squark_unitary_plot(clargs.indir, clargs.plotname)
    
    if clargs.usqmixplot:
        squark_mixing_plot(clargs.indir, clargs.pid, clargs.plotname)

    if clargs.usqmassplot:
        squark_mass_plot(clargs.indir, clargs.plotname)
