from sympy import expand, nsimplify, simplify, factor, collect, pprint, Matrix
from .utils import EPSILON
from .num_utils import get_finite


def print_matrix(matrix):
    pprint(Matrix(get_finite(matrix)))
    return None


def prettyprint(expression, pretty=True, deepfactor=True, replace=None):
    if pretty:
        result = prettify(expression, deepfactor=deepfactor, replace=replace)
    else:
        result = expression
    pprint(result)


def prettify(expression, deepfactor=True, replace=None):
    result = expression
    try:
        result = nsimplify(result, tolerance=EPSILON, rational=True)
    except:
        print("Could not nsimplify output.")
    try:
        result = simplify(result, tolerance=EPSILON, rational=True)
    except:
        print("Could not simplify output.")
    if deepfactor:
        try:
            result = factor(result, deep=True)
        except:
            print("Could not factor output.")
    if replace is not None:
        result = result.replace(*replace)
        result = prettify(result, deepfactor=deepfactor)
    return result


def collect_quadratic(expression, symbols):
    result = expand(expression)
    for idx1 in range(len(symbols)):
        for idx2 in range(idx1+1):
            result = collect(result, symbols[idx1] * symbols[idx2])
    return result
