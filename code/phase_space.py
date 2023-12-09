import numpy as np
from sympy import sin, cos, sqrt
import sympy as sym

from calctools.sym_utils import prettyprint, prettify
from calctools.dirac_algebra import *


def kallan(a2, b, c):
    return (a2 - (b+c)**2)*(a2 - (b-c)**2)


Q_, s, mi, mj = sym.symbols("Q s mi mj", positive=True)
Qred = sym.symbols("Qbar", positive=True)
Q = Qred + mi + mj
theta3, theta1_star = sym.symbols("theta3 theta1")
phi3, phi1_star = sym.symbols("phi3 phi1")

ctheta = cos(theta3)
stheta = sin(theta3)
ctheta_star = cos(theta1_star)
stheta_star = sin(theta1_star)
cphi = cos(phi3)
sphi = sin(phi3)
cphi_star = cos(phi1_star)
sphi_star = sin(phi1_star)

h = ctheta*stheta_star*cphi_star
k = stheta_star*sphi_star

p1star_mag = prettify(sym.sqrt(kallan(Q**2, mi, mj)) / (2 * Q))
p3_mag = prettify((s - Q**2) / (2*sym.sqrt(s)))
gammabeta = p3_mag / Q
gamma = prettify(sym.sqrt(gammabeta**2 + 1))

s1 = -gammabeta * sym.sqrt(mi**2 + p1star_mag**2) + \
    gamma*p1star_mag*ctheta_star
s2 = -gammabeta * sym.sqrt(mj**2 + p1star_mag**2) - \
    gamma*p1star_mag*ctheta_star

p1x = p1star_mag*(h*cphi - sphi*k) + s1*stheta*cphi
p1y = p1star_mag*(h*sphi + cphi*k) + s1*stheta*sphi
p1z = -p1star_mag*stheta*stheta_star*cphi_star + s1*ctheta
p2x = p1star_mag*(-h*cphi + sphi*k) + s2*stheta*cphi
p2y = p1star_mag*(-h*sphi - cphi*k) + s2*stheta*sphi
p2z = p1star_mag*stheta*stheta_star*cphi_star + s2*ctheta


prettyprint(p1z, replace=(Qred, Q_ - mi - mj))
