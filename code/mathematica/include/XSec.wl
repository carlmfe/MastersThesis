(* ::Package:: *)

(* ::Title:: *)
(*XSec Package*)


(* ::Text:: *)
(*A tool package for computing partonic neutralino pair production with FeynCalc.*)


BeginPackage["XSec`"];


Needs["FeynCalc`"]


(* ::Section:: *)
(*Set Mandelstam parameters*)


(* ::Text:: *)
(*The Mandelstam parameters are by default configure to set all masses to zero.*)


MandelstamParameters={s,t,u,0}
SetMandelstamParameters[s_,t_,u_,mass2sum_]:=MandelstamParameters={s,t,u,mass2sum}


(* ::Section:: *)
(*Handling amplitudes*)


(* ::Text:: *)
(*A  function  for  evaluating  traces  and  color  factors  in  the  numerator  of  loop  integrals  in  an  amplitude.*)


TraceLoopAmp[amp_]:=FCTraceFactor[CalcColorFactor[DotSimplify[Simplify[amp],Expanding->False]]]


(* ::Text:: *)
(*A  function  for  collecting  and  evaluating  loop  integrals  in  amplitudes  by  Passarino - Veltman  functions.*)


(*EvalPVLoopAmp[amp_] := (Collect2[
	#1,PaVe,Factoring->Function[x,Factor2[TrickMandelstam[x,MandelstamParameters]]]
]&)[
	FeynAmpDenominatorExplicit[
		(#1/. (h:PaVe)[x__]:>TrickMandelstam[h[x],MandelstamParameters]&)[
			Contract[
				DiracSimplify[
					(TID[#1,qloop,ToPaVe->True]&)[
						DiracSimplify[Contract[amp]]
					]
				]
			]
		]
	]
]*)
EvalPVLoopAmp[amp_] := amp // Contract // DiracSimplify // TID[#,qloop,ToPaVe->True]& //
	DiracSimplify // Contract //
	FeynAmpDenominatorExplicit[# /. (h:{A0, B0, C0, D0})[x__]:>TrickMandelstam[h[x],MandeltamParameters]]& //
	Collect2[#, {A0, B0, C0, D0}, Factoring -> Function[x, Factor2[TrickMandelstam[x, MandelstamParameters]]]]&
CheckPVRemainder[amp_] := PossibleZeroQ[TID[SelectFree2[amp,PaVe],qloop]]


(* ::Text:: *)
(*Squaring  and  prettifying  two  amplitudes  with  a  spin  sum  and  color  factoring.*)


SquareAmplitudes[amp1_,amp2_]:=(Collect2[#1,PaVe]&)[(TrickMandelstam[#1,MandelstamParameters]&)[FRH[DiracSimplify[(FermionSpinSum[#1]&)[amp1 amp2]]]]]


(* ::Text:: *)
(*Function  for  taking  the  limit  D -> 4  of  an  expression  and dropping remaining traces (beware!).*)


FixDimension[amp_]:=(SelectFree2[#1,Eps]&)[
	ChangeDimension[amp,4]/.{D->4}//FeynAmpDenominatorExplicit//DiracSimplify
]


(* ::Section:: *)
(*Collecting terms*)


(* ::Text:: *)
(*Prettifying output from some of the functions.*)


MakeBoxes[Den[p2_,m2_],TraditionalForm]:=MakeBoxes[1/(p2-m2),TraditionalForm]
MakeBoxes[tMass[A_,type_,gen_], TraditionalForm] := \!\(TraditionalForm\`\(TraditionalForm\`SubsuperscriptBox[\n\t"\<\[CapitalDelta]\>", \n\tSubscriptBox[SfermionTypes[\([type]\)], RowBox[{MakeBoxes[gen, TraditionalForm], "\<,\>", MakeBoxes[A, TraditionalForm]}]], \n\t"\<t\>"\n]\)\)
MakeBoxes[uMass[A_,type_,gen_], TraditionalForm] := \!\(TraditionalForm\`\(TraditionalForm\`SubsuperscriptBox[\n\t"\<\[CapitalDelta]\>", \n\tSubscriptBox[SfermionTypes[\([type]\)], RowBox[{MakeBoxes[gen, TraditionalForm], "\<,\>", MakeBoxes[A, TraditionalForm]}]], \n\t"\<u\>"\n]\)\)


(* ::Text:: *)
(*Function  for  collecting  the  typical kinematic  terms  for the process.*)


tij = (t-MEW[i]^2)(t-MEW[j]^2)
uij = (u-MEW[i]^2)(u-MEW[j]^2)
tuij = Simplify[tij+uij]
IsolateKinematicTerms={
	t^2 -> t^2-tuij+KTU,
	t-MEW[i_]^2 -> KT[i],
	u-MEW[i_]^2 -> KU[i],
	MEW[i_]MEW[j_]s -> KS[i,j]
}
KinematicTerms = {t-MEW[i_]^2,u-MEW[i_]^2,MEW[i_]MEW[j_]s}
IsolatedKinematicTerms = {KT[i_],KU[i_],KS[i_,j_],KTU}
FreeKinematicTerms = {
	KTU -> tij+uij,
	KT[i_] -> t-MEW[i]^2,
	KU[i_] -> u-MEW[i]^2,
	KS[i_,j_] -> MEW[i]MEW[j]s
}
CollectKinematicTerms[amp_] := FRH[Collect[Collect[amp, KinematicTerms, Isolate]/.IsolateKinematicTerms, IsolatedKinematicTerms]/.FreeKinematicTerms]


(* ::Text:: *)
(*Function  for  converting  propagator  denominators  to  a  Den - function  with  Breit-Wigner  mass  replacements .*)


Convert2Den={
	t-DSf[args__]->1/Den[t,DSf[args]],
	u-DSf[args__]->1/Den[u,DSf[args]],
	t-DSfC[args__]->1/Den[t,DSfC[args]],
	u-DSfC[args__]->1/Den[u,DSfC[args]],
	t-MSf[args__]^2->1/Den[t,MSf[args]^2],
	u-MSf[args__]^2->1/Den[u,MSf[args]^2],
	s-DZ->1/Den[s,DZ],
	s-DZ\[Conjugate]->1/Den[s,DZ\[Conjugate]],
	DZ-s->-1/Den[s,DZ],
	DZ\[Conjugate]-s->-1/Den[s,DZ\[Conjugate]],
	s-DW->1/Den[s,DW],
	s-DW\[Conjugate]->1/Den[s,DW\[Conjugate]],
	DW-s->-1/Den[s,DW],
	DW\[Conjugate]-s->-1/Den[s,DW\[Conjugate]]
}
DenominatorFactors={
	Den[t,m1_]Den[u,m2_],
	Den[s,m1_]Den[u,m2_],
	Den[s,m1_]Den[t,m2_]
}
FactorDenominators[expr_]:=Collect[
	expr,
	Den[args__],
	(CollectKinematicTerms[TrickMandelstam[#1,MandelstamParameters]//Simplify]&)
]


(* ::Text:: *)
(*Function for collecting into denominator terms and before collecting scalar Passarino-Veltman loop functions.*)


Options[CollectDenPaVe] = {FinalFactoring -> Simplify, Prefactor -> 1}
CollectDenPaVe[expr_, OptionsPattern[]] := OptionValue[Prefactor] Collect2[
	expr/OptionValue[Prefactor],
	Den[__],
	Factoring -> (Collect2[
		#,
		{A0[_], B0[__], C0[__], D0[__]},
		Factoring -> OptionValue[FinalFactoring]
	]&)
] /. {FeynCalc`Collect`Private`unity -> 1}
(*FIXME: Where does the FeynCalc`unity come from and why?*)


MakeBoxes[tRed[i_],TraditionalForm]:=SubscriptBox["t",MakeBoxes[i,TraditionalForm]]
MakeBoxes[uRed[i_],TraditionalForm]:=SubscriptBox["u",MakeBoxes[i,TraditionalForm]]
ReducedMandestamParameters={t-MEW[i_]^2->tRed[i],u-MEW[i_]^2->uRed[i]}
ReduceMandelstam[expr_]:=TrickMandelstam[expr,MandelstamParameters]//Simplify/.{t^2->tRed[i]tRed[j]+(MEW[i]^2+MEW[j]^2)t-MEW[i]^2 MEW[j]^2,u^2->uRed[i]uRed[j]+(MEW[i]^2+MEW[j]^2)u-MEW[i]^2 MEW[j]^2}/.ReducedMandestamParameters


Begin["`Private`"]


End[]


EndPackage[];
