(* ::Package:: *)

BeginPackage["TreeLevel`"]


Needs["FeynCalc`"]
Needs["XSec`"]


(*Replacement rules that are general for all amplitudes*)
(*Replacement rules for Z-boson couplings*)
(*Replacement rules for squark-quark-neutralino coupling*)
AmpSimplifyRules={
	(*
	FeynCalc`Index[Sfermion,5]:>A,
	FeynCalc`Index[Sfermion,6]:>M,
	FeynCalc`Index[Neutralino,5]:>k,
	*)
	SMP["e"]:>SMP["g_W"]SMP["sin_W"],
	SMP["m_u"]->0
};
ZSimplifyRules={
	4SMP["sin_W"]^2-3 -> -6Cq[L]SMP["cos_W"],
	SMP["sin_W"]^2 -> -3/2Cq[R]SMP["cos_W"],
	Conjugate[ZNeu[i,4]] :> (2Conjugate[Opp[i,j,L]]SMP["cos_W"]+Conjugate[ZNeu[i,3]]ZNeu[j,3])/ZNeu[j,4],
	ZNeu[i,4] :> (2Opp[i,j,L]SMP["cos_W"]+ZNeu[i,3]Conjugate[ZNeu[j,3]])/Conjugate[ZNeu[j,4]],
	Conjugate[Opp[i,j,L]] :> -Opp[i,j,R]
};
(*QSimplifyRules={
USf[args__][a_,1]\[Conjugate]ZNeu[i_,1]->(Csq[a,i,L]-1/2USf[args][a,1]\[Conjugate]ZNeu[i,2])/(SMP["sin_W"]/(6SMP["cos_W"])),
(*USf[args__][a_,1]\[Conjugate]ZNeu[i_,2]->(Csq[a,i,L]-USf[args][a,1]\[Conjugate]ZNeu[i,1])/(1/2),*)
USf[args__][a_,1]ZNeu[i_,1]\[Conjugate]->(Csq[a,i,L]\[Conjugate]-1/2USf[args][a,1]ZNeu[i,2]\[Conjugate])/(SMP["sin_W"]/(6SMP["cos_W"])),
(*USf[args__][a_,1]ZNeu[i_,2]\[Conjugate]->(Csq[a,i,L]\[Conjugate]-USf[args__][a,1]ZNeu[i,1]\[Conjugate])/(1/2),*)
USf[args__][a_,2]\[Conjugate]ZNeu[i_,1]\[Conjugate]->Csq[a,i,R]/(-((2SMP["sin_W"])/(3SMP["cos_W"]))),
USf[args__][a_,2]ZNeu[i_,1]->Csq[a,i,R]\[Conjugate]/(-((2SMP["sin_W"])/(3SMP["cos_W"])))
};*)
QSimplifyRules={
	USf[args__][a_,2]\[Conjugate]SMP["sin_W"]ZNeu[i_,1]\[Conjugate]->-(3/2)SMP["cos_W"]Csq[i,a,R],
	USf[args__][a_,2]SMP["sin_W"]ZNeu[i_,1]->-(3/2)SMP["cos_W"]Csq[i,a,R]\[Conjugate],
	USf[args__][a_,1]\[Conjugate]3SMP["cos_W"]ZNeu[i_,2]->6SMP["cos_W"]Csq[i,a,L]-USf[args][a,1]\[Conjugate]ZNeu[i,1]SMP["sin_W"],
	USf[args__][a_,1]3SMP["cos_W"]ZNeu[i_,2]\[Conjugate]->6SMP["cos_W"]Csq[i,a,L]\[Conjugate]-USf[args][a,1]ZNeu[i,1]\[Conjugate]SMP["sin_W"],
	USf[args__][a_,1]\[Conjugate](3SMP["cos_W"]ZNeu[i_,2]+ZNeu[i_,1]SMP["sin_W"])->6SMP["cos_W"]Csq[i,a,L],
	USf[args__][a_,1](3SMP["cos_W"]ZNeu[i_,2]\[Conjugate]+ZNeu[i_,1]\[Conjugate]SMP["sin_W"])->6SMP["cos_W"]Csq[i,a,L]\[Conjugate]
};
Convert2QZCharges[expr_]:=NestWhile[
	(Simplify[ReplaceAll[ReplaceAll[#1,QSimplifyRules],ZSimplifyRules]]&),
	expr,
	(MemberQ[#1,ZNeu[args__],{0,-1},Heads->True]&),
	1,5
]


MakeBoxes[DSf[s_,t_,g_],TraditionalForm]:=SubscriptBox["\[CapitalDelta]",MakeBoxes[s,TraditionalForm]]
MakeBoxes[DSfC[s_,t_,g_],TraditionalForm]:=SubsuperscriptBox["\[CapitalDelta]",MakeBoxes[s,TraditionalForm],"*"]
MakeBoxes[DZ,TraditionalForm]=SubscriptBox["\[CapitalDelta]","Z"];
MakeBoxes[FeynCalc`Index[Sfermion,a_],TraditionalForm]:=MakeBoxes[a,TraditionalForm]


(*A list of the parameters that are complex, and relations between them*)
ComplexParameterRules={
	Opp[i_,j_,L]->-Opp[i,j,R],
	Opp[i_,j_,R]->-Opp[i,j,L],
	USf[args__][a_,b_]->Conjugate[USf[args][a,b]],
	Csq[i_,a_,x_]->Conjugate[Csq[i,a,x]],
	SqrtEGl->Conjugate[SqrtEGl],
	Zs[x_]->Conjugate[Zs[x]],
	Qtu[args__]->Conjugate[Qtu[args]],
	DSf[args__]->DSfC[args],
	DSfC[args__]->DSf[args],
	DZ->DZ\[Conjugate]
};


ConjugateAmplitude[amp_]:=ReplaceAll[ComplexConjugate[amp,FCRenameDummyIndices->False],ComplexParameterRules];


(*Prettify four-momenta when printing*)
MakeBoxes[ki,TraditionalForm]:="\!\(\*SubscriptBox[\(k\), \(i\)]\)";
MakeBoxes[kj,TraditionalForm]:="\!\(\*SubscriptBox[\(k\), \(j\)]\)";
MakeBoxes[pi,TraditionalForm]:="\!\(\*SubscriptBox[\(p\), \(i\)]\)";
MakeBoxes[pj,TraditionalForm]:="\!\(\*SubscriptBox[\(p\), \(j\)]\)";


MakeBoxes[Cq[x_],TraditionalForm]:=SubsuperscriptBox["C","qqZ",MakeBoxes[x,TraditionalForm]];
MakeBoxes[Opp[i_,j_,x_],TraditionalForm]:=\!\(TraditionalForm\`SubsuperscriptBox["\<O\>", RowBox[{MakeBoxes[i, TraditionalForm], MakeBoxes[j, TraditionalForm]}], RowBox[{"\<\[Prime]\[Prime]\>", MakeBoxes[x, TraditionalForm]}]]\);
MakeBoxes[Csq[i_,a_,x_],TraditionalForm]:=SubsuperscriptBox["C",RowBox[{"q",SubscriptBox[OverscriptBox["q","~"],MakeBoxes[a,TraditionalForm]],SubsuperscriptBox[OverscriptBox["\[Chi]","~"],MakeBoxes[i,TraditionalForm],"0"]}],MakeBoxes[x,TraditionalForm]];

(*MakeBoxes[USf[args1__][a_,b_],TraditionalForm]:=SubscriptBox[OverscriptBox["R","~"],RowBox[{MakeBoxes[a,TraditionalForm],",",MakeBoxes[b,TraditionalForm]}]];*)
MakeBoxes[USf[__][a_,b_], TraditionalForm] := SubsuperscriptBox["R", RowBox[{MakeBoxes[a,TraditionalForm], MakeBoxes[b, TraditionalForm]}], OverscriptBox["q","~"]]
MakeBoxes[MNeu[a_],TraditionalForm]:=SubscriptBox["m",MakeBoxes[a,TraditionalForm]];
MakeBoxes[ZNeu[a_,b_],TraditionalForm]:=SubscriptBox["N",RowBox[{MakeBoxes[a,TraditionalForm],",",MakeBoxes[b,TraditionalForm]}]];
MakeBoxes[MSf[a_,b__],TraditionalForm]:=\!\(TraditionalForm\`\(TraditionalForm\`SubscriptBox["\<m\>", SubscriptBox[OverscriptBox["\<q\>", "\<~\>"], MakeBoxes[a, TraditionalForm]]]\)\);
MakeBoxes[MGl,TraditionalForm]=SubscriptBox["m",OverscriptBox["g","~"]];
MakeBoxes[SB,TraditionalForm]=SubscriptBox["s","\[Beta]"];
MakeBoxes[CB,TraditionalForm]=SubscriptBox["c","\[Beta]"];
MakeBoxes[TB,TraditionalForm]=SubscriptBox["t","\[Beta]"];

MakeBoxes[SMP["sin_W"],TraditionalForm]=SubscriptBox["s","W"];
MakeBoxes[SMP["cos_W"],TraditionalForm]=SubscriptBox["c","W"];
MakeBoxes[FeynCalc`IndexDelta[a_,b_],TraditionalForm]:=SubscriptBox["\[Delta]",RowBox[{MakeBoxes[a,TraditionalForm],MakeBoxes[b,TraditionalForm]}]];


SuperChargeRules={
	Cq[x_]Opp[i_,j_,x_]:>Zs[x],
	Cq[L]Opp[i_,j_,R]:>-Zs[L]\[Conjugate],
	Cq[R]Opp[i_,j_,L]:>-Zs[R]\[Conjugate],
	Cq[L]Opp[i_,j_,L]\[Conjugate]:>Zs[L]\[Conjugate],
	Cq[R]Opp[i_,j_,R]\[Conjugate]:>Zs[R]\[Conjugate],
	Cq[x_]^2 Opp[i_,j_,x_]:>Cq[x]Zs[x],
	Cq[L]^2 Opp[i_,j_,R]:>-Cq[L]Zs[L]\[Conjugate],
	Cq[R]^2 Opp[i_,j_,L]:>-Cq[R]Zs[R]\[Conjugate],
	Cq[L]^2 Opp[i_,j_,L]\[Conjugate]:>Cq[L]Zs[L]\[Conjugate],
	Cq[x_]^2 Opp[i_,j_,x_]^2:>Zs[x]^2,
	Cq[R]^2 Opp[i_,j_,R]\[Conjugate]:>(Zs[R]\[Conjugate])^2,
	Cq[L]^2 Opp[i_,j_,R]^2:>(Zs[L]\[Conjugate])^2,
	Cq[R]^2 Opp[i_,j_,L]^2:>(Zs[R]\[Conjugate])^2,
	Cq[L]^2 (Opp[i_,j_,L]\[Conjugate])^2:>(Zs[L]\[Conjugate])^2,
	Cq[R]^2 (Opp[i_,j_,R]\[Conjugate])^2:>(Zs[R]\[Conjugate])^2,
	Csq[i,a_,x_]Conjugate[Csq[j,a_,y_]]:>Qtu[a,x,y],
	Csq[j,a_,y_]Conjugate[Csq[i,a_,x_]]:>Conjugate[Qtu[a,x,y]]
}

MakeBoxes[Zs[x_],TraditionalForm]:=SubsuperscriptBox["Z","s",MakeBoxes[x,TraditionalForm]]
MakeBoxes[Qtu[a_,x_,y_],TraditionalForm]:=SubsuperscriptBox["Q",MakeBoxes[a,TraditionalForm],RowBox[{MakeBoxes[x,TraditionalForm],MakeBoxes[y,TraditionalForm]}]]


(*Set Mandelstam variables*)
FCClearScalarProducts[];
SetMandelstam[s, t, u, ki, kj, -pi, -pj, 0, 0, MNeu[i], MNeu[j]];
SetMandelstamParameters[s,t,u,MNeu[i]^2+MNeu[j]^2];


Begin["`Private`"];


End[];


EndPackage[];
