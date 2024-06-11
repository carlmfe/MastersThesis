(* ::Package:: *)

BeginPackage["EWinos`"]


Needs["FeynCalc`"]
Needs["XSec`"]


(*Replacement rules that are general for all amplitudes*)
(*Replacement rules for Z-boson couplings*)
(*Replacement rules for squark-quark-neutralino coupling*)
AmpSimplifyRules={
	(*
	FeynCalc`Index[Sfermion,5]->A,
	FeynCalc`Index[Sfermion,6]->M,
	FeynCalc`Index[Neutralino,5]->k,
	*)
	SMP["e"]->SMP["g_W"]SMP["sin_W"],
	SMP["m_u"|"m_d"]->0,
	(MNeu|MCha)[i_] -> MEW[i]
}
ZSimplifyRules={
	(*(4SMP["sin_W"]^2-3)USf[3,1][A_,1]USf[3,1][B_,1]\[Conjugate] + 4SMP["sin_W"]^2USf[3,1][A_,2]USf[3,1][B_,2]\[Conjugate] -> 3SMP["cos_W"]CsqZ[A,B],
	(2SMP["sin_W"]^2-3)USf[4,1][A_,1]USf[4,1][B_,1]\[Conjugate] + 2SMP["sin_W"]^2USf[4,1][A_,2]USf[4,1][B_,2]\[Conjugate] -> -3SMP["cos_W"]CsqZ[A,B],*)
	4SMP["sin_W"]^2-3 -> -6Cq[L]SMP["cos_W"],
	SMP["sin_W"]^2 -> -3/2Cq[R]SMP["cos_W"],
	Conjugate[ZNeu[i,4]] -> (-2Opp[i,j,R]SMP["cos_W"]+Conjugate[ZNeu[i,3]]ZNeu[j,3])/ZNeu[j,4],
	ZNeu[i,4] -> (2Opp[i,j,L]SMP["cos_W"]+ZNeu[i,3]Conjugate[ZNeu[j,3]])/Conjugate[ZNeu[j,4]](*,
	Conjugate[Opp[i,j,L]] -> -Opp[i,j,R]*)
}
WSimplifyRules = {
	SMP["V_ud", I] -> -Sqrt[2](*SMP["cos_W"]*) CqW[L],
	ZNeu[i_,4]VCha[j_,2]\[Conjugate] -> Sqrt[2](-Ow[i,j,L] + ZNeu[i,2]VCha[j,1]\[Conjugate]),
	ZNeu[i_,4]\[Conjugate]VCha[j_,2] -> Sqrt[2](-Ow[i,j,L]\[Conjugate] + ZNeu[i,2]\[Conjugate]VCha[j,1]),
	ZNeu[i_,3]\[Conjugate]UCha[j_,2] -> Sqrt[2](Ow[i,j,R] - ZNeu[i,2]\[Conjugate]UCha[j,1]),
	ZNeu[i_,3]UCha[j_,2]\[Conjugate] -> Sqrt[2](Ow[i,j,R]\[Conjugate] - ZNeu[i,2]UCha[j,1]\[Conjugate])
}
ASimplifyRules={
	VCha[i_,1] VCha[j_,1]\[Conjugate] -> SMP["cos_W"]Op[i,j,L] - 1/2 VCha[i,2]VCha[j,2]\[Conjugate] + FeynCalc`IndexDelta[i,j]SMP["sin_W"]^2,
	VCha[i_,1]\[Conjugate] VCha[j_,1] -> SMP["cos_W"]Op[i,j,L]\[Conjugate] - 1/2 VCha[i,2]\[Conjugate]VCha[j,2] + FeynCalc`IndexDelta[i,j]SMP["sin_W"]^2,
	UCha[i_,1]\[Conjugate] UCha[j_,1] -> SMP["cos_W"]Op[i,j,R] - 1/2 UCha[i,2]\[Conjugate]UCha[j,2] + FeynCalc`IndexDelta[i,j]SMP["sin_W"]^2,
	UCha[i_,1] UCha[j_,1]\[Conjugate] -> SMP["cos_W"]Op[i,j,R]\[Conjugate] - 1/2 UCha[i,2]UCha[j,2]\[Conjugate] + FeynCalc`IndexDelta[i,j]SMP["sin_W"]^2
}
QSimplifyRules={
	USf[3,gen_][A_,2]\[Conjugate]SMP["sin_W"]ZNeu[i_,1]\[Conjugate] -> -(3/2)SMP["cos_W"]Csq["N"][3,gen][i,A,R],
	USf[3,gen_][A_,2]SMP["sin_W"]ZNeu[i_,1] -> -(3/2)SMP["cos_W"]Csq["N"][3,gen][i,A,R]\[Conjugate],
	3USf[3,gen_][A_,1]\[Conjugate]SMP["cos_W"]ZNeu[i_,2] -> 6SMP["cos_W"]Csq["N"][3,gen][i,A,L] - USf[3,gen][A,1]\[Conjugate]ZNeu[i,1]SMP["sin_W"],
	3USf[3,gen_][A_,1]SMP["cos_W"]ZNeu[i_,2]\[Conjugate] -> 6SMP["cos_W"]Csq["N"][3,gen][i,A,L]\[Conjugate] - USf[3,gen][A,1]ZNeu[i,1]\[Conjugate]SMP["sin_W"],
	USf[3,gen_][A_,1]\[Conjugate](ZNeu[i_,1]SMP["sin_W"]+3SMP["cos_W"]ZNeu[i_,2]) -> 6SMP["cos_W"]Csq["N"][3,gen][i,A,L],
	USf[3,gen_][A_,1](ZNeu[i_,1]\[Conjugate]SMP["sin_W"]+3SMP["cos_W"]ZNeu[i_,2]\[Conjugate]) -> 6SMP["cos_W"]Csq["N"][3,gen][i,A,L]\[Conjugate],
	USf[4,gen_][A_,2]\[Conjugate]SMP["sin_W"]ZNeu[i_,1]\[Conjugate] -> 3SMP["cos_W"]Csq["N"][4,gen][i,A,R],
	USf[4,gen_][A_,2]SMP["sin_W"]ZNeu[i_,1] -> 3SMP["cos_W"]Csq["N"][4,gen][i,A,R]\[Conjugate],
	3USf[4,gen_][A_,1]\[Conjugate]SMP["cos_W"]ZNeu[i_,2] -> -6SMP["cos_W"]Csq["N"][4,gen][i,A,L] + USf[4,gen][A,1]\[Conjugate]ZNeu[i,1]SMP["sin_W"],
	3USf[4,gen_][A_,1]SMP["cos_W"]ZNeu[i_,2]\[Conjugate] -> -6SMP["cos_W"]Csq["N"][4,gen][i,A,L]\[Conjugate] + USf[4,gen][A,1]ZNeu[i,1]\[Conjugate]SMP["sin_W"],
	USf[4,gen_][A_,1]\[Conjugate](3SMP["cos_W"]ZNeu[i_,2]-ZNeu[i,1]SMP["sin_W"]) -> -6SMP["cos_W"]Csq["N"][4,gen][i,A,L],
	USf[4,gen_][A_,1](3SMP["cos_W"]ZNeu[i_,2]\[Conjugate]-ZNeu[i,1]\[Conjugate]SMP["sin_W"]) -> -6SMP["cos_W"]Csq["N"][4,gen][i,A,L]\[Conjugate],
	USf[type_,gen_][A_,1]\[Conjugate]UCha[i_,1] -> Sqrt[2] Csq["C"][type,gen][i,A,L]/FeynArts`CKM[1,gen],
	USf[type_,gen_][A_,1]UCha[i_,1]\[Conjugate] -> Sqrt[2] Csq["C"][type,gen][i,A,L]\[Conjugate]/FeynArts`CKM[1,gen]\[Conjugate],
	USf[type_,gen_][A_,1]\[Conjugate]VCha[i_,1] -> Sqrt[2] Csq["C"][type,gen][i,A,L]/FeynArts`CKM[1,gen]\[Conjugate],
	USf[type_,gen_][A_,1]VCha[i_,1]\[Conjugate] -> Sqrt[2] Csq["C"][type,gen][i,A,L]\[Conjugate]/FeynArts`CKM[1,gen],
	(MQD|MQU)[_] -> 0
}
Convert2QZCharges[expr_] := NestWhile[
	(Simplify[#1 /. ZSimplifyRules /. WSimplifyRules /. ASimplifyRules /. QSimplifyRules]&),
	expr,
	(MemberQ[#, ZNeu[__], {0,-1}, Heads->True] || MemberQ[#, (UCha|VCha)[__], {0,-1}, Heads->True]&),
	1,5
]


MakeBoxes[DSf[s_,t_,g_],TraditionalForm] := SubscriptBox["\[CapitalDelta]",MakeBoxes[s,TraditionalForm]]
MakeBoxes[DSfC[s_,t_,g_],TraditionalForm] := SubsuperscriptBox["\[CapitalDelta]",MakeBoxes[s,TraditionalForm],"*"]
MakeBoxes[DZ,TraditionalForm] = SubscriptBox["\[CapitalDelta]","Z"]
MakeBoxes[DW,TraditionalForm] = SubscriptBox["\[CapitalDelta]","W"]


(*A list of the parameters that are complex, and relations between them*)
ComplexParameterRules={
	Opp[i_,j_,x_] -> Opp[i,j,x]\[Conjugate],
(*	Opp[i_,j_,R] -> -Opp[i,j,L],*)
	Op[args__] -> Op[args]\[Conjugate],
	Ow[args__] -> Ow[args]\[Conjugate],
	USf[args__][a_,b_] -> Conjugate[USf[args][a,b]],
	CsqZ[A_,A_] -> CsqZ[A,A],
	CsqZ[A_,B_] -> CsqZ[A,B]\[Conjugate],
	Csq[arg_][type_,gen_][i_,a_,x_] -> Conjugate[Csq[arg][type,gen][i,a,x]],
	SqrtEGl -> Conjugate[SqrtEGl],
	(Bij:Wij|Zij)[arg_][xy__] -> Conjugate[Bij[arg][xy]],
	Zsqij[arg_][X_,A_,B_] -> Conjugate[Zsqij[arg][X,A,B]],
	Qtu[arg_][args1__][args2__] -> Conjugate[Qtu[arg][args1][args2]],
	DSf[args__] -> DSfC[args],
	DSfC[args__] -> DSf[args],
	DZ -> DZ\[Conjugate],
	DW -> DW\[Conjugate],
	CqW[arg_] -> CqW[arg]\[Conjugate],
	(h:B0|B1|C0|PaVe)[args__] -> h[args]\[Conjugate]
}


ConjugateAmplitude[amp_]:=ReplaceAll[ComplexConjugate[amp,FCRenameDummyIndices->False],ComplexParameterRules];


(*Prettify four-momenta when printing*)
MakeBoxes[ki,TraditionalForm]:="\!\(\*SubscriptBox[\(k\), \(i\)]\)";
MakeBoxes[kj,TraditionalForm]:="\!\(\*SubscriptBox[\(k\), \(j\)]\)";
MakeBoxes[pi,TraditionalForm]:="\!\(\*SubscriptBox[\(p\), \(i\)]\)";
MakeBoxes[pj,TraditionalForm]:="\!\(\*SubscriptBox[\(p\), \(j\)]\)";


FermionTypes = {
	"\[ScriptL]", "\[Nu]", "u", "d", "q"
}
SfermionTypes = {
	"\!\(\*OverscriptBox[\(\[ScriptL]\), \(~\)]\)", "\!\(\*OverscriptBox[\(\[Nu]\), \(~\)]\)",
	"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "\!\(\*OverscriptBox[\(d\), \(~\)]\)",
	"\!\(\*OverscriptBox[\(q\), \(~\)]\)"
}

MakeBoxes[Cq[x_],TraditionalForm]:=SubsuperscriptBox["C","qqZ",MakeBoxes[x,TraditionalForm]];
MakeBoxes[CsqZ[A_,B_],TraditionalForm]:=SubsuperscriptBox["C", RowBox[{OverscriptBox["q","~"],OverscriptBox["q","~"],"Z"}],RowBox[{MakeBoxes[A,TraditionalForm],MakeBoxes[B,TraditionalForm]}]];
MakeBoxes[CqW[x_], TraditionalForm] := SubsuperscriptBox["C", RowBox[{"q", SuperscriptBox["q", "\[Prime]"], "W"}], MakeBoxes[x, TraditionalForm]]
MakeBoxes[Opp[i_,j_,x_],TraditionalForm]:=\!\(TraditionalForm\`SubsuperscriptBox["\<O\>", RowBox[{MakeBoxes[i, TraditionalForm], MakeBoxes[j, TraditionalForm]}], RowBox[{"\<\[Prime]\[Prime]\>", MakeBoxes[x, TraditionalForm]}]]\);
MakeBoxes[Op[i_,j_,x_],TraditionalForm]:=\!\(TraditionalForm\`SubsuperscriptBox["\<O\>", RowBox[{MakeBoxes[i, TraditionalForm], MakeBoxes[j, TraditionalForm]}], RowBox[{"\<\[Prime]\>", MakeBoxes[x, TraditionalForm]}]]\);
MakeBoxes[Ow[i_,j_,x_],TraditionalForm]:=\!\(TraditionalForm\`SubsuperscriptBox["\<O\>", RowBox[{MakeBoxes[i, TraditionalForm], MakeBoxes[j, TraditionalForm]}], MakeBoxes[x, TraditionalForm]]\);
MakeBoxes[Csq["N"][type_,gen_][i_,a_,x_],TraditionalForm] := SubsuperscriptBox[
	"C",
	RowBox[{FermionTypes[[type]],SubscriptBox[SfermionTypes[[type]],MakeBoxes[a,TraditionalForm]],SubsuperscriptBox[OverscriptBox["\[Chi]","~"],MakeBoxes[i,TraditionalForm],"0"]}],
	MakeBoxes[x,TraditionalForm]
]
MakeBoxes[Csq["C"][3,gen_][i_,a_,x_],TraditionalForm] := SubsuperscriptBox[
	"C",
	RowBox[{FermionTypes[[4]], SubscriptBox[SfermionTypes[[3]],MakeBoxes[a,TraditionalForm]], SubsuperscriptBox[OverscriptBox["\[Chi]","~"],MakeBoxes[i,TraditionalForm],"\[PlusMinus]"]}],
	MakeBoxes[x,TraditionalForm]
];
MakeBoxes[Csq["C"][4,gen_][i_,a_,x_],TraditionalForm] := SubsuperscriptBox[
	"C",
	RowBox[{FermionTypes[[3]], SubscriptBox[SfermionTypes[[4]],MakeBoxes[a,TraditionalForm]], SubsuperscriptBox[OverscriptBox["\[Chi]","~"],MakeBoxes[i,TraditionalForm],"\[PlusMinus]"]}],
	MakeBoxes[x,TraditionalForm]
];
MakeBoxes[Csq["C"][5,gen_][i_,a_,x_],TraditionalForm] := SubsuperscriptBox[
	"C",
	RowBox[{SuperscriptBox[FermionTypes[[5]],"\[Prime]"], SubscriptBox[SfermionTypes[[5]],MakeBoxes[a,TraditionalForm]], SubsuperscriptBox[OverscriptBox["\[Chi]","~"],MakeBoxes[i,TraditionalForm],"\[PlusMinus]"]}],
	MakeBoxes[x,TraditionalForm]
];

MakeBoxes[alphaW, TraditionalForm] = SubscriptBox["\[Alpha]","W"]

MakeBoxes[USf[type_,gen_][A_,X_], TraditionalForm] := SubsuperscriptBox[
	"R",
	RowBox[{MakeBoxes[A, TraditionalForm], MakeBoxes[X,TraditionalForm]}],
	SubscriptBox[SfermionTypes[[type]],MakeBoxes[gen,TraditionalForm]]
]
MakeBoxes[MSf[A_,type_,gen_], TraditionalForm] := \!\(TraditionalForm\`\(TraditionalForm\`SubscriptBox[\n\t"\<m\>", \n\tSubscriptBox[SfermionTypes[\([type]\)], RowBox[{MakeBoxes[gen, TraditionalForm], "\<,\>", MakeBoxes[A, TraditionalForm]}]]\n]\)\)

MakeBoxes[MNeu[a_],TraditionalForm]:=SubscriptBox["m",MakeBoxes[a,TraditionalForm]];
MakeBoxes[MCha[a_],TraditionalForm]:=SubscriptBox["m",MakeBoxes[a,TraditionalForm]];
MakeBoxes[MEW[a_],TraditionalForm]:=SubscriptBox["m",MakeBoxes[a,TraditionalForm]];
MakeBoxes[ZNeu[a_,b_],TraditionalForm]:=SubscriptBox["N",RowBox[{MakeBoxes[a,TraditionalForm],",",MakeBoxes[b,TraditionalForm]}]];
MakeBoxes[UCha[a_,b_],TraditionalForm]:=SubscriptBox["U",RowBox[{MakeBoxes[a,TraditionalForm],",",MakeBoxes[b,TraditionalForm]}]];
MakeBoxes[VCha[a_,b_],TraditionalForm]:=SubscriptBox["V",RowBox[{MakeBoxes[a,TraditionalForm],",",MakeBoxes[b,TraditionalForm]}]];
MakeBoxes[MGl,TraditionalForm]=SubscriptBox["m",OverscriptBox["g","~"]];
MakeBoxes[SB,TraditionalForm]=SubscriptBox["s","\[Beta]"];
MakeBoxes[CB,TraditionalForm]=SubscriptBox["c","\[Beta]"];
MakeBoxes[TB,TraditionalForm]=SubscriptBox["t","\[Beta]"];

MakeBoxes[FeynCalc`IndexDelta[a_,b_],TraditionalForm]:=SubscriptBox["\[Delta]",RowBox[{MakeBoxes[a,TraditionalForm],MakeBoxes[b,TraditionalForm]}]]
MakeBoxes[IdenticalPartFactor[i_,j_],TraditionalForm]:=\!\(TraditionalForm\`SuperscriptBox[RowBox[{"\<(\>", FractionBox["\<1\>", "\<2\>"], "\<)\>"}], MakeBoxes[KroneckerDelta[i, j], TraditionalForm]]\)


SuperChargeRules={
	Cq[x_]Opp[i,j,y_] -> 1/Den[s,DZ] Zij["NN"][x,y],
	Cq[x_]Opp[i,j,y_]\[Conjugate] -> 1/Den[s,DZ\[Conjugate]] Zij["NN"][x,y]\[Conjugate],
(*	Cq[L]Opp[i,j,R] -> -Zij["NN"][L]\[Conjugate],
	Cq[R]Opp[i,j,L] -> -Zij["NN"][R]\[Conjugate],
	Cq[L]Opp[i,j,R]\[Conjugate] -> -Zij["NN"][L],
	Cq[R]Opp[i,j,L]\[Conjugate] -> -Zij["NN"][R],*)
	
	Cq[x_]^2Opp[i,j,y_] -> Cq[x] 1/Den[s,DZ] Zij["NN"][x,y],
	Cq[x_]^2Opp[i,j,y_]\[Conjugate] -> Cq[x] 1/Den[s,DZ\[Conjugate]] Zij["NN"][x,y]\[Conjugate],
(*	Cq[L]^2Opp[i,j,R] -> -Cq[L]Zij["NN"][L]\[Conjugate],
	Cq[R]^2Opp[i,j,L] -> -Cq[R]Zij["NN"][R]\[Conjugate],
	Cq[L]^2Opp[i,j,R]\[Conjugate] -> -Cq[L]Zij["NN"][L],
	Cq[R]^2Opp[i,j,L]\[Conjugate] -> -Cq[R]Zij["NN"][R],*)
	
	Cq[x_]^2Opp[i,j,y_]^2 -> 1/Den[s,DZ]^2 Zij["NN"][x,y]^2,
	Cq[x_]^2Opp[i,j,y_]\[Conjugate]^2 -> 1/Den[s,DZ\[Conjugate]]^2 Zij["NN"][x,y]\[Conjugate]^2,
	(*Cq[L]^2Opp[i,j,R]^2 -> Zij["NN"][L]\[Conjugate]^2,
	Cq[R]^2Opp[i,j,L]^2 -> Zij["NN"][R]\[Conjugate]^2,
	Cq[L]^2Opp[i,j,R]\[Conjugate]^2 -> Zij["NN"][L]^2,
	Cq[R]^2Opp[i,j,L]\[Conjugate]^2 -> Zij["NN"][R]^2,*)
	
	CqW[L]Ow[i,j,L] -> 1/Den[s,DW] Wij["NC"][L,L],
	CqW[L]Ow[i,j,R] -> 1/Den[s,DW] Wij["NC"][L,R],
	CqW[L]\[Conjugate]Ow[i,j,L]\[Conjugate] -> 1/Den[s,DW\[Conjugate]] Wij["NC"][L,L]\[Conjugate],
	CqW[L]\[Conjugate]Ow[i,j,R]\[Conjugate] -> 1/Den[s,DW\[Conjugate]] Wij["NC"][L,R]\[Conjugate],

	Cq[x_]Op[i,j,y_] -> 1/Den[s,DZ] (Zij["CC"][x,y]-(Qe SMP["sin_W"]^2 FeynCalc`IndexDelta[i,j])/s),
	Cq[x_]Op[i,j,y_]\[Conjugate] -> 1/Den[s,DZ\[Conjugate]] (Zij["CC"][x,y]\[Conjugate]-(Qe SMP["sin_W"]^2 FeynCalc`IndexDelta[i,j])/s),
	
	Cq[x_]^2Op[i,j,y_] -> Cq[x] 1/Den[s,DZ] (Zij["CC"][x,y]-(Qe SMP["sin_W"]^2 FeynCalc`IndexDelta[i,j])/s),
	Cq[x_]^2Op[i,j,y_]\[Conjugate] -> Cq[x] 1/Den[s,DZ\[Conjugate]] (Zij["CC"][x,y]\[Conjugate]-(Qe SMP["sin_W"]^2 FeynCalc`IndexDelta[i,j])/s),
	
	Cq[x_]^2Op[i,j,y_]^2 -> 1/Den[s,DZ]^2 (Zij["CC"][x,y]-(Qe SMP["sin_W"]^2 FeynCalc`IndexDelta[i,j])/s)^2,
	Cq[x_]^2Op[i,j,y_]\[Conjugate]^2 -> 1/Den[s,DZ\[Conjugate]]^2 (Zij["CC"][x,y]\[Conjugate]-(Qe SMP["sin_W"]^2 FeynCalc`IndexDelta[i,j])/s)^2,

	CsqZ[A_,B_]Opp[i,j,X_] -> Zsqij["NN"][X,A,B],
	CsqZ[A_,B_]\[Conjugate]Opp[i,j,X_]\[Conjugate] -> Zsqij["NN"][X,A,B]\[Conjugate],
	CsqZ[A_,B_]Opp[i,j,L]\[Conjugate] -> -Zsqij["NN"][R,A,B],
	CsqZ[A_,B_]Opp[i,j,R]\[Conjugate] -> -Zsqij["NN"][L,A,B],
	CsqZ[A_,B_]\[Conjugate]Opp[i,j,L] -> -Zsqij["NN"][R,A,B]\[Conjugate],
	CsqZ[A_,B_]\[Conjugate]Opp[i,j,R] -> -Zsqij["NN"][L,A,B]\[Conjugate],
	
	CsqZ[A_,B_]Opp[i,j,X_]^2 -> Zsqij["NN"][X,A,B]Opp[i,j,X],
	CsqZ[A_,B_]\[Conjugate]Opp[i,j,X_]\[Conjugate]^2 -> Zsqij["NN"][X,A,B]\[Conjugate]Opp[i,j,X]\[Conjugate],
	CsqZ[A_,B_]Opp[i,j,L]\[Conjugate]^2 -> -Zsqij["NN"][R,A,B]Opp[i,j,L]\[Conjugate],
	CsqZ[A_,B_]Opp[i,j,R]\[Conjugate]^2 -> -Zsqij["NN"][L,A,B]Opp[i,j,R]\[Conjugate],
	CsqZ[A_,B_]\[Conjugate]Opp[i,j,L]^2 -> -Zsqij["NN"][R,A,B]\[Conjugate]Opp[i,j,L],
	CsqZ[A_,B_]\[Conjugate]Opp[i,j,R]^2 -> -Zsqij["NN"][L,A,B]\[Conjugate]Opp[i,j,R],

	Csq["N"][type_,gen_][i,a_,x_]Csq["N"][type_,gen_][j,a_,y_]\[Conjugate] -> Qtu["NN"][type,gen][a,x,y],
	Csq["N"][type_,gen_][j,a_,y_]Csq["N"][type_,gen_][i,a_,x_]\[Conjugate] -> Qtu["NN"][type,gen][a,x,y]\[Conjugate],
	Csq["C"][type_,gen_][i,a_,x_]Csq["C"][type_,gen_][j,a_,y_]\[Conjugate] -> Qtu["CC"][type,gen][a,x,y],
	Csq["C"][type_,gen_][j,a_,y_]Csq["C"][type_,gen_][i,a_,x_]\[Conjugate] -> Qtu["CC"][type,gen][a,x,y]\[Conjugate],
	Csq["N"][type_,gen_][i,a_,x_]Csq["C"][type_,gen_][j,a_,y_]\[Conjugate] -> Qtu["NC"][type,gen][a,x,y],
	Csq["N"][type_,gen_][i,a_,x_]\[Conjugate]Csq["C"][type_,gen_][j,a_,y_] -> Qtu["NC"][type,gen][a,x,y]\[Conjugate]
}

MakeBoxes[Zij["NN"][x_,y_],TraditionalForm]:=SubsuperscriptBox[
	"Z",
	RowBox[{SubsuperscriptBox[OverscriptBox["\[Chi]","~"],"i","0"],SubsuperscriptBox[OverscriptBox["\[Chi]","~"],"j","0"]}],
	RowBox[{MakeBoxes[x,TraditionalForm], MakeBoxes[y,TraditionalForm]}]
]
MakeBoxes[Zsqij["NN"][X_,A_,B_],TraditionalForm]:=SubsuperscriptBox[
	OverscriptBox["Z","~"],
	RowBox[{SubsuperscriptBox[OverscriptBox["\[Chi]","~"],"i","0"],SubsuperscriptBox[OverscriptBox["\[Chi]","~"],"j","0"]}],
	RowBox[{MakeBoxes[X,TraditionalForm], MakeBoxes[A,TraditionalForm], MakeBoxes[B,TraditionalForm]}]
]
MakeBoxes[Wij["NC"][x_,y_],TraditionalForm]:=SubsuperscriptBox[
	"W",
	RowBox[{SubsuperscriptBox[OverscriptBox["\[Chi]","~"],"i","0"],SubsuperscriptBox[OverscriptBox["\[Chi]","~"],"j","\[PlusMinus]"]}],
	RowBox[{MakeBoxes[x,TraditionalForm], MakeBoxes[y,TraditionalForm]}]
]
MakeBoxes[Zij["CC"][x_,y_],TraditionalForm]:=SubsuperscriptBox[
	"Z",
	RowBox[{SubsuperscriptBox[OverscriptBox["\[Chi]","~"],"i","\[PlusMinus]"],SubsuperscriptBox[OverscriptBox["\[Chi]","~"],"j","\[MinusPlus]"]}],
	RowBox[{MakeBoxes[x,TraditionalForm], MakeBoxes[y,TraditionalForm]}]
]
MakeBoxes[Qtu[_][type_,gen_][a_,x_,y_], TraditionalForm] := SubsuperscriptBox[
	"Q",
	RowBox[{SfermionTypes[[type]],MakeBoxes[a,TraditionalForm]}],
	RowBox[{MakeBoxes[x,TraditionalForm],MakeBoxes[y,TraditionalForm]}]
]


(* ::Text:: *)
(*A function for collecting effective charges of the supercharges.*)


EffectiveCharges = {
	Qtu[_][__][args1__]Qtu[_][__][args2__],
	Qtu[_][__][args1__]Qtu[_][__][args2__]\[Conjugate],
	Qtu[_][__][args1__]\[Conjugate]Qtu[_][__][args2__]\[Conjugate],
	(Zij|Wij)[_][__]Qtu[_][__][__],
	(Zij|Wij)[_][__]\[Conjugate]Qtu[_][__][__],
	(Zij|Wij)[_][__]Qtu[_][__][__]\[Conjugate],
	(Zij|Wij)[_][__]\[Conjugate]Qtu[_][__][__]\[Conjugate],
	(Zij|Wij)[_][__]^2,
	(Zij|Wij)[_][__]\[Conjugate]^2,
	(Zij|Wij)[_][__](Zij|Wij)[_][__]\[Conjugate],
	Abs[(Zij|Wij)[_][__]]^2,
	Qtu[_][__][__]^2,
	Qtu[_][__][__]^2\[Conjugate],
	Qtu[_][__][__]\[Conjugate]^2,
	Abs[Qtu[_][__][__]]^2
};
CollectKinematics[expr_] := Collect2[
	FRH[expr],
	{p, Log[_], dLog[__]},
	Factoring -> Simplify
]
CollectEffCharges[expr_] := Collect2[
	Collect[
		FRH[expr],
		EffectiveCharges,
		Isolate[CollectKinematics[#]]&
	],
	KK
]


(*Set Mandelstam variables*)
FCClearScalarProducts[];
SetMandelstam[s, t, u, ki, kj, -pi, -pj, 0, 0, MEW[i], MEW[j]];
SetMandelstamParameters[s,t,u,MEW[i]^2+MEW[j]^2];


Begin["`Private`"];


End[];


EndPackage[];
