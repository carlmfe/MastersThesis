(* ::Package:: *)

BeginPackage["CalcTools`"]


Needs["TreeLevel`"]
Needs["XSec`"]
Needs["FeynCalc`"]


MakeBoxes[tIntegral[tpow_],TraditionalForm]:=SubsuperscriptBox["T","0",ToString[tpow]]
MakeBoxes[tIntegral[tpow_,m_],TraditionalForm]:=\!\(TraditionalForm\`RowBox[{SubsuperscriptBox["\<T\>", 1, ToString[tpow]], "\<(\>", MakeBoxes[m, TraditionalForm], "\<)\>"}]\)
MakeBoxes[tIntegral[tpow_,m1_,m2_],TraditionalForm]:=\!\(TraditionalForm\`RowBox[{SubsuperscriptBox["\<T\>", 2, ToString[tpow]], "\<(\>", RowBox[{MakeBoxes[m1, TraditionalForm], "\<,\>", MakeBoxes[m2, TraditionalForm]}], "\<)\>"}]\)


tIntegralSubs={
t^2*Den[t,m1_]*Den[t,m2_]->tIntegral[2,m1,m2\[Conjugate]],
t*Den[t,m1_]*Den[t,m2_]->tIntegral[1,m1,m2\[Conjugate]],
Den[t,m1_]*Den[t,m2_]->tIntegral[0,m1,m2\[Conjugate]],
t^2*Den[t,m1_]*Den[s,m2_]->tIntegral[2,m1]*Den[s,m2],
t*Den[t,m1_]*Den[s,m2_]->tIntegral[1,m1]*Den[s,m2],
Den[t,m1_]*Den[s,m2_]->tIntegral[0,m1]*Den[s,m2],
t^2*Den[s,m1_]*Den[s,m2_]->tIntegral[2]*Den[s,m1]*Den[s,m2],
t*Den[s,m1_]*Den[s,m2_]->tIntegral[1]*Den[s,m1]*Den[s,m2],
Den[s,m1_]*Den[s,m2_]->tIntegral[0]*Den[s,m1]*Den[s,m2]
}
ToTIntegrals[expr_]:=(Collect[#1,tIntegral[args__],(Isolate[#1//Simplify,IsolateNames->CT]&)]&)[
(Collect[
Expand[expr],
t,
(Collect[#1,{Den[t,m1_]Den[t,m2_],Den[t,m1_]Den[s,m2_],Den[s,m1_]Den[s,m2_]}]&)
]//Expand)/.tIntegralSubs
]


tIntegralRelations={
tIntegral[2,m_]->tIntegral[1]+m*tIntegral[0]+m^2*tIntegral[0,m],
tIntegral[1,m_]->tIntegral[0]+m*tIntegral[0,m],
tIntegral[0,m1_,m2_]->(tIntegral[0,m1]-tIntegral[0,m2])/(m1-m2),
tIntegral[1,m1_,m2_]->(m1*tIntegral[0,m1]-m2*tIntegral[0,m2])/(m1-m2),
tIntegral[2,m1_,m2_]->tIntegral[0]+(m1^2*tIntegral[0,m1]-m2^2*tIntegral[0,m2])/(m1-m2)
};
ReduceTIntegrals[expr_]:=Collect[(expr/.tIntegralRelations)//Expand//ReleaseHold,tIntegral[args__],(Isolate[(#1//Simplify),IsolateNames->CT]&)]


T0[\[CapitalDelta]1_,\[CapitalDelta]2_]:=Assuming[{\[CapitalDelta]1\[NotElement]Reals,\[CapitalDelta]2\[NotElement]Reals,t1>t0},(Log[(t1-\[CapitalDelta]1)/(t0-\[CapitalDelta]1)]-Log[(t1-\[CapitalDelta]2\[Conjugate])/(t0-\[CapitalDelta]2\[Conjugate])])/(\[CapitalDelta]1-\[CapitalDelta]2\[Conjugate])]
T1[\[CapitalDelta]1_,\[CapitalDelta]2_]:=Assuming[{\[CapitalDelta]1\[NotElement]Reals,\[CapitalDelta]2\[NotElement]Reals,t1>t0},(\[CapitalDelta]1*Log[(t1-\[CapitalDelta]1)/(t0-\[CapitalDelta]1)]-\[CapitalDelta]2\[Conjugate]*Log[(t1-\[CapitalDelta]2\[Conjugate])/(t0-\[CapitalDelta]2\[Conjugate])])/(\[CapitalDelta]1-\[CapitalDelta]2\[Conjugate])]
T2[\[CapitalDelta]1_,\[CapitalDelta]2_]:=Assuming[{\[CapitalDelta]1\[NotElement]Reals,\[CapitalDelta]2\[NotElement]Reals,t1>t0},t1-t0+(\[CapitalDelta]1^2*Log[(t1-\[CapitalDelta]1)/(t0-\[CapitalDelta]1)]-(\[CapitalDelta]2\[Conjugate])^2*Log[(t1-\[CapitalDelta]2\[Conjugate])/(t0-\[CapitalDelta]2\[Conjugate])])/(\[CapitalDelta]1-\[CapitalDelta]2\[Conjugate])]
T3[\[CapitalDelta]1_,\[CapitalDelta]2_]:=Assuming[{\[CapitalDelta]1\[NotElement]Reals,\[CapitalDelta]2\[NotElement]Reals,t1>t0},(t1^2-t0^2)/2+(\[CapitalDelta]1+\[CapitalDelta]2\[Conjugate])(t1-t0)+(\[CapitalDelta]1^3*Log[(t1-\[CapitalDelta]1)/(t0-\[CapitalDelta]1)]-(\[CapitalDelta]2\[Conjugate])^3*Log[(t1-\[CapitalDelta]2\[Conjugate])/(t0-\[CapitalDelta]2\[Conjugate])])/(\[CapitalDelta]1-\[CapitalDelta]2\[Conjugate])]
T4[\[CapitalDelta]1_,\[CapitalDelta]2_]:=Assuming[{\[CapitalDelta]1\[NotElement]Reals,\[CapitalDelta]2\[NotElement]Reals,t1>t0},(t1^3-t0^3)/3+(\[CapitalDelta]1+\[CapitalDelta]2\[Conjugate])(t1^2-t0^2)/2+(\[CapitalDelta]1^2+\[CapitalDelta]1*\[CapitalDelta]2\[Conjugate]+(\[CapitalDelta]2\[Conjugate])^2)(t1-t0)+(\[CapitalDelta]1^4*Log[(t1-\[CapitalDelta]1)/(t0-\[CapitalDelta]1)]-(\[CapitalDelta]2\[Conjugate])^4*Log[(t1-\[CapitalDelta]2\[Conjugate])/(t0-\[CapitalDelta]2\[Conjugate])])/(\[CapitalDelta]1-\[CapitalDelta]2\[Conjugate])]


tLimits={t1->(FeynCalc`MNeu[i]^2+FeynCalc`MNeu[j]^2-s+\[Lambda])/2,t0->(FeynCalc`MNeu[i]^2+FeynCalc`MNeu[j]^2-s-\[Lambda])/2}
lambdaRule=\[Lambda]->Sqrt[(s-(FeynCalc`MNeu[i]+FeynCalc`MNeu[j])^2)(s-(FeynCalc`MNeu[i]-FeynCalc`MNeu[j])^2)]
tIntegralDict={
	tIntegral[0]->Limit[Limit[T2[\[Epsilon], \[Epsilon]],\[Epsilon]\[Conjugate]->\[Epsilon]],\[Epsilon]->0],
	tIntegral[1]->Limit[Limit[T3[\[Epsilon], \[Epsilon]],\[Epsilon]\[Conjugate]->\[Epsilon]],\[Epsilon]->0],
	tIntegral[2]->Limit[Limit[T4[\[Epsilon], \[Epsilon]],\[Epsilon]\[Conjugate]->\[Epsilon]],\[Epsilon]->0],
	tIntegral[0,\[CapitalDelta]_]->Limit[Limit[T1[\[CapitalDelta],\[Epsilon]],\[Epsilon]\[Conjugate]->\[Epsilon]],\[Epsilon]->0],
	tIntegral[1,\[CapitalDelta]_]->Limit[Limit[T2[\[CapitalDelta],\[Epsilon]],\[Epsilon]\[Conjugate]->\[Epsilon]],\[Epsilon]->0],
	tIntegral[2,\[CapitalDelta]_]->Limit[Limit[T3[\[CapitalDelta],\[Epsilon]],\[Epsilon]\[Conjugate]->\[Epsilon]],\[Epsilon]->0],
	tIntegral[0,\[CapitalDelta]1_,\[CapitalDelta]2_]->T0[\[CapitalDelta]1,\[CapitalDelta]2],
	tIntegral[1,\[CapitalDelta]1_,\[CapitalDelta]2_]->T1[\[CapitalDelta]1,\[CapitalDelta]2],
	tIntegral[2,\[CapitalDelta]1_,\[CapitalDelta]2_]->T2[\[CapitalDelta]1,\[CapitalDelta]2]
}
FreeTIntegrals[expr_]:=Collect[expr,tIntegral[args__]]/.tIntegralDict


PossibleKinTerms={
s,MNeu[i]^2,MNeu[j]^2,MNeu[i]MNeu[j],s^2,s MNeu[i]^2,s MNeu[j]^2,s MNeu[i]MNeu[j],MNeu[i]^4,MNeu[i]^2 MNeu[j]^2,MNeu[i]^3 MNeu[j],MNeu[j]^4,MNeu[i]MNeu[j]^3
}
GetKinematicCoefficients[expr_]:=Collect[FRH[expr],Den[args__],((Collect[Expand[#1],PossibleKinTerms,(ReplaceAll[#1,{x_*Conjugate[y_]+Conjugate[x_]*y_->2Re[x*Conjugate[y]],x_*y_+Conjugate[x_]*Conjugate[y_]->2Re[x*y],x_*Conjugate[x_]->Abs[x]^2}]&)])&)]


Begin["`Private`"]
End[]
EndPackage[]
