import numpy as np
import sympy as sym
from sympy import conjugate, I
from sympy import sqrt, cos, sin, exp
import sys

from utils import get_finite

zero = np.zeros((4, 4))

eye = np.array([[1, 0, 0, 0],
                [0, 1, 0, 0],
                [0, 0, 1, 0],
                [0, 0, 0, 1]])

g0 = np.array([[1, 0, 0, 0],
               [0, 1, 0, 0],
               [0, 0, -1, 0],
               [0, 0, 0, -1]])
g1 = np.array([[0, 0, 0, 1],
               [0, 0, 1, 0],
               [0, -1, 0, 0],
               [-1, 0, 0, 0]])
g2 = np.array([[0, 0, 0, -I],
               [0, 0, I, 0],
               [0, I, 0, 0],
               [-I, 0, 0, 0]])
g3 = np.array([[0, 0, 1, 0],
               [0, 0, 0, -1],
               [-1, 0, 0, 0],
               [0, 1, 0, 0]])

g = np.array([g0, g1, g2, g3])

g5 = np.array([[0, 0, 1, 0],
               [0, 0, 0, 1],
               [1, 0, 0, 0],
               [0, 1, 0, 0]])

PL = 0.5 * (eye - g5)
PR = 0.5 * (eye + g5)

sigmag01 = I/2 * (g0@g1 - g1@g0)
sigmag02 = I/2 * (g0@g2 - g2@g0)
sigmag03 = I/2 * (g0@g3 - g3@g0)
sigmag12 = I/2 * (g1@g2 - g2@g1)
sigmag13 = I/2 * (g1@g3 - g3@g1)
sigmag23 = I/2 * (g2@g3 - g3@g2)

sigmag = np.array([[zero, sigmag01, sigmag02, sigmag03],
                   [-sigmag01, zero, sigmag12, sigmag13],
                   [-sigmag02, -sigmag12, zero, sigmag23],
                   [-sigmag03, -sigmag13, -sigmag23, zero]])


def dirac_trace(M):
    result = 0
    for idx in range(4):
        result += M[idx, idx]
    return result


def tensor_product(t1, t2, num_idcs=(1, 1)):
    n_idx1, n_idx2 = num_idcs

    t1idx = (":, "*n_idx1 + "np.newaxis, "*n_idx2)[:-2]
    t2idx = ("np.newaxis, "*n_idx1 + ":, "*n_idx2)[:-2]

    result = "t1[{}] @ t2[{}]".format(t1idx, t2idx)

    return eval(result)


def lorentz_contract(v1, v2, num_idcs=1, is_matrices=False):
    result = 0
    if num_idcs > 1:
        result += lorentz_contract(v1[0, :], v2[0, :],
                                   num_idcs=num_idcs-1, is_matrices=is_matrices)
        result -= lorentz_contract(v1[1, :], v2[1, :],
                                   num_idcs=num_idcs-1, is_matrices=is_matrices)
        result -= lorentz_contract(v1[2, :], v2[2, :],
                                   num_idcs=num_idcs-1, is_matrices=is_matrices)
        result -= lorentz_contract(v1[3, :], v2[3, :],
                                   num_idcs=num_idcs-1, is_matrices=is_matrices)

    else:
        if is_matrices:
            result += v1[0]@v2[0] - v1[1]@v2[1] - v1[2]@v2[2] - v1[3]@v2[3]
        else:
            result += v1[0]*v2[0] - v1[1]*v2[1] - v1[2]*v2[2] - v1[3]*v2[3]

    result = np.squeeze(result)
    if result.size == 1:
        result = result.item()

    return result


def fourvector(E, p, theta, phi):
    return np.array([E, p*sin(theta)*cos(phi), p*sin(theta)*sin(phi), p*cos(theta)])


def spinor_conjugate(spinor):
    return spinor.conj().T @ g0


