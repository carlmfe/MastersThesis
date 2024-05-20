from math import sqrt, sin, cos, tan, atan, pi
from cmath import phase, exp
import numpy as np
from scipy.linalg import eig, eigh, inv

from calctools.num_utils import get_finite, argfilter_quadratic, isNotDuplicate
from calctools.diagonalize import takagi_factorize

sinW = sqrt(0.23120)  # sine of the Weinberg mixing angle
cosW = sqrt(1 - 0.23120)  # cosine of the Weinberg mixing angle


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


def diagonalize(mass_matrix, components=None):
    # Get diagonalization
    D, U = takagi_factorize(mass_matrix)
    masses = np.diag(D)
    # Only count degenerate masses once
    unique_idcs = argfilter_quadratic(masses, isNotDuplicate)
    masses = masses[unique_idcs]
    mix_vecs = U[unique_idcs]
    # Sort by mass
    sorted_idcs = np.argsort(masses)
    masses = masses[sorted_idcs]
    mix_vecs = mix_vecs[sorted_idcs]

    # Printing results
    for eigval, eigvec in zip(masses, mix_vecs):
        print(get_mass_string(eigval) + f" : ", end="")
        if components is not None:
            print_percentages(get_percentages(eigvec), components)

if __name__ == "__main__":
    M1 = 1. * np.exp(1j * 0.3 * np.pi)
    M2 = 5. * np.exp(1j * 0. * np.pi)
    mu = 1000. * np.exp(1j * 0.005 * np.pi)
    mZ = 91.1876
    tanbeta = 1e-3
    # beta = pi * (12. / 32.)
    beta = atan(tanbeta)
    sinbeta = sin(beta)
    cosbeta = cos(beta)

    # M_neutralino = np.array([
    #     [-M1, 0, -1.j*cosbeta * sinW * mZ, 1.j*sinbeta * sinW * mZ],
    #     [0, -M2, 1.j*cosbeta * cosW * mZ, -1.j*sinbeta * cosW * mZ],
    #     [-1.j*cosbeta * sinW * mZ, 1.j*cosbeta * cosW * mZ, 0, -mu],
    #     [1.j*sinbeta * sinW * mZ, -1.j*sinbeta * cosW * mZ, -mu, 0]
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

    exit()

    masses, N = eigh(M_neutralino)
    N = np.array(N.T, dtype=complex)

    # for idx in range(len(masses)):
    #     if phase(masses[idx]) != 0.0:
    #         N[idx] = N[idx] * exp(-0.5j * phase(masses[idx]))
    #         masses[idx] = abs(masses[idx])

    # sorted_idcs = np.argsort(masses)
    # masses = np.array(masses[sorted_idcs], dtype=float)
    # N = N[sorted_idcs]

    # print(N)
    # print(M_neutralino)
    # print(get_finite((N.T @ np.diag(masses) @ N).real))
    # print(np.diag(masses))
    # print(get_finite(N @ M_neutralino @ N.T))


    import sympy as sym
    import sys

    def round_expr(expr, num_digits):
        return expr.xreplace({n : round(n, num_digits) for n in expr.atoms(sym.Number)})

    sym.init_printing()

    sym.pprint(round_expr(
        sym.Matrix(get_finite(N.T.conj()@np.diag(masses)@N)),
        num_digits=5
    ))
    sym.pprint(round_expr(
        sym.Matrix(get_finite(M_neutralino)),
        num_digits=5
    ))
    # sym.pprint(round_expr(
    #     sym.Matrix(get_finite(np.diag(masses))),
    #     num_digits=5
    # ))
    # sym.pprint(round_expr(
    #     sym.Matrix(N @ M_neutralino @ N.T),
    #     num_digits=5
    # ))
    sys.exit()

    Qf = 2/3
    If = 1/2
    xW = 0.2397
    tW = np.sqrt(xW / (1-xW))

    sf, cf = sym.symbols("s_f c_f", complex=True)

    N = get_finite(N)

    CAL = cf * ((Qf-If)*tW*N.conj()[:, 1] + If*N.conj()[:, 2])
    CBL = sf * ((Qf-If)*tW*N.conj()[:, 1] + If*N.conj()[:, 2])
    CAR = sym.conjugate(sf) * Qf*tW*N.conj()[:, 1]
    CBR = -sym.conjugate(cf) * Qf*tW*N.conj()[:, 1]

    i = 0
    for j in range(4):
        QLLLL = sym.conjugate(CAL[i]) * CAL[j] * sym.conjugate(CBL[i]) * CBL[j]
        QRRRR = sym.conjugate(CAR[i]) * CAR[j] * sym.conjugate(CBR[i]) * CBR[j]
        # print(f"Re(QLLLL + QRRRR) for 0{j}:", end=" ")
        # sym.pprint(sym.simplify(sym.re(QLLLL + QRRRR) / sym.Abs(cf*sf)**2))
        print(f"Im(QLLLL + QRRRR)/Re for 0{j}:", end=" ")
        sym.pprint(sym.simplify(sym.im(QLLLL + QRRRR) / sym.re(QLLLL + QRRRR)))

        QRLLR = sym.conjugate(CAR[i]) * CAL[j] * sym.conjugate(CBL[i]) * CBR[j]
        QLRRL = sym.conjugate(CAL[i]) * CAR[j] * sym.conjugate(CBR[i]) * CBL[j]
        # print(f"Re(QLRRL + QRLLR) for 0{j}:", end=" ")
        # sym.pprint(sym.simplify(sym.re(QLRRL + QRLLR) / sym.Abs(cf*sf)**2))
        print(f"Im(QLRRL + QRLLR)/Re for 0{j}:", end=" ")
        sym.pprint(sym.simplify(sym.im(QLRRL + QRLLR) / sym.re(QLRRL + QRLLR)))
