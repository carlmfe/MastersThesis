from math import sqrt, sin, cos, tan, pi
from cmath import phase
import numpy as np
from scipy.linalg import eig, inv
from sys import float_info
EPSILON = sqrt(float_info.epsilon)
MAX = 1 / float_info.epsilon

sthetaW = sqrt(0.23120)
cthetaW = sqrt(1 - 0.23120)


def isNotDuplicate(first, second, threshold=EPSILON):
    return abs(first - second) > threshold


def isNotInfinitessimal(arg, threshold=EPSILON):
    return abs(arg) > threshold


def isNotInfinite(arg, threshold=MAX):
    return abs(arg) < threshold


def get_finite(arg, threshold_min=EPSILON, threshold_max=MAX):
    result = np.where(isNotInfinite(arg, threshold=threshold_max),
                      arg, np.nan)
    result = np.where(isNotInfinitessimal(arg, threshold=threshold_min),
                      result, 0)
    return result


def get_percentages(gauge_vector):
    return get_finite(np.abs(gauge_vector)**2)


def get_mass_string(mass):
    m = get_finite(np.abs(mass))
    phi = get_finite(phase(mass))
    return f"{m:.4f} (phase {phi/pi:4.3} pi)"


def print_percentages(percentages, components):
    string = ", ".join([name + f": {percentage*100:.2f}%"
                       for name, percentage in zip(components, percentages)])
    print(string)


def argfilter_quadratic(data, condition):
    result = list()
    idcs = list()
    for idx, element in enumerate(data):
        if all(condition(element, other) for other in result):
            result.append(element)
            idcs.append(idx)
    return np.array(idcs)


def diagonalize(mass_matrix, components=None):
    # Compute eigenvalues and eigenvectors
    eigvals, eigvecs = eig(mass_matrix)
    eigvecs = eigvecs.T
    # Only count degenerate masses once
    # unique_idcs = argfilter_quadratic(np.abs(eigvals), isNotDuplicate)
    # eigvals = eigvals[unique_idcs]
    # eigvecs = eigvecs[unique_idcs]
    # Sort by mass
    sorted_idcs = np.argsort(np.abs(eigvals))
    eigvals = eigvals[sorted_idcs]
    eigvecs = eigvecs[sorted_idcs]

    # Printing results
    for eigval, eigvec in zip(eigvals, eigvecs):
        print(get_mass_string(eigval) + f" : ", end="")
        if components is not None:
            print_percentages(get_percentages(eigvec), components)


if __name__ == "__main__":
    M1 = 0.
    M2 = 0.
    mu = 100.
    beta = pi * (1. / 32.)
    sbeta = sin(beta)
    cbeta = cos(beta)

    M_neutralino = np.array([
        [-M1, 0, -1.j*cbeta * sthetaW, 1.j*sbeta * sthetaW],
        [0, -M2, 1.j*cbeta * cthetaW, -1.j*sbeta * cthetaW],
        [-1.j*cbeta * sthetaW, 1.j*cbeta * cthetaW, 0, -mu],
        [1.j*sbeta * sthetaW, -1.j*sbeta * cthetaW, -mu, 0]
    ])

    M_chargino = np.array([
        [0, 0, -M2, 1.j*sqrt(2) * cbeta * cthetaW],
        [0, 0, 1.j*sqrt(2) * sbeta * cthetaW, mu],
        [-M2, 1.j*sqrt(2) * sbeta * cthetaW, 0, 0],
        [1.j*sqrt(2) * cbeta * cthetaW, mu, 0, 0]
    ])

    print(f"{M1=:.2}, {M2=:.2}, {mu=:.2}, {tan(beta)=:.4}")
    print("-------neutralino-------")
    diagonalize(M_neutralino, components=["Bino", "Wino", "H_d", "H_u"])

    print("-------chargino-------")
    diagonalize(M_chargino, components=["W+", "H_u+", "W-", "H_d-"])

    masses, N = eig(M_neutralino)
    # N = N.conj().T
    # D = N @ M_neutralino @ N.conj().T
    # # D = N @ M_neutralino @ Ninv
    # diff = np.diag(masses) - D
    # print(np.sqrt(np.abs(diff.conj().T @ diff / (masses @ masses.conj().T))))

    Oij = 0.5 * (np.outer(N[:, 3], N[:, 3].conj())
                 - np.outer(N[:, 2], N[:, 2].conj()))
    print(abs(N))
