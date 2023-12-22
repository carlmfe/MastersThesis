(* ::Package:: *)

BeginPackage["TreeLevel`"];


Needs["FeynCalc`"]
Needs["XSec`"]


(*Replacement rules that are general for all amplitudes*)
(*Replacement rules for Z-boson couplings*)
(*Replacement rules for squark-quark-neutralino coupling*)
AmpSimplifyRules={
FeynCalc`Index[Sfermion,5]:>A,
FeynCalc`Index[Sfermion,6]:>M,
FeynCalc`Index[Neutralino,5]:>k,
SMP["e"]:>SMP["g_W"]SMP["sin_W"],
SMP["m_u"]->0};
ZSimplifyRules={
4SMP["sin_W"]^2-3->-6Cq[L]SMP["cos_W"],
SMP["sin_W"]^2->-3/2Cq[R]SMP["cos_W"],
Conjugate[ZNeu[i,4]]:> (2Conjugate[Opp[i,j,L]]SMP["cos_W"]+Conjugate[ZNeu[i,3]]ZNeu[j,3])/ZNeu[j,4],
ZNeu[i,4]:> (2Opp[i,j,L]SMP["cos_W"]+ZNeu[i,3]Conjugate[ZNeu[j,3]])/Conjugate[ZNeu[j,4]],
Conjugate[Opp[i,j,L]]:>-Opp[i,j,R]};
QSimplifyRules={
ZNeu[i_,1]USf[args1__][a_,2]:>-3/2Conjugate[Csq[i,a,R]]SMP["cos_W"]/SMP["sin_W"],
USf[args1__][b_,1]Conjugate[ZNeu[a_,2]]:>2Csq[a,b,L]-USf[args1][b,1]SMP["sin_W"]/SMP["cos_W"]Conjugate[ZNeu[a,1]]/3,
Conjugate[ZNeu[a_,1]]Conjugate[USf[args1__][b_,2]]:>-3/2Csq[a,b,R]SMP["cos_W"]/SMP["sin_W"],
Conjugate[USf[args1__][a_,1]](3ZNeu[i_,2]SMP["cos_W"]+ZNeu[i_,1]SMP["sin_W"]):>6Conjugate[Csq[i,a,L]]SMP["cos_W"]};


(*A list of the parameters that are complex, and relations between them*)
ComplexParameterRules={
Opp[i_,j_,L]->-Opp[i,j,R],
Opp[i_,j_,R]->-Opp[i,j,L],
USf[args__][a_,b_]->Conjugate[USf[args][a,b]],
Csq[i_,a_,x_]->Conjugate[Csq[i,a,x]],
SqrtEGl->Conjugate[SqrtEGl],
Zs[x_]->Conjugate[Zs[x]],
Qtu[args__]->Conjugate[Qtu[args]],
QtuC[args__]->Conjugate[QtuC[args]],
DSf[args__]->DSfC[args],
DSfC[args__]->DSf[args],
DZ->DZ\[Conjugate]};


ConjugateAmplitude[amp_]:=ReplaceAll[ComplexConjugate[amp],ComplexParameterRules];


(*Prettify four-momenta when printing*)
MakeBoxes[ki,TraditionalForm]:="\!\(\*SubscriptBox[\(k\), \(i\)]\)";
MakeBoxes[kj,TraditionalForm]:="\!\(\*SubscriptBox[\(k\), \(j\)]\)";
MakeBoxes[pi,TraditionalForm]:="\!\(\*SubscriptBox[\(p\), \(i\)]\)";
MakeBoxes[pj,TraditionalForm]:="\!\(\*SubscriptBox[\(p\), \(j\)]\)";


MakeBoxes[Cq[x_],TraditionalForm]:=SubsuperscriptBox["C","qqZ",ToString[x]];
MakeBoxes[Opp[i_,j_,x_],TraditionalForm]:=\!\(TraditionalForm\`SubsuperscriptBox["\<O\>", RowBox[{ToString[i], ToString[j]}], RowBox[{"\<\[Prime]\[Prime]\>", ToString[x]}]]\);
MakeBoxes[Csq[i_,a_,x_],TraditionalForm]:=SubsuperscriptBox["C",RowBox[{"q",SubscriptBox[OverscriptBox["q","~"],ToString[a]],SubsuperscriptBox[OverscriptBox["\[Chi]","~"],ToString[i],"0"]}],ToString[x]];

MakeBoxes[USf[args1__][a_,b_],TraditionalForm]:=SubscriptBox[OverscriptBox["Q","~"],RowBox[{ToString[a],",",ToString[b]}]];
MakeBoxes[MNeu[a_],TraditionalForm]:=SubscriptBox["m",ToString[a]];
MakeBoxes[ZNeu[a_,b_],TraditionalForm]:=SubscriptBox["N",RowBox[{ToString[a],",",ToString[b]}]];
MakeBoxes[MSf[a_,b__],TraditionalForm]:=\!\(TraditionalForm\`\(TraditionalForm\`SubscriptBox["\<m\>", SubscriptBox[OverscriptBox["\<q\>", "\<~\>"], ToString[a]]]\)\);
MakeBoxes[MGl,TraditionalForm]=SubscriptBox["m",OverscriptBox["g","~"]];
MakeBoxes[SB,TraditionalForm]=SubscriptBox["s","\[Beta]"];
MakeBoxes[CB,TraditionalForm]=SubscriptBox["c","\[Beta]"];
MakeBoxes[TB,TraditionalForm]=SubscriptBox["t","\[Beta]"];

MakeBoxes[SMP["sin_W"],TraditionalForm]=SubscriptBox["s","W"];
MakeBoxes[SMP["cos_W"],TraditionalForm]=SubscriptBox["c","W"];
MakeBoxes[FeynCalc`IndexDelta[a_,b_],TraditionalForm]:=SubscriptBox["\[Delta]",RowBox[{ToString[a],ToString[b]}]];


