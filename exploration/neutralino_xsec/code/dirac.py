import numpy as np
import sympy as sym
from sympy.matrices import Matrix
from sympy.interactive.printing import init_printing


def trace(M):
    result = 0
    for idx in range(M.rows):
        result += M[idx, idx]
    return result


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
g2 = Matrix([[0, 0, 0, -1j],
             [0, 0, 1j, 0],
             [0, 1j, 0, 0],
             [-1j, 0, 0, 0]])
g3 = Matrix([[0, 0, 1, 0],
             [0, 0, 0, -1],
             [-1, 0, -0, 0],
             [0, 1, 0, -0]])
s01 = g0*g1 - g1*g0
s02 = g0*g2 - g2*g0
s03 = g0*g3 - g3*g0
s12 = g1*g2 - g2*g1
s13 = g1*g3 - g3*g1
s23 = g2*g3 - g3*g2

g5 = 1j*g0*g1*g2*g3


def collect_quadratic(expression, symbols):
    result = sym.expand(expression)
    for idx1 in range(len(symbols)):
        for idx2 in range(idx1+1):
            result = sym.collect(result, symbols[idx1] * symbols[idx2])
    return result


def qSS(a, b, c, d):
    return a.dot(b) * c.dot(d)


def qVV(a, b, c, d):
    return (a.dot(g0*b) * c.dot(g0*d)
            - a.dot(g1*b) * c.dot(g1*d)
            - a.dot(g2*b) * c.dot(g2*d)
            - a.dot(g3*b) * c.dot(g3*d))


def qTT(a, b, c, d):
    return -1/2 * (- a.dot(s01*b) * c.dot(s01*d)
                   - a.dot(s02*b) * c.dot(s02*d)
                   - a.dot(s03*b) * c.dot(s03*d)
                   + a.dot(s12*b) * c.dot(s12*d)
                   + a.dot(s13*b) * c.dot(s13*d)
                   + a.dot(s23*b) * c.dot(s23*d))


def qAA(a, b, c, d):
    return (a.dot(g0*g5*b) * c.dot(g0*g5*d)
            - a.dot(g1*g5*b) * c.dot(g1*g5*d)
            - a.dot(g2*g5*b) * c.dot(g2*g5*d)
            - a.dot(g3*g5*b) * c.dot(g3*g5*d))


def qPP(a, b, c, d):
    return a.dot(g5*b) * c.dot(g5*d)


if __name__ == "__main__":
    a1, a2, a3, a4 = sym.symbols("a1:5")
    b1, b2, b3, b4 = sym.symbols("b1:5")
    c1, c2, c3, c4 = sym.symbols("c1:5")
    d1, d2, d3, d4 = sym.symbols("d1:5")

    a = g0 * Matrix([a1, a2, a3, a4])
    b = Matrix([[b1], [b2], [b3], [b4]])
    c = g0 * Matrix([c1, c2, c3, c4])
    d = Matrix([[d1], [d2], [d3], [d4]])

    SS = qSS(a, d, c, b)

    VV = qVV(a, d, c, b)

    TT = qTT(a, d, c, b)

    AA = qAA(a, d, c, b)

    PP = qPP(a, d, c, b)

    SS_normal = qSS(a, b, c, d)

    VV_normal = a.dot(g0*b) * c.dot(g0*d) \
        - a.dot(g1*b) * c.dot(g1*d) \
        - a.dot(g2*b) * c.dot(g2*d) \
        - a.dot(g3*b) * c.dot(g3*d)

    # print(sym.expand(SS_normal))
    # print(sym.simplify(0.25*SS + 0.25*PP + 3*TT + VV - AA))

    CiL, CiR, CjL, CjR = sym.symbols("CiL, CiR, CjL, CjR")
    # CiL = CjR = 0
    # CiR = CjL = 1
    PL = 0.5 * (eye - g5)
    PR = 0.5 * (eye + g5)
    SS_general = a.dot((CiL*PL + CiR*PR)*b) * c.dot((CjR*PL + CjL*PR)*d)
    SS_general = collect_quadratic(SS_general, [CiL, CiR, CjL, CjR])
    SS_general = sym.nsimplify(SS_general)

    LL = 1/2 * qVV(a, PR*d, c, PL*b)
    LR = 1/2 * qSS(a, PL*d, c, PL*b) + 1/8 * qTT(a, d, c, PL*b)
    RL = 1/2 * qSS(a, PR*d, c, PR*b) + 1/8 * qTT(a, d, c, PR*b)
    RR = 1/2 * qVV(a, PL*d, c, PR*b)

    SS_rewritten = CiL*CjL*LL + CiL*CjR*LR + CiR*CjL*RL + CiR*CjR*RR
    SS_rewritten = collect_quadratic(SS_rewritten, [CiL, CiR, CjL, CjR])
    SS_rewritten = sym.nsimplify(SS_rewritten)

    sym.pprint(sym.simplify(
        SS_general - SS_rewritten
    ))

    # print(-1/8 * trace(- PL*(g0*g1-g1*g0)*g5*PL*(g0*g1-g1*g0)
    #                    - PL*(g0*g2-g2*g0)*g5*PL*(g0*g2-g2*g0)
    #                    - PL*(g0*g3-g3*g0)*g5*PL*(g0*g3-g3*g0)
    #                    + PL*(g1*g2-g2*g1)*g5*PL*(g1*g2-g2*g1)
    #                    + PL*(g1*g3-g3*g1)*g5*PL*(g1*g3-g3*g1)
    #                    + PL*(g2*g3-g3*g2)*g5*PL*(g2*g3-g3*g2)))
    # sym.pprint(sym.simplify(SS_general - SS_rewritten))

    # sym.pprint(sym.simplify(SS_normal - (SS + VV + TT/2 - AA + PP)/4))
    # sym.pprint(sym.simplify(VV_normal - (SS - VV/2 - AA/2 - PP)))
