import numpy as np
from numpy.typing import NDArray
from sys import float_info
EPSILON = float_info.epsilon
TOL = np.sqrt(EPSILON)


def inner_product(
    v: NDArray[np.complex64],
    u: NDArray[np.complex64]
) -> float | complex:
    """Compute the inner product v^dagger * u for vector-like ndarrays v and
    u."""
    return np.squeeze(v.conj().T @ u)


def magnitude(v: NDArray[np.complex64]) -> float:
    """Compute the magnitude |v| = sqrt(v^dagger * v) for a vector-like
    ndarray v."""
    return np.sqrt(inner_product(v, v))


def normalize(v: NDArray[np.complex64]) -> NDArray[np.complex64]:
    """Normalize a vector-like ndarray v, returning v/|v|."""
    return v / magnitude(v)


def projection(
    u: NDArray[np.complex64],
    v: NDArray[np.complex64]
) -> NDArray[np.complex64]:
    """Compute the projection of v onto u for two vector-like ndarrays u and
    v."""
    return inner_product(u, v) / inner_product(u, u) * u


def shift(
    arr: NDArray[np.complex64],
    old_idx: int, new_idx: int,
    axis=0
) -> NDArray[np.complex64]:
    """Shift an element in arr from old_idx to new_idx along given axis."""
    result = arr.copy()
    other_values = np.delete(result, old_idx, axis=axis)
    result = np.insert(other_values, new_idx, result[old_idx], axis=axis)
    return result


def isLinearlyDependent(
    u: NDArray[np.complex64],
    v: NDArray[np.complex64],
    get_prop=False
):
    nonzeros = np.nonzero(v)
    proportionality = u[nonzeros] / v[nonzeros]
    # If the components of u are the same multiple of the components of v,
    # the std(u/v) should be small. Furthermore, the components of u
    # corresponding to the zero-components of v should be zero.
    if abs(np.std(proportionality)) < TOL and all(np.delete(u, nonzeros)) < TOL:
        if get_prop:
            return True, np.mean(proportionality)
        else:
            return True
    else:
        if get_prop:
            return False, None
        else:
            return False


def complete_nxn_basis(
    v: NDArray[np.complex64],
    n: int,
    index=0
) -> NDArray[np.complex64]:
    """Given a vector-like ndarray v, return a matrix-like ndarray V whose
    columns form a basis for the vector space C^n or R^n, depending on
    the dtype of v.
    The vector v is embedded in V such that V[:, index] = v.

    Args:
        v (NDArray[np.complex64]): Vector-like ndarray to be used in the basis.
        n (int): Dimensionality of vector space.
        index (int, optional): Index of V to place v. Defaults to 0.

    Raises:
        RuntimeError: If v is not a vector around which a basis can be made,
        i.e. the zero-vector.

    Returns:
        NDArray[np.complex64]: V, an ndarray with shape (n, n) that constitues a basis for
                    an n-dimensional vector space.
    """
    eye = np.eye(n, dtype=v.dtype)  # The trivial basis for the vector space.
    # The idea is to replace one of the basis vectors of eye with v.
    for idx in range(n):
        V = eye.copy()
        V[:, idx] = v
        # If V is invertible, it constitues a basis for the vector space.
        if abs(np.linalg.det(V)) > EPSILON:
            # Shifting the vector v in V to the required index.
            return shift(V.T, old_idx=idx, new_idx=index, axis=0).T
    raise RuntimeError(f"Could not complete basis for v={v}")


def gram_schmidt(V: NDArray[np.complex64]) -> NDArray[np.complex64]:
    """Given an nxn matrix-like ndarray whose columns constitute a basis for an
    n-dimensional vector space, this function orthonormalizes the basis by the
    Gram-Schmidt procedure.

    Args:
        V (NDArray[np.complex64]): Matrix-like ndarray whose columns form a 
                                   basis of a vector space.

    Returns:
        NDArray[np.complex64]: A unitary matrix-like ndarray that constitues a
                               basis of the vector space V does.
    """
    U = np.zeros_like(V, dtype=V.dtype)
    for idx1 in range(V.shape[-1]):
        v = V.T[idx1]  # The idx1'th basis vector
        u = v.copy()  # The orthonormalized basis vector
        for idx2 in range(idx1):
            # Ensure that u is orthogonal to every previous u.
            u = u - projection(U[:, idx2], v)
        U[:, idx1] = u / magnitude(u)  # Insert the normalized u.
    return U
