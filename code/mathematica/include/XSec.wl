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


MakeBoxes[tRed[i_],TraditionalForm]:=SubscriptBox["t",ToString[i]];
MakeBoxes[uRed[i_],TraditionalForm]:=SubscriptBox["u",ToString[i]];
ReducedMandestamParameters={t-FeynCalc`MNeu[i_]^2->tRed[i],u-FeynCalc`MNeu[i_]^2->uRed[i]};
ReduceMandelstam[expr_]:=TrickMandelstam[expr,MandelstamParameters]//Simplify/.{t^2->tRed[i]tRed[j]+(FeynCalc`MNeu[i]^2+FeynCalc`MNeu[j]^2)t-FeynCalc`MNeu[i]^2 FeynCalc`MNeu[j]^2,u^2->uRed[i]uRed[j]+(FeynCalc`MNeu[i]^2+FeynCalc`MNeu[j]^2)u-FeynCalc`MNeu[i]^2 FeynCalc`MNeu[j]^2}/.ReducedMandestamParameters


Begin["`Private`"];


End[];


EndPackage[];
