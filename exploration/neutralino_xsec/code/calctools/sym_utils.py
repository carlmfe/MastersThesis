from sympy import expand, nsimplify, simplify, collect, pprint
from utils import EPSILON


def prettyprint(expression):
    result = expression
    try:
        result = expand(result)
    except:
        print("Could not expand output.")
    try:
        result = nsimplify(result, tolerance=EPSILON, rational=True)
    except:
        print("Could not nsimplify output.")
    try:
        result = simplify(result, tolerance=EPSILON, rational=True)
    except:
        print("Could not simplify output.")
    pprint(result)


def collect_quadratic(expression, symbols):
    result = expand(expression)
    for idx1 in range(len(symbols)):
        for idx2 in range(idx1+1):
            result = collect(result, symbols[idx1] * symbols[idx2])
    return result