def u_up(E, p, theta, phi):
    m = sqrt(E**2 - p**2)
    c = cos(theta/2)
    s = sin(theta/2)
    e = exp(I*phi)
    result = np.array([[c], [s*e], [p/(E+m)*c], [p/(E+m)*s*e]])
    return sqrt(E+m) * result


def ubar_up(E, p, theta, phi):
    return spinor_conjugate(u_up(E, p, theta, phi))


def u_down(E, p, theta, phi):
    m = sqrt(E**2 - p**2)
    c = cos(theta/2)
    s = sin(theta/2)
    e = exp(I*phi)
    result = np.array([[-s], [c*e], [p/(E+m)*s], [-p/(E+m)*c*e]])
    return sqrt(E+m) * result


def ubar_down(E, p, theta, phi):
    return spinor_conjugate(u_down(E, p, theta, phi))


def v_up(E, p, theta, phi):
    m = sqrt(E**2 - p**2)
    c = cos(theta/2)
    s = sin(theta/2)
    e = exp(I*phi)
    result = np.array([[p/(E+m)*s], [-p/(E+m)*c*e], [-s], [c*e]])
    return sqrt(E+m) * result


def vbar_up(E, p, theta, phi):
    return spinor_conjugate(v_up(E, p, theta, phi))


def v_down(E, p, theta, phi):
    m = sqrt(E**2 - p**2)
    c = cos(theta/2)
    s = sin(theta/2)
    e = exp(I*phi)
    result = np.array([[p/(E+m)*c], [p/(E+m)*s*e], [c], [s*e]])
    return sqrt(E+m) * result


def vbar_down(E, p, theta, phi):
    return spinor_conjugate(v_down(E, p, theta, phi))


if __name__ == "__main__":
    from sym_utils import prettyprint

    s_, m = sym.symbols("s, m", positive=True)
    sbar = sym.symbols("sbar", positive=True)
    s = 4*(sbar + m**2)
    p = sqrt(sbar)
    theta = sym.symbols("theta", real=True)

    u1 = u_down(sqrt(s)/2, sqrt(s)/2, 0, 0)
    u1bar = spinor_conjugate(u1)
    v2 = v_up(sqrt(s)/2, sqrt(s)/2, np.pi, 0)
    v2bar = spinor_conjugate(v2)

    ui = u_down(sqrt(s)/2, p, theta, 0) + u_up(sqrt(s)/2, p, theta, 0)
    uibar = spinor_conjugate(ui)
    vj = v_up(sqrt(s)/2, p, -theta, 0) + v_down(sqrt(s)/2, p, -theta, 0)
    vjbar = spinor_conjugate(vj)

    pi = fourvector(sqrt(s)/2, p, theta, 0)
    pi_slash = lorentz_contract(g, pi)

    uiuibar = u_down(sqrt(s)/2, p, theta, 0) @ ubar_down(sqrt(s)/2, p, theta, 0) \
        + u_up(sqrt(s)/2, p, theta, 0) @ ubar_up(sqrt(s)/2, p, theta, 0)
    for idx1 in range(4):
        for idx2 in range(4):
            uiuibar[idx1, idx2] = sym.simplify(
                sym.nsimplify(uiuibar[idx1, idx2]))
    prettyprint(uiuibar)
    prettyprint(pi_slash + m*eye)

    bilinear1 = tensor_product(
        uibar@sigmag@vj, vjbar@sigmag@ui, num_idcs=(2, 2))
    bilinear2 = tensor_product(
        v2bar@sigmag@u1, u1bar@sigmag@v2, num_idcs=(2, 2))

    quadrilinear = lorentz_contract(bilinear1, bilinear2, num_idcs=4)

    prettyprint(quadrilinear)

    # prettyprint(lorentz_contract((uibar@sigmag@vj)[:, :, 0, 0],
    #             (v2bar@sigmag@u1)[:, :, 0, 0], num_idcs=2, is_matrices=False))
