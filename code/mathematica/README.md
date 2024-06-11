## Mathematica code for electroweakino pair production at parton level
This folder contains the symbolic calculation of the Feynman diagrams for electroweakino production at LO.
It also contains NLO calculations for pair production of higgsino-like neutralinos.

The folder structure is as follows:
```bash
code/mathematica/
├── include
│   ├── CalcTools.wl
│   ├── EWinos.wl
│   └── XSec.wl
├── LO
│   ├── cctree_diagrams.nb
│   ├── ewino_tensors.nb
│   ├── nctree_diagrams.nb
│   ├── nntree_diagrams.nb
│   └── tree_diagrams_factorised.nb
├── misc
│   ├── arctan_integrals.nb
│   ├── compare_debove.nb
│   └── t_integrals.nb
├── NLO
│   ├── counterterms.nb
│   ├── real_contribution.nb
│   ├── total_xsec.nb
│   └── virtual_contribution.nb
├── results
│   ├── LO
│   │   ├── CCamps.m
│   │   ├── CCcoeffs.m
│   │   ├── CCdxsec.m
│   │   ├── CCTensor.m
│   │   ├── CCxsec_fac.m
│   │   ├── CCxsec.m
│   │   ├── CCxsecNBW.m
│   │   ├── NCamps.m
│   │   ├── NCcoeffs.m
│   │   ├── NCdxsec.m
│   │   ├── NCTensor.m
│   │   ├── NCxsec_fac.m
│   │   ├── NCxsec.m
│   │   ├── NCxsecNBW.m
│   │   ├── NeuTensor.m
│   │   ├── NNamps.m
│   │   ├── NNcoeffs.m
│   │   ├── NNdxsec.m
│   │   ├── NNTensor.m
│   │   ├── NNxsec_fac.m
│   │   ├── NNxsec_hino.m
│   │   ├── NNxsec.m
│   │   └── NNxsecNBW.m
│   └── NLO
│       ├── NNGluxsec.m
│       ├── NNLoopxsec.m
│       ├── NNQrkxsec.m
│       └── quarkCTs.m
└── README.md
```


A short description of the contents of each folder:
### [LO/](LO/)
Each of the scripts [nntree_diagrams.m](LO/nntree_diagrams.m), [nctree_diagrams.m](LO/nctree_diagrams.m), [cctree_diagrams.m](LO/cctree_diagrams.m), compute the full LO cross-section for the production of a neutralino pair, a neutralino and chargino pair and a chargino pair respectively. The amplitudes, differential cross-section, total cross-section and the total cross-section without Breit-Wigner approximation for the squarks are written respectively to the files [NNamps.m](results/LO/NNamps.m), [NNdxsec.m](results/LO/NNdxsec.m), [NNxsec.m](results/LO/NNxsec.m) and [NNxsecNBW.m](results/LO/NCxsecNBW.m) in the case of neutralino pair production, with the prefix changing for the other processes. Furthermore, the higgsino-like cross-section for neutralino-pair production is written to [NNxsec_hino.m](results/LO/NNxsec_hino.m), for use in the higgsino-like NLO calculations later on.
The script [ewino_tensors.m](LO/ewino_tensors.m) computes the final state electroweakino tensors in the context of a factorised calculation of the electroweakino pair production. The results are written to [NNTensor.m](results/LO/NNTensor.m), [NNcoeffs.m](results/LO/NNcoeffs.m), [NCTensor.m](results/LO/NCTensor.m), [NCcoeffs.m](results/LO/NCcoeffs.m), [CCTensor.m](results/LO/CCTensor.m) [CCcoeffs.m](results/LO/CCcoeffs.m), and are utilised in [tree_diagrams_factorised.m](LO/tree_diagrams_factorised.m) and [total_xsec.m](NLO/total_xsec.m) scripts to calculate the LO and NLO contributions to the total cross-section, respectively.
Finally, [tree_diagrams_factorised.m](LO/tree_diagrams_factorised.m) computes the factorisable LO contributions to all the electroweakino processes, writing the results to [NNxsec_fac.m](results/LO/NNxsec_fac.m), [NCxsec_fac.m](results/LO/NCxsec_fac.m), [CCxsec_fac.m](results/LO/CCxsec_fac.m).
All results are written to the directory [results/LO/](results/LO/).


### [NLO/](NLO/)
The script [counterterms.m](NLO/counterterms.m) calculates the counterterms for the quarks to be included in the [virtual_contribution.m](NLO/virtual_contribution.m), writing them to [quarkCTs.m](results/NLO/quarkCTs.m).
[virtual_contribution.m](NLO/virtual_contribution.m) then calculates the renormalised vertex correction through triangle loops, and writes to [NNLoopxsec.m](results/NLO/NNLoopxsec.m).
The real emission contributions from the radiation of a gluon or a quark are then calculated in [real_contribution.m](NLO/real_contribution.m) and are written to [NNGluxsec.m](results/NLO/NNGluxsec.m) and [NNQrkxsec.m](results/NLO/NNQrkxsec.m).
Finally, all the cross-section contributions are put together in [tot_xsec.m](NLO/total_xsec.m), where cancellation of UV divergences is ensured symbolically.
All results are written to the directory [results/NLO/](results/NLO/).


### [include/](include/)
This folder contains three self-written libraries that are used throughout the calculations in [LO/](LO/) and [NLO/](NLO/).
[CalcTools.wl](include/CalcTools.wl) contains functions used for doing the integrals over phase space in the LO calculations where there is no real emission.
[EWinos.wl](include/EWinos.wl) contains variables defined specifically for the processes studied here, with functions for substitution and algebraic manipulation. Furthermore, it includes some lists and functions for simplification and manipulation of the amplitudes calculated in [LO/](LO/) and [NLO/](NLO/).
[XSec.wl](include/XSec.wl) contains specific functions for handling more general amplitudes in `FeynArts`, specifically massaging and writing loop amplitudes into Passarino-Veltman functions, squaring amplitudes and handling more general denominators, i.e. those coming from Breit-Wigner propagators.


### [results/](results/)
Contains the results from the files in [LO/](LO/) and [NLO/](NLO/).


### [misc/](misc/)
This folder contains various checks done during development.
The script [t_integrals.nb](misc/t_integrals.nb) computes all the possible integrals over the Mandelstam variable *t* in the LO calculations, as a double check for hand-calculated results.
The script [arctan_integrals.nb](misc/arctan_integrals.nb) likewise delves into the possible integrals over the *t* variable that gives rise to arctan functions, and explores how different implementations of the result deal with the branch cut differently.
Lastly, [compare_debove.nb](misc/compare_debove.nb) compares the LO differential cross-section for neutralino pair production to the results in the Debove et al. article on electroweakino pair production on a symbolic level.
