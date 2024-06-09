This is the repository for my Master's Thesis in Theoretical Physics at the University of Oslo.

# Supersymmetry in Proton--Proton Collisions
## Cross-Sections for Electroweakino Pair Production in the Complex Minimal Supersymmetric Standard Model
by Carl Martin Fevang

Supervisor: Are Raklev

### [Link to pdf](https://github.com/carlmfe/MastersThesis/blob/main/tex/main.pdf)

## Abstract
>To meaningfully scan the large parameter spaces beyond the Standard Model theories such as the Minimal Supersymmetric Standard Model (MSSM), accurate predictions are required for comparison to experimental data. Particularly, in particle collider experiments, fast and accurate cross-section calculations are necessary. In this thesis, I compute the leading order cross-sections for pair production of electroweakinos in proton-proton collisions at the Large Hadron Collider at CERN. Furthermore, next-to-leading order corrections are computed for higgsino-like neutralinos, and all neutralino pair production processes are implemented numerically for arbitrary complex-valued MSSM parameters. I explore physical scenarios derived from MSSM parameters, and present cross-section dependence with errors as the parameters are varied. Particular emphasis is placed on cross-sections with charge-parity invariance violating complex phases in the MSSM parameters, for which no implementation is currently available at next-to-leading order in the literature. I show that in at least one MSSM scenario, the effects of a complex phase is larger on leading order cross-sections than the addition of leading log resummation to next-to-leading order results.

## Description
placeholder

## Folders
- [code](./code/)
  - [calctools](./code/calctools/)
    &rarr; Python library for diagonalising neutralino mass matrix in complex MSSM framework. Also includes code for doing Dirac algebra manipulations using `SymPy` package.
  - [mathematica](./code/mathematica/)
    &rarr; Contains Mathematica libraries in /include that serve to calculate matrix elements from Feynman diagrams, and square them to get cross-sections for partonic electroweakino pair production.
  - [plotting](./code/plotting/)
    &rarr; Contains various python scripts used to run `smoking` and `resummino` code to evaluate cross-sections for a given slha-file, manipulating slha-files, generating slha-files from `FlexibleSUSY` models and handle output from various codes and plot them.
- [tex](./tex/)
  &rarr; Contains all LaTeX source code for thesis

- [dev](./dev/)
  &rarr; Contains LaTeX text and python programs developed, but not included into the final thesis.
