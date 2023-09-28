import numpy as np
from scipy.linalg import eigh
from cmath import phase

from gram_schmidt import complete_nxn_basis, gram_schmidt
from diagonalize import get_finite

from sympy import pprint, Matrix


def find_singval_vector(A: np.ndarray, eigvecs: np.ndarray) -> np.ndarray:
    """_summary_

    Args:
        A (np.ndarray): _description_
        eigvecs (np.ndarray): _description_

    Returns:
        np.ndarray: _description_
    """
    best_std = np.inf
    for eigvec in eigvecs:
        Avbar = A @ eigvec.conj()
        non_zeros = np.nonzero(get_finite(eigvec))
        singval = get_finite(np.mean(Avbar[non_zeros] / eigvec[non_zeros]))
        singval_std = get_finite(abs(np.std(Avbar[non_zeros] / eigvec[non_zeros])))
        if singval_std < best_std:
            best_std = singval_std
            phase_shift = phase(singval) / 2
            v = np.exp(1j * phase_shift) * eigvec
    return v


def triagonalize_matrix(A: np.ndarray) -> np.ndarray:
    """
    A -> U^dagger A U* = |sigma   * |
                         |  0    A2 |
    where A2 is an (N-1)x(N-1) symmetric matrix.

    Args:
        A (np.ndarray): A symmetric NxN matrix.

    Returns:
        np.ndarray: |sigma   * |
                    |  0    A2 |
                    where A2 is an (N-1)x(N-1) symmetric matrix.
    """
    _, eigvecs = eigh(A@A.conj())
    v = find_singval_vector(A, eigvecs.T)
    U = complete_nxn_basis(v, n=A.shape[0])
    U = gram_schmidt(U)
    Ubar = U.conj()
    return Ubar.T @ A @ Ubar, Ubar


def takagi_factorize(A: np.ndarray):
    n = A.shape[0]
    D = np.asarray(A, dtype=complex)
    V_matrices = np.empty((n, n, n), dtype=complex)
    for idx in range(n):
        Aidx = D[idx:, idx:].copy()
        D[idx:, idx:], Ubar = triagonalize_matrix(Aidx)
        V = np.eye(n, dtype=complex)
        V[idx:, idx:] = Ubar.conj()
        V_matrices[idx] = V
    U = np.eye(n, dtype=complex)
    for V in reversed(V_matrices):
        U = U @ V.T

    return D, U


if __name__ == "__main__":
    from math import atan, sin, cos, sqrt
    sinW = sqrt(0.23120)  # sine of the Weinberg mixing angle
    cosW = sqrt(1 - 0.23120)  # cosine of the Weinberg mixing angle

    M1 = 1.
    M2 = 5.j
    mu = 1000.
    mZ = 91.1876
    tanbeta = 1e-3
    beta = atan(tanbeta)
    sinbeta = sin(beta)
    cosbeta = cos(beta)

    M_neutralino = np.array([
        [M1, 0, -cosbeta * sinW * mZ, sinbeta * sinW * mZ],
        [0, M2, cosbeta * cosW * mZ, -sinbeta * cosW * mZ],
        [-cosbeta * sinW * mZ, cosbeta * cosW * mZ, 0, -mu],
        [sinbeta * sinW * mZ, -sinbeta * cosW * mZ, -mu, 0]
    ])

    triagonalize_matrix()
    D, N = takagi_factorize(M_neutralino)

    masses_squared, Nprime = eigh(M_neutralino@M_neutralino.conj().T)
    Dprime = np.diag(np.sqrt(masses_squared))
    M_reproduced = N.T@D@N
    M_reproduced_prime = Nprime.T@Dprime@Nprime

    pprint(Matrix(get_finite(M_neutralino - M_reproduced_prime)))
    # pprint(Matrix(get_finite(M_neutralino - M_reproduced)))

    # pprint(Matrix(get_finite(N.T@M_neutralino@N - Nprime.T@M_neutralino@Nprime)))

    # pprint(Matrix(get_finite(N)))
    # pprint(Matrix(get_finite(M_neutralino - N.T@D@N)))
