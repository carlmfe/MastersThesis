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

a, b, c, d = sym.symbols(r'C__L*_i C__R*_i C__L_j C__R_j')
a = 0
c = 0


# sym.pprint(sym.simplify(sym.nsimplify(
#     (F * Matrix([(a+b)*(c+d)/4, 0, 0, 0, (a-b)*(c-d)/4])))))
# print("----------------------------")
# sym.pprint(sym.simplify(sym.nsimplify(
#     (F * X) * Matrix([-(a+b)*(c-d)/4, 0, 0, 0, -(a-b)*(c+d)/4]))))

# print(F @ np.array([0, 0.25, 0, 0.25, 0]))
# print((F @ X) @ np.array([0, -0.25, 0, -0.25, 0]))
# print(F @ np.array([1, 0, 0, 0, 0]))
# print((F @ X) @ np.array([0, 0, 0, 0, 0]))