SuperChargeRules={
Cq[x_]Opp[i_,j_,x_]:>Zs[x],
Cq[L]Opp[i_,j_,R]:>-Conjugate[Zs[L]],
Cq[R]Opp[i_,j_,L]:>-Conjugate[Zs[R]],
Csq[i,a_,x_]Csq[j,a_,y_]:>Qtu[a,x,y],
Csq[i,a_,x_]Conjugate[Csq[j,a_,y_]]:>QtuC[a,x,y],
Csq[j,a_,y_]Conjugate[Csq[i,a_,x_]]:>Conjugate[QtuC[a,x,y]],
Conjugate[Csq[i,a_,x_]]Conjugate[Csq[j,a_,y_]]:>Conjugate[Qtu[a,x,y]]};

MakeBoxes[Zs[x_],TraditionalForm]:=SubsuperscriptBox["Z","s",ToString[x]];
MakeBoxes[Qtu[a_,x_,y_],TraditionalForm]:=SubsuperscriptBox["Q",ToString[a],RowBox[{ToString[x],ToString[y]}]];
MakeBoxes[QtuC[a_,x_,y_],TraditionalForm]:=SubsuperscriptBox["Q",ToString[a],RowBox[{ToString[x],OverscriptBox[ToString[y],"_"]}]];


(*Set Mandelstam variables*)
FCClearScalarProducts[];
SetMandelstam[s, t, u, p1, p2, -pi, -pj, 0, 0, MNeu[i], MNeu[j]];
SetMandelstamParameters[s,t,u,MNeu[i]^2+MNeu[j]^2];


