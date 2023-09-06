import numpy as np
import sympy as sym
from sympy import conjugate, I
from sympy.matrices import Matrix
from sympy.interactive.printing import init_printing

from fierz import *
from calctools.dirac_algebra import *

init_printing()

eye = Matrix([[1, 0, 0, 0],
              [0, 1, 0, 0],
              [0, 0, 1, 0],
              [0, 0, 0, 1]])

g0 = Matrix([[1, 0, 0, 0],
             [0, 1, 0, 0],
             [0, 0, -1, 0],
             [0, 0, 0, -1]])
g1 = Matrix([[0, 0, 0, 1],
             [0, 0, 1, 0],
             [0, -1, 0, 0],
             [-1, 0, 0, 0]])
g2 = Matrix([[0, 0, 0, -I],
             [0, 0, I, 0],
             [0, I, 0, 0],
             [-I, 0, 0, 0]])
g3 = Matrix([[0, 0, 1, 0],
             [0, 0, 0, -1],
             [-1, 0, 0, 0],
             [0, 1, 0, 0]])

g5 = Matrix([[0, 0, 1, 0],
             [0, 0, 0, 1],
             [1, 0, 0, 0],
             [0, 1, 0, 0]])

g01 = 0.5*I * (g0*g1-g1*g0)
g02 = 0.5*I * (g0*g2-g2*g0)
g03 = 0.5*I * (g0*g3-g3*g0)
g12 = 0.5*I * (g1*g2-g2*g1)
g13 = 0.5*I * (g1*g3-g3*g1)
g23 = 0.5*I * (g2*g3-g3*g2)

PL = np.array(0.5 * (eye - g5))
PR = np.array(0.5 * (eye + g5))

G = [PL,
     PR,
     PL@g0, PL@g1, PL@g2, PL@g3,
     PR@g0, PR@g1, PR@g2, PR@g3,
     g01, g02, g03, g12, g13, g23]
Gdual = [PL,
         PR,
         PR@g0, -PR@g1, -PR@g2, -PR@g3,
         PL@g0, -PL@g1, -PL@g2, -PL@g3,
         -0.5*g01, -0.5*g02, -0.5*g03, 0.5*g12, 0.5*g13, 0.5*g23]

# C = np.zeros((16, 16, 16, 16), dtype=complex)
# for K in range(16):
#     for L in range(16):
#         for M in range(16):
#             for N in range(16):
#                 C[K, L, M, N] = 0.25 * \
#                     dirac_trace(G[K] @ Gdual[M] @ G[L] @ Gdual[N])

# np.save("C_IJMN.npy", C)


if __name__ == "__main__":
    basis = sym.symbols(
        "L R VL0 VL1 VL2 VL3 VR0 VR1 VR2 VR3 T01 T02 T03 T12 T13 T23")

    bilinears = ["L", "R", "VL0", "VL1", "VL2", "VL3", "VR0",
                 "VR1", "VR2", "VR3", "T01", "T02", "T03", "T12", "T13", "T23"]

    bibasis = [None] * 16
    for idx, bilinear in enumerate(bilinears):
        bibasis[idx] = sym.Function(bilinear)

    def ordered_quadbasis(a, b, c, d):
        result = np.empty((16, 16), dtype=object)
        for idx1 in range(16):
            for idx2 in range(16):
                result[idx1, idx2] = bibasis[idx1](a, b) * bibasis[idx2](c, d)
        return sym.Matrix(result)

    def isDiag(M):
        i, j = M.shape
        assert i == j
        test = M.reshape(-1)[:-1].reshape(i-1, j+1)
        return ~np.any(test[:, 1:])

    def realify(M):
        if np.any(np.iscomplex(M)):
            return M
        else:
            return np.real(M)

    def sympify_chiral_fierz_matrix(F):
        result = 0
        for M in range(16):
            for N in range(16):
                FMNr = np.real(F[M, N])
                FMNi = np.imag(F[M, N])
                if FMNr != 0 and FMNi == 0:
                    FMN = FMNr
                elif FMNr == 0 and FMNi != 0:
                    FMN = FMNi * I
                elif FMNr != 0 and FMNi != 0:
                    FMN = F[M, N]
                else:
                    FMN = 0
                if FMN != 0:
                    result += FMN * ordered_quadbasis(1, 4, 3, 2)[M, N]
        reordered_quadbasis = ordered_quadbasis(1, 4, 3, 2)
        VL__mu = sym.Function("VL^mu")
        VL_mu = sym.Function("VL_mu")
        result = sym.nsimplify(result)
        result = sym.simplify(result)
        result = result.replace(
            reordered_quadbasis[2, 2], VL__mu(1, 4)*VL_mu(3, 2) - reordered_quadbasis[3, 3] - reordered_quadbasis[4, 4] - reordered_quadbasis[5, 5])
        return result

    C = np.load("C_IJMN.npy")

    CiL, CiR, CjL, CjR = sym.symbols("CiL CiR CjL CjR")

    currents = []

    FLL = np.zeros((16, 16), dtype=complex)
    for M in range(16):
        for N in range(16):
            FLL[M, N] = C[0, 0, M, N]
    currents.append(FLL)

    FLR = np.zeros((16, 16), dtype=complex)
    for M in range(16):
        for N in range(16):
            FLR[M, N] = C[0, 1, M, N]
    currents.append(FLR)

    FRL = np.zeros((16, 16), dtype=complex)
    for M in range(16):
        for N in range(16):
            FRL[M, N] = C[1, 0, M, N]
    currents.append(FRL)

    FRR = np.zeros((16, 16), dtype=complex)
    for M in range(16):
        for N in range(16):
            FRR[M, N] = C[1, 1, M, N]
    currents.append(FRR)

    FVLL = np.zeros((16, 16), dtype=complex)
    for M in range(16):
        for N in range(16):
            for J in range(4):
                prefactor = 1 if J == 0 else -1
                FVLL[M, N] += prefactor * C[2+J, 2+J, M, N]
    currents.append(FVLL)

    FVLR = np.zeros((16, 16), dtype=complex)
    for M in range(16):
        for N in range(16):
            for J in range(4):
                prefactor = 1 if J == 0 else -1
                FVLR[M, N] += prefactor * C[2+J, 6+J, M, N]
    currents.append(FVLR)

    FVRL = np.zeros((16, 16), dtype=complex)
    for M in range(16):
        for N in range(16):
            for J in range(4):
                prefactor = 1 if J == 0 else -1
                FVRL[M, N] += prefactor * C[6+J, 2+J, M, N]
    currents.append(FVRL)

    FVRR = np.zeros((16, 16), dtype=complex)
    for M in range(16):
        for N in range(16):
            for J in range(4):
                prefactor = 1 if J == 0 else -1
                FVRR[M, N] += prefactor * C[6+J, 6+J, M, N]
    currents.append(FVRR)

    for F in currents[4:5]:
        F = realify(F)
        print(sympify_chiral_fierz_matrix(F))
