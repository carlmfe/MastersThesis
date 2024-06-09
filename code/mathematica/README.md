## Mathematica code for electroweakino pair production at parton level
This folder contains the symbolic calculation of the Feynman diagrams for electroweakino production at LO.
It also contains NLO calculations for pair production of higgsino-like neutralinos.

A short description of the contents of each folder:
### LO
Each of the scripts [nntree_diagrams.m](LO/nntree_diagrams.m), [nctree_diagrams.m](LO/nctree_diagrams.m), [cctree_diagrams.m](LO/cctree_diagrams.m), compute the full LO cross-section for the production of a neutralino pair, a neutralino and chargino pair and a chargino pair respectively. Results from these files are written to the results/LO folder.
The script [ewino_tensors.m](LO/ewino_tensors.m) computes the final state electroweakino tensors in the context of a factorised calculation of the electroweakino pair production. The results are written to the results/LO folder, and are utilised in [tree_diagrams_factorised.m](LO/tree_diagrams_factorised.m) and [total_xsec.m](NLO/total_xsec.m) scripts to calculate the LO and NLO contributions to the total cross-section, respectively.

### NLO


### include


### results
