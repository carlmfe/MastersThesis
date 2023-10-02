from .linalg import complete_nxn_basis, gram_schmidt, isLinearlyDependent

import numpy as np
from numpy.typing import NDArray
from scipy.linalg import eigh


def find_takagi_vector(
    A: NDArray[np.complex64],
) -> NDArray[np.complex64]:
    """
    For a matrix-like ndarray A, finds a Takagi vector v such that
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
    # For there to be a Takagi vector, there must be atleast one
    # non-negative eigenvalue.
    assert any(eigvals >= 0.), "No eigenvalues of AA* are positive"\
        " - Takagi vector does not exist."
    # The first non-negative eigenvalue is the smallest such eigenvalues since
    # eigvals are automatically ordered.
    first_positive_eigidx = np.where(eigvals >= 0)[0][0]

    eigval = eigvals[first_positive_eigidx]  # First non-negative eigenvalue
    x = eigvecs[:, first_positive_eigidx].copy()  # Corresponding eigenvector

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
        isLinDep, prop = isLinearlyDependent(A@y.conj(), y, get_prop=True)
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


def takagi_factorize(A: NDArray[np.complex64]):
    """Diagonalizes symmetric matrix A = U^T D U where
    U is a unitary matrix and D is a postive, diagonal matrix.
    Returns D, u

    Args:
        A (NDArray[np.complex64]): Complex nxn matrix-like ndarray.

    Returns:
        _type_: _description_
    """
    assert np.all(A.T == A), "Matrix is not symmetric"\
        " - cannot Takagi factorize."

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
