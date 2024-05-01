from math import sqrt
import numpy as np


def set_weinberg(MZ, MW, GF):
    global cosW, sinW, cos2W, sin2W, tanW
    cos2W = (MW / MZ)**2
    sin2W = 1 - cos2W
    cosW = sqrt(cos2W)
    sinW = sqrt(sin2W)
    tanW = sinW / cosW
    return

def set_nmix(NMIX, IMNMIX):
    global N
    N = {key : NMIX[key] + 1j*IMNMIX[key] for key in NMIX}
    return

def set_sqmix(USQMIX, IMUSQMIX, DSQMIX, IMDSQMIX):
    global Rusq, Rdsq
    Rusq = {key : USQMIX[key] + 1j*IMUSQMIX[key] for key in USQMIX}
    Rdsq = {key : DSQMIX[key] + 1j*IMDSQMIX[key] for key in DSQMIX}
    return

def Cqq(chirality, Qe, I3):
    result = -Qe * sin2W
    if chirality == 0:
        return (result + I3) / cosW
    else:
        return result / cosW

def Oij(chirality, i, j):
    result = 0.5 * ( N[i, 4]*N[j, 4].conjugate() - N[i,3]*N[j,3].conjugate() ) / cosW
    if chirality == 1:
        return result.conjugate()
    else:
        return result 

def Zcharge(chirality, i, j, Qe, I3):
    return Cqq(chirality, Qe, I3) * Oij(chirality, i, j)

def ZXYnorm(i, j, Qe, I3): 
    return abs(Zcharge(0, i, j, Qe, I3))**2 + abs(Zcharge(1, i, j, Qe, I3))**2

def Z2re(i, j, Qe, I3): 
    return 2*(Zcharge(0, i, j, Qe, I3)**2 + Zcharge(1, i, j, Qe, I3)**2).real


def Csq(chirality, i, Qe, I3):
    result = Qe*tanW * N[i,1]
    if chirality == 0:
        return result + I3 * (N[i,2] - N[i,1]*tanW)
    else:
        return -result.conjugate()
    
# def Qcharge(mass_idx, chirality1, chirality2, i, j, generation, Qe, I3):
#     chiral_idx1 = 3*chirality1 + generation
#     chiral_idx2 = 3*chirality2 + generation
#     if Qe > 0:
#         R2 = Rusq[mass_idx, chiral_idx1].conjugate() * Rusq[mass_idx, chiral_idx2]
#     else:
#         R2 = Rdsq[mass_idx, chiral_idx1].conjugate() * Rdsq[mass_idx, chiral_idx2]
#     C2 = Csq(chirality1, i, Qe, I3) * Csq(chirality2, j, Qe, I3).conjugate()

#     return R2 * C2

def Qcharge(A, X, Y, i, j, generation, Qe, I3):
    if Qe > 0:
        R2 = Rusq[A+1, 3*X+generation+1].conjugate() * Rusq[A+1, 3*Y+generation+1]
        # print(Rusq[1,1], Rusq[1,2], Rusq[2,1], Rusq[2,2])
    else:
        R2 = Rdsq[A+1, 3*X+generation+1].conjugate() * Rdsq[A+1, 3*Y+generation+1]
    C2 = Csq(X, i, Qe, I3) * Csq(Y, j, Qe, I3).conjugate()
    return R2 * C2

def QXYsum(generation, A, B, i, j, Qe, I3):
    result = 0.0
    for chirality1 in range(2):
        for chirality2 in range(2):
            result += Qcharge(A, chirality1, chirality2, i, j, generation, Qe, I3) * Qcharge(B, chirality1, chirality2, i, j, generation, Qe, I3).conjugate()
    return result.real

def QXXsum(generation, A, B, i, j, Qe, I3):
    result = 0
    for chirality1 in range(2):
        result += Qcharge(A, chirality1, chirality1, i, j, generation, Qe, I3) * Qcharge(B, chirality1, chirality1, i, j, generation, Qe, I3).conjugate()
    return result.real

def QXXpsum(generation, A, B, i, j, Qe, I3):
    result = 0
    for chirality1 in range(2):
        chirality2 = 0 if chirality1 == 1 else 1
        result += Qcharge(A, chirality1, chirality2, i, j, generation, Qe, I3) * Qcharge(B, chirality1, chirality2, i, j, generation, Qe, I3).conjugate()
    return result.real




