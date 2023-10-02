from math import sqrt
import numpy as np
from sys import float_info

EPSILON = sqrt(float_info.epsilon)
MAX = 1 / float_info.epsilon


def isNotDuplicate(first, second, threshold=EPSILON):
    return abs(first - second) > threshold


def isNotInfinitessimal(arg, threshold=EPSILON):
    return abs(arg) > threshold


def isNotInfinite(arg, threshold=MAX):
    return abs(arg) < threshold


def get_finite(arg, threshold_min=EPSILON, threshold_max=MAX):
    if np.iscomplexobj(arg):
        real_result = get_finite(arg.real,
                                 threshold_min=threshold_min,
                                 threshold_max=threshold_max)
        imag_result = get_finite(arg.imag,
                                 threshold_min=threshold_min,
                                 threshold_max=threshold_max)
        if not imag_result.any():
            result = np.array(real_result, dtype=float)
        else:
            result = real_result + 1j * imag_result
    else:
        result = np.where(isNotInfinite(abs(arg), threshold=threshold_max),
                          arg, np.nan)
        result = np.where(isNotInfinitessimal(abs(arg), threshold=threshold_min),
                          result, 0)
    return result