Subscript[M, s][0]=FeynCalc`IndexDelta[a,b] SMP["g_W"]^2 (-Conjugate[Zs[R]] Spinor[-Momentum[p2,D],0,1] . DiracGamma[LorentzIndex[\[Mu],D],D] . DiracGamma[6] . Spinor[Momentum[p1,D],0,1] Spinor[Momentum[pj,D],MNeu[j],1] . DiracGamma[LorentzIndex[\[Mu],D],D] . DiracGamma[6] . Spinor[-Momentum[pi,D],MNeu[i],1] FeynAmpDenominator[PropagatorDenominator[Momentum[pi+pj,D],SMP["m_Z"]]]-Conjugate[Zs[L]] Spinor[-Momentum[p2,D],0,1] . DiracGamma[LorentzIndex[\[Mu],D],D] . DiracGamma[7] . Spinor[Momentum[p1,D],0,1] Spinor[Momentum[pj,D],MNeu[j],1] . DiracGamma[LorentzIndex[\[Mu],D],D] . DiracGamma[7] . Spinor[-Momentum[pi,D],MNeu[i],1] FeynAmpDenominator[PropagatorDenominator[Momentum[pi+pj,D],SMP["m_Z"]]]+Spinor[-Momentum[p2,D],0,1] . DiracGamma[LorentzIndex[\[Mu],D],D] . DiracGamma[7] . Spinor[Momentum[p1,D],0,1] Spinor[Momentum[pj,D],MNeu[j],1] . DiracGamma[LorentzIndex[\[Mu],D],D] . DiracGamma[6] . Spinor[-Momentum[pi,D],MNeu[i],1] FeynAmpDenominator[PropagatorDenominator[Momentum[pi+pj,D],SMP["m_Z"]]] Zs[L]+Spinor[-Momentum[p2,D],0,1] . DiracGamma[LorentzIndex[\[Mu],D],D] . DiracGamma[6] . Spinor[Momentum[p1,D],0,1] Spinor[Momentum[pj,D],MNeu[j],1] . DiracGamma[LorentzIndex[\[Mu],D],D] . DiracGamma[7] . Spinor[-Momentum[pi,D],MNeu[i],1] FeynAmpDenominator[PropagatorDenominator[Momentum[pi+pj,D],SMP["m_Z"]]] Zs[R])
Subscript[M, t][0]=-2 Conjugate[Qtu[A,R,L]] Dot[Spinor[-Momentum[p2,D],0,1],DiracGamma[6],Spinor[-Momentum[pj,D],MNeu[j],1]] Dot[Spinor[Momentum[pi,D],MNeu[i],1],DiracGamma[6],Spinor[Momentum[p1,D],0,1]] FeynAmpDenominator[PropagatorDenominator[-Momentum[p2-pj,D],MSf[A,3,1]]] FeynCalc`IndexDelta[a,b] SMP["g_W"]^2-2 Conjugate[QtuC[A,R,R]] Dot[Spinor[-Momentum[p2,D],0,1],DiracGamma[7],Spinor[-Momentum[pj,D],MNeu[j],1]] Dot[Spinor[Momentum[pi,D],MNeu[i],1],DiracGamma[6],Spinor[Momentum[p1,D],0,1]] FeynAmpDenominator[PropagatorDenominator[-Momentum[p2-pj,D],MSf[A,3,1]]] FeynCalc`IndexDelta[a,b] SMP["g_W"]^2-2 Dot[Spinor[-Momentum[p2,D],0,1],DiracGamma[7],Spinor[-Momentum[pj,D],MNeu[j],1]] Dot[Spinor[Momentum[pi,D],MNeu[i],1],DiracGamma[7],Spinor[Momentum[p1,D],0,1]] FeynAmpDenominator[PropagatorDenominator[-Momentum[p2-pj,D],MSf[A,3,1]]] FeynCalc`IndexDelta[a,b] Qtu[A,L,R] SMP["g_W"]^2-2 Dot[Spinor[-Momentum[p2,D],0,1],DiracGamma[6],Spinor[-Momentum[pj,D],MNeu[j],1]] Dot[Spinor[Momentum[pi,D],MNeu[i],1],DiracGamma[7],Spinor[Momentum[p1,D],0,1]] FeynAmpDenominator[PropagatorDenominator[-Momentum[p2-pj,D],MSf[A,3,1]]] FeynCalc`IndexDelta[a,b] QtuC[A,L,L] SMP["g_W"]^2
Subscript[M, u][0]=2 Conjugate[Qtu[A,L,R]] Dot[Spinor[-Momentum[p2,D],0,1],DiracGamma[6],Spinor[-Momentum[pi,D],MNeu[i],1]] Dot[Spinor[Momentum[pj,D],MNeu[j],1],DiracGamma[6],Spinor[Momentum[p1,D],0,1]] FeynAmpDenominator[PropagatorDenominator[-Momentum[p2-pi,D],MSf[A,3,1]]] FeynCalc`IndexDelta[a,b] SMP["g_W"]^2+2 Conjugate[QtuC[A,L,L]] Dot[Spinor[-Momentum[p2,D],0,1],DiracGamma[6],Spinor[-Momentum[pi,D],MNeu[i],1]] Dot[Spinor[Momentum[pj,D],MNeu[j],1],DiracGamma[7],Spinor[Momentum[p1,D],0,1]] FeynAmpDenominator[PropagatorDenominator[-Momentum[p2-pi,D],MSf[A,3,1]]] FeynCalc`IndexDelta[a,b] SMP["g_W"]^2+2 Dot[Spinor[-Momentum[p2,D],0,1],DiracGamma[7],Spinor[-Momentum[pi,D],MNeu[i],1]] Dot[Spinor[Momentum[pj,D],MNeu[j],1],DiracGamma[7],Spinor[Momentum[p1,D],0,1]] FeynAmpDenominator[PropagatorDenominator[-Momentum[p2-pi,D],MSf[A,3,1]]] FeynCalc`IndexDelta[a,b] Qtu[A,R,L] SMP["g_W"]^2+2 Dot[Spinor[-Momentum[p2,D],0,1],DiracGamma[7],Spinor[-Momentum[pi,D],MNeu[i],1]] Dot[Spinor[Momentum[pj,D],MNeu[j],1],DiracGamma[6],Spinor[Momentum[p1,D],0,1]] FeynAmpDenominator[PropagatorDenominator[-Momentum[p2-pi,D],MSf[A,3,1]]] FeynCalc`IndexDelta[a,b] QtuC[A,R,R] SMP["g_W"]^2


Subscript[\!\(\*OverscriptBox[\(M\), \(_\)]\), s][0]=ConjugateAmplitude[Subscript[M, s][0]]
Subscript[\!\(\*OverscriptBox[\(M\), \(_\)]\), t][0]=ConjugateAmplitude[Subscript[M, t][0]]
Subscript[\!\(\*OverscriptBox[\(M\), \(_\)]\), u][0]=ConjugateAmplitude[Subscript[M, u][0]]


Begin["`Private`"];


End[];


EndPackage[];