if __name__ == '__main__':
    import pyslha
    '''
    d = pyslha.read('slha/muCPV/generated/csps1a_10_00_00.slha')

    set_weinberg(d.blocks['SMINPUTS'][4], d.blocks['MASS'][24], 0)
    set_nmix(d.blocks['NMIX'], d.blocks['IMNMIX'])
    set_sqmix(d.blocks['USQMIX'], d.blocks['IMUSQMIX'], d.blocks['DSQMIX'], d.blocks['IMDSQMIX'])
    '''

    i = 1
    j = 2

    usq_pid_chart = {(0,0) : 1000002, (0,1) : 2000002, (1,0) : 1000004, (1,1) : 2000004, (2,0) : 1000006, (2,1) : 2000006}

    # print(ZXYnorm(1, 2, 2/3, 0.5))
    # print(Z2re(1, 2, 2/3, 0.5))

    d = pyslha.read('../../../smoking/example/sps1a.slha')
    set_weinberg(d.blocks['SMINPUTS'][4], d.blocks['MASS'][24], 0)
    N = {}
    for i in range(1, 5):
        for j in range(1, 5):
            N[i,j] = d.blocks['NMIX'][i,j]
    Rusq_raw = {}
    for A in range(6):
        for X in range(6):
            if A == X and A not in (2, 5):
                Rusq_raw[A+1,X+1] = 1.0
            elif (A in (2, 5)) and (X in (2, 5)):
                Rusq_raw[A+1,X+1] = d.blocks['STOPMIX'][A%2+1,X%2+1]
            else:
                Rusq_raw[A+1,X+1] = 0.0
    Rusq = {}
    usq_masses = []
    usq_pids = []
    for X in range(2):
        for generation in range(3):
            usq_masses.append(d.blocks['MASS'][usq_pid_chart[generation,X]])
            usq_pids.append(usq_pid_chart[generation,X])
    usq_masses_sorted = sorted(usq_masses)
    A = 1
    for idx in [idx for _, idx in sorted(zip(usq_masses, range(6)), key=lambda pair: pair[0])]:
        for X in range(6):
            Rusq[A,X+1] = Rusq_raw[idx+1,X+1]
        A += 1

    # for A in range(1,7):
    #     print([Rusq_raw[A, X] for X in range(1,7)])
    # print('-'*36)
    # for A in range(1,7):
    #     print([Rusq[A, X] for X in range(1,7)])

    # print(usq_pids)
    # print(usq_masses)
    # print([idx for _, idx in sorted(zip(usq_masses, range(6)), key = lambda pair: pair[0])])
    # exit()

    QXYsum = {}

    QAXY = {}
    for X in range(2):
        for Y in range(2):
            C2 = Csq(X, i, 2/3, 0.5) * Csq(Y, j, 2/3, 0.5).conjugate()
            # C2 = 1
            for A in range(6):
                R2 = sum(Rusq[A+1,3*X+generation+1].conjugate()*Rusq[A+1,3*Y+generation+1] for generation in range(3))
                QAXY[A,X,Y] = R2*C2
    for A in range(6):
        for B in range(6):
            QXYsum[A,B] = 0.0
            for X in range(2):
                for Y in range(2):
                    QXYsum[A,B] += (QAXY[A,X,Y] * QAXY[B,X,Y].conjugate()).real
    # for A in range(6):
    #     for X in range(2):
    #         for Y in range(2):
    #             print(A, X, Y, QAXY[A,X,Y])
    # exit()
    result1 = {}
    for A in range(6):
        for B in range(6):
            massA, massB = usq_masses_sorted[A], usq_masses_sorted[B]
            if massA < massB:
                result1[massA,massB] = QXYsum[A,B]
            else:
                result1[massB,massA] = QXYsum[A,B]

    # for key in sorted(result1, key = lambda pair : 0.5*(pair[0]+pair[1])):
    #     print(key, result1[key])

    print('-'*72)

    QAXY = {}
    for gen in range(3):
        if gen < 2:
            Rusq = {(1,1) : 1.0, (1,2) : 0.0, (2,1) : 0.0, (2,2) : 1.0}
        else:
            Rusq = {key : d.blocks['STOPMIX'][key] for key in d.blocks['STOPMIX']}
        for A in range(2):
            for X in range(2):
                for Y in range(2):
                    R2 = Rusq[A+1,X+1].conjugate() * Rusq[A+1,Y+1]
                    C2 = Csq(X, i, 2/3, 0.5) * Csq(Y, j, 2/3, 0.5).conjugate()
                    QAXY[3*A+gen,X,Y] = R2 * C2
    # counter = 0
    # for A in [idx for _, idx in sorted(zip(usq_masses, range(6)), key=lambda pair : pair[0])]:
    #     for X in range(2):
    #         for Y in range(2):
    #             print(counter, X, Y, QAXY[A,X,Y])
    #     counter += 1
    # exit()

    QXYsum = {}
    for gen1 in range(3):
        for A in range(2):
            for gen2 in range(3):
                for B in range(2):
                    QXYsum[3*A+gen1,3*B+gen2] = 0.0
                    for X in range(2):
                        for Y in range(2):
                            QXYsum[3*A+gen1,3*B+gen2] += (QAXY[3*A+gen1,X,Y] * QAXY[3*B+gen2,X,Y].conjugate()).real
    result2 = {}
    masses = d.blocks['MASS']
    for A in range(6):
        for B in range(6):
            massA, massB = masses[usq_pid_chart[A%3,0 if A<3 else 1]], masses[usq_pid_chart[B%3,0 if B<3 else 1]]
            if massA < massB:
                result2[massA,massB] = QXYsum[A,B]
            else:
                result2[massB,massA] = QXYsum[A,B]

            
    # for key in sorted(result2, key = lambda pair : 0.5*(pair[0]+pair[1])):
    #     print(key, result2[key])

    for key in result1:
        print(key, result1[key], result2[key])
    '''
    '''
