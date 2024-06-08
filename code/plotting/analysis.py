
from math import pi, atan2, sqrt
import numpy as np
import matplotlib.pyplot as plt
from matplotlib import tri, colors
from plot_utils import process2latex, pid2sym, mass_squark_pid2sym, neu_gauge_states, order_strings, plot_xsec_with_relerrs, COLORS
from slha_utils import read_parameter_info
from compare import run4slha, run4arguments, savefig_with_info
from smoking_utils import read_results, decipher_settings_string

from scipy import interpolate

import pyslha

neu_pids = [1000022, 1000023, 1000025, 1000035]
usq_pids = [1000002, 1000004, 1000006, 2000002, 2000004, 2000006]


def squark_unitary_plot(slha_dir, plotname = None):
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() and f.name[-4:] != 'info' ]

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
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() and f.name[-4:] != 'info' ]
    param_info = read_parameter_info(slha_dir)

    isq = usq_pids.index(pid) + 1

    mixings = {flavor : [] for flavor in range(1, 7)}
    phimus = {flavor : [] for flavor in range(1, 7)}
    for slha_file in slha_paths:
        mu_cphi, mu_sphi = param_info[slha_file.split('/')[-1]]

        mu_cphi = float(mu_cphi)
        mu_sphi = float(mu_sphi)

        phi = atan2(float(mu_sphi), float(mu_cphi))
        cphi = np.cos(phi)
        sphi = np.sin(phi)
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

        ax.plot(phimus_sorted, mixings_sorted, label=f'$i={flavor}$ (' + pid2sym[usq_pids[flavor-1]] + ')', lw=3, alpha=0.5)

    # ax.plot(phimus_sorted, mixings_sum, ls='--', c='gray', label='sum')

    ax.legend()
    ax.set_xlabel(r'$\phi_\mu$')
    ax.set_ylabel(r'$|R^{\tilde{u}}_{'+str(isq)+r'i}|^2$')
    ax.set_xticks([i*pi/3 for i in range(7)], ['$0$', r'$\frac{1}{3}\pi$', r'$\frac{2}{3}\pi$', r'$\pi$', r'$\frac{4}{3}\pi$', r'$\frac{5}{3}\pi$', r'$2\pi$'])

    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def squark_mass_plot(slha_dir, plotname = None):
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() and f.name[-4:] != 'info' ]
    param_info = read_parameter_info(slha_dir)

    masses = {pid : [] for pid in usq_pids}
    phimus = {pid : [] for pid in usq_pids}
    for slha_file in slha_paths:
        mu_cphi, mu_sphi = param_info[slha_file.split('/')[-1]]

        mu_cphi = float(mu_cphi)
        mu_sphi = float(mu_sphi)

        phi = atan2(float(mu_sphi), float(mu_cphi))
        cphi = np.cos(phi)
        sphi = np.sin(phi)
        phimu = atan2(float(sphi), float(cphi))

    
        slha = pyslha.read(slha_file)
        for pid in usq_pids:
            phimus[pid].append(phimu if phimu > 0 else 2*pi+phimu)
            masses[pid].append(slha.blocks['MASS'][pid])

    fig, ax = plt.subplots()

    for pid in usq_pids:
        phimus_sorted = sorted(phimus[pid])
        masses_sorted = [mass for _, mass in sorted(zip(phimus[pid], masses[pid]), key = lambda pair: pair[0])]

        ax.plot(phimus_sorted, masses_sorted, label=mass_squark_pid2sym[pid])

    ax.legend()
    ax.set_xlabel(r'$\phi_\mu$')
    ax.set_ylabel(r'$m$ [GeV]')
    ax.set_xticks([i*pi/3 for i in range(7)], ['$0$', r'$\frac{1}{3}\pi$', r'$\frac{2}{3}\pi$', r'$\pi$', r'$\frac{4}{3}\pi$', r'$\frac{5}{3}\pi$', r'$2\pi$'])


    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def mass_plot(slha_dir, plotname = None):
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() and f.name[-4:] != 'info' ]
    param_info = read_parameter_info(slha_dir)

    masses = {pid : [] for pid in neu_pids}
    phimus = {pid : [] for pid in neu_pids}
    for slha_file in slha_paths:
        cphi, sphi = param_info[slha_file.split('/')[-1]]
        phimu = atan2(float(sphi), float(cphi))

    
        slha = pyslha.read(slha_file)
        for pid in neu_pids:
            phimus[pid].append(phimu if phimu >= 0 else 2*pi+phimu)
            masses[pid].append(slha.blocks['MASS'][pid])

    fig, axes = plt.subplots(nrows=2, height_ratios=(2, 1), sharex=True)

    for pid in neu_pids:
        phimus_sorted = sorted(phimus[pid])
        masses_sorted = [mass for _, mass in sorted(zip(phimus[pid], masses[pid]), key = lambda pair: pair[0])]

        masses_rel_dev = [(mass - masses_sorted[0]) / masses_sorted[0] for mass in masses_sorted]

        axes[0].plot(phimus_sorted, masses_sorted, label=pid2sym[pid])
        axes[1].plot(phimus_sorted, masses_rel_dev)

    axes[0].legend()
    axes[0].set_ylabel(r'$m$ [GeV]')
    axes[1].set_ylabel(r'$\frac{m(\phi_\mu) - m(0)}{m(0)}$')
    axes[1].set_xlabel(r'$\phi_\mu$')
    axes[1].set_xticks([i*pi/3 for i in range(7)], ['$0$', r'$\frac{1}{3}\pi$', r'$\frac{2}{3}\pi$', r'$\pi$', r'$\frac{4}{3}\pi$', r'$\frac{5}{3}\pi$', r'$2\pi$'])


    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def mixing_plot(slha_dir, plotname = None):
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() and f.name[-4:] != 'info' ]
    param_info = read_parameter_info(slha_dir)

    fig, axes = plt.subplots(ncols=2, nrows=2, sharex=True)

    for ineu in range(1, 5):

        axidx = ((ineu-1) // 2, (ineu-1) % 2)

        mixings = {flavor : [] for flavor in range(1, 5)}
        phimus = {flavor : [] for flavor in range(1, 5)}
        for slha_file in slha_paths:
            mu_cphi, mu_sphi = param_info[slha_file.split('/')[-1]]

            mu_cphi = float(mu_cphi)
            mu_sphi = float(mu_sphi)

            phi = atan2(float(mu_sphi), float(mu_cphi))
            cphi = np.cos(phi)
            sphi = np.sin(phi)
            phimu = atan2(float(sphi), float(cphi))
        
            slha = pyslha.read(slha_file)
            for flavor in range(1, 5):
                phimus[flavor].append(phimu if phimu > 0 else 2*pi+phimu)
                Nij2 = slha.blocks['NMIX'][ineu, flavor]**2 + slha.blocks['IMNMIX'][ineu, flavor]**2
                mixings[flavor].append(Nij2)

        for flavor in range(1, 5):
            phimus_sorted = sorted(phimus[flavor])
            mixings_sorted = [mixing for _, mixing in sorted(zip(phimus[flavor], mixings[flavor]), key = lambda pair: pair[0])]

            axes[axidx].plot(phimus_sorted, mixings_sorted, label=neu_gauge_states[flavor-1] if ineu == 1 else None)

        axes[axidx].set_ylabel(r'$|N_{'+str(ineu)+'i}'+r'|^2$')
        if ineu > 2:
            axes[axidx].set_xlabel(r'$\phi_\mu$')
            axes[axidx].set_xticks([i*pi/3 for i in range(7)], ['$0$', r'$\frac{1}{3}\pi$', r'$\frac{2}{3}\pi$', r'$\pi$', r'$\frac{4}{3}\pi$', r'$\frac{5}{3}\pi$', r'$2\pi$'])
        axes[axidx].set_ylim(0, 1)

    fig.legend(loc = (0.2, 0.93), ncols=4)
    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def mu_plot(slha_dir, processes, plotname = None, cache = None, order = 0, error = None):
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() and f.name[-4:] != 'info' ]

    param_info = read_parameter_info(slha_dir)

    phimu_list = {}
    xsec_list = {}
    mass_avg_benchmark = {}

    for proc in processes:
        pid1, pid2 = proc
        proc_handle = process2latex(proc)
        phimu_list[proc_handle] = []
        xsec_list[proc_handle] = [[] for o in range(order + 1)]
        mass_avg_benchmark[proc_handle] = 0.0


        proc_cache = None if cache is None else cache.split('.')[0] + str(proc[0]) + "+" + str(proc[1]) + "." + cache.split('.')[1]

        if cache is None:
            res = run4slha('smoking', slha_paths, (pid1, pid2), tnum=False, order=order, error=error)
        elif not os.path.isfile(proc_cache):
            res = run4slha('smoking', slha_paths, (pid1, pid2), tnum=False, cache = proc_cache, order=order, error=error)
        else:
            res = []
            for o in range(order+1):
                if error == 'scale':
                    res_central = read_results(proc_cache, order=o, mu_f=1.0, mu_r=1.0)
                    res_upper = read_results(proc_cache, order=o, mu_f=2.0, mu_r=2.0)
                    res_lower = read_results(proc_cache, order=o, mu_f=0.5, mu_r=0.5)
                    res.append({key : (res_central[key], res_upper[key], res_lower[key]) for key in res_central})
                else:
                    res.append(read_results(proc_cache, order=o))

        for key in res[order].keys():
            mu_cphi, mu_sphi = param_info[key + '.slha']

            mu_cphi = float(mu_cphi)
            mu_sphi = float(mu_sphi)

            phi = atan2(float(mu_sphi), float(mu_cphi))
            cphi = np.cos(phi)
            sphi = np.sin(phi)
            phimu = atan2(float(sphi), float(cphi))

            phimu_list[proc_handle].append(phimu if phimu >= 0 else 2*pi+phimu)
        for o in range(order + 1):
            for key, value in res[o].items():
                slha = pyslha.read(slha_dir + key + '.slha')
                mass_avg = 0.5 * (slha.blocks['MASS'][pid1] + slha.blocks['MASS'][pid2])
                if atan2(float(param_info[key + '.slha'][1]), float(param_info[key + '.slha'][0])) == 0.0:
                    # This means phase of mu = 0
                    mass_avg_benchmark[proc_handle] = mass_avg
                if error == 'scale':
                    xsec = [mass_avg**4 * val for val in value]
                else:
                    xsec = mass_avg**4 * float(value[o])
                xsec_list[proc_handle][o].append(xsec)

    fig, axes = plt.subplots(nrows=2, height_ratios=(2, 1), sharex=True)
    color_idx = 0
    for proc_handle, phimus in phimu_list.items():
        phimus_sorted = sorted(phimus)
        for o in range(order + 1):
            plot_label = proc_handle + order_strings[o] if len(processes) > 1 else order_strings[o]
            plot_c = COLORS[color_idx]
            plot_ls = '--' if o == 0 else '-'
            plot_alpha = 0.7
            plot_fc = 'w' if o==0 else None
            plot_hatch = '///' if o == 0 else None
            xsecs_sorted = [[val/mass_avg_benchmark[proc_handle]**4 for val in xsec] for _, xsec in sorted(zip(phimus, xsec_list[proc_handle][o]), key=lambda pair: pair[0])]

            xsecs_central = [xsec[0] for xsec in xsecs_sorted]
            xsecs_upper = [max(xsec) for xsec in xsecs_sorted]
            xsecs_lower = [min(xsec) for xsec in xsecs_sorted]

            axes[0].plot(phimus_sorted, xsecs_central, label=plot_label, color=plot_c, ls=plot_ls)
            axes[0].fill_between(phimus_sorted, xsecs_lower, xsecs_upper, alpha=plot_alpha, hatch = plot_hatch, facecolor = plot_fc, edgecolor=plot_c)

            benchmark = xsecs_central[0]
            rel_dev = [(xsec-benchmark)/benchmark for xsec in xsecs_central]
            axes[1].plot(phimus_sorted, rel_dev, label=plot_label, color=plot_c, ls=plot_ls)

        color_idx += 1

    if len(processes) == 1:
        axes[0].set_title(r'$PP \to $' + proc_handle, y=1.0)
        axes[0].legend()
    else:
        axes[0].legend(loc = (0.2, 1), ncols = len(processes) // 2)
    # ax.set_yscale('log')
    axes[0].set_ylabel(r'$\tilde{m}_{\tilde\chi^0}^4 \sigma$ [fb]')
    axes[1].set_xlabel('$\phi_\mu$')
    axes[1].set_ylabel(r'$\frac{\tilde{\sigma}(\phi_\mu) - \tilde{\sigma}(0)}{\tilde{\sigma}(0)}$')
    axes[0].set_xticks([i*pi/3 for i in range(7)], [r'$0$', r'$\frac{1}{3}\pi$', r'$\frac{2}{3}\pi$', r'$\pi$', r'$\frac{4}{3}\pi$', r'$\frac{5}{3}\pi$', r'$2\pi$'])

    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def susy_scale_plot(slha_dir, plotname = None):
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() and f.name[-4:] != 'info' ]

    phimus = []
    susy_scales = []
    for slha_path in slha_paths:
        cphi, sphi, phi = slha_path.split('_')[-3:]
        if cphi[0] == '0': cphi = '0.' + cphi[1:]
        elif cphi[:2] == '-0': cphi = '-0.' + cphi[2:]
        if sphi[0] == '0': sphi = '0.' + sphi[1:]
        elif sphi[:2] == '-0': sphi = '-0.' + sphi[2:]
        phimu = atan2(float(sphi), float(cphi))

        phimus.append(phimu if phimu >= 0 else 2*pi+phimu)

        slha = pyslha.read(slha_path)
        susy_scales.append(slha.blocks['FLEXIBLESUSYOUTPUT'][1])

    phimus_sorted = sorted(phimus)
    susy_scales_sorted = [susy_scale for _, susy_scale in sorted(zip(phimus, susy_scales), key=lambda pair: pair[0])]


    fig, ax = plt.subplots()
    ax.plot(phimus_sorted, susy_scales_sorted)
    ax.set_xlabel(r'$\phi_\mu$')
    ax.set_ylabel(r'SUSY scale')

    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def plot_slha_parameter(slha_dir, block, idcs, plotname = None, ylims=None):
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() and f.name[-4:] != 'info' ]

    param_info = read_parameter_info(slha_dir)

    phimus = []
    param_vals = []
    for slha_path in slha_paths:
        mu_cphi, mu_sphi = param_info[slha_path.split('/')[-1]]
        mu_cphi = float(mu_cphi)
        mu_sphi = float(mu_sphi)

        phi = atan2(float(mu_sphi), float(mu_cphi))
        cphi = np.cos(phi)
        sphi = np.sin(phi)
        phimu = atan2(float(sphi), float(cphi))

        phimus.append(phimu if phimu >= 0 else 2*pi+phimu)

        slha = pyslha.read(slha_path)
        param_vals.append(slha.blocks[block][idcs])

    phimus_sorted = sorted(phimus)
    param_vals_sorted = [susy_scale for _, susy_scale in sorted(zip(phimus, param_vals), key=lambda pair: pair[0])]


    fig, ax = plt.subplots()
    ax.plot(phimus_sorted, param_vals_sorted)
    ax.set_xlabel(r'$\phi_\mu$')
    ax.set_ylabel(f'{block} {idcs}')
    ax.set_xticks([i*pi/3 for i in range(7)], ['$0$', r'$\frac{1}{3}\pi$', r'$\frac{2}{3}\pi$', r'$\pi$', r'$\frac{4}{3}\pi$', r'$\frac{5}{3}\pi$', r'$2\pi$'])

    if ylims is not None:
        ymin, ymax = [
            eval(lim.replace('min', str(ax.get_ylim()[0])).replace('max', str(ax.get_ylim()[1])))
            for lim in ylims
        ]
        ax.set_ylim(bottom=ymin, top=ymax)
    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def charge_plot(slha_dir, charge, plotname = None, ylims = None):
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() and f.name[-4:] != 'info' ]

    phimus = []
    charge_vals = []
    for slha_path in slha_paths:
        cphi, sphi, phi = slha_path.split('_')[-3:]
        if cphi[0] == '0': cphi = '0.' + cphi[1:]
        elif cphi[:2] == '-0': cphi = '-0.' + cphi[2:]
        if sphi[0] == '0': sphi = '0.' + sphi[1:]
        elif sphi[:2] == '-0': sphi = '-0.' + sphi[2:]
        phimu = atan2(float(sphi), float(cphi))

        phimus.append(phimu if phimu >= 0 else 2*pi+phimu)

        slha = pyslha.read(slha_path)
        charge_vals.append(charge(slha.blocks))

    phimus_sorted = sorted(phimus)
    charge_vals_sorted = [susy_scale for _, susy_scale in sorted(zip(phimus, charge_vals), key=lambda pair: pair[0])]


    fig, ax = plt.subplots()
    ax.plot(phimus_sorted, charge_vals_sorted)
    ax.set_xlabel(r'$\phi_\mu$')
    ax.set_ylabel('charge')
    ax.set_xticks([i*pi/3 for i in range(7)], ['$0$', r'$\frac{1}{3}\pi$', r'$\frac{2}{3}\pi$', r'$\pi$', r'$\frac{4}{3}\pi$', r'$\frac{5}{3}\pi$', r'$2\pi$'])

    if ylims is not None:
        ymin, ymax = [
            eval(lim.replace('min', str(ax.get_ylim()[0])).replace('max', str(ax.get_ylim()[1])))
            for lim in ylims
        ]
        ax.set_ylim(bottom=ymin, top=ymax)
    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def color_plot(slha_dir, processes, plotname = None, ylims = None, cache = None, order = 0):
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() and f.name[-4:] != 'info' ]

    # Find parameters defining each file in slha_dir
    param_info = read_parameter_info(slha_dir)

    phimu_list = {}
    mass_list = {}
    xsec_list = {}
    mass_avg_max = {}

    for proc in processes:
        pid1, pid2 = proc
        proc_handle = process2latex(proc)
        phimu_list[proc_handle] = []
        mass_list[proc_handle] = []
        xsec_list[proc_handle] = []
        mass_avg_max[proc_handle] = 0.0

        proc_cache = None if cache is None else cache.split('.')[0] + str(proc[0]) + "+" + str(proc[1]) + "." + cache.split('.')[1]

        res = []

        # if cache is None:
        #     res = run4slha('smoking', slha_paths, (pid1, pid2), tnum=False, order=order)
        # elif not os.path.isfile(proc_cache):
        #     res = run4slha('smoking', slha_paths, (pid1, pid2), tnum=False, cache = proc_cache, order=order)
        if cache is None:
            res = run4slha('resummino', slha_paths, (pid1, pid2), tnum=False, order=order)
        elif not os.path.isfile(proc_cache):
            res = run4slha('resummino', slha_paths, (pid1, pid2), tnum=False, cache = proc_cache, order=order)

        else:
            for o in range(order + 1):
                res.append(read_results(proc_cache, order=o))

        for key, value in res[order].items():
            if value == 0.0:
                continue
            slha = pyslha.read(slha_dir + key + '.slha')
            mass_avg = 0.5 * (abs(slha.blocks['MASS'][pid1]) + abs(slha.blocks['MASS'][pid2]))

            if mass_avg > mass_avg_max[proc_handle]: mass_avg_max[proc_handle] = mass_avg

            xsec_list[proc_handle].append(mass_avg**4 * float(value[order]) if isinstance(value, list) else mass_avg**4*value)

            '''

            mu_cphi, mu_sphi = param_info[key + '.slha']
            mu_cphi = float(mu_cphi)
            mu_sphi = float(mu_sphi)

            phimu = atan2(float(mu_sphi), float(mu_cphi))

            phimu_list[proc_handle].append(phimu if phimu >= 0 else 2*pi+phimu)
            mass_list[proc_handle].append(slha.blocks['MASS'][pid1])

            '''

            gluino_mass = slha.blocks['MASS'][1000021]
            squark_mass = min([slha.blocks['MASS'][1000001], slha.blocks['MASS'][1000002]])

            # print(gluino_mass, squark_mass, param_info[key + '.slha'])

            phimu_list[proc_handle].append(gluino_mass)
            mass_list[proc_handle].append(squark_mass)

            '''

            usq_mass, dsq_mass = param_info[key + '.slha']

            phimu_list[proc_handle].append(dsq_mass)
            mass_list[proc_handle].append(usq_mass)

            '''


    fig, ax = plt.subplots()
    for proc_handle, xsec in xsec_list.items():

        # masses = np.array(mass_list[proc_handle], dtype=float)
        # phimus = np.array(phimu_list[proc_handle], dtype=float)

        # interpolater = interpolate.LinearNDInterpolator(list(zip(mass_list[proc_handle], phimu_list[proc_handle])), xsec, fill_value=np.nan)

        # X, Y = np.meshgrid(np.linspace(np.min(masses), np.max(masses), 100), np.linspace(np.min(phimus), np.max(phimus), 100))

        # contour = ax.pcolormesh(X, Y, interpolater(X, Y), cmap="magma")

        triangulated_points = tri.Triangulation(mass_list[proc_handle], phimu_list[proc_handle])

        contour = ax.tricontourf(triangulated_points, [val / mass_avg_max[proc_handle]**4 for val in xsec], levels=100, cmap='PRGn')
        colorbar = plt.colorbar(contour)
        colorbar.set_label(r'$\tilde{m}_{\tilde\chi^0}^4 \sigma$ [fb]')
        # colorbar.set_label(r'$\sigma$ [fb]')


        # ax.scatter(mass_list[proc_handle], phimu_list[proc_handle], c=xsec, norm=colors.Normalize(np.min(xsec), np.max(xsec)), cmap="magma")

    ax.set_title(r'$PP \to $' + proc_handle, y=1.0)


    # ax.set_xlabel(r'$m_{\tilde{\chi}^0_1}$ [GeV]')
    # ax.set_ylabel(r'$\phi_\mu$')
    # ylim = ax.get_ylim()
    # ax.set_yticks([i*pi/3 for i in range(7)], [r'$0$', r'$\frac{1}{3}\pi$', r'$\frac{2}{3}\pi$', r'$\pi$', r'$\frac{4}{3}\pi$', r'$\frac{5}{3}\pi$', r'$2\pi$'])
    # ax.set_ylim(*ylim)

    ax.set_xlabel(r'$m_{\tilde{q}}$ [GeV]')
    ax.set_ylabel(r'$m_{\tilde{g}}$ [GeV]')

    # ax.set_xlabel(r'$m_{\tilde{u}}$ [GeV]')
    # ax.set_ylabel(r'$m_{\tilde{d}}$ [GeV]')

    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def parameter_dep_plot(slha_dir, processes, error = None, plotname = None, ylims = None, cache = None, order = 1):
    slha_paths = [ slha_dir+f.name for f in os.scandir(slha_dir) if f.is_file() and f.name[-4:] != 'info' ]

    param_info = read_parameter_info(slha_dir)

    param_val_list = {}
    xsec_list = {}
    xsec_upper_list = {}
    xsec_lower_list = {}

    for proc in processes:
        pid1, pid2 = proc
        proc_handle = process2latex(proc)
        param_val_list[proc_handle] = []
        xsec_list[proc_handle] = [[] for o in range(order + 1)]
        xsec_upper_list[proc_handle] = [[] for o in range(order + 1)]
        xsec_lower_list[proc_handle] = [[] for o in range(order + 1)]

        proc_cache = None if cache is None else cache.split('.')[0] + str(proc[0]) + "+" + str(proc[1]) + "." + cache.split('.')[1]

        res = []

        if cache is None:
            res = run4slha('smoking', slha_paths, (pid1, pid2), tnum=False, order=order, error=error)
        elif not os.path.isfile(proc_cache):
            res = run4slha('smoking', slha_paths, (pid1, pid2), tnum=False, cache = proc_cache, order=order, error=error)
        else:
            for o in range(order + 1):
                # res.append({float(param_info[key + '.slha'][0]) : value for key, value in read_results(proc_cache, order = o).items()})
                res.append({key : value for key, value in read_results(proc_cache, order = o).items()})

        for key in res[0].keys():
            slha = pyslha.read(slha_dir + key + '.slha')
            param_val_list[proc_handle].append(slha.blocks['MASS'][1000022])
            # param_val_list[proc_handle].append(key)


        for o in range(order + 1):
            mass_avg_max = 0.0
            for key, value in res[o].items():
                if error is None:
                    # Here value is just a float
                    xsec_list[proc_handle].append(value)

                elif error == "pdf":
                    # Here value is a list with one 'xsec (settings)' for each pdf set member
                    xsecs_by_pdf = []
                    for xsec in value:
                        slha = pyslha.read(slha_dir + key + '.slha')
                        mass_avg = 0.5 * (slha.blocks['MASS'][1000022] + slha.blocks['MASS'][1000023])
                        if mass_avg > mass_avg_max: mass_avg_max = mass_avg
                        xsecs_by_pdf.append(mass_avg**4 * xsec)
                    xsec_central = xsecs_by_pdf[0]
                    xsec_error = sqrt(sum((xsec - xsec_central)**2 for xsec in xsecs_by_pdf[1:]))
                    xsec_list[proc_handle][o].append(xsec_central)
                    xsec_upper_list[proc_handle][o].append(xsec_central + xsec_error)
                    xsec_lower_list[proc_handle][o].append(xsec_central - xsec_error)
                elif error == "scale":
                    # Here value is a list with one 'xsec (settings)' for central, lower, upper in order.
                    for idx, xsec_string in enumerate(value):
                        xsec, settings_string = xsec_string.split('(')
                        settings_string = settings_string.split(')')[0]  # Shed end parenthesis
                        settings = decipher_settings_string(settings_string)
                        xsec = float(xsec)
                        if idx == 0:
                            xsec_list[proc_handle][o].append(xsec)
                        elif idx == 1:
                            xsec_lower_list[proc_handle][o].append(xsec)
                        elif idx == 2:
                            xsec_upper_list[proc_handle][o].append(xsec)
                        else:
                            # Perhaps raise error?
                            pass

    fig, axes = plt.subplots(nrows=2, height_ratios=(2, 1), sharex=True)
    for idx, (proc_handle, param_vals) in enumerate(param_val_list.items()):
        param_vals_sorted = sorted(param_vals)
        for o in range(order + 1):
            plot_label = proc_handle + order_strings[o] if len(processes) > 1 else order_strings[o]
            plot_c = COLORS[idx]
            plot_ls = '--' if o == 0 else '-'
            # plot_alpha = 0.3 if o==0 else 0.7
            plot_alpha = 0.7
            plot_fc = 'w' if o==0 else None
            plot_hatch = '///' if o == 0 else None


            xsecs_sorted = [xsec / mass_avg_max**4 for _, xsec in sorted(zip(param_vals, xsec_list[proc_handle][o]), key=lambda pair: pair[0])]
            axes[0].plot(param_vals_sorted, xsecs_sorted, label=plot_label, color=plot_c, ls=plot_ls)
            if error in ["pdf", "scale"]:
                xsecs_upper_sorted = [max([xsec_low, xsec_up]) / mass_avg_max**4 for _, xsec_low, xsec_up in sorted(zip(param_vals, xsec_lower_list[proc_handle][o], xsec_upper_list[proc_handle][o]), key=lambda pair: pair[0])]
                xsecs_lower_sorted = [min([xsec_low, xsec_up]) / mass_avg_max**4 for _, xsec_low, xsec_up in sorted(zip(param_vals, xsec_lower_list[proc_handle][o], xsec_upper_list[proc_handle][o]), key=lambda pair: pair[0])]
                # axes[0].plot(param_vals_sorted, xsecs_upper_sorted, lw=1, ls = '--', color=plot_c)
                # axes[0].plot(param_vals_sorted, xsecs_lower_sorted, lw=1, ls = '--', color=plot_c)
                axes[0].fill_between(param_vals_sorted, xsecs_lower_sorted, xsecs_upper_sorted, alpha=plot_alpha, hatch = plot_hatch, facecolor = plot_fc, edgecolor=plot_c)

                upper_rel_errs = [xsec_upper / xsec for xsec, xsec_upper in zip(xsecs_sorted, xsecs_upper_sorted)]
                lower_rel_errs = [xsec_lower / xsec for xsec, xsec_lower in zip(xsecs_sorted, xsecs_lower_sorted)]

                # axes[1].plot(param_vals_sorted, upper_rel_errs, color=plot_c, lw=1, ls='--')
                # axes[1].plot(param_vals_sorted, lower_rel_errs, color=plot_c, lw=1, ls='--')
                axes[1].fill_between(param_vals_sorted, lower_rel_errs, upper_rel_errs, color=plot_c, hatch = plot_hatch, alpha=plot_alpha, label=plot_label, facecolor = plot_fc, edgecolor=plot_c)

    if len(processes) == 1:
        axes[0].set_title(r'$PP \to $' + proc_handle, y=1.0)
        axes[0].legend()
    else:
        axes[0].legend(loc = 'upper center', ncols = len(processes))
    axes[0].set_yscale('log')
    axes[0].set_ylabel(r'$\tilde{m}_{\tilde\chi^0}^4 \sigma$ [fb]')
    if error is None:
        ylabel = 'Relative error'
    elif error == 'scale':
        ylabel = r'$\delta\sigma^{\pm}_{\mu} / \sigma$'
    elif error == 'pdf':
        ylabel = r'$\delta\sigma_\mathrm{PDF} / \sigma$'
    axes[1].set_ylabel(ylabel)
    # axes[1].set_xlabel('$|\mu|$ [GeV]')
    axes[1].set_xlabel(r'$m_{\tilde{\chi}^0_1}$ [GeV]')
    axes[1].legend(loc='upper left', ncols = 2)

    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def muR_scale_plot(slha_file, processes, plotname = None, ylims = None, cache = None, order = 0):

    slha = pyslha.read(slha_file)
    scale_list = [{} for o in range(order+1)]
    xsec_list = [{} for o in range(order+1)]

    fig, ax = plt.subplots()
    for proc in processes:
        pid1, pid2 = proc
        proc_handle = process2latex(proc)
        for o in range(order+1):
            scale_list[o][proc_handle] = []
            xsec_list[o][proc_handle] = []


        proc_cache = None if cache is None else cache.split('.')[0] + str(proc[0]) + "+" + str(proc[1]) + "." + cache.split('.')[1]

        mass1 = slha.blocks["MASS"][pid1]
        mass2 = slha.blocks["MASS"][pid2]
        mass_avg = 0.5 * (mass1 + mass2)

        n = 8
        scales2run = list(range(1, n+1))
        scales2run.extend([1/scale for scale in scales2run[1:]])

        if cache is None:
            res = run4arguments(
                'smoking',
                slha_file,
                (pid1, pid2),
                {'--scale_scheme 1 --central_scale' : [f"{mass_avg} {scale*mass_avg}" for scale in scales2run]},
                tnum=False,
                order=order
            )
        elif not os.path.isfile(proc_cache):
            res = run4arguments(
                'smoking',
                slha_file,
                (pid1, pid2),
                {'--scale_scheme 1 --central_scale' : [f"{mass_avg} {scale*mass_avg}" for scale in scales2run]},
                tnum=False,
                cache = proc_cache,
                order=order
            )
        else:
            res = read_results(proc_cache)
        for o in range(order+1):
            for key, value in res.items():
                scale = float(key.split('_')[-1])
                xsec = float(value[o]) if isinstance(value, list) else value
                scale_list[o][proc_handle].append(scale)
                xsec_list[o][proc_handle].append(xsec)

    for o in range(order+1):
        color_idx = 0
        for proc_handle, scales in scale_list[o].items():
            if len(xsec_list[o][proc_handle]) == 0:
                continue
            scales_sorted = sorted(scales)
            xsecs_sorted = [xsec for _, xsec in sorted(zip(scales, xsec_list[o][proc_handle]), key=lambda pair: pair[0])]

            scale_benchmark = scales_sorted[len(scales_sorted) // 2]
            xsec_benchmark = xsecs_sorted[len(scales_sorted) // 2]
            scaled_scales = [scale / scale_benchmark for scale in scales_sorted]
            scaled_xsecs = [xsec / xsec_benchmark for xsec in xsecs_sorted]

            ax.plot(scaled_scales, scaled_xsecs, label=proc_handle.replace('+', '') + ' ' + order_strings[o], c = COLORS[color_idx], ls='--' if o == 0 else '-')
            color_idx += 1

    ax.axvline(0.5, ls='--', color='gray', lw=1)
    ax.axvline(2.0, ls='--', color='gray', lw=1)

    ax.legend()
    # ax.set_yscale('log')
    ax.set_xscale('log', base=2)
    ax.set_ylabel(r'$\frac{\sigma(\mu_R)}{\sigma(\mu_0)}$')
    ax.set_xlabel(r'$\mu_R / \mu_0$')
    
    if ylims is not None:
        ymin, ymax = [
            eval(lim.replace('min', str(ax.get_ylim()[0])).replace('max', str(ax.get_ylim()[1])))
            for lim in ylims
        ]
        ax.set_ylim(bottom=ymin, top=ymax)

    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def muF_scale_plot(slha_file, processes, plotname = None, ylims = None, cache = None, order = 0):

    slha = pyslha.read(slha_file)
    scale_list = [{} for o in range(order+1)]
    xsec_list = [{} for o in range(order+1)]

    fig, ax = plt.subplots()
    for proc in processes:
        pid1, pid2 = proc
        proc_handle = process2latex(proc)
        for o in range(order+1):
            scale_list[o][proc_handle] = []
            xsec_list[o][proc_handle] = []


        proc_cache = None if cache is None else cache.split('.')[0] + str(proc[0]) + "+" + str(proc[1]) + "." + cache.split('.')[1]

        mass1 = slha.blocks["MASS"][pid1]
        mass2 = slha.blocks["MASS"][pid2]
        mass_avg = 0.5 * (mass1 + mass2)

        n = 8
        scales2run = list(range(1, n+1))
        scales2run.extend([1/scale for scale in scales2run[1:]])

        if cache is None:
            res = run4arguments(
                'smoking',
                slha_file,
                (pid1, pid2),
                {'--scale_scheme 1 --central_scale' : [f"{scale*mass_avg} {mass_avg}" for scale in scales2run]},
                tnum=False,
                order=order
            )
        elif not os.path.isfile(proc_cache):
            res = run4arguments(
                'smoking',
                slha_file,
                (pid1, pid2),
                {'--scale_scheme 1 --central_scale' : [f"{scale*mass_avg} {mass_avg}" for scale in scales2run]},
                tnum=False,
                cache = proc_cache,
                order=order
            )
        else:
            res = read_results(proc_cache)
        for o in range(order+1):
            for key, value in res.items():
                scale = float(key.split('_')[0])
                xsec = float(value[o]) if isinstance(value, list) else value
                scale_list[o][proc_handle].append(scale)
                xsec_list[o][proc_handle].append(xsec)

    for o in range(order+1):
        color_idx = 0
        for proc_handle, scales in scale_list[o].items():
            if len(xsec_list[o][proc_handle]) == 0:
                continue
            scales_sorted = sorted(scales)
            xsecs_sorted = [xsec for _, xsec in sorted(zip(scales, xsec_list[o][proc_handle]), key=lambda pair: pair[0])]

            scale_benchmark = scales_sorted[len(scales_sorted) // 2]
            xsec_benchmark = xsecs_sorted[len(scales_sorted) // 2]
            scaled_scales = [scale / scale_benchmark for scale in scales_sorted]
            scaled_xsecs = [xsec / xsec_benchmark for xsec in xsecs_sorted]

            ax.plot(scaled_scales, scaled_xsecs, label=proc_handle.replace('+', '') + ' ' + order_strings[o], c = COLORS[color_idx], ls='--' if o == 0 else '-')
            color_idx += 1

    ax.axvline(0.5, ls='--', color='gray', lw=1)
    ax.axvline(2.0, ls='--', color='gray', lw=1)

    ax.legend()
    # ax.set_yscale('log')
    ax.set_xscale('log', base=2)
    ax.set_ylabel(r'$\frac{\sigma(\mu_F)}{\sigma(\mu_0)}$')
    ax.set_xlabel(r'$\mu_F / \mu_0$')

    if ylims is not None:
        ymin, ymax = [
            eval(lim.replace('min', str(ax.get_ylim()[0])).replace('max', str(ax.get_ylim()[1])))
            for lim in ylims
        ]
        ax.set_ylim(bottom=ymin, top=ymax)

    if plotname is not None:
        savefig_with_info(plotname)
    else:
        plt.show()

def mu_scale_plot(slha_file, processes, plotname = None, ylims = None, cache = None, order = 0):

    slha = pyslha.read(slha_file)
    scale_list = [{} for o in range(order+1)]
    xsec_list = [{} for o in range(order+1)]

    fig, ax = plt.subplots()
    for proc in processes:
        pid1, pid2 = proc
        proc_handle = process2latex(proc)
        for o in range(order+1):
            scale_list[o][proc_handle] = []
            xsec_list[o][proc_handle] = []


        proc_cache = None if cache is None else cache.split('.')[0] + str(proc[0]) + "+" + str(proc[1]) + "." + cache.split('.')[1]

        mass1 = slha.blocks["MASS"][pid1]
        mass2 = slha.blocks["MASS"][pid2]
        mass_avg = 0.5 * (mass1 + mass2)

        n = 8
        scales2run = list(range(1, n+1))
        scales2run.extend([1/scale for scale in scales2run[1:]])

        if cache is None:
            res = run4arguments(
                'smoking',
                slha_file,
                (pid1, pid2),
                {'--scale_scheme 1 --central_scale' : [f"{scale*mass_avg} {scale*mass_avg}" for scale in scales2run]},
                tnum=False,
                order=order
            )
        elif not os.path.isfile(proc_cache):
            res = run4arguments(
                'smoking',
                slha_file,
                (pid1, pid2),
                {'--scale_scheme 1 --central_scale' : [f"{scale*mass_avg} {scale*mass_avg}" for scale in scales2run]},
                tnum=False,
                cache = proc_cache,
                order=order
            )
        else:
            res = read_results(proc_cache)
        for o in range(order+1):
            for key, value in res.items():
                scale = float(key.split('_')[-1])
                xsec = float(value[o]) if isinstance(value, list) else value
                scale_list[o][proc_handle].append(scale)
                xsec_list[o][proc_handle].append(xsec)

    for o in range(order+1):
        color_idx = 0
        for proc_handle, scales in scale_list[o].items():
            if len(xsec_list[o][proc_handle]) == 0:
                continue
            scales_sorted = sorted(scales)
            xsecs_sorted = [xsec for _, xsec in sorted(zip(scales, xsec_list[o][proc_handle]), key=lambda pair: pair[0])]

            scale_benchmark = scales_sorted[len(scales_sorted) // 2]
            xsec_benchmark = xsecs_sorted[len(scales_sorted) // 2]
            scaled_scales = [scale / scale_benchmark for scale in scales_sorted]
            scaled_xsecs = [xsec / xsec_benchmark for xsec in xsecs_sorted]

            ax.plot(scaled_scales, scaled_xsecs, label=proc_handle.replace('+', '') + ' ' + order_strings[o], c = COLORS[color_idx], ls='--' if o == 0 else '-')
            color_idx += 1

    ax.axvline(0.5, ls='--', color='gray', lw=1)
    ax.axvline(2.0, ls='--', color='gray', lw=1)

    ax.legend()
    # ax.set_yscale('log')
    ax.set_xscale('log', base=2)
    ax.set_ylabel(r'$\frac{\sigma(\mu_R)}{\sigma(\mu_0)}$')
    ax.set_xlabel(r'$\mu / \mu_0$')
    
    if ylims is not None:
        ymin, ymax = [
            eval(lim.replace('min', str(ax.get_ylim()[0])).replace('max', str(ax.get_ylim()[1])))
            for lim in ylims
        ]
        ax.set_ylim(bottom=ymin, top=ymax)

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
    parser.add_argument('--susy-scale-plot', dest='susy_scale', action='store_true')
    parser.add_argument('--slha-param-plot', dest='slha_param', nargs='+')
    parser.add_argument('--colorplot', dest='plot_colorplot', action='store_true')
    parser.add_argument('--param_plot', dest="plot_paramplot", action="store_true")
    parser.add_argument('--mur_plot', dest='plot_muR', type=str, default=None)
    parser.add_argument('--muf_plot', dest='plot_muF', type=str, default=None)
    parser.add_argument('--scale_error_plot', dest='plot_scale_error', type=str, default=None)
    parser.add_argument('--error', dest='error', type=str, default=None)
    parser.add_argument('--ylims', dest='ylims', nargs='+', type=str, default=['min', 'max'])
    parser.add_argument('-c', '--cache', dest='cache', type=str, default=None)
    parser.add_argument('-o', '--order', dest='order', type=int, default=0)
    clargs = parser.parse_args()
    plot_info = clargs.__dict__

    sutils.set_verbosity(clargs.verbose)
    sutils.set_pdf_set(clargs.pdf_set)
    sutils.set_centre_of_mass_energy(clargs.S)

    if clargs.plot_mu_phase:
        # process_queue = [
        #     [(1000022, 1000022), (1000023, 1000023), (1000025, 1000025), (1000035, 1000035)],
        #     [(1000022, 1000022), (1000022, 1000023), (1000022, 1000025), (1000022, 1000035)],
        #     [(1000023, 1000022), (1000023, 1000023), (1000023, 1000025), (1000023, 1000035)],
        #     [(1000025, 1000022), (1000025, 1000023), (1000025, 1000025), (1000025, 1000035)],
        #     [(1000035, 1000022), (1000035, 1000023), (1000035, 1000025), (1000035, 1000035)]
        # ]
        # for idx, processes in enumerate(process_queue):
        #     mu_plot(clargs.indir, [sorted(proc) for proc in processes], clargs.plotname+str(idx), cache=clargs.cache, order=clargs.order, error=clargs.error)
        #     plt.clf()
        # mu_plot(clargs.indir, [(1000022, 1000022), (1000023, 1000023), (1000023, 1000025), (1000025, 1000035)], clargs.plotname, cache=clargs.cache, order=clargs.order, error=clargs.error)
        mu_plot(clargs.indir, [(1000022, 1000023)], clargs.plotname, cache=clargs.cache, order=clargs.order, error=clargs.error)


    if clargs.mixplot:
        mixing_plot(clargs.indir, clargs.plotname)

    if clargs.massplot:
        mass_plot(clargs.indir, clargs.plotname)

    if clargs.sq_unitary:
        squark_unitary_plot(clargs.indir, clargs.plotname)
    
    if clargs.usqmixplot:
        squark_mixing_plot(clargs.indir, clargs.pid, clargs.plotname)

    if clargs.usqmassplot:
        squark_mass_plot(clargs.indir, clargs.plotname)

    if clargs.susy_scale:
        susy_scale_plot(clargs.indir, clargs.plotname)

    if clargs.slha_param:
        block = clargs.slha_param[0]
        idcs = [int(idx) for idx in clargs.slha_param[1:]]
        plot_slha_parameter(clargs.indir, block, idcs, clargs.plotname, clargs.ylims)

    if clargs.plot_colorplot:
        color_plot(clargs.indir, [(1000022, 1000023)], clargs.plotname, cache=clargs.cache, order=clargs.order)
        # color_plot(clargs.indir, [(1000023, 1000025)], clargs.plotname, cache=clargs.cache, order=clargs.order)

    if clargs.plot_paramplot:
        parameter_dep_plot(clargs.indir, [(1000022, 1000023)], error=clargs.error, plotname=clargs.plotname, ylims=clargs.ylims, cache=clargs.cache, order=clargs.order)

    if clargs.plot_muR is not None:
        muR_scale_plot(clargs.plot_muR, [(1000022, 1000022), (1000022, 1000023), (1000023, 1000023)], clargs.plotname, cache=clargs.cache, order=clargs.order, ylims=clargs.ylims)
        # muR_scale_plot(clargs.plot_muR, [(1000022, 1000023)], clargs.plotname, cache=clargs.cache, order=clargs.order, ylims=clargs.ylims)

    if clargs.plot_muF is not None:
        muF_scale_plot(clargs.plot_muF, [(1000022, 1000022), (1000022, 1000023), (1000023, 1000023)], clargs.plotname, cache=clargs.cache, order=clargs.order, ylims=clargs.ylims)
        # muF_scale_plot(clargs.plot_muF, [(1000022, 1000023)], clargs.plotname, cache=clargs.cache, order=clargs.order, ylims=clargs.ylims)

    if clargs.plot_scale_error is not None:
        mu_scale_plot(clargs.plot_scale_error, [(1000022, 1000022), (1000022, 1000023), (1000023, 1000023)], clargs.plotname, cache=clargs.cache, order=clargs.order, ylims=clargs.ylims)
        # mu_scale_plot(clargs.plot_scale_error, [(1000022, 1000023)], clargs.plotname, cache=clargs.cache, order=clargs.order, ylims=clargs.ylims)


    exit(1)

    import supercharge as sc
    def foo(slha_blocks):
        sc.set_weinberg(slha_blocks['SMINPUTS'][4], slha_blocks['MASS'][24], 0)
        sc.set_nmix(slha_blocks['NMIX'], slha_blocks['IMNMIX'])
        sc.set_sqmix(slha_blocks['USQMIX'], slha_blocks['IMUSQMIX'], slha_blocks['DSQMIX'], slha_blocks['IMDSQMIX'])

        # return sc.ZXYnorm(4, 4, 2/3, 0.5)
        # return sc.Z2re(4, 4, 2/3, 0.5)
        return sc.QXYsum(1, 4, 4, 2, 2, 2/3, 0.5)
        
    charge_plot(clargs.indir, foo, clargs.plotname, clargs.ylims)
