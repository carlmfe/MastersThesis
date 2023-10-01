import numpy as np
from sys import float_info
EPSILON = float_info.epsilon


def inner_product(v: np.ndarray, u: np.ndarray) -> float | complex:
    """Compute the inner product v^dagger * u for vector-like ndarrays v and u."""
    return np.squeeze(v.conj().T @ u)


def magnitude(v: np.ndarray) -> float:
    """Compute the magnitude |v| = sqrt(v^dagger * v) for a vector-like ndarray v."""
    return np.sqrt(inner_product(v, v))


def normalize(v: np.ndarray) -> np.ndarray:
    """Normalize a vector-like ndarray v, returning v/|v|."""
    return v / magnitude(v)


def projection(u: np.ndarray, v: np.ndarray) -> np.ndarray:
    """Compute the projection of v onto u for two vector-like ndarrays u and v."""
    return inner_product(u, v) / inner_product(u, u) * u


def shift(arr: np.ndarray, old_idx: int, new_idx: int, axis=0) -> np.ndarray:
    """Shift an element in arr from old_idx to new_idx along given axis."""
    result = arr.copy()
    other_values = np.delete(result, old_idx, axis=axis)
    result = np.insert(other_values, new_idx, result[old_idx], axis=axis)
    return result


def complete_nxn_basis(v: np.ndarray, n: int, index=0) -> np.ndarray:
    """Given a vector-like ndarray v, return a matrix-like ndarray V whose columns form a basis
    for the vector space C^n or R^n, depending on the dtype of v.
    The vector v is embedded in V such that V[:, index] = v.

    Args:
        v (np.ndarray): Vector-like ndarray to be used in the basis.
        n (int): Dimensionality of vector space.
        index (int, optional): Index of V to place v. Defaults to 0.

    Raises:
        RuntimeError: If v is not a vector around which a basis can be made,
        i.e. the zero-vector.

    Returns:
        np.ndarray: V, an ndarray with shape (n, n) that constitues a basis for
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


def gram_schmidt(V: np.ndarray) -> np.ndarray:
    """Given an nxn matrix-like ndarray whose columns constitute a basis for an
    n-dimensional vector space, this function orthonormalizes the basis by the
    Gram-Schmidt procedure.

    Args:
        V (np.ndarray): Matrix-like ndarray whose columns form a basis of a
                        vector space.

    Returns:
        np.ndarray: A unitary matrix-like ndarray that constitues a basis of
                    the vector space V does.
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
