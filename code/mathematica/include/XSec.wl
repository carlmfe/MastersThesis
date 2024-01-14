(* ::Package:: *)

BeginPackage["XSec`"];


Needs["FeynCalc`"]


MandelstamParameters={s,t,u,0}
SetMandelstamParameters[s_,t_,u_,masses_]:=MandelstamParameters={s,t,u,masses}


(*A function for evaluating traces and color factors in the numerator of loop integrals in an amplitude*)
TraceLoopAmp[amp_]:=FCTraceFactor[CalcColorFactor[DotSimplify[amp,Expanding->False]]]


(*A function for collecting and evaluating loop integrals in amplitudes by Passarino-Veltman functions*)
EvalPVLoopAmp[amp_]:=(Collect2[#1,PaVe,Factoring->Function[x,Factor2[TrickMandelstam[x,MandelstamParameters]]]]&)[FeynAmpDenominatorExplicit[(#1/. (h:PaVe)[x__]:>TrickMandelstam[h[x],MandelstamParameters]&)[Contract[DiracSimplify[(TID[#1,qloop,ToPaVe->True]&)[DiracSimplify[Contract[amp]]]]]]]];
CheckPVRemainder[amp_]:=PossibleZeroQ[TID[SelectFree2[amp,PaVe],qloop]]


(*Squaring and prettifying two amplitudes with a spin sum and color factoring*)
SquareAmplitudes[amp1_,amp2_]:=(Collect2[#1,PaVe]&)[(TrickMandelstam[#1,MandelstamParameters]&)[FRH[DiracSimplify[(FermionSpinSum[#1]&)[amp1 amp2]]]]]


(*Function for taking the limit D->4 of an expression.*)
FixDimension[amp_]:=(SelectFree2[#1,Eps]&)[
	ChangeDimension[amp,4]/.{D->4}//FeynAmpDenominatorExplicit//DiracSimplify
]


(*Function for collecting the available kinemtic terms.*)
tij=((t-FeynCalc`MNeu[i]^2)(t-FeynCalc`MNeu[j]^2));
uij=((u-FeynCalc`MNeu[i]^2)(u-FeynCalc`MNeu[j]^2));
tuij=Simplify[tij+uij];
IsolateKinematicTerms={
t^2->t^2-tuij+KTU,
t-FeynCalc`MNeu[i_]^2->KT[i],
u-FeynCalc`MNeu[i_]^2->KU[i],
FeynCalc`MNeu[i_]FeynCalc`MNeu[j_]s->KS[i,j]
};
KinematicTerms={t-FeynCalc`MNeu[i_]^2,u-FeynCalc`MNeu[i_]^2,FeynCalc`MNeu[i_]FeynCalc`MNeu[j_]s};
IsolatedKinematicTerms={KT[i_],KU[i_],KS[i_,j_],KTU};
FreeKinematicTerms={
KTU->tij+uij,
KT[i_]->t-FeynCalc`MNeu[i]^2,
KU[i_]->u-FeynCalc`MNeu[i]^2,
KS[i_,j_]->FeynCalc`MNeu[i]FeynCalc`MNeu[j]s
};
CollectKinematicTerms[amp_]:=FRH[Collect[Collect[amp,KinematicTerms,Isolate]/.IsolateKinematicTerms,IsolatedKinematicTerms]/.FreeKinematicTerms]

(*Function for converting propagator denominators to a Den-function with Breit-Wigner mass replacements.*)
Convert2Den={
	t-DSf[args__]->1/Den[t,DSf[args]],
	u-DSf[args__]->1/Den[u,DSf[args]],
	t-DSfC[args__]->1/Den[t,DSfC[args]],
	u-DSfC[args__]->1/Den[u,DSfC[args]],
	s-DZ->1/Den[s,DZ],
	s-DZ\[Conjugate]->1/Den[s,DZ\[Conjugate]],
	DZ-s->-1/Den[s,DZ],
	DZ\[Conjugate]-s->-1/Den[s,DZ\[Conjugate]]
};
DenominatorFactors={
	Den[t,m1_]Den[u,m2_],
	Den[s,m1_]Den[u,m2_],
	Den[s,m1_]Den[t,m2_]
};
FactorDenominators[expr_]:=Collect[
	expr,
	Den[args__],
	(CollectKinematicTerms[TrickMandelstam[#1,MandelstamParameters]//Simplify]&)
]


MakeBoxes[tRed[i_],TraditionalForm]:=SubscriptBox["t",ToString[i]];
MakeBoxes[uRed[i_],TraditionalForm]:=SubscriptBox["u",ToString[i]];
ReducedMandestamParameters={t-FeynCalc`FeynCalc`MNeu[i_]^2->tRed[i],u-FeynCalc`FeynCalc`MNeu[i_]^2->uRed[i]};
ReduceMandelstam[expr_]:=TrickMandelstam[expr,MandelstamParameters]//Simplify/.{t^2->tRed[i]tRed[j]+(FeynCalc`FeynCalc`MNeu[i]^2+FeynCalc`FeynCalc`MNeu[j]^2)t-FeynCalc`FeynCalc`MNeu[i]^2 FeynCalc`FeynCalc`MNeu[j]^2,u^2->uRed[i]uRed[j]+(FeynCalc`FeynCalc`MNeu[i]^2+FeynCalc`FeynCalc`MNeu[j]^2)u-FeynCalc`FeynCalc`MNeu[i]^2 FeynCalc`FeynCalc`MNeu[j]^2}/.ReducedMandestamParameters


Begin["`Private`"];


End[];


EndPackage[];
