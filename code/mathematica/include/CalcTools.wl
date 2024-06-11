(* ::Package:: *)

BeginPackage["CalcTools`"]


Needs["EWinos`"]
Needs["XSec`"]
Needs["FeynCalc`"]


MakeBoxes[tIntegral[tpow_],TraditionalForm]:=SubsuperscriptBox["T","0",ToString[tpow]]
MakeBoxes[tIntegral[tpow_,m_],TraditionalForm]:=\!\(TraditionalForm\`RowBox[{SubsuperscriptBox["\<T\>", "\<1\>", ToString[tpow]], "\<(\>", MakeBoxes[m, TraditionalForm], "\<)\>"}]\)
MakeBoxes[tIntegral[tpow_,m1_,m2_],TraditionalForm]:=\!\(TraditionalForm\`RowBox[{SubsuperscriptBox["\<T\>", "\<2\>", ToString[tpow]], "\<(\>", RowBox[{MakeBoxes[m1, TraditionalForm], "\<,\>", MakeBoxes[m2, TraditionalForm]}], "\<)\>"}]\)


tIntegralSubs={
	t^2*Den[t,m1_]*Den[t,m2_] -> tIntegral[2,m1,m2\[Conjugate]],
	t*Den[t,m1_]*Den[t,m2_] -> tIntegral[1,m1,m2\[Conjugate]],
	Den[t,m1_]*Den[t,m2_] -> tIntegral[0,m1,m2\[Conjugate]],

	t^2*Den[t,m1_] -> tIntegral[2,m1],
	t*Den[t,m1_] -> tIntegral[1,m1],
	Den[t,m1_] -> tIntegral[0,m1],

	t^2 -> tIntegral[2],
	t -> tIntegral[1]
}
ToTIntegrals[expr_] := (Collect2[#, tIntegral[__], Factoring -> (Simplify[#]//Isolate&)]&)[
	((SelectFree2[#, tIntegral[__]]*tIntegral[0] + SelectNotFree2[#, tIntegral[__]])&)[
		(Collect2[
			expr,
			t,
			Factoring -> (Collect2[#,{Den[t,m1_]Den[t,m2_], Den[t,m1_]}]&)
		] // Expand) /. tIntegralSubs
	]
]


tIntegralRelations={
	tIntegral[1, \[CapitalDelta]_] -> tIntegral[0] + \[CapitalDelta] tIntegral[0, \[CapitalDelta]],
	tIntegral[2, \[CapitalDelta]_] -> tIntegral[1] + \[CapitalDelta] tIntegral[0] + \[CapitalDelta]^2 tIntegral[0, \[CapitalDelta]],
	tIntegral[0, \[CapitalDelta]1_, \[CapitalDelta]2_] -> (tIntegral[0, \[CapitalDelta]1] - tIntegral[0, \[CapitalDelta]2\[Conjugate]])/(\[CapitalDelta]1-\[CapitalDelta]2\[Conjugate]),
	tIntegral[1, \[CapitalDelta]1_, \[CapitalDelta]2_] -> (\[CapitalDelta]1 tIntegral[0, \[CapitalDelta]1] - \[CapitalDelta]2 tIntegral[0, \[CapitalDelta]2\[Conjugate]])/(\[CapitalDelta]1-\[CapitalDelta]2\[Conjugate]),
	tIntegral[2, \[CapitalDelta]1_, \[CapitalDelta]2_] -> tIntegral[0] + (\[CapitalDelta]1^2 tIntegral[0, \[CapitalDelta]1] - (\[CapitalDelta]2\[Conjugate])^2 tIntegral[0, \[CapitalDelta]2\[Conjugate]])/(\[CapitalDelta]1-\[CapitalDelta]2\[Conjugate])
}
ReduceTIntegrals[expr_]:=Collect[
	(expr/.tIntegralRelations)//Expand//FRH,
	tIntegral[__],
	(Isolate[(#1//Simplify)]&)
]


tIntegralDict={
	tIntegral[0]->2 p Sqrt[s],
	tIntegral[1]->-p Sqrt[s] (s-MEW[i]^2-MEW[j]^2),
	tIntegral[2]->2/3 p (MEW[i]^4+MEW[i]^2 (MEW[j]^2-2 s)+(MEW[j]^2-s)^2) Sqrt[s],
	tIntegral[0,\[CapitalDelta]_]->dLog[(MEW[i]^2+MEW[j]^2-s)/2+ p Sqrt[s] - \[CapitalDelta], (MEW[i]^2+MEW[j]^2-s)/2 - p Sqrt[s] - \[CapitalDelta]],
	tIntegral[1,\[CapitalDelta]_]->2 p Sqrt[s]+\[CapitalDelta] dLog[(MEW[i]^2+MEW[j]^2-s)/2+ p Sqrt[s] - \[CapitalDelta], (MEW[i]^2+MEW[j]^2-s)/2 - p Sqrt[s] - \[CapitalDelta]],
	tIntegral[2,\[CapitalDelta]_]->2 p Sqrt[s] \[CapitalDelta]+\[CapitalDelta]^2 dLog[(MEW[i]^2+MEW[j]^2-s)/2+ p Sqrt[s] - \[CapitalDelta], (MEW[i]^2+MEW[j]^2-s)/2 - p Sqrt[s] - \[CapitalDelta]] - p Sqrt[s] (s-MEW[i]^2-MEW[j]^2),
	tIntegral[0,\[CapitalDelta]1_,\[CapitalDelta]2_]->1/(\[CapitalDelta]1-Conjugate[\[CapitalDelta]2]) (dLog[(MEW[i]^2+MEW[j]^2-s)/2+ p Sqrt[s] - \[CapitalDelta]1, (MEW[i]^2+MEW[j]^2-s)/2 - p Sqrt[s] - \[CapitalDelta]1] - dLog[(MEW[i]^2+MEW[j]^2-s)/2+ p Sqrt[s] - Conjugate[\[CapitalDelta]2], (MEW[i]^2+MEW[j]^2-s)/2 - p Sqrt[s] - Conjugate[\[CapitalDelta]2]]),
	tIntegral[1,\[CapitalDelta]1_,\[CapitalDelta]2_]->1/(\[CapitalDelta]1-Conjugate[\[CapitalDelta]2]) (\[CapitalDelta]1 dLog[(MEW[i]^2+MEW[j]^2-s)/2+ p Sqrt[s] - \[CapitalDelta]1, (MEW[i]^2+MEW[j]^2-s)/2 - p Sqrt[s] - \[CapitalDelta]1] - Conjugate[\[CapitalDelta]2] dLog[(MEW[i]^2+MEW[j]^2-s)/2+ p Sqrt[s] - Conjugate[\[CapitalDelta]2], (MEW[i]^2+MEW[j]^2-s)/2 - p Sqrt[s] - Conjugate[\[CapitalDelta]2]]),
	tIntegral[2,\[CapitalDelta]1_,\[CapitalDelta]2_]->1/(\[CapitalDelta]1-Conjugate[\[CapitalDelta]2]) (2 p Sqrt[s] (\[CapitalDelta]1 - Conjugate[\[CapitalDelta]2])+\[CapitalDelta]1^2 dLog[(MEW[i]^2+MEW[j]^2-s)/2+ p Sqrt[s] - \[CapitalDelta]1, (MEW[i]^2+MEW[j]^2-s)/2 - p Sqrt[s] - \[CapitalDelta]1] - Conjugate[\[CapitalDelta]2]^2 dLog[(MEW[i]^2+MEW[j]^2-s)/2+ p Sqrt[s] - Conjugate[\[CapitalDelta]2], (MEW[i]^2+MEW[j]^2-s)/2 - p Sqrt[s] - Conjugate[\[CapitalDelta]2]])
}
FreeTIntegrals[expr_]:=Collect[expr, tIntegral[__]]/.tIntegralDict


tIntegralNBWLMDict = {
	tIntegral[0,m2_,m2_] -> (2 p Sqrt[s])/(m2^2+MEW[i]^2 MEW[j]^2+m2 (s-MEW[i]^2-MEW[j]^2)),
	tIntegral[1,m2_,m2_] -> (2 m2 p Sqrt[s])/(m2^2+MEW[i]^2 MEW[j]^2-m2 (MEW[i]^2+MEW[j]^2-s))-Log[(m2+(s-MEW[i]^2-MEW[j]^2)/2+p Sqrt[s])/(m2+(s-MEW[i]^2-MEW[j]^2)/2-p Sqrt[s])],
	tIntegral[2,m2_,m2_] -> (2 p (2 m2^2+MEW[i]^2 MEW[j]^2-m2 (MEW[i]^2+MEW[j]^2-s)) Sqrt[s])/(m2^2+MEW[i]^2 MEW[j]^2-m2 (MEW[i]^2+MEW[j]^2-s))-2 m2 Log[(m2+(s-MEW[i]^2-MEW[j]^2)/2+p Sqrt[s])/(m2+(s-MEW[i]^2-MEW[j]^2)/2-p Sqrt[s])]
}
tIntegralNBWDict = {
	tIntegral[0] -> 2 p Sqrt[s],
	tIntegral[1] -> -p Sqrt[s] (s-MEW[i]^2-MEW[j]^2),
	tIntegral[2] -> 2/3 p (MEW[i]^4+MEW[i]^2 (MEW[j]^2-2 s)+(MEW[j]^2-s)^2) Sqrt[s],
	tIntegral[0,m2_] -> -Log[(m2+(s-MEW[i]^2-MEW[j]^2)/2+p Sqrt[s])/(m2+(s-MEW[i]^2-MEW[j]^2)/2-p Sqrt[s])],
	tIntegral[1,m2_] -> 2p Sqrt[s] - m2 Log[(m2+(s-MEW[i]^2-MEW[j]^2)/2+p Sqrt[s])/(m2+(s-MEW[i]^2-MEW[j]^2)/2-p Sqrt[s])],
	tIntegral[2,m2_] -> p Sqrt[s](2m2+MEW[i]^2+MEW[j]^2-s) - m2^2 Log[(m2+(s-MEW[i]^2-MEW[j]^2)/2+p Sqrt[s])/(m2+(s-MEW[i]^2-MEW[j]^2)/2-p Sqrt[s])],
	tIntegral[0,m12_,m22_] -> 1/(m22-m12) (Log[(m12+(s-MEW[i]^2-MEW[j]^2)/2+p Sqrt[s])/(m12+(s-MEW[i]^2-MEW[j]^2)/2-p Sqrt[s])]-Log[(m22+(s-MEW[i]^2-MEW[j]^2)/2+p Sqrt[s])/(m22+(s-MEW[i]^2-MEW[j]^2)/2-p Sqrt[s])]),
	tIntegral[1,m12_,m22_] -> 1/(m22-m12) (m12 Log[(m12+(s-MEW[i]^2-MEW[j]^2)/2+p Sqrt[s])/(m12+(s-MEW[i]^2-MEW[j]^2)/2-p Sqrt[s])]-m22 Log[(m22+(s-MEW[i]^2-MEW[j]^2)/2+p Sqrt[s])/(m22+(s-MEW[i]^2-MEW[j]^2)/2-p Sqrt[s])]),
	tIntegral[2,m12_,m22_] -> 2p Sqrt[s] + 1/(m22-m12) (m12^2 Log[(m12+(s-MEW[i]^2-MEW[j]^2)/2+p Sqrt[s])/(m12+(s-MEW[i]^2-MEW[j]^2)/2-p Sqrt[s])]-m22^2 Log[(m22+(s-MEW[i]^2-MEW[j]^2)/2+p Sqrt[s])/(m22+(s-MEW[i]^2-MEW[j]^2)/2-p Sqrt[s])])
}
FreeTIntegralsNBW[expr_]:=Collect[expr, tIntegral[__]]/.tIntegralNBWLMDict/.tIntegralNBWDict


PossibleKinTerms={
s,MEW[i]^2,MEW[j]^2,MEW[i]MEW[j],s^2,s MEW[i]^2,s MEW[j]^2,s MEW[i]MEW[j],MEW[i]^4,MEW[i]^2 MEW[j]^2,MEW[i]^3 MEW[j],MEW[j]^4,MEW[i]MEW[j]^3
}
GetKinematicCoefficients[expr_]:=Collect[FRH[expr],Den[__],((Collect[Expand[#1],PossibleKinTerms,(ReplaceAll[#1,{x_*Conjugate[y_]+Conjugate[x_]*y_->2Re[x*Conjugate[y]],x_*y_+Conjugate[x_]*Conjugate[y_]->2Re[x*y],x_*Conjugate[x_]->Abs[x]^2}]&)])&)]


Begin["`Private`"]
End[]
EndPackage[]

