import numpy as np
from numpy.typing import NDArray
from scipy.linalg import eigh, eig
from cmath import phase

from gram_schmidt import complete_nxn_basis, gram_schmidt, isLinearlyDependent, EPSILON
from diagonalize import get_finite

TOL = np.sqrt(EPSILON)


def find_takagi_vector(
    A: NDArray[np.complex64],
) -> NDArray[np.complex64]:
    """For a matrix-like ndarray A, finds a Takagi vector v such that
    A v* = sigma * v.

    Args:
        A (NDArray[np.complex64]): Matrix-like ndarray

    Raises:
        RuntimeError: If Takagi vector could not be found.

    Returns:
        NDArray[np.complex64]: Takagi vector of A.
    """
    # First, the eigenvectors and eigenvalues of AA* are required.
    eigvals, eigvecs = eigh(A@A.conj())
    # For there to be a Takagi vector, the eigenvalues must be non-negative.
    assert any(
        eigvals >= 0.), "No eigenvalues of AA* are positive - Takagi vector does not exist."
    # The first non-negative eigenvalue is the smallest such eigenvalues since
    # eigvals are automatically ordered.
    first_positive_eigidx = np.where(eigvals >= 0)[0, 0]

    eigval = eigvals[first_positive_eigidx]  # First non-negative eigenvalue
    x = eigvecs[:, first_positive_eigidx]  # Corresponding eigenvector

    # First assume that Ax* and x are linearly dependent.
    # Then we would need to check that Ax* = mu * x for some mu.
    # Avoiding zero-division, we ignore the components where x is zero.

    Ax = A@x.conj()
    isLinDep, prop = isLinearlyDependent(Ax, x, get_prop=True)

    if isLinDep:
        v = x
        mu = prop
    # If Ax* and x are linearly independent, the vector
    # y = Ax* + sqrt(eigval)*x should be a Takagi vector.
    # We do the same with y by testing the linear dependence of Ay* and y.
    else:
        print("Trying backup Takagi vector!")
        y = Ax + np.sqrt(eigval) * x
        isLinDep, prop = isLinearlyDependent(A@y.conj(), y)
        if isLinDep:
            v = y
            mu = prop
        else:
            # If Ay* and y are linearly independent also, then something went
            # wrong as no Takagi vector was found.
            raise RuntimeError("Could not find Takagi vector.")

    # If a vector was found, shift the phase such that mu is real and positive.
    phase_shift = 0.5 * np.angle(mu)
    return v * np.exp(1j * phase_shift)


def triangularize_matrix(A) -> NDArray[np.complex64]:
    """
    A -> U^dagger A U* = |sigma   * |
                         |  0    A2 |
    where A2 is an (N-1)x(N-1) symmetric matrix.

    Args:
        A (NDArray[np.complex64]): A symmetric NxN matrix.

    Returns:
        NDArray[np.complex64]: |sigma   * |
                               |  0    A2 |
                               where A2 is an (N-1)x(N-1) symmetric matrix.
    """
    v = find_takagi_vector(A)
    U = complete_nxn_basis(v, n=A.shape[0])
    U = gram_schmidt(U)
    Ubar = U.conj()
    return Ubar.T @ A @ Ubar, Ubar


def takagi_factorize(A: np.NDArray[np.complex64]):
    """Diagonalizes symmetric matrix A = U^T D U where
    U is a unitary matrix and D is a postive, diagonal matrix.
    Returns D, u

    Args:
        A (np.NDArray[np.complex64]): Complex nxn matrix-like ndarray.

    Returns:
        _type_: _description_
    """
    assert all(A.T == A), "Matrix is not symmetric - cannot Takagi factorize."

    n = A.shape[0]
    D = np.asarray(A.copy(), dtype=complex)
    U = np.eye(n, dtype=complex)

    # To diagonalize A, we iteratively diagonalize
    # A -> |sigma  0 |
    #      | 0    A2 |
    # one step at a time.
    for idx in range(n):
        # Current matrix remaining to diagonalize
        Aidx = D[idx:, idx:].copy()
        # Update relevant part of D and get latest diagonalization matrix Ubar.
        D[idx:, idx:], Ubar = triangularize_matrix(Aidx)
        # Embed matrix diagonalizing Aidx into nxn unitary matrix V
        V = np.eye(n, dtype=complex)
        V[idx:, idx:] = Ubar.conj()
        # Update full diagonalisation matrix.
        U = V.T @ U
    # Return abs(D) to ignore any numerical imprecision in positivity.
    return abs(D), U


if __name__ == "__main__":
    from sympy import pprint, Matrix
    from math import atan, sin, cos, sqrt

    def print_matrix(matrix):
        pprint(Matrix(get_finite(matrix)))
        return None

    A = np.array([[0, 1+1j, np.sqrt(2)*1j],
                  [1+1j, 0, 1+1j],
                  [np.sqrt(2)*1j, 1+1j, 0]])

    eigvals, _ = eigh(A@A.conj())

    print(eigvals)

    D, N = takagi_factorize(A)

    print_matrix(D)
    print_matrix(N)
    print_matrix(N.T@D@N)
    # print_matrix(abs(N).T@D@abs(N))

    exit()

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
    MMdag = M_neutralino @ M_neutralino.conj().T

    MdagM = M_neutralino.conj().T @ M_neutralino

    D, N = takagi_factorize(M_neutralino)

    print_matrix(N.T @ D @ N - M_neutralino)

    '''
    masses_squared, Nprime = eigh(MMdag)
    # Nprime = Nprime @ N.conj().T
    D = np.diag(np.sqrt(masses_squared))
    N = Nprime.conj().T
    # Dprime = Nprime.conj() @ M_neutralino @ Nprime.conj().T

    # print_matrix(MMdag - N.conj().T @ D**2 @ N)
    Mtilde = N.conj().T @ D @ N.conj()
    # print_matrix(N.T @ D @ N)
    '''
    exit()

    # T = (Nprime.T @ M_neutralino @ Nprime).conj()

    # phase_shift = np.diag(np.exp(-0.5j * np.angle(np.diag(T))))

    # Nprime = phase_shift.conj() @ Nprime
    # Dprime = phase_shift @ T @ phase_shift.T

    # pprint(Matrix(get_finite(phase_shift @ T @ phase_shift.T)))
    # pprint(Matrix(get_finite(phase_shift.conj().T @ phase_shift)))
    # pprint(Matrix(get_finite(Nprime.T @ Dprime @ Nprime)))
    # pprint(Matrix(get_finite(phase_shift)))

    # M_reproduced = N.T@D@N
    # M_reproduced_prime = Nprime.T@Dprime@Nprime

    # pprint(Matrix(get_finite(M_neutralino)))
    # pprint(Matrix(get_finite(M_reproduced_prime)))
    # pprint(Matrix(get_finite(Vprime)))
    # pprint(Matrix(get_finite(VV.T@Dprime@VV)))
    # pprint(Matrix(get_finite(Dprime)))
    # pprint(Matrix(get_finite(D)))
    exit()

    print(get_finite(np.trace(D@D.conj().T) - np.trace(Dprime@Dprime.conj().T)))

    # pprint(Matrix(get_finite(M_neutralino - M_reproduced_prime)))
    # pprint(Matrix(get_finite(M_neutralino - M_reproduced)))

    # pprint(Matrix(get_finite(N.T@M_neutralino@N - Nprime.T@M_neutralino@Nprime)))

    # pprint(Matrix(get_finite(N)))
    # pprint(Matrix(get_finite(M_neutralino - N.T@D@N)))
