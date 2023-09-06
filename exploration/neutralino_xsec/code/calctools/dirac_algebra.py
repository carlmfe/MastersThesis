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

    if n_idx1 > 0:
        t1idx = "[" + (":, "*n_idx1 + "np.newaxis, "*n_idx2)[:-2] + "]"
    else:
        t1idx = ""
    if n_idx2 > 0:
        t2idx = "[" + ("np.newaxis, "*n_idx1 + ":, "*n_idx2)[:-2] + "]"
    else:
        t2idx = ""

    result = "t1{} @ t2{}".format(t1idx, t2idx)

    return eval(result)


def lorentz_contract(v1, v2, num_idcs=1, is_matrices=False):
    result = 0
    if num_idcs > 1:
        result += lorentz_contract(v1[0, :], v2[0, :],
                                   num_idcs=num_idcs-1,
                                   is_matrices=is_matrices)
        result -= lorentz_contract(v1[1, :], v2[1, :],
                                   num_idcs=num_idcs-1,
                                   is_matrices=is_matrices)
        result -= lorentz_contract(v1[2, :], v2[2, :],
                                   num_idcs=num_idcs-1,
                                   is_matrices=is_matrices)
        result -= lorentz_contract(v1[3, :], v2[3, :],
                                   num_idcs=num_idcs-1,
                                   is_matrices=is_matrices)

    else:
        if is_matrices:
            result = result + v1[0]@v2[0] - v1[1]@v2[1] - v1[2]@v2[2] - v1[3]@v2[3]
        else:
            result = result + v1[0]*v2[0] - v1[1]*v2[1] - v1[2]*v2[2] - v1[3]*v2[3]

    result = np.squeeze(result)
    if result.size == 1:
        result = result.item()

    return result


def fourvector(E, p, theta, phi):
    result = [E, p*sin(theta)*cos(phi), p*sin(theta)*sin(phi), p*cos(theta)]
    return np.array(result)


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
    sym.init_printing(wrap_line=True, use_latex=True)

    def dirac_simplify(expression):
        result = sym.trigsimp(expression)
        result = sym.powsimp(result)
        result = sym.factor(result)
        result = sym.cancel(result)
        return result

    s_, mi, mj = sym.symbols("s, m_i, m_j", positive=True)
    # Using sbar as symbol as it is minimal positive definition of s.
    # This helps sympy to know when sqrt is real and not possibly imaginary.
    sbar = sym.symbols("sbar", positive=True)  # sbar = s - (mi+mj)**2
    s = sbar + (mi + mj)**2
    p = sqrt(s) / 2
    k = sqrt((sbar**2 + 4*sbar*mi*mj) / (4*s))
    E = p
    Ei = sqrt(k**2 + mi**2)
    # Ej = sqrt(k**2 + mj**2)
    Ej = sqrt(s) - Ei
    theta = sym.symbols("theta", real=True)

    u1 = u_down(E, p, 0, 0)
    u1bar = spinor_conjugate(u1)
    v2 = v_down(E, p, sym.pi, 0)
    v2bar = spinor_conjugate(v2)

    ui = u_down(Ei, k, theta, 0) + u_up(Ei, k, theta, 0)
    uibar = spinor_conjugate(ui)
    vj = v_up(Ej, k, theta+sym.pi, 0) + v_down(Ej, k, theta+sym.pi, 0)
    vjbar = spinor_conjugate(vj)

    p1 = fourvector(E, p, 0, 0)
    p2 = fourvector(E, p, sym.pi, 0)
    pi = fourvector(Ei, k, theta, 0)
    pj = fourvector(Ej, k, theta+sym.pi, 0)

    t = lorentz_contract(p1-pi, p1-pi)
    u = lorentz_contract(p1-pj, p1-pj)

    # prettyprint(s.replace(sbar, s_ - (mi+mj)**2))
    # prettyprint(s, replace=(sbar, s_ - (mi+mj)**2))
    # prettyprint(t, deepfactor=True, replace=(sbar, s_ - (mi+mj)**2))
    prettyprint(u, deepfactor=True, replace=(sbar, s_ - (mi+mj)**2))
    sys.exit()

    H_TT = np.squeeze(tensor_product(
        uibar@sigmag@vj, vjbar@sigmag@ui, num_idcs=(2, 2)
    )) / 8
    N_TT = np.squeeze(tensor_product(
        v2bar@sigmag@PL@u1, u1bar@sigmag@PR@v2, num_idcs=(2, 2)
    )) / 8

    H_TS = np.squeeze(tensor_product(
        uibar@sigmag@vj, vjbar@PR@ui, num_idcs=(2, 0)
    )) / (2*sqrt(2))
    N_TS = np.squeeze(tensor_product(
        v2bar@sigmag@PL@u1, u1bar@PR@v2, num_idcs=(2, 0)
    )) / (2*sqrt(2))

    H_SS = np.squeeze((uibar@PL@vj) * (vjbar@PR@ui)).item() / 2
    N_SS = np.squeeze((v2bar@PL@u1) * (u1bar@PR@v2)).item() / 2

    Q_LL = lorentz_contract(N_TT, H_TT, num_idcs=4) \
        + lorentz_contract(N_TS, H_TS, num_idcs=2) \
        + N_SS * H_SS

    b1 = np.squeeze((uibar@PL@u1) * (u1bar@PR@ui)).item()
    b2 = np.squeeze((v2bar@PL@vj) * (vjbar@PR@v2)).item()

    # prettyprint(
    #     sym.factor(b1.subs(sbar, s_ - (mi+mj)**2), deep=True)
    # )
    # prettyprint(lorentz_contract(
    #     (uibar@sigmag@vj), (v2bar@sigmag@u1), num_idcs=2
    # ), deepfactor=True)
    print(sym.latex(sym.factor(dirac_simplify(lorentz_contract(
        (uibar@sigmag@vj), (v2bar@sigmag@u1), num_idcs=2
    )), deep=True).subs(sbar, s_ - mi**2-2*mi*mj-mj**2)))

    # prettyprint((b1*b2).subs(sbar, s_ - (mi + mj)**2), deepfactor=True)
