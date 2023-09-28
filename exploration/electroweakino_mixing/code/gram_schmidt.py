import numpy as np
from sys import float_info
EPSILON = float_info.epsilon


def inner_product(v, u):
    return np.squeeze(v.conj().T @ u)


def magnitude(v):
    return np.sqrt(inner_product(v, v))


def normalize(v):
    return v / magnitude(v)


def projection(u, v):
    return inner_product(u, v) / inner_product(u, u) * u


def shift(arr, old_idx, new_idx, axis=0):
    result = arr.copy()
    other_values = np.delete(result, old_idx, axis=axis)
    result = np.insert(other_values, new_idx, result[old_idx], axis=axis)
    return result


def complete_nxn_basis(v, n, index=0):
    eye = np.eye(n, dtype=v.dtype)
    for idx in range(n):
        V = eye.copy()
        V[:, idx] = v
        if abs(np.linalg.det(V)) > EPSILON:
            return V  # shift(V, old_idx=idx, new_idx=index, axis=1)
    return 0
    # for idx1 in range(2):
    #     for idx2 in range(idx1+1, 4):
    #         for idx3 in range(idx2+1, 4):
    #             basis_vectors = [eye[idx] for idx in (idx1, idx2, idx3)]
    #             basis_vectors.insert(index, v)
    #             V = np.column_stack(basis_vectors)
    #             if abs(np.linalg.det(V)) > EPSILON:
    #                 return V
    # return 0


def gram_schmidt(V):
    U = np.zeros_like(V, dtype=V.dtype)
    for idx1 in range(V.shape[-1]):
        v = V.T[idx1]
        u = v.copy()
        for idx2 in range(idx1):
            u = u - projection(U[:, idx2], v)
        U[:, idx1] = u / magnitude(u)
    return U


if __name__ == "__main__":
    eye = np.eye(4)
    e1, e2, e3, e4 = eye

    v = np.array([1j, 1, -1, 0])

    V = complete_nxn_basis(v, n=4)

    U = gram_schmidt(V)

    from sympy import pprint, Matrix, nsimplify
    pprint(nsimplify(Matrix(U)))
