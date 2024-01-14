from math import sqrt, sin, cos, tan, pi
from cmath import phase
import numpy as np
from scipy.linalg import eig, inv
from sys import float_info
EPSILON = sqrt(float_info.epsilon)
MAX = 1 / float_info.epsilon

sinW = sqrt(0.23120)  # sine of the Weinberg mixing angle
cosW = sqrt(1 - 0.23120)  # cosine of the Weinberg mixing angle


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
    string = ", ".join([name + f": {percentage*100:.4f}%"
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
    unique_idcs = argfilter_quadratic(np.abs(eigvals), isNotDuplicate)
    eigvals = eigvals[unique_idcs]
    eigvecs = eigvecs[unique_idcs]
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
    M1 = 1.
    M2 = 20.
    mu = 100.
    mZ = 91.1876
    beta = pi * (12. / 32.)
    sinbeta = sin(beta)
    cosbeta = cos(beta)

    # M_neutralino = np.array([
    #     [-M1, 0, -1.j*cosbeta * sinW, 1.j*sinbeta * sinW],
    #     [0, -M2, 1.j*cosbeta * cosW, -1.j*sinbeta * cosW],
    #     [-1.j*cosbeta * sinW, 1.j*cosbeta * cosW, 0, -mu],
    #     [1.j*sinbeta * sinW, -1.j*sinbeta * cosW, -mu, 0]
    # ])

    M_neutralino = np.array([
        [M1, 0, -cosbeta * sinW * mZ, sinbeta * sinW * mZ],
        [0, M2, cosbeta * cosW * mZ, -sinbeta * cosW * mZ],
        [-cosbeta * sinW * mZ, cosbeta * cosW * mZ, 0, -mu],
        [sinbeta * sinW * mZ, -sinbeta * cosW * mZ, -mu, 0]
    ])

    # M_chargino = np.array([
    #     [0, 0, -M2, 1.j*sqrt(2) * cosbeta * cosW],
    #     [0, 0, 1.j*sqrt(2) * sinbeta * cosW, mu],
    #     [-M2, 1.j*sqrt(2) * sinbeta * cosW, 0, 0],
    #     [1.j*sqrt(2) * cosbeta * cosW, mu, 0, 0]
    # ])

    M_chargino = np.array([
        [0, 0, M2, sqrt(2) * cosbeta * cosW],
        [0, 0, sqrt(2) * sinbeta * cosW, mu],
        [M2, sqrt(2) * sinbeta * cosW, 0, 0],
        [sqrt(2) * cosbeta * cosW, mu, 0, 0]
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

    # N[0, :] *= -1.j
    # N[1, :] *= -1.j
    # N[:, 0] *= -1.j
    # N[:, 1] *= -1.j
    print(N[:, 2]**2 * 100)
