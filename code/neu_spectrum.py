from math import sqrt, sin, cos, tan, atan, pi
from cmath import phase, exp
import numpy as np
from scipy.linalg import eig, eigh, inv

from calctools.num_utils import get_finite, argfilter_quadratic, isNotDuplicate
from calctools.diagonalize import takagi_factorize

import pyslha


def get_parameters(slha_file):
    d = pyslha.read(slha_file, ignorenomass=True, ignoreblocks=['FLEXIBLESUSY', 'FLEXIBLEDECAY'])

    result = {}

    # Get Z mass
    try:
        result["mZ"] = d.blocks['MASS'][23]
    except KeyError:
        result["mZ"] = d.blocks['SMINPUTS'][4]
    
    # Get W mass
    try:
        result["mW"] = d.blocks['MASS'][24]
    except KeyError:
        # If mass-block is not populated then get W mass in Gmu scheme
        alpha = 1. / d.blocks['SMINPUTS'][1]
        GF = d.blocks['SMINPUTS'][2]
        result["mW"] = sqrt(result["mZ"] * 0.5 * (result["mZ"] + sqrt(result["mZ"]**2 - 2*sqrt(2)*pi*alpha/GF)))

    # Compute Weinberg angle functions
    cos2W = (result["mW"] / result["mZ"])**2
    sin2W = 1 - cos2W
    result["sinW"] = sqrt(sin2W)
    result["cosW"] = sqrt(cos2W)

    # Get mu
    result["mu"]  = d.blocks["EXTPAR"][23]
    try:
        result["mu"] +=  1j * d.blocks["IMEXTPAR"][23]
    except KeyError:
        pass

    # Get tan(beta)
    try:
        result["tan_beta"] = d.blocks["EXTPAR"][25]
    except KeyError:
        result["tan_beta"] = d.blocks["MINPAR"][3]

    # Get M1
    result["M1"] = d.blocks["EXTPAR"][1]
    try:
        result["M1"] +=  1j * d.blocks["IMEXTPAR"][1]
    except KeyError:
        pass

    # Get M2
    result["M2"] = d.blocks["EXTPAR"][2]
    try:
        result["M2"] +=  1j * d.blocks["IMEXTPAR"][2]
    except KeyError:
        pass
    return result


def generate_neu_spectrum(slha_file):
    params = get_parameters(slha_file)

    M1 = params["M1"]
    M2 = params["M2"]
    mu = params["mu"]
    mZ = params["mZ"]
    sinW = params["sinW"]
    cosW = params["cosW"]
    beta = atan(params["tan_beta"])
    sinbeta = sin(beta)
    cosbeta = cos(beta)

    mass_matrix = np.array([
        [M1, 0, -cosbeta * sinW * mZ, sinbeta * sinW * mZ],
        [0, M2, cosbeta * cosW * mZ, -sinbeta * cosW * mZ],
        [-cosbeta * sinW * mZ, cosbeta * cosW * mZ, 0, -mu],
        [sinbeta * sinW * mZ, -sinbeta * cosW * mZ, -mu, 0]
    ])

    D, N = takagi_factorize(mass_matrix)

    return D, N


def write_spectrum_file(slha_file, dest):
    D, N = generate_neu_spectrum(slha_file)

    d = pyslha.read(slha_file, ignorenomass=True)

    # Set masses    
    if not d.blocks.has_key('MASS'):
        d.blocks['MASS'] = pyslha.Block('MASS')
    d.blocks['MASS'][1000022] = D[0, 0]
    d.blocks['MASS'][1000023] = D[1, 1]
    d.blocks['MASS'][1000025] = D[2, 2]
    d.blocks['MASS'][1000035] = D[3, 3]

    # Set mixing matrix
    if not d.blocks.has_key('NMIX'):
        d.blocks['NMIX'] = pyslha.Block('NMIX')
    for i in range(4):
        for j in range(4):
            d.blocks['NMIX'][i+1, j+1] = np.real(N[i, j])
    
    # Set imaginary part if present
    if N.dtype in (complex, np.complex_):
        if not d.blocks.has_key('IMNMIX'):
            d.blocks['IMNMIX'] = pyslha.Block('IMNMIX')
        for i in range(4):
            for j in range(4):
                d.blocks['IMNMIX'][i+1, j+1] = np.imag(N[i, j])

    d.write(dest)


# generate_neu_spectrum("../../FlexibleSUSY-2.8.0/model_files/MSSMCPV/LesHouches.in.MSSMCPV")
# generate_neu_spectrum("plotting/slha/hinoCPV/input/hino_1000_00.in.MSSMCPV")

write_spectrum_file("plotting/slha/hinoCPV/input/hino_1000_00.in.MSSMCPV", "testing.slha")
