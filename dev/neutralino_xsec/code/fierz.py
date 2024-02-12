import numpy as np
import sympy as sym
from sympy.matrices import Matrix
from sympy.interactive.printing import init_printing
init_printing()


def adiag(v):
    return np.fliplr(np.diag(v))


def aeye(N):
    return adiag(np.ones((N,)))


F = 0.25 * Matrix(
    [[1, 1, 0.5, -1, 1],
     [4, -2, 0, -2, -4],
     [12, 0, -2, 0, 12],
     [-4, -2, 0, -2, 4],
     [1, -1, 0.5, 1, 1]]
).T

X = Matrix(aeye(5))

FX = F*X

zero = Matrix(np.zeros(5))

SS = Matrix([1, 0, 0, 0, 0])
VV = Matrix([0, 1, 0, 0, 0])
TT = Matrix([1, 0, 1, 0, 0])
AA = Matrix([0, 0, 0, 1, 0])
PP = Matrix([0, 0, 0, 0, 1])

SP = Matrix([1, 0, 0, 0, 0])
VA = Matrix([0, 1, 0, 0, 0])
Tt = Matrix([1, 0, 1, 0, 0])
AV = Matrix([0, 0, 0, 1, 0])
PS = Matrix([0, 0, 0, 0, 1])

even_vector = Matrix(["SS", "VV", "TT", "AA", "PP"])
odd_vector = Matrix(["SP", "VA", "Tt", "AV", "PS"])


if __name__ == "__main__":
    import sys
    expr = sys.argv[1]
    symbols = []
    for arg in sys.argv[2:]:
        locals().update({arg: sym.symbols(arg)})
        symbols.append(locals()[arg])

    # CiL, CiR, CjL, CjR = sym.symbols("C_i^L C_i^R C_j^L C_j^R")
    # CSS, CSP, CPS, CPP = sym.symbols("CSS CSP CPS CPP")
    # symbols = [CiL, CiR, CjL, CjR]

    # CSS = 0.25*(CiL+CiR)*(CjL+CjR)
    # CSP = 0.25*(CiL+CiR)*(CjL-CjR)
    # CPS = -0.25*(CiL-CiR)*(CjL+CjR)
    # CPP = -0.25*(CiL-CiR)*(CjL-CjR)

    sym.init_printing(use_latex=True)

    # LL = "0.25*(SS - SP - PS + PP)"
    # LR = "0.25*(SS + SP - PS - PP)"
    # RL = "0.25*(SS - SP + PS - PP)"
    # RR = "0.25*(SS + SP + PS + PP)"

    # expr = f"CiL*CjR*{LL} + CiL*CjL*{LR} + CiR*CjR*{RL} + CiR*CjL*{RR}"

    even_expr = expr
    odd_expr = expr
    even_expr = even_expr.replace("SS", "(F*SS)")
    even_expr = even_expr.replace("VV", "(F*VV)")
    even_expr = even_expr.replace("TT", "(F*TT)")
    even_expr = even_expr.replace("AA", "(F*AA)")
    even_expr = even_expr.replace("PP", "(F*PP)")
    even_expr = even_expr.replace("SP", "zero")
    even_expr = even_expr.replace("VA", "zero")
    even_expr = even_expr.replace("Tt", "zero")
    even_expr = even_expr.replace("AV", "zero")
    even_expr = even_expr.replace("PS", "zero")

    odd_expr = odd_expr.replace("SS", "zero")
    odd_expr = odd_expr.replace("VV", "zero")
    odd_expr = odd_expr.replace("TT", "zero")
    odd_expr = odd_expr.replace("AA", "zero")
    odd_expr = odd_expr.replace("PP", "zero")
    odd_expr = odd_expr.replace("SP", "(FX*SP)")
    odd_expr = odd_expr.replace("VA", "(FX*VA)")
    odd_expr = odd_expr.replace("Tt", "(FX*Tt)")
    odd_expr = odd_expr.replace("AV", "(FX*AV)")
    odd_expr = odd_expr.replace("PS", "(FX*PS)")

    result = eval(even_expr).dot(even_vector) + eval(odd_expr).dot(odd_vector)

    result = sym.nsimplify(result)
    result = sym.simplify(result)
    if "-q" in sys.argv:
        result = sym.expand(result)
        for idx1 in range(len(symbols)):
            for idx2 in range(idx1+1):
                result = sym.collect(result, symbols[idx1] * symbols[idx2])
    else:
        for symbol in symbols:
            result = sym.collect(result, symbol)

    sym.pprint(result)
