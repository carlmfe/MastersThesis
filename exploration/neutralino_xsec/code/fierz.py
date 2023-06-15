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
)

X = Matrix(aeye(5))

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
    odd_expr = odd_expr.replace("SP", "((F*X)*SP)")
    odd_expr = odd_expr.replace("VA", "((F*X)*VA)")
    odd_expr = odd_expr.replace("Tt", "((F*X)*Tt)")
    odd_expr = odd_expr.replace("AV", "((F*X)*AV)")
    odd_expr = odd_expr.replace("PS", "((F*X)*PS)")

    # sym.pprint(sym.simplify(sym.nsimplify(eval(even_expr))))
    result = eval(even_expr).dot(even_vector) + eval(odd_expr).dot(odd_vector)
    result = sym.nsimplify(result)
    result = sym.simplify(result)
    if "-q" in sys.argv:
        for idx1 in range(len(symbols)):
            for idx2 in range(idx1+1):
                result = sym.collect(result, symbols[idx1] * symbols[idx2])
    else:
        for symbol in symbols:
            result = sym.collect(result, symbol)

    sym.pprint(result)
