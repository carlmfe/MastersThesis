import matplotlib.pyplot as plt
import seaborn as sns
from matplotlib import rc

rc("text", usetex=True) # set plots to use latex rendering

plt.style.use("seaborn-v0_8-darkgrid")

MARKERS = ["o", "D", "v", "+"]
LINESTYLES = ["solid", "dotted", "dashed", "dashdot"]
COLORS = [
    sns.color_palette('husl')[-3],
    sns.color_palette('husl')[-2],
    sns.color_palette('husl')[-1],
    'mediumorchid',
    sns.color_palette('deep')[-1],
    sns.color_palette('dark')[-1]
]

pid2sym = { # Translation for PDG code to symbol
    1000022 : r"$\tilde{\chi}_1^0$",
    1000023 : r"$\tilde{\chi}_2^0$",
    1000025 : r"$\tilde{\chi}_3^0$",
    1000035 : r"$\tilde{\chi}_4^0$"
}

def plot_xsec_with_relerrs(own_results, other_results, axes = None, labels = None, scatter = True):

    if type(other_results) == dict:
        other_results = [other_results, ]

    if axes is None:
        fig, axes = plt.subplots(2, 1, height_ratios=(2,1), sharex=True)
    
    rel_errs = [None] * len(other_results)
    for idx in range(len(other_results)):
        rel_errs[idx] = dict()
        for key in own_results.keys():
            ownres = own_results[key]
            othres = other_results[idx][key]

            try:
                rel_errs[idx][key] = abs(othres - ownres) / othres
            except ZeroDivisionError:
                continue

    if scatter:
        axes[0].scatter(own_results.keys(), own_results.values(), color=COLORS[0], marker=MARKERS[0], label=labels[0] if labels is not None else None)
        for idx in range(len(other_results)):
            axes[0].scatter(other_results[idx].keys(), other_results[idx].values(), color=COLORS[idx+1], marker=MARKERS[idx+1], label=labels[idx+1] if labels is not None else None)
            axes[1].scatter(rel_errs[idx].keys(), rel_errs[idx].values(), color=COLORS[idx+1], marker=MARKERS[idx+1], label=labels[idx+1] if labels is not None else None)
    else:
        axes[0].plot(own_results.keys(), own_results.values(), color=COLORS[0], linestyle=LINESTYLES[0], label=labels[0] if labels is not None else None)
        for idx in range(len(other_results)):
            axes[0].plot(other_results[idx].keys(), other_results[idx].values(), color=COLORS[idx+1], linestyle=LINESTYLES[idx+1], label=labels[idx+1] if labels is not None else None)
            axes[1].plot(rel_errs[idx].keys(), rel_errs[idx].values(), color=COLORS[idx+1], linestyle=LINESTYLES[idx+1], label=labels[idx+1] if labels is not None else None)


    axes[0].set_yscale("log")

    if labels is not None:
        # fig.legend()
        axes[0].legend(loc= 0, bbox_to_anchor = (0.75,1.15), ncols = 3)
        # axes[1].legend(loc= 0, bbox_to_anchor = (1.5,1.1))

    return fig, axes
