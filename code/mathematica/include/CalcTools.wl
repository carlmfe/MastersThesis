(* ::Package:: *)

BeginPackage["CalcTools`"]


Needs["TreeLevel`"]
Needs["XSec`"]
Needs["FeynCalc`"]


MakeBoxes[tIntegral[tpow_],TraditionalForm]:=SubsuperscriptBox["T","0",ToString[tpow]]
MakeBoxes[tIntegral[tpow_,m_],TraditionalForm]:=\!\(TraditionalForm\`RowBox[{SubsuperscriptBox["\<T\>", "\<1\>", ToString[tpow]], "\<(\>", MakeBoxes[m, TraditionalForm], "\<)\>"}]\)
MakeBoxes[tIntegral[tpow_,m1_,m2_],TraditionalForm]:=\!\(TraditionalForm\`RowBox[{SubsuperscriptBox["\<T\>", "\<2\>", ToString[tpow]], "\<(\>", RowBox[{MakeBoxes[m1, TraditionalForm], "\<,\>", MakeBoxes[m2, TraditionalForm]}], "\<)\>"}]\)


tIntegralSubs={
	t^2*Den[t,m1_]*Den[t,m2_] -> tIntegral[2,m1,m2\[Conjugate]],
	t*Den[t,m1_]*Den[t,m2_] -> tIntegral[1,m1,m2\[Conjugate]],
	Den[t,m1_]*Den[t,m2_] -> tIntegral[0,m1,m2\[Conjugate]],
	t^2*Den[t,m1_]*Den[s,m2_] -> tIntegral[2,m1]*Den[s,m2],
	t*Den[t,m1_]*Den[s,m2_] -> tIntegral[1,m1]*Den[s,m2],
	Den[t,m1_]*Den[s,m2_] -> tIntegral[0,m1]*Den[s,m2],
	t^2*Den[s,m1_]*Den[s,m2_] -> tIntegral[2]*Den[s,m1]*Den[s,m2],
	t*Den[s,m1_]*Den[s,m2_] -> tIntegral[1]*Den[s,m1]*Den[s,m2],
	Den[s,m1_]*Den[s,m2_] -> tIntegral[0]*Den[s,m1]*Den[s,m2]
}
ToTIntegrals[expr_]:=(Collect[#1,tIntegral[__],(Isolate[#//Simplify]&)]&)[
	(Collect[
		Expand[expr],
		t,
		(Collect[#1,{Den[t,m1_]Den[t,m2_],Den[t,m1_]Den[s,m2_],Den[s,m1_]Den[s,m2_]}]&)
	]//Expand)/.tIntegralSubs
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
	tIntegral[1]->-p Sqrt[s] (s-MNeu[i]^2-MNeu[j]^2),
	tIntegral[2]->2/3 p (MNeu[i]^4+MNeu[i]^2 (MNeu[j]^2-2 s)+(MNeu[j]^2-s)^2) Sqrt[s],
	tIntegral[0,\[CapitalDelta]_]->dLog[(MNeu[i]^2+MNeu[j]^2-s)/2+ p Sqrt[s] - \[CapitalDelta], (MNeu[i]^2+MNeu[j]^2-s)/2 - p Sqrt[s] - \[CapitalDelta]],
	tIntegral[1,\[CapitalDelta]_]->2 p Sqrt[s]+\[CapitalDelta] dLog[(MNeu[i]^2+MNeu[j]^2-s)/2+ p Sqrt[s] - \[CapitalDelta], (MNeu[i]^2+MNeu[j]^2-s)/2 - p Sqrt[s] - \[CapitalDelta]],
	tIntegral[2,\[CapitalDelta]_]->2 p Sqrt[s] \[CapitalDelta]+\[CapitalDelta]^2 dLog[(MNeu[i]^2+MNeu[j]^2-s)/2+ p Sqrt[s] - \[CapitalDelta], (MNeu[i]^2+MNeu[j]^2-s)/2 - p Sqrt[s] - \[CapitalDelta]] - p Sqrt[s] (s-MNeu[i]^2-MNeu[j]^2),
	tIntegral[0,\[CapitalDelta]1_,\[CapitalDelta]2_]->1/(\[CapitalDelta]1-Conjugate[\[CapitalDelta]2]) (dLog[(MNeu[i]^2+MNeu[j]^2-s)/2+ p Sqrt[s] - \[CapitalDelta]1, (MNeu[i]^2+MNeu[j]^2-s)/2 - p Sqrt[s] - \[CapitalDelta]1] - dLog[(MNeu[i]^2+MNeu[j]^2-s)/2+ p Sqrt[s] - Conjugate[\[CapitalDelta]2], (MNeu[i]^2+MNeu[j]^2-s)/2 - p Sqrt[s] - Conjugate[\[CapitalDelta]2]]),
	tIntegral[1,\[CapitalDelta]1_,\[CapitalDelta]2_]->1/(\[CapitalDelta]1-Conjugate[\[CapitalDelta]2]) (\[CapitalDelta]1 dLog[(MNeu[i]^2+MNeu[j]^2-s)/2+ p Sqrt[s] - \[CapitalDelta]1, (MNeu[i]^2+MNeu[j]^2-s)/2 - p Sqrt[s] - \[CapitalDelta]1] - Conjugate[\[CapitalDelta]2] dLog[(MNeu[i]^2+MNeu[j]^2-s)/2+ p Sqrt[s] - Conjugate[\[CapitalDelta]2], (MNeu[i]^2+MNeu[j]^2-s)/2 - p Sqrt[s] - Conjugate[\[CapitalDelta]2]]),
	tIntegral[2,\[CapitalDelta]1_,\[CapitalDelta]2_]->1/(\[CapitalDelta]1-Conjugate[\[CapitalDelta]2]) (2 p Sqrt[s] (\[CapitalDelta]1 - Conjugate[\[CapitalDelta]2])+\[CapitalDelta]1^2 dLog[(MNeu[i]^2+MNeu[j]^2-s)/2+ p Sqrt[s] - \[CapitalDelta]1, (MNeu[i]^2+MNeu[j]^2-s)/2 - p Sqrt[s] - \[CapitalDelta]1] - Conjugate[\[CapitalDelta]2]^2 dLog[(MNeu[i]^2+MNeu[j]^2-s)/2+ p Sqrt[s] - Conjugate[\[CapitalDelta]2], (MNeu[i]^2+MNeu[j]^2-s)/2 - p Sqrt[s] - Conjugate[\[CapitalDelta]2]])
}
FreeTIntegrals[expr_]:=Collect[expr, tIntegral[__]]/.tIntegralDict


tIntegralNBWDict = {
	tIntegral[0] -> 2 p Sqrt[s],
	tIntegral[1] -> -p Sqrt[s] (s-MNeu[i]^2-MNeu[j]^2),
	tIntegral[2] -> 2/3 p (MNeu[i]^4+MNeu[i]^2 (MNeu[j]^2-2 s)+(MNeu[j]^2-s)^2) Sqrt[s],
	(*tIntegral[0,m2_] -> -2ArcTanh[(2p Sqrt[s])/(2m2-MNeu[i]^2-MNeu[j]^2+s)],*)
	tIntegral[0,m2_] -> Log[(-2m2+MNeu[i]^2+MNeu[j]^2+2p Sqrt[s]-s)/(-2m2+MNeu[i]^2+MNeu[j]^2-2p Sqrt[s]-s)],
	tIntegral[1,m2_] -> 2p Sqrt[s] + m2 Log[(-2m2+MNeu[i]^2+MNeu[j]^2+2p Sqrt[s]-s)/(-2m2+MNeu[i]^2+MNeu[j]^2-2p Sqrt[s]-s)],
	tIntegral[2,m2_] -> p Sqrt[s](2m2+MNeu[i]^2+MNeu[j]^2-s) + m2^2 Log[(-2m2+MNeu[i]^2+MNeu[j]^2+2p Sqrt[s]-s)/(-2m2+MNeu[i]^2+MNeu[j]^2-2p Sqrt[s]-s)],
	tIntegral[0,m12_,m22_] -> 1/(m12-m22) (Log[(-2m12+MNeu[i]^2+MNeu[j]^2+2p Sqrt[s]-s)/(-2m12+MNeu[i]^2+MNeu[j]^2-2p Sqrt[s]-s)]-Log[(-2m22+MNeu[i]^2+MNeu[j]^2+2p Sqrt[s]-s)/(-2m22+MNeu[i]^2+MNeu[j]^2-2p Sqrt[s]-s)]),
	tIntegral[1,m12_,m22_] -> 1/(m12-m22) (m12 Log[(-2m12+MNeu[i]^2+MNeu[j]^2+2p Sqrt[s]-s)/(-2m12+MNeu[i]^2+MNeu[j]^2-2p Sqrt[s]-s)]-m22 Log[(-2m22+MNeu[i]^2+MNeu[j]^2+2p Sqrt[s]-s)/(-2m22+MNeu[i]^2+MNeu[j]^2-2p Sqrt[s]-s)]),
	tIntegral[2,m12_,m22_] -> 2p Sqrt[s] + 1/(m12-m22) (m12^2 Log[(-2m12+MNeu[i]^2+MNeu[j]^2+2p Sqrt[s]-s)/(-2m12+MNeu[i]^2+MNeu[j]^2-2p Sqrt[s]-s)]-m22^2 Log[(-2m22+MNeu[i]^2+MNeu[j]^2+2p Sqrt[s]-s)/(-2m22+MNeu[i]^2+MNeu[j]^2-2p Sqrt[s]-s)])
}
FreeTIntegralsNBW[expr_]:=Collect[expr, tIntegral[__]]/.tIntegralNBWDict


PossibleKinTerms={
s,MNeu[i]^2,MNeu[j]^2,MNeu[i]MNeu[j],s^2,s MNeu[i]^2,s MNeu[j]^2,s MNeu[i]MNeu[j],MNeu[i]^4,MNeu[i]^2 MNeu[j]^2,MNeu[i]^3 MNeu[j],MNeu[j]^4,MNeu[i]MNeu[j]^3
}
GetKinematicCoefficients[expr_]:=Collect[FRH[expr],Den[__],((Collect[Expand[#1],PossibleKinTerms,(ReplaceAll[#1,{x_*Conjugate[y_]+Conjugate[x_]*y_->2Re[x*Conjugate[y]],x_*y_+Conjugate[x_]*Conjugate[y_]->2Re[x*y],x_*Conjugate[x_]->Abs[x]^2}]&)])&)]


Begin["`Private`"]
End[]
EndPackage[]



