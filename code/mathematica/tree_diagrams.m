(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 14.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    291714,       8222]
NotebookOptionsPosition[    282246,       8075]
NotebookOutlinePosition[    282678,       8092]
CellTagsIndexPosition[    282635,       8089]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[{
 "Leading order cross section for ",
 StyleBox["q",
  FontSlant->"Italic"],
 Cell[BoxData[
  FormBox[
   OverscriptBox["q", "_"], TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "3d78edb2-e90a-4046-a767-6c71df141f10"],
 "\[Rule]",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubsuperscriptBox[
     OverscriptBox["\[Chi]", "~"], "i", "0"], 
    SubsuperscriptBox[
     OverscriptBox["\[Chi]", "~"], "j", "0"]}], TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "eb476270-9faa-47c6-b10a-3babcf132286"]
}], "Title",
 CellChangeTimes->{{3.914476161192134*^9, 
  3.914476286383162*^9}},ExpressionUUID->"3113a770-5abe-44cf-abcb-\
7ce35a303d51"],

Cell[CellGroupData[{

Cell["Initialisation", "Section",
 CellChangeTimes->{{3.9144763179811068`*^9, 
  3.914476339787057*^9}},ExpressionUUID->"623a1251-67d0-47eb-8946-\
d965d9acab62"],

Cell["\<\
Load FeynCalc and FeynArts. Furthermore, this notebook makes use of three \
packages found in the \[OpenCurlyDoubleQuote]include\[CloseCurlyDoubleQuote] \
folder.\
\>", "Text",
 CellChangeTimes->{{3.914476486107745*^9, 
  3.914476566436034*^9}},ExpressionUUID->"c9b6c74b-bed6-40d7-93a2-\
94b88f4a1423"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
  "description", " ", "=", " ", 
   "\"\<Leading order cross section of neutralino pair production at parton \
level.\>\""}], ";"}], "\n", 
 RowBox[{
  RowBox[{"If", "[", " ", 
   RowBox[{
    RowBox[{"$FrontEnd", " ", "===", " ", "Null"}], ",", "\n", "\t", 
    RowBox[{
     RowBox[{"$FeynCalcStartupMessages", " ", "=", " ", "False"}], ";", "\n", 
     "\t", 
     RowBox[{"Print", "[", "description", "]"}], ";"}]}], "\n", "]"}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"If", "[", " ", 
   RowBox[{
    RowBox[{"$Notebooks", " ", "===", " ", "False"}], ",", "\n", "\t", 
    RowBox[{"$FeynCalcStartupMessages", " ", "=", " ", "False"}]}], "\n", 
   "]"}], ";"}], "\n", 
 RowBox[{
  RowBox[{"$LoadAddOns", "=", 
   RowBox[{"{", "\"\<FeynArts\>\"", "}"}]}], ";"}], "\n", 
 RowBox[{"<<", "FeynCalc`"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"$FAVerbose", " ", "=", " ", "0"}], ";"}], "\n"}], "\n", 
 RowBox[{
  RowBox[{"FCCheckVersion", "[", 
   RowBox[{"9", ",", "3", ",", "1"}], "]"}], ";"}], "\n", 
 RowBox[{"(", 
  RowBox[{
   RowBox[{"FAPatch", "[", 
    RowBox[{"PatchModelsOnly", "->", "True"}], "]"}], ";"}], ")"}]}], "Code",
 CellChangeTimes->{
  3.91447635123787*^9, {3.914476624408684*^9, 3.9144766387867937`*^9}, 
   3.914478375354082*^9, 3.914485345161674*^9, {3.914485624539702*^9, 
   3.914485650913145*^9}, {3.914645459925461*^9, 3.914645460086473*^9}, 
   3.915590592992235*^9, 3.916393970269587*^9},
 CellLabel->"In[1]:=",ExpressionUUID->"8f3aec24-40f5-4cbe-be7d-b10e746f9f39"],

Cell[CellGroupData[{

Cell[BoxData[
 FormBox[
  InterpretationBox[
   RowBox[{
    StyleBox["\<\"FeynCalc \"\>", "Text",
     StripOnInput->False,
     FontWeight->Bold], "\[InvisibleSpace]", 
    StyleBox["\<\"10.0.0 (stable version). For help, use the \"\>", "Text",
     StripOnInput->False], "\[InvisibleSpace]", 
    StyleBox[
     TagBox[
      ButtonBox[
       RowBox[{"online", " ", "documentation"}],
       BaseStyle->"Hyperlink",
       ButtonData:>{
         URL["https://feyncalc.github.io/referenceDev"], None},
       ButtonNote->"https://feyncalc.github.io/referenceDev"],
      DisplayForm], "Text",
     StripOnInput->False], "\[InvisibleSpace]", 
    StyleBox["\<\", check out the \"\>", "Text",
     StripOnInput->False], "\[InvisibleSpace]", 
    StyleBox[
     TagBox[
      ButtonBox["wiki",
       BaseStyle->"Hyperlink",
       ButtonData:>{
         URL["https://github.com/FeynCalc/feyncalc/wiki"], None},
       ButtonNote->"https://github.com/FeynCalc/feyncalc/wiki"],
      DisplayForm], "Text",
     StripOnInput->False], "\[InvisibleSpace]", 
    StyleBox["\<\" or visit the \"\>", "Text",
     StripOnInput->False], "\[InvisibleSpace]", 
    StyleBox[
     TagBox[
      ButtonBox[
       RowBox[{"forum", "."}],
       BaseStyle->"Hyperlink",
       ButtonData:>{
         URL["https://github.com/FeynCalc/feyncalc/discussions"], None},
       ButtonNote->"https://github.com/FeynCalc/feyncalc/discussions/"],
      DisplayForm], "Text",
     StripOnInput->False]}],
   SequenceForm[
    Style["FeynCalc ", "Text", Bold], 
    Style["10.0.0 (stable version). For help, use the ", "Text"], 
    Style[
     DisplayForm[
      ButtonBox["online documentation", ButtonData :> {
         URL["https://feyncalc.github.io/referenceDev"], None}, BaseStyle -> 
       "Hyperlink", ButtonNote -> "https://feyncalc.github.io/referenceDev"]],
      "Text"], 
    Style[", check out the ", "Text"], 
    Style[
     DisplayForm[
      ButtonBox["wiki", ButtonData :> {
         URL["https://github.com/FeynCalc/feyncalc/wiki"], None}, BaseStyle -> 
       "Hyperlink", ButtonNote -> 
       "https://github.com/FeynCalc/feyncalc/wiki"]], "Text"], 
    Style[" or visit the ", "Text"], 
    Style[
     DisplayForm[
      ButtonBox["forum.", ButtonData :> {
         URL["https://github.com/FeynCalc/feyncalc/discussions"], None}, 
       BaseStyle -> "Hyperlink", ButtonNote -> 
       "https://github.com/FeynCalc/feyncalc/discussions/"]], "Text"]],
   Editable->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.9163938912882137`*^9, 3.916393985957651*^9, 
  3.916394127700233*^9, 3.9163942998413677`*^9, 3.9164564595004063`*^9, 
  3.916457539836578*^9, 3.916457616021718*^9, 3.916466432350707*^9, 
  3.916466693098659*^9, 3.916466815264049*^9, 3.9164673123147783`*^9, 
  3.916717720448441*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"cd38dc49-3651-4aba-8771-874e3db1d0cb"],

Cell[BoxData[
 FormBox[
  InterpretationBox[
   RowBox[{
    StyleBox["\<\"Please check our \"\>", "Text",
     StripOnInput->False], "\[InvisibleSpace]", 
    StyleBox[
     TagBox[
      ButtonBox["FAQ",
       BaseStyle->"Hyperlink",
       ButtonData:>{
         URL["https://github.com/FeynCalc/feyncalc/wiki/FAQ"], None},
       ButtonNote->"https://github.com/FeynCalc/feyncalc/wiki"],
      DisplayForm], "Text",
     StripOnInput->False], "\[InvisibleSpace]", 
    StyleBox["\<\" for answers to some common FeynCalc questions and have a \
look at the supplied \"\>", "Text",
     StripOnInput->False], "\[InvisibleSpace]", 
    StyleBox[
     TagBox[
      ButtonBox[
       RowBox[{"examples", "."}],
       BaseStyle->"Hyperlink",
       ButtonFunction:>SystemOpen[
         FileNameJoin[{FeynCalc`$FeynCalcDirectory, "Examples"}]],
       Evaluator->Automatic,
       Method->"Preemptive"],
      DisplayForm], "Text",
     StripOnInput->False]}],
   SequenceForm[
    Style["Please check our ", "Text"], 
    Style[
     DisplayForm[
      ButtonBox["FAQ", ButtonData :> {
         URL["https://github.com/FeynCalc/feyncalc/wiki/FAQ"], None}, 
       BaseStyle -> "Hyperlink", ButtonNote -> 
       "https://github.com/FeynCalc/feyncalc/wiki"]], "Text"], 
    Style[
    " for answers to some common FeynCalc questions and have a look at the \
supplied ", "Text"], 
    Style[
     DisplayForm[
      ButtonBox[
      "examples.", BaseStyle -> "Hyperlink", ButtonFunction :> SystemOpen[
         FileNameJoin[{FeynCalc`$FeynCalcDirectory, "Examples"}]], Evaluator -> 
       Automatic, Method -> "Preemptive"]], "Text"]],
   Editable->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.9163938912882137`*^9, 3.916393985957651*^9, 
  3.916394127700233*^9, 3.9163942998413677`*^9, 3.9164564595004063`*^9, 
  3.916457539836578*^9, 3.916457616021718*^9, 3.916466432350707*^9, 
  3.916466693098659*^9, 3.916466815264049*^9, 3.9164673123147783`*^9, 
  3.916717720451646*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"fdf6d877-bace-4743-8fb6-d5008e0b837b"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynCalc in your research, please evaluate \
FeynCalcHowToCite[] to learn how to cite this software.\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.9163938912882137`*^9, 3.916393985957651*^9, 
  3.916394127700233*^9, 3.9163942998413677`*^9, 3.9164564595004063`*^9, 
  3.916457539836578*^9, 3.916457616021718*^9, 3.916466432350707*^9, 
  3.916466693098659*^9, 3.916466815264049*^9, 3.9164673123147783`*^9, 
  3.9167177204523*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"086a66c7-7720-4b92-8f7b-70ad3d1c20f7"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"Please keep in mind that the proper academic attribution of \
our work is crucial to ensure the future development of this package!\"\>", 
   "Text",
   StripOnInput->False,
   FontSlant->Italic], TraditionalForm]], "Print",
 CellChangeTimes->{3.9163938912882137`*^9, 3.916393985957651*^9, 
  3.916394127700233*^9, 3.9163942998413677`*^9, 3.9164564595004063`*^9, 
  3.916457539836578*^9, 3.916457616021718*^9, 3.916466432350707*^9, 
  3.916466693098659*^9, 3.916466815264049*^9, 3.9164673123147783`*^9, 
  3.91671772045287*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"bb6f9925-2680-4ed5-bf28-2cc099267a26"],

Cell[BoxData[
 FormBox[
  InterpretationBox[
   RowBox[{
    StyleBox["\<\"FeynArts \"\>", "Text",
     StripOnInput->False,
     FontWeight->Bold], "\[InvisibleSpace]", 
    StyleBox["\<\"3.11 (25 Mar 2022) patched for use with FeynCalc, for \
documentation see the \"\>", "Text",
     StripOnInput->False], "\[InvisibleSpace]", 
    StyleBox[
     TagBox[
      ButtonBox["manual",
       BaseStyle->"Hyperlink",
       ButtonFunction:>SystemOpen[
         First[
          FileNames[{"*.pdf", "*.PDF"}, 
           FileNameJoin[{FeynCalc`$FeynArtsDirectory, "manual"}]]]],
       Evaluator->Automatic,
       Method->"Preemptive"],
      DisplayForm], "Text",
     StripOnInput->False], "\[InvisibleSpace]", 
    StyleBox["\<\" or visit \"\>", "Text",
     StripOnInput->False], "\[InvisibleSpace]", 
    StyleBox[
     TagBox[
      ButtonBox[
       RowBox[{"www", ".", "feynarts", ".", "de", "."}],
       BaseStyle->"Hyperlink",
       ButtonData:>{
         URL["http://www.feynarts.de/"], None},
       ButtonNote->"www.feynarts.de/"],
      DisplayForm], "Text",
     StripOnInput->False]}],
   SequenceForm[
    Style["FeynArts ", "Text", Bold], 
    Style[
    "3.11 (25 Mar 2022) patched for use with FeynCalc, for documentation see \
the ", "Text"], 
    Style[
     DisplayForm[
      ButtonBox[
      "manual", BaseStyle -> "Hyperlink", ButtonFunction :> SystemOpen[
         First[
          FileNames[{"*.pdf", "*.PDF"}, 
           FileNameJoin[{FeynCalc`$FeynArtsDirectory, "manual"}]]]], 
       Evaluator -> Automatic, Method -> "Preemptive"]], "Text"], 
    Style[" or visit ", "Text"], 
    Style[
     DisplayForm[
      ButtonBox["www.feynarts.de.", ButtonData :> {
         URL["http://www.feynarts.de/"], None}, BaseStyle -> "Hyperlink", 
       ButtonNote -> "www.feynarts.de/"]], "Text"]],
   Editable->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.9163938912882137`*^9, 3.916393985957651*^9, 
  3.916394127700233*^9, 3.9163942998413677`*^9, 3.9164564595004063`*^9, 
  3.916457539836578*^9, 3.916457616021718*^9, 3.916466432350707*^9, 
  3.916466693098659*^9, 3.916466815264049*^9, 3.9164673123147783`*^9, 
  3.91671772058195*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"814ce508-8533-4bc9-a9aa-ee0e09a06cbf"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynArts in your research, please cite\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.9163938912882137`*^9, 3.916393985957651*^9, 
  3.916394127700233*^9, 3.9163942998413677`*^9, 3.9164564595004063`*^9, 
  3.916457539836578*^9, 3.916457616021718*^9, 3.916466432350707*^9, 
  3.916466693098659*^9, 3.916466815264049*^9, 3.9164673123147783`*^9, 
  3.9167177205829487`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"a443e8d2-2275-4d49-becf-58e71845e012"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\" \[Bullet] T. Hahn, Comput. Phys. Commun., 140, 418-431, \
2001, arXiv:hep-ph/0012260\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.9163938912882137`*^9, 3.916393985957651*^9, 
  3.916394127700233*^9, 3.9163942998413677`*^9, 3.9164564595004063`*^9, 
  3.916457539836578*^9, 3.916457616021718*^9, 3.916466432350707*^9, 
  3.916466693098659*^9, 3.916466815264049*^9, 3.9164673123147783`*^9, 
  3.916717720583572*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"3480b97d-65cc-4343-a1c6-0941f861d1f2"],

Cell["Successfully patched FeynArts.", "Print",
 CellChangeTimes->{3.9163938912882137`*^9, 3.916393985957651*^9, 
  3.916394127700233*^9, 3.9163942998413677`*^9, 3.9164564595004063`*^9, 
  3.916457539836578*^9, 3.916457616021718*^9, 3.916466432350707*^9, 
  3.916466693098659*^9, 3.916466815264049*^9, 3.9164673123147783`*^9, 
  3.91671772062914*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"ed4c76d9-fe0c-4bd1-bbb7-37cc045e0812"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"AppendTo", "[", 
   RowBox[{"$Path", ",", 
    RowBox[{"FileNameJoin", "[", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"NotebookDirectory", "[", "]"}], ",", " ", "\"\<include\>\""}],
       "}"}], "]"}]}], "]"}], ";"}], "\n", 
 RowBox[{"<<", " ", "XSec`"}], "\n", 
 RowBox[{"<<", " ", "TreeLevel`"}], "\[IndentingNewLine]", 
 RowBox[{"<<", " ", "CalcTools`"}]}], "Code",
 CellChangeTimes->{
  3.91447635123787*^9, {3.914476624408684*^9, 3.9144766387867937`*^9}, 
   3.914478375354082*^9, 3.914485345161674*^9},
 CellLabel->"In[9]:=",ExpressionUUID->"cc6ff964-d048-45bc-be5a-ea7e51f04364"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "Index", "shdw", 
    "\"Symbol \\!\\(\\*FormBox[\\\"\\\\\\\"Index\\\\\\\"\\\", \
TraditionalForm]\\) appears in multiple contexts \
\\!\\(\\*FormBox[RowBox[{\\\"{\\\", \
RowBox[{\\\"\\\\\\\"FeynCalc`\\\\\\\"\\\", \\\",\\\", \\\"\\\\\\\"FeynArts`\\\
\\\\\"\\\"}], \\\"}\\\"}], TraditionalForm]\\); definitions in context \\!\\(\
\\*FormBox[\\\"\\\\\\\"FeynCalc`\\\\\\\"\\\", TraditionalForm]\\) may shadow \
or be shadowed by other definitions.\"", 2, 11, 1, 33591402197990905910, 
    "Local", "FeynCalc`Index"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.915591952834597*^9, 3.91559602177711*^9, 
  3.915868554843957*^9, 3.9161264611953993`*^9, 3.9162978413303213`*^9, 
  3.916298568985216*^9, 3.916393235818564*^9, 3.9163939031408663`*^9, 
  3.916393987127634*^9, 3.916394128590869*^9, 3.9163943004284363`*^9, 
  3.9164564605686617`*^9, 3.916457540731168*^9, 3.916457616881649*^9, 
  3.916466433426881*^9, 3.916466693648467*^9, 3.9164668164067373`*^9, 
  3.916467313254929*^9, 3.916717721591387*^9},
 CellLabel->
  "During evaluation of \
In[9]:=",ExpressionUUID->"5f06ac53-9627-4af9-bbda-36f325182ec3"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "IndexDelta", "shdw", 
    "\"Symbol \\!\\(\\*FormBox[\\\"\\\\\\\"IndexDelta\\\\\\\"\\\", \
TraditionalForm]\\) appears in multiple contexts \
\\!\\(\\*FormBox[RowBox[{\\\"{\\\", \
RowBox[{\\\"\\\\\\\"FeynCalc`\\\\\\\"\\\", \\\",\\\", \\\"\\\\\\\"FeynArts`\\\
\\\\\"\\\"}], \\\"}\\\"}], TraditionalForm]\\); definitions in context \\!\\(\
\\*FormBox[\\\"\\\\\\\"FeynCalc`\\\\\\\"\\\", TraditionalForm]\\) may shadow \
or be shadowed by other definitions.\"", 2, 11, 2, 33591402197990905910, 
    "Local", "FeynCalc`IndexDelta"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.915591952834597*^9, 3.91559602177711*^9, 
  3.915868554843957*^9, 3.9161264611953993`*^9, 3.9162978413303213`*^9, 
  3.916298568985216*^9, 3.916393235818564*^9, 3.9163939031408663`*^9, 
  3.916393987127634*^9, 3.916394128590869*^9, 3.9163943004284363`*^9, 
  3.9164564605686617`*^9, 3.916457540731168*^9, 3.916457616881649*^9, 
  3.916466433426881*^9, 3.916466693648467*^9, 3.9164668164067373`*^9, 
  3.916467313254929*^9, 3.916717721637459*^9},
 CellLabel->
  "During evaluation of \
In[9]:=",ExpressionUUID->"1f0baca7-7b18-49e6-927d-60f11c794c4b"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"ResultsDir", " ", "=", " ", 
   RowBox[{"FileNameJoin", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"NotebookDirectory", "[", "]"}], ",", " ", "\"\<results\>\"", 
      ",", " ", "\"\<LO\>\""}], "}"}], "]"}]}], ";"}]], "Code",
 CellChangeTimes->{{3.914478341430852*^9, 3.9144783876264887`*^9}, 
   3.914479041127266*^9, {3.9144825969413*^9, 3.914482605641466*^9}},
 CellLabel->"In[13]:=",ExpressionUUID->"aea92a0e-64bf-4b68-917a-d10ba669d15b"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Generate Feynman diagrams and amplitudes", "Section",
 CellChangeTimes->{
  3.9144764595953703`*^9, {3.914476650637313*^9, 3.914476657139914*^9}, {
   3.914476752115423*^9, 
   3.914476763301632*^9}},ExpressionUUID->"1c0417f8-1640-4d22-b557-\
b0b5f20add28"],

Cell["Some text", "Text",
 CellChangeTimes->{{3.9144766746379423`*^9, 3.914476675443219*^9}, {
  3.914476728707759*^9, 
  3.91447674796236*^9}},ExpressionUUID->"4186d4a3-bada-4c67-8571-\
a260e389a999"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"treeDiagrams", " ", "=", " ", 
   RowBox[{"InsertFields", "[", "\[IndentingNewLine]", "\t", 
    RowBox[{
     RowBox[{"CreateTopologies", "[", 
      RowBox[{"0", ",", " ", 
       RowBox[{"2", " ", "->", " ", "2"}], ",", " ", 
       RowBox[{"ExcludeTopologies", " ", "->", " ", 
        RowBox[{"{", 
         RowBox[{"Boxes", ",", "SelfEnergies", ",", "Tadpoles"}], "}"}]}]}], 
      "]"}], ",", " ", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"F", "[", 
         RowBox[{"3", ",", " ", 
          RowBox[{"{", 
           RowBox[{"1", ",", " ", "a"}], "}"}]}], "]"}], ",", " ", 
        RowBox[{"-", 
         RowBox[{"F", "[", 
          RowBox[{"3", ",", " ", 
           RowBox[{"{", 
            RowBox[{"1", ",", " ", "b"}], "}"}]}], "]"}]}]}], "}"}], " ", "->",
       " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"F", "[", 
         RowBox[{"11", ",", " ", 
          RowBox[{"{", "i", "}"}]}], "]"}], ",", " ", 
        RowBox[{"F", "[", 
         RowBox[{"11", ",", " ", 
          RowBox[{"{", "j", "}"}]}], "]"}]}], "}"}]}], ",", "\n", "\t", 
     RowBox[{"InsertionLevel", " ", "->", " ", 
      RowBox[{"{", "Classes", "}"}]}], ",", "\[IndentingNewLine]", "\t", 
     RowBox[{"Model", " ", "->", " ", "MSSMQCD"}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{"Restrictions", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{"NoLightFHCoupling", ",", "NoElectronHCoupling"}], "}"}]}], 
     ",", "\[IndentingNewLine]", "\t", 
     RowBox[{"ExcludeParticles", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"F", "[", "11", "]"}], ",", 
        RowBox[{"F", "[", "12", "]"}], ",", 
        RowBox[{"S", "[", "1", "]"}], ",", 
        RowBox[{"S", "[", "2", "]"}], ",", 
        RowBox[{"S", "[", "3", "]"}], ",", 
        RowBox[{"S", "[", "4", "]"}]}], "}"}]}]}], "\[IndentingNewLine]", 
    "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Paint", "[", 
   RowBox[{"treeDiagrams", ",", " ", 
    RowBox[{"Numbering", "->", "Simple"}], ",", " ", 
    RowBox[{"ColumnsXRows", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{"3", ",", " ", "1"}], "}"}]}], ",", " ", 
    RowBox[{"ImageSize", "->", 
     RowBox[{"{", 
      RowBox[{"512", ",", "256"}], "}"}]}]}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{
  3.914476809872698*^9, {3.914645528516932*^9, 3.914645548367996*^9}, {
   3.914648821230119*^9, 3.914648837653592*^9}, {3.914649133437988*^9, 
   3.914649152850586*^9}},
 CellLabel->"In[14]:=",ExpressionUUID->"cc16bb95-c627-4203-b579-2002f02b5044"],

Cell[BoxData[
 FormBox[
  GraphicsBox[{InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[{{0., 15.}, {6.000000000001819, 10.}}], 
         PolygonBox[{{3.4609327677584254`, 12.115889360201312`}, {
          2.2829934723757828`, 12.576822127959739`}, {2.7951409921073664`, 
          13.191399151637638`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {2.6125141805200567, 11.914057016624067}, 
          ImageScaled[{1, 1}]], 
         LineBox[{{0., 5.000000000001819}, {6.000000000001819, 
          10.000000000001819`}}], 
         PolygonBox[{{2.5390672322415746`, 7.1158893602013125`}, {
          3.7170065276242172`, 7.576822127959737}, {3.2048590078926336`, 
          8.191399151637638}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {3.387485819479944, 6.914057016624067}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{20.00000000000182, 15.000000000001819`}, {14., 
          9.999999999998181}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {16.772560280436178, 12.893887663476587}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{20.00000000000182, 5.000000000001819}, {14., 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {17.227439719563822, 7.8938876634765895}, 
          ImageScaled[{0, 0}]], LineBox[CompressedData["
1:eJw9lH9MlVUYx89Fu8YYf7QwEC6X93IOXn7Gj1Nmmfi4NhAY44JNLkHjh3IA
WUFEszBBRzHbItEh8totZxGhuWRADDbbGL+TE+KFFaClMkVNGUTOgtm9Hfrj
Odu7d5+dve85z/N8v19LQVlGoQchJF09a28XWVuR8P+LMFh+7kLTZRkB5Olj
K8mRDB6OHf/spK44L5eYdjNouFFjyheK7b75rWUMns9y5UbxNfZyFFQzaCkp
yFt1hwOBwo3Vhxh4nPL1HpWKi98b8HmLQVrpIjTpit8f741KY7BvcX5kn1C8
65irysogI7BOcK64oar59iqFILPzloEotv2QvDBO4e8Ng8YJGQZk6cfo9eco
nC/PaP9CV6zV9k/XUwh5PXNsv1B8uPnU8GEK2sGHmS9xxTfn/UtrKXRaefE6
ojj048qKkxQmZydNV2QokH82zJ/topA1K8+c1hXbk+zm3yh0CLtZCMW2e3nz
ngxWa0f7Y7nie4bz5S8yWH8n4uK/bqvqX7w1+w0G6QslKz9JxaMnyjZWMpjw
TTjXpCvuc0a+U8OgNevdnr1CcRsfNh5kcM3c6BPL1/bNU/lFDPY86fvK5d6s
zqv/fTGBQUq/6zUpFe/yPNoZyKDDuTyj64rtfS1DSxQcUSEpRUIxubbQOUSh
u+Lluhe44rbGnVfPUnh8pLvWQBTHXA+r/4RCGolJGJchQI4aD92toTDbc3v6
tK647eeKZ+oolPCg1CKh2FZwP/FzCgNHnN2cK97a+NGDSxRuPWUMI0TxUtd3
k/MUrBdaOqRkap4z1Pksg3C/6BxdV9wwYsiMZ+DY1rZZCMVL9otaPoPpiBte
nCuOebxz7gBD3RHtlRNjqj+hU9ojKSnuFw5mqnopfv/r3YmvhaD4/5nd2amc
UzxfW135xe0OxvvFV0clSRmM92+WNzua9WCsz5oYYC0UwVh/h/tKbywPxv54
VSd96HJbsH8p9cMfjEkL9rfQOdvVrFuw/2lR3qpeC86ne7vhEucWnN/b3jve
NBALzvf+H6UPxqWG8w9q/zTRoWuoj0d/9u4pERrqp9LUZNzCNdRXH5uyeRAN
9dfkVVbl0INQn1/GpQ1wHoT6taWIvsvSjPrOSbYP5wsz6t/RrkevuAPRH/2e
VttxPRD905OZXhLOA9Ff35uzzwxKE/rPZ+nAcq4woT8HB7JffeIOQP/mDP0V
p+sB6O+tlrjyLTwA/b83zFI9Kf0xH1xXJ+6UCX/Mj57IbTu8iD/mS2vqOvhG
34T5MwdkZDvfhPkUXnx9bkr6YX6Znd869ws/zDejy62WL+rwPw898pg=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {10., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["1",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->15.63927272727273],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            15.63927272727273]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdf/ef.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdf/ef.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{2.5011104298755527`*^-12, 15.000000000003638`}, {
          10.000000000002501`, 14.000000000003638`}}], 
         PolygonBox[{{5.597022314125994, 14.440297768587401`}, {
          4.363176198265607, 14.161687355328603`}, {4.442779173482406, 
          14.957717107496595`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {4.8457692355174515, 13.562492355174516}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{2.0463630789890885`*^-12, 5.000000000003638}, {
          10.000000000002046`, 6.000000000003638}}], 
         PolygonBox[{{4.402977685874006, 5.440297768587401}, {
          5.636823801734393, 5.161687355328604}, {5.557220826517594, 
          5.9577171074965944`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {5.1542307644825485, 4.562492355174517}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.99999999999818, 14.999999999996362`}, {
          10.000000000002274`, 13.999999999996362`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {14.870645165272702, 15.188748347272984}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.999999999997726`, 4.999999999996362}, {
          9.999999999997726, 5.999999999996362}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {15.129354834727298, 6.188748347272986}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 13.999999999996009`}, {10., 5.99999999999511}}]}, 
         PolygonBox[{{10., 9.4}, {9.6, 10.6}, {10.4, 10.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {9.0548, 10.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {PointSize[0.04], PointBox[{10., 14.}], PointBox[{10., 6.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["2",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->15.63927272727273],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            15.63927272727273]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cedf/ef.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cedf/ef.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{2.5011104298755527`*^-12, 15.000000000003638`}, {
          10.000000000002501`, 14.000000000003638`}}], 
         PolygonBox[{{5.597022314125994, 14.440297768587401`}, {
          4.363176198265607, 14.161687355328603`}, {4.442779173482406, 
          14.957717107496595`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {4.8457692355174515, 13.562492355174516}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{2.0463630789890885`*^-12, 5.000000000003638}, {
          10.000000000002046`, 6.000000000003638}}], 
         PolygonBox[{{4.402977685874006, 5.440297768587401}, {
          5.636823801734393, 5.161687355328604}, {5.557220826517594, 
          5.9577171074965944`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {5.1542307644825485, 4.562492355174517}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.99999999999818, 14.999999999996362`}, {
          9.999999999996362, 5.999999999994543}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {17.103922156081133, 12.89552477594454}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{20.00000000000182, 4.999999999998181}, {10., 
          13.999999999998181`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {17.39466828349082, 7.894483248699895}, 
          ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 13.999999999996009`}, {10., 5.99999999999511}}]}, 
         PolygonBox[{{10., 9.4}, {9.6, 10.6}, {10.4, 10.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {9.154900000000001, 10.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {PointSize[0.04], PointBox[{10., 14.}], PointBox[{10., 6.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["3",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->15.63927272727273],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            15.63927272727273]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cfde/ef.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cfde/ef.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 0}, {0, 0}, {22, 22}], InsetBox[
     TagBox[
      StyleBox[
       TagBox["u",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->23.458909090909092`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       23.458909090909092`]& ], {24., 25.960000000000004}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox["u",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->23.458909090909092`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       23.458909090909092`]& ], {28.5, 25.960000000000004}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox["\[RightArrow]",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->23.458909090909092`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       23.458909090909092`]& ], {33., 25.960000000000004}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox[
        SubsuperscriptBox[
         OverscriptBox["\[Chi]", "~"], "i", "0"],
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->23.458909090909092`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       23.458909090909092`]& ], {37.5, 25.960000000000004}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox[
        SubsuperscriptBox[
         OverscriptBox["\[Chi]", "~"], "j", "0"],
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->23.458909090909092`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       23.458909090909092`]& ], {42., 25.960000000000004}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]]},
   AspectRatio->0.43333333333333335`,
   ImageSize->{512, 256},
   PlotRange->{{0, 66}, {0, 28.6}}], TraditionalForm]], "Print",
 CellChangeTimes->{3.916393903427911*^9, 3.916393987502221*^9, 
  3.916394128870317*^9, 3.9163943007063103`*^9, 3.916456460844695*^9, 
  3.916457541005512*^9, 3.916457617203252*^9, 3.916466433715865*^9, 
  3.916466693935822*^9, 3.916466816781201*^9, 3.9164673135456142`*^9, 
  3.9167177219815273`*^9},
 CellLabel->
  "During evaluation of \
In[14]:=",ExpressionUUID->"b85fc58e-f326-41fa-ac1e-bf750bd8057c"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"M0", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"FCFAConvert", "[", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"CreateFeynAmp", "[", "treeDiagrams", "]"}], ",", " ", 
      "\[IndentingNewLine]", "\t", 
      RowBox[{"IncomingMomenta", " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{"ki", ",", "kj"}], "}"}]}], ",", "\n", "\t", 
      RowBox[{"OutgoingMomenta", " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{"pi", ",", "pj"}], "}"}]}], ",", "\[IndentingNewLine]", "\t", 
      
      RowBox[{"ChangeDimension", " ", "->", " ", "D"}], ",", 
      "\[IndentingNewLine]", "\t", 
      RowBox[{"UndoChiralSplittings", " ", "->", " ", "True"}], ",", 
      "\[IndentingNewLine]", "\t", 
      RowBox[{"List", " ", "->", " ", "True"}], ",", "\[IndentingNewLine]", 
      "\t", 
      RowBox[{"SMP", " ", "->", " ", "True"}], ",", "\[IndentingNewLine]", 
      "\t", 
      RowBox[{"DropSumOver", " ", "->", " ", "True"}], ",", 
      "\[IndentingNewLine]", "\t", 
      RowBox[{"LorentzIndexNames", " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{"\[Mu]", ",", "\[Nu]"}], "}"}]}], ",", "\n", "\t", 
      RowBox[{"FinalSubstitutions", " ", "->", " ", "AmpSimplifyRules"}]}], 
     "\[IndentingNewLine]", "]"}], "/.", 
    RowBox[{"{", 
     RowBox[{"IndexDelta", " ", "->", " ", "FeynCalc`IndexDelta"}], "}"}]}]}],
   ";"}]], "Code",
 CellChangeTimes->{{3.914476857258984*^9, 3.9144768622636633`*^9}, 
   3.9144777990256243`*^9, 3.914478757914375*^9, {3.914482167437733*^9, 
   3.914482189235042*^9}, {3.914483193508616*^9, 3.914483216979*^9}, {
   3.915036452854926*^9, 3.915036500647919*^9}},
 CellLabel->"In[16]:=",ExpressionUUID->"f495b4e2-7d04-4f0e-81e0-efbc9664e28e"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"tempPrefactor", " ", "=", " ", 
    RowBox[{
     SuperscriptBox[
      RowBox[{"SMP", "[", "\"\<g_W\>\"", "]"}], "2"], 
     RowBox[{"FeynCalc`IndexDelta", "[", 
      RowBox[{"a", ",", "b"}], "]"}]}]}], ";"}], "\n"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"M0", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{"tempPrefactor", "*", 
    RowBox[{"DiracSimplify", "/@", 
     RowBox[{"(", 
      RowBox[{"Convert2QZCharges", "/@", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"M0", "[", "0", "]"}], "/", "tempPrefactor"}], ")"}]}], 
      ")"}]}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"M0", "[", "2", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"M0", "[", "1", "]"}], "/.", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{
        RowBox[{"Opp", "[", 
         RowBox[{"i_", ",", "j_", ",", "L"}], "]"}], "\[Conjugate]"}], "->", 
       RowBox[{"-", 
        RowBox[{"Opp", "[", 
         RowBox[{"i", ",", "j", ",", "R"}], "]"}]}]}], "}"}]}], "//.", 
    "SuperChargeRules"}]}], ";"}], "\n", 
 RowBox[{"Clear", "[", "tempPrefactor", "]"}]}], "Code",
 CellChangeTimes->{{3.914477655181172*^9, 3.914477668233265*^9}, {
  3.914478047387411*^9, 3.914478051457137*^9}, {3.914478106436209*^9, 
  3.914478108087481*^9}, {3.914479110257681*^9, 3.914479117748647*^9}, {
  3.914482185163767*^9, 3.914482185165958*^9}, {3.9144832169807587`*^9, 
  3.914483216982397*^9}},
 CellLabel->"In[17]:=",ExpressionUUID->"10140aeb-b31b-4b2d-b756-899697c815c6"],

Cell[TextData[{
 "Divide the three amplitudes into separate channels and convert to ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["Q", "A", "XY"], TraditionalForm]],ExpressionUUID->
  "9b1c977b-6bfd-4d16-8105-27c0221bb619"],
 " and ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["Z", "s", "X"], TraditionalForm]],ExpressionUUID->
  "5f90724c-a708-4299-a72d-b2165d530ef4"],
 " supercharges."
}], "Text",
 CellChangeTimes->{{3.9144780588630667`*^9, 3.914478087264818*^9}, {
  3.914478127213645*^9, 3.914478157629327*^9}, {3.914483451755382*^9, 
  3.914483451755413*^9}},ExpressionUUID->"41d39d94-ff21-4cc2-bd87-\
c1bdcf6657c6"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"Ms", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"Part", "[", 
        RowBox[{
         RowBox[{"M0", "[", "0", "]"}], ",", "1"}], "]"}], "/.", 
       "ZSimplifyRules"}], "//", "FeynAmpDenominatorExplicit"}], ")"}], "/.", 
    
    RowBox[{
     SuperscriptBox[
      RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], "2"], "->", "DZ"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Mt", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"FeynAmpDenominatorExplicit", "[", 
      RowBox[{
       RowBox[{"Part", "[", 
        RowBox[{
         RowBox[{"M0", "[", "0", "]"}], ",", "2"}], "]"}], "//", 
       "Convert2QZCharges"}], "]"}], "/.", 
     RowBox[{
      SuperscriptBox[
       RowBox[{"MSf", "[", 
        RowBox[{"a_", ",", "t_", ",", "g_"}], "]"}], "2"], "->", 
      RowBox[{"DSf", "[", 
       RowBox[{"a", ",", "t", ",", "g"}], "]"}]}]}], "/.", 
    RowBox[{
     RowBox[{"Index", "[", 
      RowBox[{"Sfermion", ",", "5"}], "]"}], "->", "A"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"Mu", "[", "0", "]"}], " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"FeynAmpDenominatorExplicit", "[", 
       RowBox[{
        RowBox[{"Part", "[", 
         RowBox[{
          RowBox[{"M0", "[", "0", "]"}], ",", "3"}], "]"}], "//", 
        "Convert2QZCharges"}], "]"}], "/.", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"MSf", "[", 
         RowBox[{"a_", ",", "t_", ",", "g_"}], "]"}], "2"], "->", 
       RowBox[{"DSf", "[", 
        RowBox[{"a", ",", "t", ",", "g"}], "]"}]}]}], "/.", 
     RowBox[{
      RowBox[{"Index", "[", 
       RowBox[{"Sfermion", ",", "5"}], "]"}], "->", "A"}]}]}], ";"}], 
  "\n"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MsC", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"ConjugateAmplitude", "[", 
     RowBox[{"Ms", "[", "0", "]"}], "]"}], "/.", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"A", "->", "B"}], ",", 
      RowBox[{"\[Mu]", "->", "\[Rho]"}], ",", 
      RowBox[{"\[Nu]", "->", "\[Sigma]"}]}], "}"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"MtC", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"ConjugateAmplitude", "[", 
     RowBox[{"Mt", "[", "0", "]"}], "]"}], "/.", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"A", "->", "B"}], ",", 
      RowBox[{"\[Mu]", "->", "\[Rho]"}], ",", 
      RowBox[{"\[Nu]", "->", "\[Sigma]"}]}], "}"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"MuC", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"ConjugateAmplitude", "[", 
     RowBox[{"Mu", "[", "0", "]"}], "]"}], "/.", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"A", "->", "B"}], ",", 
      RowBox[{"\[Mu]", "->", "\[Rho]"}], ",", 
      RowBox[{"\[Nu]", "->", "\[Sigma]"}]}], "}"}]}]}], ";"}]}], "Code",
 CellChangeTimes->{
  3.91447805502232*^9, {3.914478171507217*^9, 3.914478171969941*^9}, {
   3.9144821851674347`*^9, 3.9144822643969603`*^9}, {3.914483216983844*^9, 
   3.9144832169897623`*^9}},
 CellLabel->"In[21]:=",ExpressionUUID->"36440b80-fc3f-4d7b-8c26-ddfba8b0a672"],

Cell[TextData[{
 "Save results in \[OpenCurlyDoubleQuote]results/LO/amps.m\
\[CloseCurlyDoubleQuote]\nThey can be loaded with\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"LOAmps", "=", 
     RowBox[{"Import", "[", 
      RowBox[{"FileNameJoin", "[", 
       RowBox[{"{", 
        RowBox[{"ResultsDir", ",", "\"\<amps.m\>\""}], "}"}], "]"}], "]"}]}], 
    ";"}], TraditionalForm]], "Code",ExpressionUUID->
  "2623f229-4fc4-4038-b5ba-e117a5e7e11c"],
 "\nwhich creates a list containing the s, t, u amplitudes followed by their \
conjugates in the same order."
}], "Text",
 CellChangeTimes->{{3.914478398072308*^9, 3.914478419043185*^9}, {
   3.914478508186966*^9, 3.914478531000873*^9}, {3.914481604301372*^9, 
   3.914481610959323*^9}, {3.914481672220283*^9, 3.914481773602987*^9}, {
   3.914481835708559*^9, 3.914481870664633*^9}, {3.914482611906819*^9, 
   3.914482626476823*^9}, {3.914483209801565*^9, 3.914483216993352*^9}, {
   3.9144848011916447`*^9, 3.914484835467655*^9}, {3.914484866608985*^9, 
   3.914484891715801*^9}, {3.914498943451861*^9, 3.914498949188916*^9}, 
   3.915341423254746*^9},ExpressionUUID->"ad4451d8-dd8b-43c5-875a-\
e647cd0c3590"],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"FileNameJoin", "[", 
     RowBox[{"{", 
      RowBox[{"ResultsDir", ",", " ", "\"\<amps.m\>\""}], "}"}], "]"}], ",", 
    " ", 
    RowBox[{"ToString", "/@", 
     RowBox[{"FullForm", "/@", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Ms", "[", "0", "]"}], ",", 
        RowBox[{"Mt", "[", "0", "]"}], ",", 
        RowBox[{"Mu", "[", "0", "]"}], ",", 
        RowBox[{"MsC", "[", "0", "]"}], ",", 
        RowBox[{"MtC", "[", "0", "]"}], ",", 
        RowBox[{"MuC", "[", "0", "]"}]}], "}"}]}]}]}], "]"}], ";"}]], "Code",
 CellChangeTimes->{{3.914478421137574*^9, 3.914478500267264*^9}, 
   3.914478799780308*^9, {3.91447888739918*^9, 3.914478923196476*^9}, 
   3.914480226844214*^9, {3.914480273151475*^9, 3.914480274915896*^9}, {
   3.9144803750220613`*^9, 3.914480375710938*^9}, {3.914480689757994*^9, 
   3.91448070478884*^9}, {3.914480992343362*^9, 3.914480994044126*^9}, {
   3.914481292906804*^9, 3.914481298323376*^9}, {3.914481453745319*^9, 
   3.914481454357388*^9}, {3.914481501534457*^9, 3.914481502950151*^9}, {
   3.914481564192633*^9, 3.914481565159518*^9}, 3.9144818864608517`*^9, {
   3.91448220250382*^9, 3.9144822643976297`*^9}, {3.914482633458119*^9, 
   3.914482634800619*^9}, {3.914498911807502*^9, 3.914498912760725*^9}},
 CellLabel->"In[27]:=",ExpressionUUID->"f02d3fee-ced5-4933-85ed-21304906c288"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Square the amplitudes", "Section",
 CellChangeTimes->{{3.914478187386982*^9, 
  3.914478200695622*^9}},ExpressionUUID->"db7b6bd3-aba9-4133-abee-\
dd24733cb04e"],

Cell["Some more text", "Text",
 CellChangeTimes->{{3.914478218898871*^9, 
  3.914478222015767*^9}},ExpressionUUID->"71d22fcc-faba-4d9d-8e9e-\
15214f0a349e"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"Iss", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{"SquareAmplitudes", "[", 
    RowBox[{
     RowBox[{"Ms", "[", "0", "]"}], ",", 
     RowBox[{"MsC", "[", "0", "]"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Itt", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{"SquareAmplitudes", "[", 
    RowBox[{
     RowBox[{"Mt", "[", "0", "]"}], ",", 
     RowBox[{"MtC", "[", "0", "]"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Iuu", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{"SquareAmplitudes", "[", 
    RowBox[{
     RowBox[{"Mu", "[", "0", "]"}], ",", 
     RowBox[{"MuC", "[", "0", "]"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Ist", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"SquareAmplitudes", "[", 
       RowBox[{
        RowBox[{"Ms", "[", "0", "]"}], ",", 
        RowBox[{
         RowBox[{"MtC", "[", "0", "]"}], "/.", 
         RowBox[{"B", "->", "A"}]}]}], "]"}], "+", 
      RowBox[{"SquareAmplitudes", "[", 
       RowBox[{
        RowBox[{"Mt", "[", "0", "]"}], ",", 
        RowBox[{"MsC", "[", "0", "]"}]}], "]"}]}], ")"}], "/", "2"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Isu", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"SquareAmplitudes", "[", 
       RowBox[{
        RowBox[{"Ms", "[", "0", "]"}], ",", 
        RowBox[{
         RowBox[{"MuC", "[", "0", "]"}], "/.", 
         RowBox[{"B", "->", "A"}]}]}], "]"}], "+", 
      RowBox[{"SquareAmplitudes", "[", 
       RowBox[{
        RowBox[{"Mu", "[", "0", "]"}], ",", 
        RowBox[{"MsC", "[", "0", "]"}]}], "]"}]}], ")"}], "/", "2"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Itu", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"SquareAmplitudes", "[", 
       RowBox[{
        RowBox[{"Mt", "[", "0", "]"}], ",", 
        RowBox[{"MuC", "[", "0", "]"}]}], "]"}], "+", 
      RowBox[{"SquareAmplitudes", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"Mu", "[", "0", "]"}], "/.", 
         RowBox[{"A", "->", "B"}]}], ",", 
        RowBox[{
         RowBox[{"MtC", "[", "0", "]"}], "/.", 
         RowBox[{"B", "->", "A"}]}]}], "]"}]}], ")"}], "/", "2"}]}], 
  ";"}]}], "Code",
 CellChangeTimes->{{3.914478223959435*^9, 3.91447823348039*^9}, {
  3.914482202505398*^9, 3.914482310106049*^9}, {3.914483216995234*^9, 
  3.914483216999861*^9}, {3.914484848854403*^9, 3.914484866621359*^9}},
 CellLabel->"In[28]:=",ExpressionUUID->"4fd47e62-1465-4ae8-a527-695c73775065"],

Cell[TextData[{
 "Convert the dimension ",
 StyleBox["D",
  FontSlant->"Italic"],
 "\[Rule]4."
}], "Text",
 CellChangeTimes->{{3.914478243360792*^9, 
  3.914478288042018*^9}},ExpressionUUID->"eed70a53-a9f9-4d6e-8657-\
7c9bb7fd69d5"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"Iss", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{"FixDimension", "[", 
    RowBox[{
     RowBox[{"Iss", "[", "0", "]"}], "/.", "Convert2Den"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Itt", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{"FixDimension", "[", 
    RowBox[{
     RowBox[{"Itt", "[", "0", "]"}], "/.", "Convert2Den"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Iuu", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{"FixDimension", "[", 
    RowBox[{
     RowBox[{"Iuu", "[", "0", "]"}], "/.", "Convert2Den"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Ist", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{"FixDimension", "[", 
    RowBox[{
     RowBox[{"Ist", "[", "0", "]"}], "/.", "Convert2Den"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Isu", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{"FixDimension", "[", 
    RowBox[{
     RowBox[{"Isu", "[", "0", "]"}], "/.", "Convert2Den"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Itu", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{"FixDimension", "[", 
    RowBox[{
     RowBox[{"Itu", "[", "0", "]"}], "/.", "Convert2Den"}], "]"}]}], 
  ";"}]}], "Code",
 CellChangeTimes->{{3.914478554149143*^9, 3.9144785545566273`*^9}, {
  3.914482275319641*^9, 3.914482310107552*^9}, {3.914483217000917*^9, 
  3.914483217003812*^9}, {3.914484848859966*^9, 3.914484866627086*^9}},
 CellLabel->"In[34]:=",ExpressionUUID->"295fa500-9c88-4314-9ced-4708b80f6228"],

Cell["\<\
Draw out common prefactor between the squared amplitudes and factor them in \
terms of denominators and basic kinematic terms.\
\>", "Text",
 CellChangeTimes->{{3.9144785655914803`*^9, 3.914478605291967*^9}, {
  3.914478657124486*^9, 
  3.914478664968121*^9}},ExpressionUUID->"a16dff32-b1de-40fa-b9f0-\
571a2c1c4ea9"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"CommonPrefactor", " ", "=", " ", 
   RowBox[{"4", " ", 
    SuperscriptBox[
     RowBox[{"FeynCalc`IndexDelta", "[", 
      RowBox[{"a", ",", "b"}], "]"}], "2"], " ", 
    SuperscriptBox[
     RowBox[{"SMP", "[", "\"\<g_W\>\"", "]"}], "4"]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Iss", "[", "2", "]"}], " ", "=", " ", 
   RowBox[{"CommonPrefactor", " ", 
    RowBox[{"FactorDenominators", "[", 
     RowBox[{
      RowBox[{"Iss", "[", "1", "]"}], "/", "CommonPrefactor"}], "]"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Itt", "[", "2", "]"}], " ", "=", " ", 
   RowBox[{"CommonPrefactor", " ", 
    RowBox[{"FactorDenominators", "[", 
     RowBox[{
      RowBox[{"Itt", "[", "1", "]"}], "/", "CommonPrefactor"}], "]"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Iuu", "[", "2", "]"}], " ", "=", " ", 
   RowBox[{"CommonPrefactor", " ", 
    RowBox[{"FactorDenominators", "[", 
     RowBox[{
      RowBox[{"Iuu", "[", "1", "]"}], "/", "CommonPrefactor"}], "]"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Ist", "[", "2", "]"}], " ", "=", " ", 
   RowBox[{"CommonPrefactor", " ", 
    RowBox[{"FactorDenominators", "[", 
     RowBox[{
      RowBox[{"Ist", "[", "1", "]"}], "/", "CommonPrefactor"}], "]"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Isu", "[", "2", "]"}], " ", "=", " ", 
   RowBox[{"CommonPrefactor", " ", 
    RowBox[{"FactorDenominators", "[", 
     RowBox[{
      RowBox[{"Isu", "[", "1", "]"}], "/", "CommonPrefactor"}], "]"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Itu", "[", "2", "]"}], " ", "=", " ", 
   RowBox[{"CommonPrefactor", " ", 
    RowBox[{"FactorDenominators", "[", 
     RowBox[{
      RowBox[{"Itu", "[", "1", "]"}], "/", "CommonPrefactor"}], "]"}]}]}], 
  ";"}]}], "Code",
 CellChangeTimes->{{3.9144786687802477`*^9, 3.914478712035016*^9}, {
  3.914482275322111*^9, 3.914482310109229*^9}, {3.914483209804621*^9, 
  3.9144832170095673`*^9}, {3.914484848864836*^9, 3.914484866633925*^9}},
 CellLabel->"In[40]:=",ExpressionUUID->"49386eef-cb3a-49d4-8239-c6b69a372a74"],

Cell[TextData[{
 "We can convert these to  ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["Q", "A", "XY"], TraditionalForm]],ExpressionUUID->
  "5515770d-015d-4acc-90f7-8d7fc2fe81d6"],
 " and ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["Z", "s", "X"], TraditionalForm]],ExpressionUUID->
  "f6f02a03-6bbd-40e7-8612-36ed75924c52"],
 " supercharges, and write them out in a nice form using this."
}], "Text",
 CellChangeTimes->{{3.914483303969638*^9, 3.914483370770528*^9}, {
  3.914483451756686*^9, 
  3.914483451756733*^9}},ExpressionUUID->"0e0afdb3-dece-41cb-a644-\
0edb6fe016f4"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"CommonPrefactor", " ", 
  RowBox[{"Collect", "[", "\[IndentingNewLine]", "\t", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"Expand", "[", 
       RowBox[{
        RowBox[{"Iss", "[", "2", "]"}], "/", "CommonPrefactor"}], "]"}], "/.", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"Opp", "[", 
           RowBox[{"args__", ",", "L"}], "]"}], "\[Conjugate]"}], "->", 
         RowBox[{"-", 
          RowBox[{"Opp", "[", 
           RowBox[{"args", ",", "R"}], "]"}]}]}], ",", 
        RowBox[{
         RowBox[{
          RowBox[{"Opp", "[", 
           RowBox[{"args__", ",", "R"}], "]"}], "\[Conjugate]"}], "->", 
         RowBox[{"-", 
          RowBox[{"Opp", "[", 
           RowBox[{"args", ",", "L"}], "]"}]}]}]}], "}"}]}], "//.", 
     "SuperChargeRules"}], ",", "\[IndentingNewLine]", "\t", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"s", "*", 
       RowBox[{"MNeu", "[", "i", "]"}], "*", 
       RowBox[{"MNeu", "[", "j", "]"}]}], ",", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"t", "-", 
         SuperscriptBox[
          RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], 
       RowBox[{"(", 
        RowBox[{"t", "-", 
         SuperscriptBox[
          RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], ",", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"u", "-", 
         SuperscriptBox[
          RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], 
       RowBox[{"(", 
        RowBox[{"u", "-", 
         SuperscriptBox[
          RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], ",", 
      RowBox[{
       RowBox[{"t", "*", "u"}], "-", 
       RowBox[{
        SuperscriptBox[
         RowBox[{"MNeu", "[", "i", "]"}], "2"], "*", 
        SuperscriptBox[
         RowBox[{"MNeu", "[", "j", "]"}], "2"]}]}]}], "}"}], ",", 
    "\[IndentingNewLine]", "\t", "FullSimplify"}], "\[IndentingNewLine]", 
   "]"}]}]], "Code",
 CellChangeTimes->{
  3.914478729366748*^9, {3.914481914567452*^9, 3.914481925745757*^9}, 
   3.914482275323966*^9, {3.914483185215821*^9, 3.9144831870014353`*^9}},
 CellLabel->"In[47]:=",ExpressionUUID->"3f2bc887-6a25-44af-844f-f468f45193db"],

Cell[BoxData[
 FormBox[
  RowBox[{"4", " ", 
   SubsuperscriptBox["g", "W", "4"], " ", 
   SubsuperscriptBox["\[Delta]", 
    RowBox[{"a", "b"}], "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      FractionBox["1", 
       RowBox[{"s", "-", 
        SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
      FractionBox["1", 
       RowBox[{"s", "-", 
        TemplateBox[{
          RowBox[{"(", 
            SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
         "Conjugate"]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", "s", "L"]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", "s", "R"]},
          "Abs"], "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             RowBox[{"2", " ", 
              SubsuperscriptBox["m", "j", "2"]}]}], "+", "t", "+", "u"}], 
           ")"}]}]}], "-", 
        RowBox[{
         SubsuperscriptBox["m", "j", "2"], " ", 
         RowBox[{"(", 
          RowBox[{"t", "+", "u"}], ")"}]}], "+", 
        SuperscriptBox["t", "2"], "+", 
        SuperscriptBox["u", "2"]}], ")"}]}], "-", 
     RowBox[{"s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      FractionBox["1", 
       RowBox[{"s", "-", 
        SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
      FractionBox["1", 
       RowBox[{"s", "-", 
        TemplateBox[{
          RowBox[{"(", 
            SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
         "Conjugate"]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"], ")"}], "2"], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], ")"}], "2"], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          SubsuperscriptBox["Z", "s", "L"], ")"}], "2"], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}]}]}], ")"}]}],
   TraditionalForm]], "Output",
 CellChangeTimes->{3.915591960426863*^9, 3.915596028510016*^9, 
  3.915868569365244*^9, 3.916126476387023*^9, 3.916297856343397*^9, 
  3.916298584045941*^9, 3.916393236093914*^9, 3.9163939078718023`*^9, 
  3.916393991553113*^9, 3.9163941330851097`*^9, 3.916394304795464*^9, 
  3.916456465064659*^9, 3.9164575452500668`*^9, 3.916457621586882*^9, 
  3.9164664379402113`*^9, 3.9164666980518923`*^9, 3.9164668208811827`*^9, 
  3.9164673177964687`*^9, 3.916717726103014*^9},
 CellLabel->"Out[47]=",ExpressionUUID->"96a48308-623c-4be5-9500-13c59083b682"]
}, Open  ]],

Cell["Add all squared amplitudes, omitting the common prefactor.", "Text",
 CellChangeTimes->{{3.914482148104836*^9, 3.914482151982357*^9}, {
  3.914482366922482*^9, 
  3.914482390261365*^9}},ExpressionUUID->"4fd79281-2702-49b2-96b8-\
cbb432fb13de"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"Itot", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"Iss", "[", "2", "]"}], "+", 
      RowBox[{"Itt", "[", "2", "]"}], "+", 
      RowBox[{"Iuu", "[", "2", "]"}], "+", 
      RowBox[{"2", 
       RowBox[{"Ist", "[", "2", "]"}]}], "+", 
      RowBox[{"2", 
       RowBox[{"Isu", "[", "2", "]"}]}], "+", 
      RowBox[{"2", 
       RowBox[{"Itu", "[", "2", "]"}]}]}], ")"}], "/", "CommonPrefactor"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Itot", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{"Collect", "[", "\[IndentingNewLine]", "\t", 
    RowBox[{
     RowBox[{"Itot", "[", "0", "]"}], ",", "\[IndentingNewLine]", "\t", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"s", "*", 
        RowBox[{"MNeu", "[", "i", "]"}], "*", 
        RowBox[{"MNeu", "[", "j", "]"}]}], ",", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"t", "-", 
          SuperscriptBox[
           RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], 
        RowBox[{"(", 
         RowBox[{"t", "-", 
          SuperscriptBox[
           RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], ",", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"u", "-", 
          SuperscriptBox[
           RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], 
        RowBox[{"(", 
         RowBox[{"u", "-", 
          SuperscriptBox[
           RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], ",", 
       RowBox[{
        RowBox[{"t", "*", "u"}], "-", 
        RowBox[{
         SuperscriptBox[
          RowBox[{"MNeu", "[", "i", "]"}], "2"], "*", 
         SuperscriptBox[
          RowBox[{"MNeu", "[", "j", "]"}], "2"]}]}]}], "}"}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"Collect", "[", "\[IndentingNewLine]", "\t\t", 
        RowBox[{"#1", ",", "\[IndentingNewLine]", "\t\t", 
         RowBox[{
          RowBox[{"Den", "[", "args1__", "]"}], 
          RowBox[{"Den", "[", "args2__", "]"}]}], ",", "\[IndentingNewLine]", 
         "\t\t", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"FullSimplify", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"Expand", "[", "#1", "]"}], "/.", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{
                  RowBox[{"Opp", "[", 
                   RowBox[{"args__", ",", "L"}], "]"}], "\[Conjugate]"}], "->", 
                 RowBox[{"-", 
                  RowBox[{"Opp", "[", 
                   RowBox[{"args", ",", "R"}], "]"}]}]}], ",", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Opp", "[", 
                   RowBox[{"args__", ",", "R"}], "]"}], "\[Conjugate]"}], "->", 
                 RowBox[{"-", 
                  RowBox[{"Opp", "[", 
                   RowBox[{"args", ",", "L"}], "]"}]}]}]}], "}"}]}], "//.", 
             "SuperChargeRules"}], "]"}], "&"}], ")"}]}], 
        "\[IndentingNewLine]", "\t", "]"}], "&"}], ")"}]}], 
    "\[IndentingNewLine]", "]"}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.914482400793735*^9, 3.914482456226188*^9}, {
  3.914483159715218*^9, 3.91448317182053*^9}, {3.914483217014831*^9, 
  3.91448321701833*^9}, {3.914484848873647*^9, 3.91448486664227*^9}},
 CellLabel->"In[48]:=",ExpressionUUID->"213691d6-4bdd-4d4f-8a41-03c7acde6dac"],

Cell["\<\
Show that the total amplitude can be written as effective charges in front of \
four different kinematic terms.\
\>", "Text",
 CellChangeTimes->{{3.914482461846875*^9, 
  3.9144824896031494`*^9}},ExpressionUUID->"9857bd9e-f705-4970-8451-\
41d0c5407f3f"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", "\[IndentingNewLine]", "\t", 
  RowBox[{
   RowBox[{"Itot", "[", "1", "]"}], ",", "\[IndentingNewLine]", "\t", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"s", "*", 
      RowBox[{"MNeu", "[", "i", "]"}], "*", 
      RowBox[{"MNeu", "[", "j", "]"}]}], ",", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SuperscriptBox[
         RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SuperscriptBox[
         RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], ",", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SuperscriptBox[
         RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SuperscriptBox[
         RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], ",", 
     RowBox[{
      RowBox[{"t", "*", "u"}], "-", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"MNeu", "[", "i", "]"}], "2"], "*", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "j", "]"}], "2"]}]}]}], "}"}], ",", 
   "\[IndentingNewLine]", "\t", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"Isolate", "[", 
      RowBox[{
       RowBox[{"#1", "//", "Simplify"}], ",", 
       RowBox[{"IsolateNames", "->", "Q"}]}], "]"}], "&"}], ")"}]}], 
  "\[IndentingNewLine]", "]"}]], "Code",
 CellChangeTimes->{{3.91448249628335*^9, 3.914482497179042*^9}, {
  3.914483155907583*^9, 3.914483157644485*^9}},
 CellLabel->"In[50]:=",ExpressionUUID->"c5ea0e72-1190-4ac8-9c32-2f35ebbff4ab"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"Q", "(", "927", ")"}],
     HoldForm], " ", "s", " ", 
    SubscriptBox["m", "i"], " ", 
    SubscriptBox["m", "j"]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"Q", "(", "937", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"t", " ", "u"}], "-", 
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"Q", "(", "932", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{"t", "-", 
      SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{"t", "-", 
      SubsuperscriptBox["m", "j", "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"Q", "(", "934", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{"u", "-", 
      SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{"u", "-", 
      SubsuperscriptBox["m", "j", "2"]}], ")"}]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.915591960782222*^9, 3.915596028826638*^9, 
  3.915868569735204*^9, 3.91612647679239*^9, 3.916297856854826*^9, 
  3.916298584416679*^9, 3.91639323641602*^9, 3.916393908003805*^9, 
  3.916393991670547*^9, 3.916394133337167*^9, 3.916394304914152*^9, 
  3.9164564651872883`*^9, 3.916457545370338*^9, 3.916457621709486*^9, 
  3.9164664380574427`*^9, 3.9164666981708*^9, 3.916466821000128*^9, 
  3.916467317915173*^9, 3.9167177262274637`*^9},
 CellLabel->"Out[50]=",ExpressionUUID->"5f1cff32-e873-4392-90aa-e136fadc1a88"]
}, Open  ]],

Cell["\<\
Calculate the total differential cross section and save to \
\[OpenCurlyDoubleQuote]results/LO/dxsec.m\[CloseCurlyDoubleQuote]\
\>", "Text",
 CellChangeTimes->{{3.9144825090944147`*^9, 3.91448258283004*^9}, 
   3.915341426116268*^9},ExpressionUUID->"6fead36b-cfbc-43d7-a66f-\
84c0c29ae693"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"MakeBoxes", "[", 
   RowBox[{
    RowBox[{"IdenticalPartFactor", "[", 
     RowBox[{"i_", ",", "j_"}], "]"}], ",", "TraditionalForm"}], "]"}], ":=", 
  
  FormBox[
   RowBox[{"SuperscriptBox", "[", 
    RowBox[{
     RowBox[{"RowBox", "[", 
      RowBox[{"{", 
       RowBox[{"\"\<(\>\"", ",", 
        RowBox[{"FractionBox", "[", 
         RowBox[{"\"\<1\>\"", ",", "\"\<2\>\""}], "]"}], ",", "\"\<)\>\""}], 
       "}"}], "]"}], ",", 
     RowBox[{"MakeBoxes", "[", 
      RowBox[{
       RowBox[{"KroneckerDelta", "[", 
        RowBox[{"i", ",", "j"}], "]"}], ",", "TraditionalForm"}], "]"}]}], 
    "]"}],
   TraditionalForm]}], "\n", 
 RowBox[{
  RowBox[{"DiffXSecPrefactor", " ", "=", " ", 
   RowBox[{
    RowBox[{
     FractionBox["CommonPrefactor", 
      RowBox[{"64", " ", "Pi", " ", 
       RowBox[{
        SubscriptBox["N", "C"], "^", "2"}], " ", 
       SuperscriptBox["s", "2"]}]], 
     RowBox[{"IdenticalPartFactor", "[", 
      RowBox[{"i", ",", "j"}], "]"}]}], " ", "/.", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       SuperscriptBox[
        RowBox[{"FeynCalc`IndexDelta", "[", 
         RowBox[{"a", ",", "b"}], "]"}], "p_"], "->", 
       SubscriptBox["N", "C"]}], ",", 
      RowBox[{
       RowBox[{"SMP", "[", "\"\<g_W\>\"", "]"}], "->", 
       RowBox[{"Sqrt", "[", 
        RowBox[{"4", "\[Pi]", " ", 
         SubscriptBox["\[Alpha]", "W"]}], "]"}]}]}], "}"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"DiffXSec", " ", "=", " ", 
   RowBox[{
    RowBox[{"DiffXSecPrefactor", " ", 
     RowBox[{"Itot", "[", "1", "]"}]}], " ", "/.", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       SuperscriptBox[
        RowBox[{"FeynCalc`IndexDelta", "[", 
         RowBox[{"a", ",", "b"}], "]"}], "p_"], "->", 
       SubscriptBox["N", "C"]}], ",", 
      RowBox[{
       RowBox[{"SMP", "[", "\"\<g_W\>\"", "]"}], "->", 
       RowBox[{"Sqrt", "[", 
        RowBox[{"4", "\[Pi]", " ", 
         SubscriptBox["\[Alpha]", "W"]}], "]"}]}]}], "}"}]}]}], 
  "\n"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"FileNameJoin", "[", 
     RowBox[{"{", 
      RowBox[{"ResultsDir", ",", " ", "\"\<dxsec.m\>\""}], "}"}], "]"}], ",", 
    " ", 
    RowBox[{
     RowBox[{"FullForm", "[", "DiffXSec", "]"}], "//", "ToString"}]}], "]"}], 
  ";"}]}], "Code",
 CellChangeTimes->{{3.914482658148389*^9, 3.914482716911396*^9}, {
   3.914483052358073*^9, 3.914483054964551*^9}, {3.9144832098075*^9, 
   3.914483217020318*^9}, {3.914484261058823*^9, 3.914484289117308*^9}, {
   3.914484407817083*^9, 3.914484425117964*^9}, {3.914484848879524*^9, 
   3.91448486664678*^9}, 3.914649051885324*^9, 3.915341427359592*^9, {
   3.9164853175666103`*^9, 3.916485353077631*^9}, {3.916485423924047*^9, 
   3.916485429618887*^9}, {3.9164854650061417`*^9, 3.916485552848844*^9}, {
   3.916485608189851*^9, 3.916485638010289*^9}},
 CellLabel->"In[51]:=",ExpressionUUID->"023e21e7-f598-4047-a226-039e1e3bfc04"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SuperscriptBox["s", "2"], " ", 
     SubscriptBox["N", "C"]}]], "\[Pi]", " ", 
   SubsuperscriptBox["\[Alpha]", "W", "2"], " ", 
   SuperscriptBox[
    RowBox[{"(", 
     FractionBox["1", "2"], ")"}], 
    TemplateBox[{
      RowBox[{"i", ",", "j"}]},
     "KroneckerDeltaSeq"]], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "B", "*"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Q", "B", 
             RowBox[{"L", "R"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"L", "R"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "B", 
             RowBox[{"R", "L"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", "L"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "B", 
             RowBox[{"L", "L"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "B", 
             RowBox[{"R", "R"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Z", "s", "L"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Z", "s", "R"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"L", "L"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", "R"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "R"], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox[
            TemplateBox[{
              SubsuperscriptBox["Z", "s", "L"]},
             "Abs"], "2"], "+", 
           SuperscriptBox[
            TemplateBox[{
              SubsuperscriptBox["Z", "s", "R"]},
             "Abs"], "2"]}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "B", "*"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"L", "R"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"L", "R"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", "L"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"R", "L"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"L", "L"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", "R"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"L", "L"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", "R"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "R"], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Z", "s", "L"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Z", "s", "R"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox[
            TemplateBox[{
              SubsuperscriptBox["Z", "s", "L"]},
             "Abs"], "2"], "+", 
           SuperscriptBox[
            TemplateBox[{
              SubsuperscriptBox["Z", "s", "R"]},
             "Abs"], "2"]}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{"s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "B", "*"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", "L"}]], ")"}]},
              "Conjugate"]}], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"]}], "-", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubscriptBox["\[CapitalDelta]", "B"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", 
            RowBox[{
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", "L"}]], " ", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"L", "L"}]]}]}], "-", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", "R"}]], " ", 
            SubsuperscriptBox["Q", "B", 
             RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", "L"}]], ")"}]},
              "Conjugate"]}], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"]}], "-", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "R"], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", "L"}]], ")"}]},
              "Conjugate"]}], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"]}], "-", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "R"], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", 
            RowBox[{
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", "L"}]], " ", 
             SubsuperscriptBox["Z", "s", "L"]}]}], "-", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", "R"}]], " ", 
            SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", 
            RowBox[{
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", "L"}]], " ", 
             SubsuperscriptBox["Z", "s", "L"]}]}], "-", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", "R"}]], " ", 
            SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", 
            SuperscriptBox[
             RowBox[{"(", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Z", "s", "L"], ")"}]},
               "Conjugate"], ")"}], "2"]}], "-", 
           SuperscriptBox[
            RowBox[{"(", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Z", "s", "R"], ")"}]},
              "Conjugate"], ")"}], "2"], "-", 
           SuperscriptBox[
            RowBox[{"(", 
             SubsuperscriptBox["Z", "s", "L"], ")"}], "2"], "-", 
           SuperscriptBox[
            RowBox[{"(", 
             SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}]}]}], 
       ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"t", " ", "u"}], "-", 
        RowBox[{
         SubsuperscriptBox["m", "i", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "B", "*"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", "L"}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"L", "R"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"L", "R"}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"R", "L"}]], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubscriptBox["\[CapitalDelta]", "B"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", "L"}]], " ", 
            SubsuperscriptBox["Q", "B", 
             RowBox[{"L", "R"}]]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"L", "R"}]], " ", 
            SubsuperscriptBox["Q", "B", 
             RowBox[{"R", "L"}]]}]}], ")"}]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.9155919608906*^9, 3.915596028932647*^9, 3.915868569963477*^9, 
   3.9161264770406322`*^9, 3.916297857520037*^9, 3.916298584645377*^9, 
   3.916393236517171*^9, 3.916393908025866*^9, 3.916393991691661*^9, 
   3.916394133410714*^9, 3.916394304985055*^9, 3.916456465259219*^9, 
   3.916457545442708*^9, 3.916457621784178*^9, 3.916466438128706*^9, 
   3.9164666982447453`*^9, 3.916466821071854*^9, 3.9164673179877853`*^9, {
   3.916485349196199*^9, 3.916485353551991*^9}, 3.916485430959983*^9, 
   3.9164854876766453`*^9, 3.916485517744988*^9, 3.91648555331992*^9, {
   3.9164856192780943`*^9, 3.916485638804881*^9}, 3.916717726302927*^9},
 CellLabel->"Out[53]=",ExpressionUUID->"636bed8c-b582-492e-b9f0-219f4a57b649"]
}, Open  ]],

Cell["\<\
Printing the individual contributions to the differential cross-section.\
\>", "Text",
 CellChangeTimes->{{3.916487577013844*^9, 
  3.916487596940365*^9}},ExpressionUUID->"555ece66-f6f6-41bb-8d46-\
3e5c6a02969e"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"ZXsecDiff", " ", "=", " ", 
  RowBox[{"DiffXSecPrefactor", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"DiffXSec", "/", "DiffXSecPrefactor"}], " ", "/.", " ", 
       RowBox[{
        RowBox[{"Qtu", "[", "__", "]"}], " ", "->", " ", "0"}]}], " ", "//", 
      " ", "CollectEffCharges"}], " ", "//", " ", "FRH"}], ")"}]}]}], "\n", 
 RowBox[{"SqXSecDiff", " ", "=", " ", 
  RowBox[{"DiffXSecPrefactor", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"DiffXSec", "/", "DiffXSecPrefactor"}], " ", "/.", " ", 
       RowBox[{
        RowBox[{"Zs", "[", "_", "]"}], " ", "->", " ", "0"}]}], " ", "//", 
      " ", "CollectEffCharges"}], " ", "//", " ", "FRH"}], ")"}]}]}], "\n", 
 RowBox[{"InterferenceXSecDiff", " ", "=", " ", 
  RowBox[{"DiffXSecPrefactor", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"DiffXSec", " ", "/", " ", "DiffXSecPrefactor"}], " ", "//.", 
       " ", "\n", "\t", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"Zs", "[", "arg1_", "]"}], "^", "2"}], " ", "->", " ", 
          "0"}], ",", " ", 
         RowBox[{
          RowBox[{"Abs", "[", 
           RowBox[{"Zs", "[", "_", "]"}], "]"}], " ", "->", " ", "0"}], ",", 
         " ", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"Zs", "[", "arg1_", "]"}], "\[Conjugate]"}], "^", "2"}], 
          " ", "->", " ", "0"}], ",", "\n", "\t", 
         RowBox[{
          RowBox[{
           RowBox[{"Qtu", "[", "args1__", "]"}], 
           RowBox[{"Qtu", "[", "args2__", "]"}]}], " ", "->", " ", "0"}], ",",
          " ", 
         RowBox[{
          RowBox[{
           RowBox[{"Qtu", "[", "args1__", "]"}], 
           RowBox[{
            RowBox[{"Qtu", "[", "args2__", "]"}], "\[Conjugate]"}]}], " ", "->",
           " ", "0"}], ",", "\n", "\t", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"Qtu", "[", "args1__", "]"}], "\[Conjugate]"}], 
           RowBox[{
            RowBox[{"Qtu", "[", "args2__", "]"}], "\[Conjugate]"}]}], " ", "->",
           " ", "0"}]}], "}"}]}], "  ", "//", " ", "CollectEffCharges"}], " ",
      "//", " ", "FRH"}], ")"}]}]}]}], "Code",
 CellChangeTimes->{{3.9164850929771347`*^9, 3.916485303318562*^9}, {
  3.916485360092846*^9, 3.916485397220058*^9}},
 CellLabel->"In[55]:=",ExpressionUUID->"337361d3-737c-405b-9f1f-de884e445225"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SuperscriptBox["s", "2"], " ", 
     SubscriptBox["N", "C"]}]], 
   RowBox[{"\[Pi]", " ", 
    SubsuperscriptBox["\[Alpha]", "W", "2"], " ", 
    SuperscriptBox[
     RowBox[{"(", 
      FractionBox["1", "2"], ")"}], 
     TemplateBox[{
       RowBox[{"i", ",", "j"}]},
      "KroneckerDeltaSeq"]], " ", 
    RowBox[{"CollectEffCharges", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{"t", "-", 
         SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{"t", "-", 
         SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
       FractionBox["1", 
        RowBox[{"s", "-", 
         SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
       FractionBox["1", 
        RowBox[{"s", "-", 
         TemplateBox[{
           RowBox[{"(", 
             SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
          "Conjugate"]}]], " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", "s", "L"]},
           "Abs"], "2"], "+", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", "s", "R"]},
           "Abs"], "2"]}], ")"}]}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"u", "-", 
         SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{"u", "-", 
         SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
       FractionBox["1", 
        RowBox[{"s", "-", 
         SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
       FractionBox["1", 
        RowBox[{"s", "-", 
         TemplateBox[{
           RowBox[{"(", 
             SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
          "Conjugate"]}]], " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", "s", "L"]},
           "Abs"], "2"], "+", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", "s", "R"]},
           "Abs"], "2"]}], ")"}]}], "+", 
      RowBox[{"s", " ", 
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"], " ", 
       FractionBox["1", 
        RowBox[{"s", "-", 
         SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
       FractionBox["1", 
        RowBox[{"s", "-", 
         TemplateBox[{
           RowBox[{"(", 
             SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
          "Conjugate"]}]], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox[
           RowBox[{"(", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"], ")"}], "2"]}], "-", 
         SuperscriptBox[
          RowBox[{"(", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", "s", "R"], ")"}]},
            "Conjugate"], ")"}], "2"], "-", 
         SuperscriptBox[
          RowBox[{"(", 
           SubsuperscriptBox["Z", "s", "L"], ")"}], "2"], "-", 
         SuperscriptBox[
          RowBox[{"(", 
           SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}]}]}], 
     ")"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.916485136941966*^9, 3.916485170336722*^9, {3.916485212979123*^9, 
   3.9164852216456203`*^9}, {3.916485294010417*^9, 3.916485304517241*^9}, 
   3.9164853977369213`*^9, 3.916485433882539*^9, {3.916485492674564*^9, 
   3.9164855202627993`*^9}, 3.9164855560715027`*^9, {3.9164856218695087`*^9, 
   3.9164856415587378`*^9}, 3.91671772633477*^9},
 CellLabel->"Out[55]=",ExpressionUUID->"a583cf4f-77b0-46ec-8f96-51423ac52193"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SuperscriptBox["s", "2"], " ", 
     SubscriptBox["N", "C"]}]], "\[Pi]", " ", 
   SubsuperscriptBox["\[Alpha]", "W", "2"], " ", 
   SuperscriptBox[
    RowBox[{"(", 
     FractionBox["1", "2"], ")"}], 
    TemplateBox[{
      RowBox[{"i", ",", "j"}]},
     "KroneckerDeltaSeq"]], " ", 
   RowBox[{"CollectEffCharges", "(", 
    RowBox[{
     RowBox[{"s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "B", "*"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", "L"}]], ")"}]},
              "Conjugate"]}], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"]}], "-", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubscriptBox["\[CapitalDelta]", "B"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", 
            RowBox[{
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", "L"}]], " ", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"L", "L"}]]}]}], "-", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", "R"}]], " ", 
            SubsuperscriptBox["Q", "B", 
             RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "B", "*"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Q", "B", 
          RowBox[{"L", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "B", 
          RowBox[{"R", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "B", 
          RowBox[{"L", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "B", 
          RowBox[{"R", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"]}]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"t", " ", "u"}], "-", 
        RowBox[{
         SubsuperscriptBox["m", "i", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "B", "*"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", "L"}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"L", "R"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"L", "R"}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"R", "L"}]], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubscriptBox["\[CapitalDelta]", "B"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", "L"}]], " ", 
            SubsuperscriptBox["Q", "B", 
             RowBox[{"L", "R"}]]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"L", "R"}]], " ", 
            SubsuperscriptBox["Q", "B", 
             RowBox[{"R", "L"}]]}]}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "B", "*"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"L", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"L", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"]}]}], ")"}]}]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.916485136941966*^9, 3.916485170336722*^9, {3.916485212979123*^9, 
   3.9164852216456203`*^9}, {3.916485294010417*^9, 3.916485304517241*^9}, 
   3.9164853977369213`*^9, 3.916485433882539*^9, {3.916485492674564*^9, 
   3.9164855202627993`*^9}, 3.9164855560715027`*^9, {3.9164856218695087`*^9, 
   3.9164856415587378`*^9}, 3.916717726351705*^9},
 CellLabel->"Out[56]=",ExpressionUUID->"ac090c1c-53b8-490d-88ed-b7ae26a4dc62"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SuperscriptBox["s", "2"], " ", 
     SubscriptBox["N", "C"]}]], "\[Pi]", " ", 
   SubsuperscriptBox["\[Alpha]", "W", "2"], " ", 
   SuperscriptBox[
    RowBox[{"(", 
     FractionBox["1", "2"], ")"}], 
    TemplateBox[{
      RowBox[{"i", ",", "j"}]},
     "KroneckerDeltaSeq"]], " ", 
   RowBox[{"CollectEffCharges", "(", 
    RowBox[{
     RowBox[{"s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", "L"}]], ")"}]},
              "Conjugate"]}], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"]}], "-", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "R"], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", "L"}]], ")"}]},
              "Conjugate"]}], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"]}], "-", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "R"], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", 
            RowBox[{
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", "L"}]], " ", 
             SubsuperscriptBox["Z", "s", "L"]}]}], "-", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", "R"}]], " ", 
            SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", 
            RowBox[{
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", "L"}]], " ", 
             SubsuperscriptBox["Z", "s", "L"]}]}], "-", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", "R"}]], " ", 
            SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"L", "L"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", "R"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "R"], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Z", "s", "L"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Z", "s", "R"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"]}]}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"L", "L"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", "R"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "R"], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Z", "s", "L"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Z", "s", "R"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"]}]}], ")"}]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.916485136941966*^9, 3.916485170336722*^9, {3.916485212979123*^9, 
   3.9164852216456203`*^9}, {3.916485294010417*^9, 3.916485304517241*^9}, 
   3.9164853977369213`*^9, 3.916485433882539*^9, {3.916485492674564*^9, 
   3.9164855202627993`*^9}, 3.9164855560715027`*^9, {3.9164856218695087`*^9, 
   3.9164856415587378`*^9}, 3.916717726383493*^9},
 CellLabel->"Out[57]=",ExpressionUUID->"68dc3ecb-388c-4920-a965-0aca7ee69625"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Integrated cross section", "Section",
 CellChangeTimes->{{3.914483093739622*^9, 
  3.91448311179278*^9}},ExpressionUUID->"e6d77a07-eeec-44aa-b43b-\
b09b4f430ce9"],

Cell["Some text.", "Text",
 CellChangeTimes->{{3.914483118394863*^9, 
  3.914483120285084*^9}},ExpressionUUID->"41d62fbb-5fd7-4921-bfda-\
aadc1a46ba8f"],

Cell[TextData[{
 "To simplify before integrating over t, we will need to convert all terms \
containing u to t .\nFurthermore, it will simplify the expression somewhat to \
convert to the supercharges ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["Q", "A", "XY"], TraditionalForm]],ExpressionUUID->
  "d6cea1dc-d41d-4336-b59c-376daed65068"],
 " and ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["Z", "s", "X"], TraditionalForm]],ExpressionUUID->
  "20d22d64-454b-4013-a9ce-7ee454b568a1"],
 "."
}], "Text",
 CellChangeTimes->{{3.914483126205385*^9, 3.91448313397785*^9}, {
  3.9144834098780327`*^9, 
  3.914483480755591*^9}},ExpressionUUID->"4a29c216-215b-42ef-936a-\
10919eb7f1ef"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Itot", "[", "2", "]"}], " ", "=", " ", 
   RowBox[{"Collect", "[", "\[IndentingNewLine]", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"Itot", "[", "1", "]"}], "/.", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"Den", "[", 
            RowBox[{"u", ",", 
             RowBox[{"DSf", "[", "args__", "]"}]}], "]"}], "->", 
           RowBox[{"-", 
            RowBox[{"Den", "[", 
             RowBox[{"t", ",", 
              RowBox[{"uMass", "[", "args", "]"}]}], "]"}]}]}], ",", 
          RowBox[{
           RowBox[{"Den", "[", 
            RowBox[{"u", ",", 
             RowBox[{"DSfC", "[", "args__", "]"}]}], "]"}], "->", 
           RowBox[{"-", 
            RowBox[{"Den", "[", 
             RowBox[{"t", ",", 
              RowBox[{
               RowBox[{"uMass", "[", "args", "]"}], "\[Conjugate]"}]}], 
             "]"}]}]}], ",", 
          RowBox[{
           RowBox[{"Den", "[", 
            RowBox[{"t", ",", 
             RowBox[{"DSf", "[", "args__", "]"}]}], "]"}], "->", 
           RowBox[{"Den", "[", 
            RowBox[{"t", ",", 
             RowBox[{"tMass", "[", "args", "]"}]}], "]"}]}], ",", 
          RowBox[{
           RowBox[{"Den", "[", 
            RowBox[{"t", ",", 
             RowBox[{"DSfC", "[", "args__", "]"}]}], "]"}], "->", 
           RowBox[{"Den", "[", 
            RowBox[{"t", ",", 
             RowBox[{
              RowBox[{"tMass", "[", "args", "]"}], "\[Conjugate]"}]}], 
            "]"}]}]}], "}"}]}], "/.", 
       RowBox[{"{", 
        RowBox[{"u", "->", 
         RowBox[{
          SuperscriptBox[
           RowBox[{"MNeu", "[", "i", "]"}], "2"], "+", 
          SuperscriptBox[
           RowBox[{"MNeu", "[", "j", "]"}], "2"], "-", "s", "-", "t"}]}], 
        "}"}]}], "//", "Expand"}], ",", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"Den", "[", "args1__", "]"}], 
      RowBox[{"Den", "[", "args2__", "]"}]}], ",", "\[IndentingNewLine]", 
     "\t", "Simplify"}], "\[IndentingNewLine]", "]"}]}], ";"}]], "Code",
 CellChangeTimes->{{3.914483136160664*^9, 3.914483152235705*^9}, 
   3.9144832170235043`*^9, {3.914484848882606*^9, 3.914484866650016*^9}},
 CellLabel->"In[58]:=",ExpressionUUID->"397c4165-053c-4434-b0b3-1dc17d856bb6"],

Cell[TextData[Cell[BoxData[
 RowBox[{
  RowBox[{"Convert", " ", "all", " ", "t"}], "-", 
  RowBox[{
  "dependence", " ", "to", " ", "a", " ", "dictionary", " ", "of", " ", 
   "standard", " ", "t"}], "-", 
  RowBox[{"integrals", " ", 
   SubsuperscriptBox["T", "d", "p"], 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["\[CapitalDelta]", "1"], ",", "...", ",", 
      SubscriptBox["\[CapitalDelta]", "d"]}], ")"}], "."}]}]}]], "Input",
 CellChangeTimes->{{3.910839227528207*^9, 3.9108393073051386`*^9}, {
   3.910839522536341*^9, 3.9108395556966505`*^9}, {3.910840392614651*^9, 
   3.910840393684284*^9}, {3.910840665647887*^9, 3.910840833860427*^9}, {
   3.910841172364266*^9, 3.91084121601033*^9}, {3.910841744817693*^9, 
   3.910841758400043*^9}, {3.910847468813051*^9, 3.910847621352437*^9}, {
   3.910850122329688*^9, 3.910850146846288*^9}, {3.910850342338143*^9, 
   3.910850406055177*^9}, {3.910850493802735*^9, 3.910850515083073*^9}, {
   3.910850564383848*^9, 3.910850571973742*^9}, {3.91127335320778*^9, 
   3.9112733670986767`*^9}, {3.91136582208357*^9, 3.911365826914299*^9}, {
   3.9121600937669735`*^9, 3.912160158852577*^9}, {3.912160217380171*^9, 
   3.91216026528528*^9}, 3.9121607551196365`*^9, {3.9138066569708977`*^9, 
   3.913806659802893*^9}, {3.913824985103455*^9, 3.913824987252104*^9}, {
   3.9138258764620113`*^9, 3.913825915980271*^9}, {3.9138260792022667`*^9, 
   3.913826101463199*^9}, {3.913863444170119*^9, 
   3.913863444294847*^9}},ExpressionUUID->"621add61-0efa-4e7e-8052-\
77ac563941b3"]], "Text",
 CellChangeTimes->{{3.914483249169861*^9, 
  3.914483255703351*^9}},ExpressionUUID->"9c701713-f89c-44f4-827a-\
c3d01beef026"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"ItotIntegrals", "[", "0", "]"}], " ", "=", " ", 
  RowBox[{"ToTIntegrals", "[", 
   RowBox[{"Itot", "[", "2", "]"}], "]"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ItotIntegrals", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{"ReduceTIntegrals", "[", 
    RowBox[{"ItotIntegrals", "[", "0", "]"}], "]"}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.914483257605521*^9, 3.914483273965103*^9}, {
  3.914484854920312*^9, 3.9144848666512833`*^9}, {3.91464906239988*^9, 
  3.914649065848443*^9}, {3.916126410626989*^9, 3.916126413641904*^9}},
 CellLabel->"In[59]:=",ExpressionUUID->"bf9d0b1a-94a4-4976-8666-fab9971a81ed"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "973", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "980", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "972", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "971", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "976", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "979", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "981", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "969", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "974", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "978", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "982", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "977", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "950", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
      "Conjugate"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "964", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "967", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "955", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
      "Conjugate"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "984", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
      "Conjugate"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "986", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "959", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "985", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "987", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "961", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "966", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "968", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "943", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "0"]}], "+", 
   RowBox[{"2", " ", 
    TagBox[
     RowBox[{"KK", "(", "946", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "1"]}], "+", 
   RowBox[{"2", " ", 
    TagBox[
     RowBox[{"KK", "(", "947", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "2"]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.916126477791058*^9, 3.916297858131471*^9, 
  3.9162985856257873`*^9, 3.916393236616539*^9, 3.916393908203693*^9, 
  3.916393991863289*^9, 3.9163941337392387`*^9, 3.916394305171816*^9, 
  3.916456465447723*^9, 3.916457545632215*^9, 3.916457622068721*^9, 
  3.916466438317644*^9, 3.916466698440024*^9, 3.916466821262167*^9, 
  3.916467318178309*^9, 3.916717726647745*^9},
 CellLabel->"Out[59]=",ExpressionUUID->"45b48b7f-9dfd-4f97-99a4-f3d8238ec0f2"]
}, Open  ]],

Cell["\<\
We can write it out in terms of the basic charges using \
GetKinematicCoefficients .\
\>", "Text",
 CellChangeTimes->{{3.914483282121192*^9, 
  3.9144832825341787`*^9}},ExpressionUUID->"1a15edf9-d50e-4ae1-a315-\
7b64b062e5b1"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect2", "[", 
  RowBox[{
   RowBox[{"ItotIntegrals", "[", "0", "]"}], ",", " ", 
   RowBox[{"tIntegral", "[", "__", "]"}], ",", " ", 
   RowBox[{"Factoring", " ", "->", " ", "GetKinematicCoefficients"}]}], 
  "]"}]], "Code",
 CellChangeTimes->{{3.914483284713757*^9, 3.914483290896813*^9}, {
   3.914558444408209*^9, 3.914558453002076*^9}, 3.915468894882674*^9},
 CellLabel->"In[61]:=",ExpressionUUID->"c3aa978d-ccf6-4348-9406-9146fd7afbd9"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    SubsuperscriptBox["m", "i", "2"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", "L"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"L", "L"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", "R"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"L", "R"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", "L"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"R", "L"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", "R"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"R", "R"}]]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"]}], ")"}], " ", 
    SubsuperscriptBox["m", "j", "2"]}], "+", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"s", "-", 
      SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
    FractionBox["1", 
     RowBox[{"s", "-", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
       "Conjugate"]}]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "2"}], " ", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "L"]},
            "Abs"], "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "R"]},
            "Abs"], "2"]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"]}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "2"}], " ", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "L"]},
            "Abs"], "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "R"]},
            "Abs"], "2"]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "j", "2"]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "L"]},
            "Abs"], "2"]}], "+", 
         RowBox[{"2", " ", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "R"]},
            "Abs"], "2"]}]}], ")"}]}]}], ")"}], " ", 
    SubsuperscriptBox["T", "0", "1"]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"2", " ", 
       SuperscriptBox[
        TemplateBox[{
          SubsuperscriptBox["Z", "s", "L"]},
         "Abs"], "2"]}], "+", 
      RowBox[{"2", " ", 
       SuperscriptBox[
        TemplateBox[{
          SubsuperscriptBox["Z", "s", "R"]},
         "Abs"], "2"]}]}], ")"}], " ", 
    FractionBox["1", 
     RowBox[{"s", "-", 
      SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
    FractionBox["1", 
     RowBox[{"s", "-", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
       "Conjugate"]}]], " ", 
    SubsuperscriptBox["T", "0", "2"]}], "+", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"s", "-", 
      SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", "s", "L"], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"]}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", "s", "L"], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"s", "-", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
       "Conjugate"]}]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "2"}], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]}], "+", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"s", "-", 
      SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Z", "s", "L"], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "A", 
        RowBox[{"L", "L"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Z", "s", "R"], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "A", 
        RowBox[{"R", "R"}]]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"s", "-", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
       "Conjugate"]}]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["Z", "s", "L"], ")"}]},
         "Conjugate"]}], " ", 
       SubsuperscriptBox["Q", "A", 
        RowBox[{"L", "L"}]]}], "-", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Z", "s", "R"], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "A", 
        RowBox[{"R", "R"}]]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "L"}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", "R"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "R"}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", "L"}]]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "j", "2"]}], "+", 
      RowBox[{"s", " ", 
       SubscriptBox["m", "i"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       SubscriptBox["m", "j"]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"], " ", 
       SubsuperscriptBox["m", "j", "2"]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "R"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       SuperscriptBox["s", "2"]}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", "B", 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", "B", 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "R"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", "L"}]]}], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "R"}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", "L"}]]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"]}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", "L"}]]}], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "R"}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", "L"}]]}]}], ")"}]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "L"}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", "R"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "R"}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", "L"}]]}]}], ")"}]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", "A", 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"]}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", "A", 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", "A", 
                RowBox[{"R", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"]}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", "A", 
                RowBox[{"R", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "j", "2"]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"]}]}], ")"}]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", "B", 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"]}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", "B", 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "R"}]]}], "+", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "L"}]]}], "+", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SubsuperscriptBox["Q", "A", 
        RowBox[{"R", "L"}]], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"L", "R"}]]}], "+", 
      RowBox[{
       SubsuperscriptBox["Q", "A", 
        RowBox[{"L", "R"}]], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"R", "L"}]]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", "L"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"L", "L"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", "R"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"L", "R"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", "L"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"R", "L"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", "R"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"R", "R"}]]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", "L"}]], ")"}]},
        "Conjugate"], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "B", 
            RowBox[{"L", "R"}]], ")"}]},
        "Conjugate"]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", "R"}]], ")"}]},
        "Conjugate"], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "B", 
            RowBox[{"R", "L"}]], ")"}]},
        "Conjugate"]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "B", 
            RowBox[{"L", "L"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "A", 
        RowBox[{"L", "L"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "B", 
            RowBox[{"L", "R"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "A", 
        RowBox[{"L", "R"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "B", 
            RowBox[{"R", "L"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "A", 
        RowBox[{"R", "L"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "B", 
            RowBox[{"R", "R"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "A", 
        RowBox[{"R", "R"}]]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"s", "-", 
      SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
      "Conjugate"], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["Q", "A", 
             RowBox[{"L", "L"}]], ")"}]},
         "Conjugate"]}], " ", 
       SubsuperscriptBox["Z", "s", "L"]}], "-", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", "R"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], "+", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"s", "-", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
       "Conjugate"]}]], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", "L"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Z", "s", "L"]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", "R"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], "+", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"s", "-", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
       "Conjugate"]}]], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", "A", 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "R"]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"]}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", "A", 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}]}], ")"}]}], "+", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"s", "-", 
      SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
      "Conjugate"], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "R"]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "2"}], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "-", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}]}], ")"}]}], "+", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"s", "-", 
      SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
      "Conjugate"], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", "A", 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "R"]}]}], ")"}], " ", 
       SuperscriptBox["s", "2"]}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "R"]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "R"]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", "A", 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}]}], ")"}]}], "+", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"s", "-", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
       "Conjugate"]}]], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "R"]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "j", "2"]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", "A", 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"]}]}], ")"}]}], "+", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"s", "-", 
      SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
      "Conjugate"], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "j", "2"]}], "+", 
      RowBox[{"s", " ", 
       SubscriptBox["m", "i"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", "L"}]]}], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "-", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]], " ", 
          SubsuperscriptBox["Z", "s", "R"]}]}], ")"}], " ", 
       SubscriptBox["m", "j"]}]}], ")"}]}], "+", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"s", "-", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
       "Conjugate"]}]], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", "s", "L"], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       SuperscriptBox["s", "2"]}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]], " ", 
          SubsuperscriptBox["Z", "s", "R"]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", "s", "L"], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}], "+", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"s", "-", 
      SubscriptBox["\[CapitalDelta]", "Z"]}]], " ", 
    FractionBox["1", 
     RowBox[{"s", "-", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
       "Conjugate"]}]], " ", 
    SubsuperscriptBox["T", "0", "0"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", "s", "L"]},
           "Abs"], "2"], "+", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", "s", "R"]},
           "Abs"], "2"]}], ")"}], " ", 
       SuperscriptBox["s", "2"]}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "L"]},
            "Abs"], "2"]}], "-", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", "s", "R"]},
           "Abs"], "2"]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"], " ", "s"}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "L"]},
            "Abs"], "2"]}], "-", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", "s", "R"]},
           "Abs"], "2"]}], ")"}], " ", 
       SubsuperscriptBox["m", "j", "2"], " ", "s"}], "+", 
      RowBox[{
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox[
           RowBox[{"(", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"], ")"}], "2"]}], "-", 
         SuperscriptBox[
          RowBox[{"(", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", "s", "R"], ")"}]},
            "Conjugate"], ")"}], "2"], "-", 
         SuperscriptBox[
          RowBox[{"(", 
           SubsuperscriptBox["Z", "s", "L"], ")"}], "2"], "-", 
         SuperscriptBox[
          RowBox[{"(", 
           SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}], " ", "s"}],
       "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "L"]},
            "Abs"], "2"]}], "+", 
         RowBox[{"2", " ", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "R"]},
            "Abs"], "2"]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"], " ", 
       SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.915591961421771*^9, 3.915596029435995*^9, 
  3.915868571361236*^9, 3.916126478481447*^9, 3.9162978588527813`*^9, 
  3.9162985862493973`*^9, 3.916393236644019*^9, 3.916393908448832*^9, 
  3.9163939921140547`*^9, 3.9163941339373493`*^9, 3.916394305438656*^9, 
  3.916456465706505*^9, 3.91645754592205*^9, 3.916457622279101*^9, 
  3.916466438601161*^9, 3.9164666987213306`*^9, 3.91646682151976*^9, 
  3.916467318455319*^9, 3.916717726848769*^9},
 CellLabel->"Out[61]=",ExpressionUUID->"6aa4fd5b-c3f2-48c9-be53-7a21589b05d3"]
}, Open  ]],

Cell["\<\
Make a function for collecting effective charges of the supercharges.\
\>", "Text",
 CellChangeTimes->{{3.914483387285356*^9, 3.914483396236919*^9}, {
  3.9144834861663427`*^9, 
  3.914483512024851*^9}},ExpressionUUID->"510361ee-7e50-409f-b90d-\
f01514a1fa9c"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"EffectiveCharges", " ", "=", " ", 
   RowBox[{"{", "\[IndentingNewLine]", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{"Qtu", "[", "args1__", "]"}], 
      RowBox[{"Qtu", "[", "args2__", "]"}]}], ",", "\[IndentingNewLine]", 
     "\t", 
     RowBox[{
      RowBox[{"Qtu", "[", "args1__", "]"}], 
      RowBox[{
       RowBox[{"Qtu", "[", "args2__", "]"}], "\[Conjugate]"}]}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"Qtu", "[", "args1__", "]"}], "\[Conjugate]"}], 
      RowBox[{
       RowBox[{"Qtu", "[", "args2__", "]"}], "\[Conjugate]"}]}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"Zs", "[", "_", "]"}], 
      RowBox[{"Qtu", "[", "__", "]"}]}], ",", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"Zs", "[", "_", "]"}], "\[Conjugate]"}], 
      RowBox[{"Qtu", "[", "__", "]"}]}], ",", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"Zs", "[", "_", "]"}], 
      RowBox[{
       RowBox[{"Qtu", "[", "__", "]"}], "\[Conjugate]"}]}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"Zs", "[", "_", "]"}], "\[Conjugate]"}], 
      RowBox[{
       RowBox[{"Qtu", "[", "__", "]"}], "\[Conjugate]"}]}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{"Zs", "[", "_", "]"}], "^", "2"}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"Zs", "[", "_", "]"}], "\[Conjugate]"}], "^", "2"}], ",", "\n",
      "\t", 
     RowBox[{
      RowBox[{"Abs", "[", 
       RowBox[{"Zs", "[", "_", "]"}], "]"}], "^", "2"}]}], 
    "\[IndentingNewLine]", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"CollectEffCharges", "[", "expr_", "]"}], " ", ":=", " ", 
  RowBox[{"Collect2", "[", "\[IndentingNewLine]", "\t", 
   RowBox[{
    RowBox[{"Collect", "[", "\[IndentingNewLine]", "\t\t", 
     RowBox[{
      RowBox[{
       RowBox[{"FRH", "[", "expr", "]"}], "//", "Expand"}], ",", 
      "\[IndentingNewLine]", "\t\t", "EffectiveCharges", ",", 
      "\[IndentingNewLine]", "\t\t", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"Isolate", "[", 
         RowBox[{"Simplify", "[", 
          RowBox[{"#1", "//", "Expand"}], "]"}], "]"}], "&"}], ")"}]}], 
     "\[IndentingNewLine]", "\t", "]"}], ",", "\[IndentingNewLine]", "\t", 
    "KK"}], "\[IndentingNewLine]", "]"}]}]}], "Code",
 CellChangeTimes->{{3.914483523956205*^9, 3.914483524421638*^9}, {
  3.914484854923531*^9, 3.9144848666552887`*^9}, {3.91448495271669*^9, 
  3.9144849853990383`*^9}, {3.915095943947283*^9, 3.915096001410369*^9}, {
  3.915097057119849*^9, 3.915097082825889*^9}, {3.915110456430688*^9, 
  3.915110463190691*^9}, {3.915342282011032*^9, 3.915342285855287*^9}, {
  3.915437312984147*^9, 3.9154373138636723`*^9}, {3.915468923217285*^9, 
  3.915468924017717*^9}},
 CellLabel->"In[62]:=",ExpressionUUID->"97bd251d-7201-44a6-91ee-7d1671fc69a9"],

Cell[TextData[{
 "Write out the analytic results for all the ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["T", "d", "p"], TraditionalForm]],ExpressionUUID->
  "3a6299e5-d5dc-431f-9051-1eb023c030c1"],
 "-integrals and collect into the possible terms dependent on the t-limits t1 \
and t0."
}], "Text",
 CellChangeTimes->{{3.914483530107016*^9, 3.914483535426284*^9}, {
  3.914483582975358*^9, 
  3.9144836539690943`*^9}},ExpressionUUID->"83473601-3d23-489f-8cce-\
22a9e8635e72"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"ItotIntegrals", "[", "2", "]"}], " ", "=", " ", 
    RowBox[{"Collect", "[", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"Collect2", "[", "\[IndentingNewLine]", "\t\t", 
       RowBox[{
        RowBox[{"FreeTIntegrals", "[", 
         RowBox[{"ItotIntegrals", "[", "0", "]"}], "]"}], ",", 
        "\[IndentingNewLine]", "\t\t", "p", ",", "\[IndentingNewLine]", 
        "\t\t", "Simplify"}], "\[IndentingNewLine]", "\t", "]"}], ",", 
      "\[IndentingNewLine]", "\t", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"Sqrt", "[", "s", "]"}], "*", "p"}], ",", " ", 
        RowBox[{"Log", "[", "arg_", "]"}]}], "}"}], ",", 
      "\[IndentingNewLine]", "\t", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"Isolate", "[", 
         RowBox[{"#1", "//", "CollectEffCharges"}], "]"}], "&"}], ")"}]}], 
     "\[IndentingNewLine]", "]"}]}], "*)"}], "\n", 
  RowBox[{
   RowBox[{"ItotIntegrals", "[", "2", "]"}], " ", "=", " ", 
   RowBox[{"Collect", "[", "\[IndentingNewLine]", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"FreeTIntegrals", "[", 
        RowBox[{"ItotIntegrals", "[", "0", "]"}], "]"}], " ", "//", " ", 
       RowBox[{
        RowBox[{"ReplaceAll", "[", 
         RowBox[{"#", ",", " ", 
          RowBox[{
           RowBox[{"dLog", "[", 
            RowBox[{
             RowBox[{"a_", "-", 
              RowBox[{"p", "*", 
               RowBox[{"Sqrt", "[", "s", "]"}]}]}], ",", " ", 
             RowBox[{"a_", "+", 
              RowBox[{"p", "*", 
               RowBox[{"Sqrt", "[", "s", "]"}]}]}]}], "]"}], " ", "->", " ", 
           RowBox[{"-", 
            RowBox[{"dLog", "[", 
             RowBox[{
              RowBox[{"a", "+", 
               RowBox[{"p", "*", 
                RowBox[{"Sqrt", "[", "s", "]"}]}]}], ",", " ", 
              RowBox[{"a", "-", 
               RowBox[{"p", "*", 
                RowBox[{"Sqrt", "[", "s", "]"}]}]}]}], "]"}]}]}]}], "]"}], 
        "&"}]}], " ", "//", " ", "Expand"}], ",", "\n", "\t", 
     RowBox[{"{", 
      RowBox[{"p", ",", " ", 
       RowBox[{"dLog", "[", "__", "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
     "\t", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"Isolate", "[", 
        RowBox[{"#1", "//", "CollectEffCharges"}], "]"}], "&"}], ")"}]}], 
    "\[IndentingNewLine]", "]"}]}]}]], "Code",
 CellChangeTimes->{{3.914483543976324*^9, 3.914483576762061*^9}, {
   3.914484854926929*^9, 3.914484866657395*^9}, {3.914484992758549*^9, 
   3.914484992979399*^9}, {3.915436697379691*^9, 3.915436749623456*^9}, 
   3.915436784604378*^9, {3.915436833628914*^9, 3.915436902565397*^9}, {
   3.9154387114389877`*^9, 3.915438717387163*^9}, {3.915438840056538*^9, 
   3.915438841033923*^9}, {3.91546425955687*^9, 3.915464374881392*^9}, {
   3.916394198112276*^9, 3.916394239969701*^9}},
 CellLabel->"In[64]:=",ExpressionUUID->"9185987c-c286-49a9-8e2c-abd135038383"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1038", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        SqrtBox["s"]}]}], ",", 
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1041", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        SqrtBox["s"]}]}], ",", 
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1053", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        SqrtBox["s"]}]}], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1058", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "u"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        SqrtBox["s"]}]}], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "u"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1060", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        SqrtBox["s"]}]}], ",", 
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1066", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        SqrtBox["s"]}]}], ",", 
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1071", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", "B", "u"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        SqrtBox["s"]}]}], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", "B", "u"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], "+", 
   RowBox[{
    FractionBox["16", "3"], " ", 
    TagBox[
     RowBox[{"KK", "(", "1016", ")"}],
     HoldForm], " ", 
    SuperscriptBox["p", "3"]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1030", ")"}],
     HoldForm], " ", "p"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.915591961685694*^9, 3.915596029698599*^9, 3.9158685719375687`*^9, 
   3.916126479025944*^9, 3.916297859552313*^9, 3.916298586929747*^9, 
   3.916393236711211*^9, 3.916393908599511*^9, 3.916393992266159*^9, 
   3.91639413411353*^9, {3.9163942067021313`*^9, 3.916394243110116*^9}, 
   3.916394305622356*^9, 3.91645646588459*^9, 3.916457546110629*^9, 
   3.9164576224802847`*^9, 3.91646643880114*^9, 3.916466698920727*^9, 
   3.916466821717888*^9, 3.9164673186488934`*^9, 3.916717727051589*^9},
 CellLabel->"Out[64]=",ExpressionUUID->"ae7f05aa-fe55-4c4d-b381-61ed48ad72cc"]
}, Open  ]],

Cell["\<\
We can simplify this further by interchanging terms that can be collected \
under A\[LeftRightArrow]B interchange.\
\>", "Text",
 CellChangeTimes->{{3.914483664259921*^9, 
  3.914483712867753*^9}},ExpressionUUID->"68798862-a218-4240-be60-\
22ac4c755df7"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"BindexLogs", " ", "=", " ", 
   RowBox[{"{", "\n", "\t", 
    RowBox[{
     RowBox[{"dLog", "[", 
      RowBox[{
       RowBox[{"t1_", "-", 
        RowBox[{"tMass", "[", 
         RowBox[{"B", ",", "__"}], "]"}]}], ",", " ", 
       RowBox[{"t2_", "-", 
        RowBox[{"tMass", "[", 
         RowBox[{"B", ",", "__"}], "]"}]}]}], "]"}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{"dLog", "[", 
      RowBox[{
       RowBox[{"t1_", "-", 
        RowBox[{
         RowBox[{"tMass", "[", 
          RowBox[{"B", ",", "__"}], "]"}], "\[Conjugate]"}]}], ",", " ", 
       RowBox[{"t2_", "-", 
        RowBox[{
         RowBox[{"tMass", "[", 
          RowBox[{"B", ",", "__"}], "]"}], "\[Conjugate]"}]}]}], "]"}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{"dLog", "[", 
      RowBox[{
       RowBox[{"t1_", "-", 
        RowBox[{"uMass", "[", 
         RowBox[{"B", ",", "__"}], "]"}]}], ",", " ", 
       RowBox[{"t2_", "-", 
        RowBox[{"uMass", "[", 
         RowBox[{"B", ",", "__"}], "]"}]}]}], "]"}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{"dLog", "[", 
      RowBox[{
       RowBox[{"t1_", "-", 
        RowBox[{
         RowBox[{"uMass", "[", 
          RowBox[{"B", ",", "__"}], "]"}], "\[Conjugate]"}]}], ",", " ", 
       RowBox[{"t2_", "-", 
        RowBox[{
         RowBox[{"uMass", "[", 
          RowBox[{"B", ",", "__"}], "]"}], "\[Conjugate]"}]}]}], "]"}]}], 
    "\[IndentingNewLine]", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ItotIntegrals", "[", "3", "]"}], " ", "=", " ", 
  RowBox[{"Collect", "[", "\[IndentingNewLine]", "\t", 
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"SelectNotFree", "[", 
             RowBox[{
              RowBox[{"ItotIntegrals", "[", "2", "]"}], ",", "BindexLogs"}], 
             "]"}], ")"}], "//", "FRH"}], ")"}], "/.", 
         RowBox[{"A", "->", "C"}]}], ")"}], "/.", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"B", "->", "A"}], ",", 
         RowBox[{"C", "->", "B"}]}], "}"}]}], ")"}], "+", 
     RowBox[{"SelectFree", "[", 
      RowBox[{
       RowBox[{"ItotIntegrals", "[", "2", "]"}], ",", "BindexLogs"}], "]"}]}],
     ",", "\[IndentingNewLine]", "\t", 
    RowBox[{"{", 
     RowBox[{"p", ",", " ", 
      RowBox[{"dLog", "[", "__", "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
    "\t", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"Isolate", "[", 
       RowBox[{"CollectEffCharges", "[", "#1", "]"}], "]"}], "&"}], ")"}]}], 
   "\[IndentingNewLine]", "]"}]}]}], "Code",
 CellChangeTimes->{{3.91448371611512*^9, 3.914483722539014*^9}, {
   3.914484854928886*^9, 3.91448486666013*^9}, {3.914484999523102*^9, 
   3.91448503414028*^9}, {3.915436511069714*^9, 3.9154366004059277`*^9}, {
   3.915436971984971*^9, 3.915436973537427*^9}, {3.915438749629553*^9, 
   3.9154387605839643`*^9}, {3.915438879833042*^9, 3.915438948813096*^9}, 
   3.915439036477599*^9, {3.916394260088276*^9, 3.916394272677437*^9}},
 CellLabel->"In[65]:=",ExpressionUUID->"84fccf6c-3854-43dd-a418-82c19a1daeb5"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1074", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        SqrtBox["s"]}]}], ",", 
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1081", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        SqrtBox["s"]}]}], ",", 
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1053", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        SqrtBox["s"]}]}], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1087", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "u"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        SqrtBox["s"]}]}], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "u"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], "+", 
   RowBox[{
    FractionBox["16", "3"], " ", 
    TagBox[
     RowBox[{"KK", "(", "1016", ")"}],
     HoldForm], " ", 
    SuperscriptBox["p", "3"]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1030", ")"}],
     HoldForm], " ", "p"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.915591961988457*^9, 3.915596029981551*^9, 3.9158685722724113`*^9, 
   3.9161264793809557`*^9, 3.9162978598949213`*^9, 3.9162985872740593`*^9, 
   3.9163932367632933`*^9, 3.916393908698406*^9, 3.916393992349805*^9, 
   3.9163941342787027`*^9, {3.9163942758256283`*^9, 3.916394305730549*^9}, 
   3.916456465993997*^9, 3.916457546232692*^9, 3.9164576225966663`*^9, 
   3.916466438911766*^9, 3.916466699030451*^9, 3.9164668218272*^9, 
   3.916467318763191*^9, 3.9167177271618147`*^9},
 CellLabel->"Out[66]=",ExpressionUUID->"f20d6b81-323f-4040-ae3d-e6cf4a07b1d8"]
}, Open  ]],

Cell["\<\
A good sanity check is to see whether the resulting integrated Itot is real. \
This can be done by finding its complex conjugate and compare it to the \
original.\
\>", "Text",
 CellChangeTimes->{{3.914483744778041*^9, 
  3.914483818813208*^9}},ExpressionUUID->"0ab35704-1865-4dd1-8623-\
0a67881b741f"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"ItotIntegralsC", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{"Refine", "[", "\[IndentingNewLine]", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{"Collect", "[", "\[IndentingNewLine]", "\t\t", 
       RowBox[{
        RowBox[{"ItotIntegrals", "[", "3", "]"}], ",", "\[IndentingNewLine]", 
        "\t\t", 
        RowBox[{"{", 
         RowBox[{"p", ",", " ", 
          RowBox[{"dLog", "[", "__", "]"}]}], "}"}], ",", 
        "\[IndentingNewLine]", "\t\t", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"Conjugate", "[", 
            RowBox[{"FRH", "[", "#1", "]"}], "]"}], "//.", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{"Conjugate", "[", 
               RowBox[{"a_", "+", "b_"}], "]"}], "->", 
              RowBox[{
               RowBox[{"a", "\[Conjugate]"}], "+", 
               RowBox[{"b", "\[Conjugate]"}]}]}], ",", 
             RowBox[{
              RowBox[{"Conjugate", "[", 
               RowBox[{"a_", "*", "b_"}], "]"}], "->", 
              RowBox[{
               RowBox[{"a", "\[Conjugate]"}], 
               RowBox[{"b", "\[Conjugate]"}]}]}]}], "}"}]}], "&"}], ")"}]}], 
       "\[IndentingNewLine]", "\t", "]"}], "/.", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"dLog", "[", 
          RowBox[{"arg1_", ",", " ", "arg2_"}], "]"}], "->", 
         RowBox[{"dLog", "[", 
          RowBox[{
           RowBox[{"arg1", "\[Conjugate]"}], ",", " ", 
           RowBox[{"arg2", "\[Conjugate]"}]}], "]"}]}], ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"Den", "[", 
           RowBox[{"p_", ",", "m_"}], "]"}], "\[Conjugate]"}], "->", 
         RowBox[{"Den", "[", 
          RowBox[{
           RowBox[{"p", "\[Conjugate]"}], ",", 
           RowBox[{"m", "\[Conjugate]"}]}], "]"}]}]}], "}"}]}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{"Assumptions", "->", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"p", "\[Element]", "PositiveReals"}], ",", " ", 
        RowBox[{
         RowBox[{"MNeu", "[", "_", "]"}], "\[Element]", "PositiveReals"}], 
        ",", " ", 
        RowBox[{"s", "\[Element]", "PositiveReals"}]}], "}"}]}]}], 
    "\[IndentingNewLine]", "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ItotIntegralsC", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{"Collect", "[", "\[IndentingNewLine]", "\t", 
    RowBox[{
     RowBox[{"ItotIntegralsC", "[", "0", "]"}], ",", "\[IndentingNewLine]", 
     "\t", 
     RowBox[{"{", 
      RowBox[{"p", ",", " ", 
       RowBox[{"dLog", "[", "__", "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
     "\t", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"Isolate", "[", 
        RowBox[{"CollectEffCharges", "[", "#1", "]"}], "]"}], "&"}], ")"}]}], 
    "\[IndentingNewLine]", "]"}]}], "\n"}], "\n", 
 RowBox[{
  RowBox[{"FCCompareResults", "[", "\n", "\t", 
   RowBox[{
    RowBox[{"FRH", "[", 
     RowBox[{
      RowBox[{"ItotIntegrals", "[", "3", "]"}], "/.", 
      RowBox[{
       RowBox[{"dLog", "[", 
        RowBox[{"arg1_", ",", " ", "arg2_"}], "]"}], " ", "->", " ", 
       RowBox[{
        RowBox[{"Log", "[", "arg1", "]"}], " ", "-", " ", 
        RowBox[{"Log", "[", "arg2", "]"}]}]}]}], "]"}], ",", "\n", "\t", 
    RowBox[{"FRH", "[", 
     RowBox[{
      RowBox[{"ItotIntegralsC", "[", "1", "]"}], "/.", 
      RowBox[{
       RowBox[{"dLog", "[", 
        RowBox[{"arg1_", ",", " ", "arg2_"}], "]"}], " ", "->", " ", 
       RowBox[{
        RowBox[{"Log", "[", "arg1", "]"}], " ", "-", " ", 
        RowBox[{"Log", "[", "arg2", "]"}]}]}]}], "]"}], ",", "\n", "\t", 
    RowBox[{"Text", "->", 
     RowBox[{"{", 
      RowBox[{
      "\"\<\\tResult is analytically real:\>\"", ",", " ", "\"\<CORRECT.\>\"",
        ",", " ", "\"\<WRONG!\>\""}], "}"}]}], ",", " ", 
    RowBox[{"Interrupt", "->", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Hold", "[", 
        RowBox[{"Quit", "[", "1", "]"}], "]"}], ",", " ", "Automatic"}], 
      "}"}]}]}], "\n", "]"}], ";"}]}], "Code",
 CellChangeTimes->{{3.9144838213496*^9, 3.914483885654633*^9}, {
  3.91448485493497*^9, 3.914484866666297*^9}, {3.914485039896947*^9, 
  3.914485043477662*^9}, {3.915436999009956*^9, 3.915437004584453*^9}, {
  3.915438963031749*^9, 3.915439030506975*^9}, {3.915439092878931*^9, 
  3.915439100922414*^9}, {3.915439253598371*^9, 3.915439258760292*^9}, {
  3.915439367650406*^9, 3.915439456619598*^9}, {3.916456669528307*^9, 
  3.91645666959293*^9}},
 CellLabel->"In[67]:=",ExpressionUUID->"a9c2b922-9999-415d-a638-4a936907ff55"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1074", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        SqrtBox["s"]}]}], ",", 
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1081", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        SqrtBox["s"]}]}], ",", 
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1090", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        SqrtBox["s"]}]}], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1093", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "u"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        SqrtBox["s"]}]}], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "u"]}], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
       RowBox[{"p", " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], "+", 
   RowBox[{
    FractionBox["16", "3"], " ", 
    TagBox[
     RowBox[{"KK", "(", "1016", ")"}],
     HoldForm], " ", 
    SuperscriptBox["p", "3"]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1030", ")"}],
     HoldForm], " ", "p"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.915591962154907*^9, 3.915596030151197*^9, 
  3.9158685726912947`*^9, 3.9161264798010798`*^9, 3.916297860485042*^9, 
  3.9162985879854593`*^9, 3.916393236830488*^9, 3.916393908818667*^9, 
  3.916393992469721*^9, 3.916394134426631*^9, 3.916394305861561*^9, 
  3.916456466126995*^9, 3.9164567049123383`*^9, 3.916457546369219*^9, 
  3.916457622715631*^9, 3.916466439040155*^9, 3.916466699153658*^9, 
  3.916466821950034*^9, 3.9164673188914547`*^9, 3.91671772728272*^9},
 CellLabel->"Out[68]=",ExpressionUUID->"65ec66f5-3463-4a52-b5c3-e8990ddd4cb4"],

Cell[BoxData[
 FormBox[
  InterpretationBox[
   RowBox[{
    StyleBox["\<\"\\tResult is analytically real:\"\>", "Text",
     StripOnInput->False,
     FontWeight->Bold], "\[InvisibleSpace]", "\<\" \"\>", "\[InvisibleSpace]", 
    StyleBox["\<\"CORRECT.\"\>", "Text",
     StripOnInput->False,
     LineColor->RGBColor[0, 
       Rational[2, 3], 0],
     FrontFaceColor->RGBColor[0, 
       Rational[2, 3], 0],
     BackFaceColor->RGBColor[0, 
       Rational[2, 3], 0],
     GraphicsColor->RGBColor[0, 
       Rational[2, 3], 0],
     FontWeight->Bold,
     FontColor->RGBColor[0, 
       Rational[2, 3], 0]]}],
   SequenceForm[
    Style["\tResult is analytically real:", "Text", Bold], " ", 
    Style["CORRECT.", "Text", 
     RGBColor[0, 
      Rational[2, 3], 0], Bold]],
   Editable->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.9163939128274937`*^9, 3.916393996472774*^9, 
  3.916394138427257*^9, 3.916394312131831*^9, 3.916456472476728*^9, 
  3.916456711220355*^9, 3.9164575463907337`*^9, 3.9164576227326603`*^9, 
  3.9164664390716743`*^9, 3.916466699181354*^9, 3.916466821976736*^9, 
  3.9164673189187527`*^9, 3.916717727312866*^9},
 CellLabel->
  "During evaluation of \
In[67]:=",ExpressionUUID->"ebefb1d2-03bb-48d0-a4fd-e885a74fe9b1"]
}, Open  ]],

Cell["\<\
Now if the full, integrated squared amplitude is real, we can replace the \
complex log-terms with their real parts.
This step also includes rewriting the u-term dLogarithm using that dLog(z, w) \
= -dLog(-w, -z) such that it will simplify
to be the same as the t-term dLogarithm.\
\>", "Text",
 CellChangeTimes->{{3.914483893642917*^9, 3.914483927793371*^9}, 
   3.915097860412076*^9, {3.9164958950308447`*^9, 
   3.91649597446406*^9}},ExpressionUUID->"d7b1fe24-c08d-4517-9539-\
93e5f5eeb6b9"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ItotIntegrals", "[", "4", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{"ReplaceRepeated", "[", "\n", "\t", 
    RowBox[{
     RowBox[{"ItotIntegrals", "[", "3", "]"}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"coeff_", "*", 
        RowBox[{"dLog", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"-", "a_"}], "+", "b_"}], ",", 
          RowBox[{
           RowBox[{"-", "a_"}], "+", "c_"}]}], "]"}]}], "+", 
       RowBox[{"coeffc_", "*", 
        RowBox[{"dLog", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"-", 
            RowBox[{"a_", "\[Conjugate]"}]}], "+", "b_"}], ",", 
          RowBox[{
           RowBox[{"-", 
            RowBox[{"a_", "\[Conjugate]"}]}], "+", "c_"}]}], "]"}]}]}], "->", 
      
      RowBox[{"2", 
       RowBox[{"Re", "[", 
        RowBox[{"coeff", "*", 
         RowBox[{"dLog", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "a"}], "+", "b"}], ",", " ", 
           RowBox[{
            RowBox[{"-", "a"}], "+", "c"}]}], "]"}]}], "]"}]}]}]}], "\n", 
    "]"}], " ", "/.", " ", 
   RowBox[{
    RowBox[{"dLog", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        RowBox[{"uMass", "[", "args__", "]"}]}], "+", "a_"}], ",", " ", 
      RowBox[{
       RowBox[{"-", 
        RowBox[{"uMass", "[", "args__", "]"}]}], "+", "b_"}]}], "]"}], " ", "->",
     " ", 
    RowBox[{"-", 
     RowBox[{"dLog", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"uMass", "[", "args", "]"}], "-", "b"}], ",", " ", 
       RowBox[{
        RowBox[{"uMass", "[", "args", "]"}], "-", "a"}]}], 
      "]"}]}]}]}]}]], "Code",
 CellChangeTimes->{{3.914483933326947*^9, 3.914483985607267*^9}, {
  3.9144840339212027`*^9, 3.9144841391520357`*^9}, {3.914484854938463*^9, 
  3.914484866668542*^9}, {3.914485049311189*^9, 3.914485049713643*^9}, {
  3.915437063122219*^9, 3.9154370802047873`*^9}, {3.915439670076644*^9, 
  3.915439794516908*^9}, {3.916457586779192*^9, 3.916457601985408*^9}, {
  3.916465168527013*^9, 3.916465242711532*^9}, {3.9164654409521503`*^9, 
  3.916465562043861*^9}, {3.916495999605297*^9, 3.91649601216367*^9}},
 CellLabel->"In[70]:=",ExpressionUUID->"a8cd05b4-5749-429f-8a09-09100b2d1a24"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"2", " ", 
    RowBox[{"Re", "(", 
     RowBox[{
      TagBox[
       RowBox[{"KK", "(", "1053", ")"}],
       HoldForm], " ", 
      RowBox[{"dLog", "(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], "+", 
         RowBox[{
          FractionBox["1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
         RowBox[{"p", " ", 
          SqrtBox["s"]}]}], ",", 
        RowBox[{
         RowBox[{"-", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], "+", 
         RowBox[{
          FractionBox["1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
         RowBox[{"p", " ", 
          RowBox[{"(", 
           RowBox[{"-", 
            SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], ")"}]}], "-", 
   RowBox[{"2", " ", 
    RowBox[{"Re", "(", 
     RowBox[{
      TagBox[
       RowBox[{"KK", "(", "1087", ")"}],
       HoldForm], " ", 
      RowBox[{"dLog", "(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["\[CapitalDelta]", "A", "u"], "+", 
         RowBox[{
          FractionBox["1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             SubsuperscriptBox["m", "i", "2"]}], "-", 
            SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}], "+", 
         RowBox[{"p", " ", 
          SqrtBox["s"]}]}], ",", 
        RowBox[{
         SubsuperscriptBox["\[CapitalDelta]", "A", "u"], "+", 
         RowBox[{
          FractionBox["1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             SubsuperscriptBox["m", "i", "2"]}], "-", 
            SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}], "+", 
         RowBox[{"p", " ", 
          RowBox[{"(", 
           RowBox[{"-", 
            SqrtBox["s"]}], ")"}]}]}]}], ")"}]}], ")"}]}], "+", 
   RowBox[{
    FractionBox["16", "3"], " ", 
    TagBox[
     RowBox[{"KK", "(", "1016", ")"}],
     HoldForm], " ", 
    SuperscriptBox["p", "3"]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1030", ")"}],
     HoldForm], " ", "p"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.915591962241427*^9, 3.915596030240714*^9, 3.915868572814682*^9, 
   3.916126479908766*^9, 3.9162978607484818`*^9, 3.91629860098391*^9, 
   3.916393236855501*^9, 3.916393912868236*^9, 3.9163939965098886`*^9, 
   3.916394138502067*^9, 3.916394312206242*^9, 3.91645647257416*^9, 
   3.9164575464575653`*^9, {3.916457603289938*^9, 3.9164576227660637`*^9}, {
   3.916465448326496*^9, 3.9164654578868103`*^9}, 3.916465507329595*^9, 
   3.916465562528319*^9, 3.916466439106474*^9, 3.916466699214054*^9, 
   3.916466822010253*^9, 3.916467318953372*^9, 3.916717727349902*^9},
 CellLabel->"Out[70]=",ExpressionUUID->"c9f24f06-5e53-482d-9b7a-31d18b919a0e"]
}, Open  ]],

Cell["\<\
Substitute the tMass and uMass functions for their actual dependence on \
masses and decay rates (and s) .\
\>", "Text",
 CellChangeTimes->{{3.914484152971141*^9, 
  3.914484153396139*^9}},ExpressionUUID->"ba5d2886-298c-4fc5-a754-\
5f912ec2aaef"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"MakeBoxes", "[", 
   RowBox[{
    RowBox[{"GammaSq", "[", "a_", "]"}], ",", " ", "TraditionalForm"}], "]"}],
   " ", ":=", " ", 
  RowBox[{"SubscriptBox", "[", 
   RowBox[{"\"\<\[CapitalGamma]\>\"", ",", " ", 
    RowBox[{"MakeBoxes", "[", 
     RowBox[{"a", ",", " ", "TraditionalForm"}], "]"}]}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"GammaZ", ",", " ", "TraditionalForm"}], "]"}], " ", ":=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<\[CapitalGamma]\>\"", ",", " ", "\"\<Z\>\""}], "]"}]}], 
  ";"}]}], "Code",
 CellChangeTimes->{{3.9150358080527487`*^9, 3.915035896812783*^9}, {
  3.915036382190834*^9, 3.915036392317747*^9}},
 CellLabel->"In[71]:=",ExpressionUUID->"cfcb6d40-48a0-4a93-b161-1b5e167c7546"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"DeltaSubs", " ", "=", " ", 
   RowBox[{"{", "\n", "\t", 
    RowBox[{"(*", 
     RowBox[{
      RowBox[{
       RowBox[{"tMass", "[", 
        RowBox[{"a_", ",", "args__"}], "]"}], " ", "->", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"MSf", "[", 
          RowBox[{"a", ",", "args"}], "]"}], "^", "2"}], " ", "-", " ", 
        RowBox[{"\[ImaginaryI]", " ", 
         RowBox[{"GammaSq", "[", "a", "]"}], 
         RowBox[{"MSf", "[", 
          RowBox[{"a", ",", "args"}], "]"}]}]}]}], ","}], "*)"}], "\n", "\t", 
    
    RowBox[{
     RowBox[{"uMass", "[", 
      RowBox[{"a_", ",", "args__"}], "]"}], " ", "->", " ", 
     RowBox[{
      SuperscriptBox[
       RowBox[{"MNeu", "[", "i", "]"}], "2"], "+", 
      SuperscriptBox[
       RowBox[{"MNeu", "[", "j", "]"}], "2"], "-", "s", "-", 
      RowBox[{"tMass", "[", 
       RowBox[{"a", ",", " ", "args"}], "]"}]}]}], 
    RowBox[{"(*", 
     RowBox[{
      RowBox[{
       RowBox[{"MSf", "[", 
        RowBox[{"a", ",", "args"}], "]"}], "^", "2"}], " ", "+", " ", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"GammaSq", "[", "a", "]"}], 
       RowBox[{"MSf", "[", 
        RowBox[{"a", ",", "args"}], "]"}]}]}], "*)"}], 
    RowBox[{"(*", 
     RowBox[{",", "\n", "\t", 
      RowBox[{"DZ", " ", "->", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], "^", "2"}], " ", "-", " ", 
        
        RowBox[{"\[ImaginaryI]", " ", "GammaZ", " ", 
         RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}]}]}]}]}], "*)"}], "\n", 
    "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"DeltaAssumptions", " ", "=", " ", 
    RowBox[{"{", "\n", "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"MNeu", "[", "_", "]"}], " ", "\[Element]", " ", 
       "PositiveReals"}], ",", "\n", "\t", 
      RowBox[{
       RowBox[{"MSf", "[", "__", "]"}], " ", "\[Element]", " ", 
       "PositiveReals"}], ",", "\n", "\t", 
      RowBox[{
       RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], " ", "\[Element]", " ", 
       "PositiveReals"}], ",", "\n", "\t", 
      RowBox[{
       RowBox[{"GammaSq", "[", "_", "]"}], " ", "\[Element]", " ", 
       "PositiveReals"}], ",", "\n", "\t", 
      RowBox[{"GammaZ", " ", "\[Element]", " ", "PositiveReals"}], ",", "\n", 
      "\t", 
      RowBox[{"s", " ", "\[Element]", " ", "PositiveReals"}], ",", "\n", "\t", 
      RowBox[{"p", " ", "\[Element]", " ", "PositiveReals"}], ",", "\n", "\t", 
      RowBox[{
       RowBox[{"tMass", "[", "__", "]"}], " ", "\[Element]", " ", 
       "Complexes"}]}], "\n", "}"}]}], ";"}], "\n"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ItotIntegrals", "[", "5", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"Collect", "[", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"FRH", "[", 
       RowBox[{"ItotIntegrals", "[", "4", "]"}], "]"}], ",", 
      "\[IndentingNewLine]", "\t", 
      RowBox[{"{", 
       RowBox[{"p", ",", " ", 
        RowBox[{"dLog", "[", "__", "]"}]}], "}"}], ",", "\[IndentingNewLine]",
       "\t", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"Simplify", "[", 
         RowBox[{
          RowBox[{"#1", "/.", "DeltaSubs"}], ",", " ", 
          RowBox[{"Assumptions", "->", "DeltaAssumptions"}]}], "]"}], "&"}], 
       ")"}]}], "\[IndentingNewLine]", "]"}], " ", "//", " ", 
    RowBox[{
     RowBox[{"ReplaceAll", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{
        RowBox[{"Den", "[", 
         RowBox[{"s_", ",", "m_"}], "]"}], " ", "->", " ", 
        RowBox[{"1", "/", 
         RowBox[{"(", 
          RowBox[{"s", "-", "m"}], ")"}]}]}]}], "]"}], "&"}]}]}], 
  ";"}]}], "Code",
 CellChangeTimes->{{3.914484155179902*^9, 3.914484177250572*^9}, {
   3.9144848549436407`*^9, 3.914484866677045*^9}, {3.914485055021299*^9, 
   3.914485112529511*^9}, {3.915035902446977*^9, 3.915036058542641*^9}, {
   3.915036091114869*^9, 3.9150360969111147`*^9}, {3.915097955664865*^9, 
   3.915097955753476*^9}, {3.915098393294631*^9, 3.915098393414194*^9}, {
   3.915341465070364*^9, 3.915341467430924*^9}, {3.915439619395092*^9, 
   3.915439652633309*^9}, {3.915439832221472*^9, 3.915439832257523*^9}, {
   3.91543990500077*^9, 3.915439906653982*^9}, {3.915440063784107*^9, 
   3.915440087218065*^9}, {3.915464987563219*^9, 3.915464990868496*^9}, {
   3.9154689591504927`*^9, 3.915468967771006*^9}, {3.915469041652324*^9, 
   3.915469045800549*^9}, {3.915469290810836*^9, 3.915469294237513*^9}, 
   3.915589562983414*^9, {3.9155896051573*^9, 3.915589693279469*^9}, {
   3.9164652580038137`*^9, 3.916465435273014*^9}, {3.916465628191906*^9, 
   3.916465771051126*^9}, 3.916465804487742*^9},
 CellLabel->"In[73]:=",ExpressionUUID->"cf05098a-c654-4851-9767-0d7f27e0f162"],

Cell["\<\
Now  we  can  compute  the  total  cross  section  and write it to \
\[OpenCurlyDoubleQuote]results/LO/xsec.m\[CloseCurlyDoubleQuote].\
\>", "Text",
 CellChangeTimes->{{3.914484188373827*^9, 3.914484217035375*^9}, {
   3.9150983857175503`*^9, 3.915098388004359*^9}, 3.9153414282784758`*^9, {
   3.9164958145041943`*^9, 3.9164958200500317`*^9}, {3.916495856824998*^9, 
   3.916495860644672*^9}},ExpressionUUID->"6477fda9-da4f-4eed-bd85-\
8b91789df1b9"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"XSecPrefactor", " ", "=", " ", 
   RowBox[{
    RowBox[{
     FractionBox["CommonPrefactor", 
      RowBox[{"64", "\[Pi]", " ", 
       SuperscriptBox[
        SubscriptBox["N", "C"], "2"], 
       SuperscriptBox["s", "2"]}]], 
     RowBox[{"IdenticalPartFactor", "[", 
      RowBox[{"i", ",", "j"}], "]"}]}], "/.", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       SuperscriptBox[
        RowBox[{"FeynCalc`IndexDelta", "[", 
         RowBox[{"a", ",", "b"}], "]"}], "p_"], "->", 
       SubscriptBox["N", "C"]}], ",", 
      RowBox[{
       RowBox[{"SMP", "[", "\"\<g_W\>\"", "]"}], "->", 
       RowBox[{"Sqrt", "[", 
        RowBox[{"4", "\[Pi]", " ", 
         SubscriptBox["\[Alpha]", "W"]}], "]"}]}]}], "}"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"TotXSec", " ", "=", " ", 
   RowBox[{"XSecPrefactor", " ", "*", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"ItotIntegrals", "[", "5", "]"}], " ", "//", "\n", "\t", 
           RowBox[{
            RowBox[{"ReplaceAll", "[", 
             RowBox[{"#", ",", " ", 
              RowBox[{
               RowBox[{
                RowBox[{"Re", "[", "arg1_", "]"}], " ", "-", " ", 
                RowBox[{"Re", "[", "arg2_", "]"}]}], " ", "->", " ", 
               RowBox[{"Re", "[", 
                RowBox[{"arg1", "-", "arg2"}], "]"}]}]}], "]"}], "&"}]}], " ",
           "//", "\n", "\t", 
          RowBox[{
           RowBox[{"ReplaceAll", "[", 
            RowBox[{"#", ",", " ", 
             RowBox[{
              RowBox[{"Re", "[", "arg_", "]"}], " ", "->", " ", "arg"}]}], 
            "]"}], "&"}]}], " ", "//", "\n", "\t", 
         RowBox[{
          RowBox[{"Collect2", "[", 
           RowBox[{"#", ",", " ", 
            RowBox[{"dLog", "[", "args__", "]"}], ",", " ", 
            RowBox[{"Factoring", "->", "CollectEffCharges"}]}], "]"}], 
          "&"}]}], " ", "//", "\n", "\t", 
        RowBox[{
         RowBox[{"ReplaceAll", "[", 
          RowBox[{"#", ",", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"dLog", "[", "args__", "]"}], " ", "coeff_"}], " ", "->",
             " ", 
            RowBox[{"Re", "[", 
             RowBox[{
              RowBox[{"dLog", "[", "args", "]"}], " ", "coeff"}], "]"}]}]}], 
          "]"}], "&"}]}], " ", "//", "\n", "\t", "FRH"}], " ", "//", " ", 
      RowBox[{
       RowBox[{"ReplaceAll", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{"FeynCalc`Collect`Private`unity", " ", "->", " ", "1"}]}], 
        "]"}], "&"}]}], "\n", ")"}]}]}], "\n"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"FileNameJoin", "[", 
     RowBox[{"{", 
      RowBox[{"ResultsDir", ",", " ", "\"\<xsec.m\>\""}], "}"}], "]"}], ",", 
    " ", 
    RowBox[{
     RowBox[{"TotXSec", " ", "//", " ", "FullForm"}], " ", "//", " ", 
     "ToString"}]}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{{3.914484227260388*^9, 3.914484241040538*^9}, {
   3.914484371319018*^9, 3.9144844019547167`*^9}, {3.914484543561909*^9, 
   3.914484544324559*^9}, 3.914484657861101*^9, {3.914484854948985*^9, 
   3.914484871848958*^9}, {3.914485115336622*^9, 3.914485115716895*^9}, 
   3.91451026857612*^9, {3.915088224264974*^9, 3.9150882498644137`*^9}, {
   3.915097979155436*^9, 3.91509798468182*^9}, 3.915341430996359*^9, {
   3.915469309206528*^9, 3.9154693427197237`*^9}, {3.916465806339134*^9, 
   3.916465894027197*^9}, {3.9164659255923223`*^9, 3.916465993540413*^9}, {
   3.916466025089882*^9, 3.91646608857436*^9}, {3.916466134887974*^9, 
   3.916466384810376*^9}, {3.9164962583681173`*^9, 3.9164962697026978`*^9}},
 CellLabel->"In[76]:=",ExpressionUUID->"cc067aff-7f1b-4d41-9980-5e2652cb2b8b"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SuperscriptBox["s", "2"], " ", 
     SubscriptBox["N", "C"]}]], "\[Pi]", " ", 
   SuperscriptBox[
    RowBox[{"(", 
     FractionBox["1", "2"], ")"}], 
    TemplateBox[{
      RowBox[{"i", ",", "j"}]},
     "KroneckerDeltaSeq"]], " ", 
   SubsuperscriptBox["\[Alpha]", "W", "2"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", 
      FractionBox[
       RowBox[{"2", " ", "p", " ", 
        SubscriptBox["m", "i"], " ", 
        SubscriptBox["m", "j"], " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox[
           RowBox[{"(", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"], ")"}], "2"], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "R"], ")"}]},
             "Conjugate"], ")"}], "2"], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            SubsuperscriptBox["Z", "s", "L"], ")"}], "2"], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}], " ", 
        SuperscriptBox["s", 
         RowBox[{"3", "/", "2"}]]}], 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"s", "-", 
          SubscriptBox["\[CapitalDelta]", "Z"]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{"s", "-", 
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
           "Conjugate"]}], ")"}]}]]}], "-", 
     FractionBox[
      RowBox[{"2", " ", "p", " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", "s", "L"]},
           "Abs"], "2"], "+", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", "s", "R"]},
           "Abs"], "2"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"3", " ", 
          SubsuperscriptBox["m", "i", "4"]}], "-", 
         RowBox[{"9", " ", 
          RowBox[{"(", 
           RowBox[{"s", "-", 
            RowBox[{"2", " ", 
             SubsuperscriptBox["m", "j", "2"]}]}], ")"}], " ", 
          SubsuperscriptBox["m", "i", "2"]}], "+", 
         RowBox[{"3", " ", 
          SubsuperscriptBox["m", "j", "4"]}], "+", 
         RowBox[{"6", " ", 
          SuperscriptBox["s", "2"]}], "-", 
         RowBox[{"9", " ", "s", " ", 
          SubsuperscriptBox["m", "j", "2"]}], "+", 
         RowBox[{"8", " ", 
          SuperscriptBox["p", "2"], " ", "s"}]}], ")"}], " ", 
       SqrtBox["s"]}], 
      RowBox[{"3", " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{"s", "-", 
         TemplateBox[{
           RowBox[{"(", 
             SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
          "Conjugate"]}], ")"}]}]], "+", 
     RowBox[{"2", " ", "p", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"L", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "A", 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", "R"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", "L"}]], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"R", "L"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"L", "R"}]], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"R", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"R", "R"}]]}]}], ")"}], " ", 
      SqrtBox["s"]}], "-", 
     FractionBox[
      RowBox[{"p", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", 
          SuperscriptBox["s", "2"]}], "+", 
         RowBox[{"2", " ", 
          SubsuperscriptBox["m", "i", "2"], " ", "s"}], "+", 
         RowBox[{"2", " ", 
          SubsuperscriptBox["m", "j", "2"], " ", "s"}], "-", 
         RowBox[{"3", " ", 
          SubscriptBox["\[CapitalDelta]", "Z"], " ", "s"}], "-", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
           "Conjugate"], " ", "s"}], "-", 
         RowBox[{"2", " ", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], " ", "s"}], "+", 
         RowBox[{
          SubscriptBox["\[CapitalDelta]", "Z"], " ", 
          SubsuperscriptBox["m", "i", "2"]}], "+", 
         RowBox[{
          SubscriptBox["\[CapitalDelta]", "Z"], " ", 
          SubsuperscriptBox["m", "j", "2"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
           "Conjugate"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"-", "3"}], " ", 
             SubsuperscriptBox["m", "i", "2"]}], "-", 
            RowBox[{"3", " ", 
             SubsuperscriptBox["m", "j", "2"]}], "+", "s", "+", 
            RowBox[{"2", " ", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
              "Conjugate"]}]}], ")"}]}], "+", 
         RowBox[{"2", " ", 
          SubscriptBox["\[CapitalDelta]", "Z"], " ", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}]}], ")"}], " ", 
       SqrtBox["s"]}], 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"s", "-", 
         SubscriptBox["\[CapitalDelta]", "Z"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{"s", "-", 
         TemplateBox[{
           RowBox[{"(", 
             SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
          "Conjugate"]}], ")"}]}]], "-", 
     FractionBox[
      RowBox[{"p", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", 
          SuperscriptBox["s", "2"]}], "+", 
         RowBox[{"2", " ", 
          SubsuperscriptBox["m", "i", "2"], " ", "s"}], "+", 
         RowBox[{"2", " ", 
          SubsuperscriptBox["m", "j", "2"], " ", "s"}], "+", 
         RowBox[{
          SubscriptBox["\[CapitalDelta]", "Z"], " ", "s"}], "-", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
           "Conjugate"], " ", "s"}], "-", 
         RowBox[{"2", " ", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"], " ", "s"}], "-", 
         RowBox[{"3", " ", 
          SubscriptBox["\[CapitalDelta]", "Z"], " ", 
          SubsuperscriptBox["m", "i", "2"]}], "-", 
         RowBox[{"3", " ", 
          SubscriptBox["\[CapitalDelta]", "Z"], " ", 
          SubsuperscriptBox["m", "j", "2"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
           "Conjugate"], " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"], "-", 
            RowBox[{"3", " ", "s"}], "+", 
            RowBox[{"2", " ", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
              "Conjugate"]}]}], ")"}]}], "+", 
         RowBox[{"2", " ", 
          SubscriptBox["\[CapitalDelta]", "Z"], " ", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "R"]}]}], ")"}], " ", 
       SqrtBox["s"]}], 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"s", "-", 
         SubscriptBox["\[CapitalDelta]", "Z"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{"s", "-", 
         TemplateBox[{
           RowBox[{"(", 
             SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
          "Conjugate"]}], ")"}]}]], "+", 
     RowBox[{"Re", "(", 
      RowBox[{
       RowBox[{"dLog", "(", 
        RowBox[{
         RowBox[{
          FractionBox["1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"], "-", "s", "-", 
            RowBox[{"2", " ", 
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}]}], ")"}]}], ",", 
         RowBox[{
          FractionBox["1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"], "-", "s", "-", 
            RowBox[{"2", " ", 
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}]}], ")"}]}]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         FractionBox[
          RowBox[{"2", " ", "s", " ", 
           SubscriptBox["m", "i"], " ", 
           SubscriptBox["m", "j"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"L", "L"}]], ")"}]},
               "Conjugate"], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "B", 
                   RowBox[{"L", "L"}]], ")"}]},
               "Conjugate"]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "B", 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"]}], "+", 
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]], " ", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "L"}]]}], "+", 
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], " ", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "R"}]]}]}], ")"}]}], 
          RowBox[{
           RowBox[{"-", 
            SubsuperscriptBox["m", "i", "2"]}], "-", 
           SubsuperscriptBox["m", "j", "2"], "+", "s", "+", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
            "Conjugate"], "+", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}]], "+", 
         FractionBox[
          RowBox[{"2", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "B", 
                   RowBox[{"L", "L"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "B", 
                   RowBox[{"L", "R"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "R"}]]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "B", 
                   RowBox[{"R", "L"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "L"}]]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "B", 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"L", "L"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "L"}]]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"L", "R"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "R"}]]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"R", "L"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "L"}]]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "R"}]]}]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", "i", "2"], "-", 
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"], "-", 
             SubsuperscriptBox["m", "j", "2"]}], ")"}]}], 
          RowBox[{
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
            "Conjugate"], "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}]], "+", 
         FractionBox[
          RowBox[{"2", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"R", "L"}]], ")"}]},
               "Conjugate"], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "B", 
                   RowBox[{"L", "R"}]], ")"}]},
               "Conjugate"]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"L", "R"}]], ")"}]},
               "Conjugate"], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "B", 
                   RowBox[{"R", "L"}]], ")"}]},
               "Conjugate"]}], "+", 
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "L"}]], " ", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "R"}]]}], "+", 
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "R"}]], " ", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "L"}]]}]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                SubsuperscriptBox["m", "j", "2"], "-", 
                SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}], " ", 
              
              SubsuperscriptBox["m", "i", "2"]}], "+", 
             RowBox[{
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", 
                 SubsuperscriptBox["m", "j", "2"]}], "+", "s", "+", 
                SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}]}]}], 
            ")"}]}], 
          RowBox[{
           RowBox[{"-", 
            SubsuperscriptBox["m", "i", "2"]}], "-", 
           SubsuperscriptBox["m", "j", "2"], "+", "s", "+", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
            "Conjugate"], "+", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}]], "+", 
         FractionBox[
          RowBox[{"2", " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", "i", "2"], "-", 
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", "j", "2"], "-", 
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Z", "s", "L"], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Z", "s", "R"], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"L", "L"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Z", "s", "L"]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]], "-", 
         FractionBox[
          RowBox[{"2", " ", "s", " ", 
           SubscriptBox["m", "i"], " ", 
           SubscriptBox["m", "j"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"L", "L"}]], ")"}]},
               "Conjugate"], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Z", "s", "L"], ")"}]},
               "Conjugate"]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Z", "s", "R"], ")"}]},
               "Conjugate"]}], "+", 
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]], " ", 
              SubsuperscriptBox["Z", "s", "L"]}], "+", 
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], " ", 
              SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]]}], ")"}]}], ")"}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.915591962911075*^9, 3.915596030886948*^9, 3.915868574143044*^9, 
   3.916126481210088*^9, 3.916297862259377*^9, 3.91629860216429*^9, 
   3.916393236991908*^9, 3.916393913176013*^9, 3.916393996795375*^9, 
   3.916394138782115*^9, 3.9163943126072206`*^9, 3.9164564729389133`*^9, 
   3.9164575469631233`*^9, 3.916457623222046*^9, 3.916465414855785*^9, 
   3.916465569682988*^9, {3.916465686047928*^9, 3.916465726368883*^9}, {
   3.91646575811966*^9, 3.916465772794745*^9}, 3.916465807318645*^9, {
   3.916465887567162*^9, 3.916465894394619*^9}, 3.916465936750049*^9, {
   3.916465977937393*^9, 3.916465993964601*^9}, 3.916466028232957*^9, 
   3.916466058494228*^9, 3.916466091670293*^9, {3.916466139323596*^9, 
   3.916466175545648*^9}, 3.916466213047155*^9, {3.916466273318293*^9, 
   3.91646629249326*^9}, {3.916466326357839*^9, 3.9164663901354847`*^9}, 
   3.916466439587543*^9, 3.916466699693198*^9, 3.916466822488269*^9, 
   3.9164673194290113`*^9, 3.916717727885426*^9},
 CellLabel->"Out[77]=",ExpressionUUID->"f1162068-5c01-4cc9-b64f-2a4e6fc1c001"]
}, Open  ]],

Cell["Creating a function for substituting out t-variable limits.", "Text",
 CellChangeTimes->{{3.9150962958843517`*^9, 3.915096323368978*^9}, 
   3.915341764927332*^9},ExpressionUUID->"5df70a33-3983-479e-8947-\
adb9238997a6"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ZXSec", " ", "=", " ", 
  RowBox[{"XSecPrefactor", " ", "*", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"TotXSec", "/", "XSecPrefactor"}], " ", "//", " ", 
          RowBox[{
           RowBox[{"ReplaceRepeated", "[", 
            RowBox[{"#", ",", " ", 
             RowBox[{
              RowBox[{"Qtu", "[", "__", "]"}], " ", "->", " ", "0"}]}], "]"}],
            "&"}]}], " ", "//", "\n", "\t", 
         RowBox[{
          RowBox[{"ReplaceAll", "[", 
           RowBox[{"#", ",", " ", 
            RowBox[{
             RowBox[{"s", "^", "2"}], "->", 
             RowBox[{
              RowBox[{"4", "s", "*", 
               RowBox[{"p", "^", "2"}]}], "+", 
              RowBox[{"2", "s", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}], "+", 
                 RowBox[{
                  RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}]}], ")"}]}], "-", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}], "-", 
                 RowBox[{
                  RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}]}], ")"}], "^", 
               "2"}]}]}]}], "]"}], "&"}]}], " ", "//", " ", 
        "CollectEffCharges"}], " ", "//", " ", "FRH"}], " ", "//", "\n", "\t", 
      RowBox[{
       RowBox[{"ReplaceRepeated", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"a_", " ", "b_"}], " ", "+", " ", 
             RowBox[{
              RowBox[{"a_", "\[Conjugate]"}], 
              RowBox[{"b_", "\[Conjugate]"}]}]}], " ", "->", " ", 
            RowBox[{"2", 
             RowBox[{"Re", "[", 
              RowBox[{"a", " ", "b"}], "]"}]}]}], ",", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"a_", " ", 
              RowBox[{"b_", "\[Conjugate]"}]}], " ", "+", " ", 
             RowBox[{
              RowBox[{"a_", "\[Conjugate]"}], "b_"}]}], " ", "->", " ", 
            RowBox[{"2", 
             RowBox[{"Re", "[", 
              RowBox[{"a", " ", 
               RowBox[{"b", "\[Conjugate]"}]}], "]"}]}]}], ",", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"a_", "^", "2"}], " ", "+", " ", 
             RowBox[{
              RowBox[{"a_", "\[Conjugate]"}], "^", "2"}]}], " ", "->", " ", 
            RowBox[{"2", 
             RowBox[{"Re", "[", 
              RowBox[{"a", "^", "2"}], "]"}]}]}]}], "}"}]}], "]"}], "&"}]}], 
     " ", "//", "\n", "\t", 
     RowBox[{
      RowBox[{"ReplaceRepeated", "[", 
       RowBox[{"#", ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"2", 
           RowBox[{"Re", "[", "a_", "]"}]}], " ", "+", " ", 
          RowBox[{"2", 
           RowBox[{"Re", "[", "b_", "]"}]}]}], " ", "->", " ", 
         RowBox[{"2", 
          RowBox[{"Re", "[", 
           RowBox[{"a", " ", "+", " ", "b"}], "]"}]}]}]}], "]"}], "&"}]}], 
    ")"}]}]}]], "Code",
 CellChangeTimes->{{3.914746521037242*^9, 3.914746580383538*^9}, {
   3.914746751972983*^9, 3.914746863375669*^9}, {3.91474733691922*^9, 
   3.914747340243932*^9}, {3.915087631321237*^9, 3.915087645577763*^9}, 
   3.915088164163755*^9, {3.915096335022565*^9, 3.9150964013862534`*^9}, {
   3.915096456567343*^9, 3.915096466125285*^9}, {3.915096785326034*^9, 
   3.915096788772842*^9}, {3.915110562651133*^9, 3.915110609527163*^9}, {
   3.915111691136568*^9, 3.915111696905389*^9}, {3.915111809732709*^9, 
   3.91511180984921*^9}, 3.915341687785782*^9, {3.915469067979567*^9, 
   3.915469104123988*^9}, {3.915469163127723*^9, 3.915469164568516*^9}, {
   3.915469401794403*^9, 3.915469470872884*^9}, {3.915469558374979*^9, 
   3.915469569951495*^9}, {3.915469790384995*^9, 3.915469791556548*^9}, {
   3.91559614335706*^9, 3.9155961579698877`*^9}, {3.916297138403947*^9, 
   3.916297204348211*^9}, {3.91629779379537*^9, 3.916297795273602*^9}, {
   3.916298520145781*^9, 3.916298554561096*^9}, {3.9164672466602983`*^9, 
   3.9164672968399982`*^9}},
 CellLabel->"In[79]:=",ExpressionUUID->"119efc26-3621-4842-a9da-e214aeb673c1"],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{"\[Pi]", " ", 
    SubsuperscriptBox["\[Alpha]", "W", "2"], " ", 
    SuperscriptBox[
     RowBox[{"(", 
      FractionBox["1", "2"], ")"}], 
     TemplateBox[{
       RowBox[{"i", ",", "j"}]},
      "KroneckerDeltaSeq"]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", 
       FractionBox[
        RowBox[{"2", " ", "p", " ", 
         SqrtBox["s"], " ", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox[
            TemplateBox[{
              SubsuperscriptBox["Z", "s", "L"]},
             "Abs"], "2"], "+", 
           SuperscriptBox[
            TemplateBox[{
              SubsuperscriptBox["Z", "s", "R"]},
             "Abs"], "2"]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"3", " ", 
            SubsuperscriptBox["m", "i", "2"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"10", " ", 
               SubsuperscriptBox["m", "j", "2"]}], "+", "s"}], ")"}]}], "-", 
           RowBox[{"3", " ", 
            SubsuperscriptBox["m", "i", "4"]}], "+", 
           RowBox[{"3", " ", "s", " ", 
            SubsuperscriptBox["m", "j", "2"]}], "-", 
           RowBox[{"3", " ", 
            SubsuperscriptBox["m", "j", "4"]}], "+", 
           RowBox[{"32", " ", 
            SuperscriptBox["p", "2"], " ", "s"}]}], ")"}]}], 
        RowBox[{"3", " ", 
         RowBox[{"(", 
          RowBox[{
           SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}], ")"}]}]]}], "-", 
      FractionBox[
       RowBox[{"4", " ", "p", " ", 
        SuperscriptBox["s", 
         RowBox[{"3", "/", "2"}]], " ", 
        SubscriptBox["m", "i"], " ", 
        SubscriptBox["m", "j"], " ", 
        RowBox[{"Re", "(", 
         RowBox[{
          SuperscriptBox[
           RowBox[{"(", 
            SubsuperscriptBox["Z", "s", "L"], ")"}], "2"], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}]}], 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"s", "-", 
          SubscriptBox["\[CapitalDelta]", "Z"]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{"s", "-", 
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
           "Conjugate"]}], ")"}]}]]}], ")"}]}], 
   RowBox[{
    SuperscriptBox["s", "2"], " ", 
    SubscriptBox["N", "C"]}]], TraditionalForm]], "Output",
 CellChangeTimes->{{3.916467251091057*^9, 3.916467262210619*^9}, {
   3.916467297439879*^9, 3.916467319524075*^9}, 3.916717727932773*^9},
 CellLabel->"Out[79]=",ExpressionUUID->"bd127e78-f972-4ae0-ba26-d1d891e8180c"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"SquarkXSec", " ", "=", " ", 
  RowBox[{"XSecPrefactor", " ", "*", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"TotXSec", "/", "XSecPrefactor"}], " ", "//.", " ", 
       RowBox[{
        RowBox[{"Zs", "[", "__", "]"}], " ", "->", " ", "0"}]}], " ", "//", 
      "\n", "\t", 
      RowBox[{
       RowBox[{"ReplaceRepeated", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"a_", " ", "b_"}], " ", "+", " ", 
             RowBox[{
              RowBox[{"a_", "\[Conjugate]"}], 
              RowBox[{"b_", "\[Conjugate]"}]}]}], " ", "->", " ", 
            RowBox[{"2", 
             RowBox[{"Re", "[", 
              RowBox[{"a", " ", "b"}], "]"}]}]}], ",", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"a_", " ", 
              RowBox[{"b_", "\[Conjugate]"}]}], " ", "+", " ", 
             RowBox[{
              RowBox[{"a_", "\[Conjugate]"}], "b_"}]}], " ", "->", " ", 
            RowBox[{"2", 
             RowBox[{"Re", "[", 
              RowBox[{"a", " ", 
               RowBox[{"b", "\[Conjugate]"}]}], "]"}]}]}]}], "}"}]}], "]"}], 
       "&"}]}], " ", "//", "\n", "\t", 
     RowBox[{
      RowBox[{"ReplaceRepeated", "[", 
       RowBox[{"#", ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"2", 
           RowBox[{"Re", "[", "a_", "]"}]}], " ", "+", " ", 
          RowBox[{"2", 
           RowBox[{"Re", "[", "b_", "]"}]}]}], " ", "->", " ", 
         RowBox[{"2", 
          RowBox[{"Re", "[", 
           RowBox[{"a", " ", "+", " ", "b"}], "]"}]}]}]}], "]"}], "&"}]}], 
    ")"}]}]}]], "Code",
 CellChangeTimes->{{3.914746873197792*^9, 3.9147468939449778`*^9}, {
   3.91503660056435*^9, 3.915036603624197*^9}, {3.9150967768941097`*^9, 
   3.915096802688496*^9}, {3.915096847045466*^9, 3.915096925220744*^9}, {
   3.915096962097036*^9, 3.915096972642489*^9}, {3.915097031837044*^9, 
   3.9150970333905973`*^9}, {3.91509745908696*^9, 3.915097472801931*^9}, {
   3.915097506788953*^9, 3.915097587482009*^9}, {3.915111768186862*^9, 
   3.915111771741173*^9}, 3.915111812232143*^9, {3.915469130433546*^9, 
   3.91546913578074*^9}, 3.915469179500188*^9, {3.915469604349071*^9, 
   3.915469608055275*^9}, {3.916457694808525*^9, 3.9164578974010763`*^9}, {
   3.9164665068697844`*^9, 3.9164666340719423`*^9}, {3.9164667285682583`*^9, 
   3.91646677110816*^9}},
 CellLabel->"In[80]:=",ExpressionUUID->"0bc5fa96-2082-46ed-95ec-6a841ef74b66"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SuperscriptBox["s", "2"], " ", 
     SubscriptBox["N", "C"]}]], "\[Pi]", " ", 
   SubsuperscriptBox["\[Alpha]", "W", "2"], " ", 
   SuperscriptBox[
    RowBox[{"(", 
     FractionBox["1", "2"], ")"}], 
    TemplateBox[{
      RowBox[{"i", ",", "j"}]},
     "KroneckerDeltaSeq"]], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"Re", "(", 
      RowBox[{
       RowBox[{"dLog", "(", 
        RowBox[{
         RowBox[{
          FractionBox["1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             RowBox[{"2", " ", 
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}]}], "+", 
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}]}], ",", 
         RowBox[{
          FractionBox["1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             RowBox[{"2", " ", 
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}]}], "+", 
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}]}]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         FractionBox[
          RowBox[{"4", " ", "s", " ", 
           SubscriptBox["m", "i"], " ", 
           SubscriptBox["m", "j"], " ", 
           RowBox[{"Re", "(", 
            RowBox[{
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]], " ", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "L"}]]}], "+", 
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], " ", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "R"}]]}]}], ")"}]}], 
          RowBox[{
           SubsuperscriptBox["\[CapitalDelta]", "A", "t"], "+", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
            "Conjugate"], "-", 
           SubsuperscriptBox["m", "i", "2"], "-", 
           SubsuperscriptBox["m", "j", "2"], "+", "s"}]], "+", 
         FractionBox[
          RowBox[{"4", " ", 
           RowBox[{"Re", "(", 
            RowBox[{
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "L"}]], " ", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", "R"}]]}], "+", 
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "R"}]], " ", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", "L"}]]}]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              SubsuperscriptBox["m", "i", "2"], " ", 
              RowBox[{"(", 
               RowBox[{
                SubsuperscriptBox["m", "j", "2"], "-", 
                SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}]}], 
             "+", 
             RowBox[{
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"], " ", 
              RowBox[{"(", 
               RowBox[{
                SubsuperscriptBox["\[CapitalDelta]", "A", "t"], "-", 
                SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}]}], 
            ")"}]}], 
          RowBox[{
           SubsuperscriptBox["\[CapitalDelta]", "A", "t"], "+", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
            "Conjugate"], "-", 
           SubsuperscriptBox["m", "i", "2"], "-", 
           SubsuperscriptBox["m", "j", "2"], "+", "s"}]], "+", 
         FractionBox[
          RowBox[{"4", " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", "i", "2"], "-", 
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"], "-", 
             SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
           RowBox[{"Re", "(", 
            RowBox[{
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "R"}]], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "B", 
                   RowBox[{"L", "R"}]], ")"}]},
               "Conjugate"]}], "+", 
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "L"}]], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "B", 
                   RowBox[{"R", "L"}]], ")"}]},
               "Conjugate"]}], "+", 
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "B", 
                   RowBox[{"L", "L"}]], ")"}]},
               "Conjugate"]}], "+", 
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "B", 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"]}]}], ")"}]}], 
          RowBox[{
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
            "Conjugate"], "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}]]}], ")"}]}], 
      ")"}], "+", 
     RowBox[{"4", " ", "p", " ", 
      SqrtBox["s"], " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"L", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"L", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", "L"}]], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"L", "R"}]], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"R", "L"}]]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.916466514558385*^9, {3.9164665881261044`*^9, 3.9164666344145947`*^9}, 
   3.916466699822775*^9, 3.9164667532510757`*^9, 3.916466822614071*^9, 
   3.916467319557324*^9, 3.916717727972385*^9},
 CellLabel->"Out[80]=",ExpressionUUID->"f2a2e1cb-6553-4d30-b2d4-504b3d25c9e1"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"TotXSec", "/", "XSecPrefactor"}], " ", "//.", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"Zs", "[", "arg1_", "]"}], "^", "2"}], " ", "->", " ", "0"}], 
     ",", " ", 
     RowBox[{
      RowBox[{"Abs", "[", 
       RowBox[{"Zs", "[", "_", "]"}], "]"}], " ", "->", " ", "0"}], ",", " ", 
     
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"Zs", "[", "arg1_", "]"}], "\[Conjugate]"}], "^", "2"}], " ", 
      "->", " ", "0"}], ",", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"Qtu", "[", "args1__", "]"}], 
       RowBox[{"Qtu", "[", "args2__", "]"}]}], " ", "->", " ", "0"}], ",", 
     " ", 
     RowBox[{
      RowBox[{
       RowBox[{"Qtu", "[", "args1__", "]"}], 
       RowBox[{
        RowBox[{"Qtu", "[", "args2__", "]"}], "\[Conjugate]"}]}], " ", "->", 
      " ", "0"}], ",", " ", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"Qtu", "[", "args1__", "]"}], "\[Conjugate]"}], 
       RowBox[{
        RowBox[{"Qtu", "[", "args2__", "]"}], "\[Conjugate]"}]}], " ", "->", 
      " ", "0"}]}], "}"}]}], ";"}], "\n", 
 RowBox[{"InterferenceXSec", " ", "=", " ", 
  RowBox[{"XSecPrefactor", " ", "*", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"%", " ", "//", "\n", "\t", 
      RowBox[{
       RowBox[{"ReplaceRepeated", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"a_", " ", "b_"}], " ", "+", " ", 
             RowBox[{
              RowBox[{"a_", "\[Conjugate]"}], 
              RowBox[{"b_", "\[Conjugate]"}]}]}], " ", "->", " ", 
            RowBox[{"2", 
             RowBox[{"Re", "[", 
              RowBox[{"a", " ", "b"}], "]"}]}]}], ",", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"a_", " ", 
              RowBox[{"b_", "\[Conjugate]"}]}], " ", "+", " ", 
             RowBox[{
              RowBox[{"a_", "\[Conjugate]"}], "b_"}]}], " ", "->", " ", 
            RowBox[{"2", 
             RowBox[{"Re", "[", 
              RowBox[{"a", " ", 
               RowBox[{"b", "\[Conjugate]"}]}], "]"}]}]}]}], "}"}]}], "]"}], 
       "&"}]}], " ", "//", "\n", "\t", 
     RowBox[{
      RowBox[{"ReplaceRepeated", "[", 
       RowBox[{"#", ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"2", 
           RowBox[{"Re", "[", "a_", "]"}]}], " ", "+", " ", 
          RowBox[{"2", 
           RowBox[{"Re", "[", "b_", "]"}]}]}], " ", "->", " ", 
         RowBox[{"2", 
          RowBox[{"Re", "[", 
           RowBox[{"a", " ", "+", " ", "b"}], "]"}]}]}]}], "]"}], "&"}]}], 
    ")"}]}]}]}], "Code",
 CellChangeTimes->{{3.914746916474818*^9, 3.914746993910339*^9}, {
   3.914747150386434*^9, 3.914747296680312*^9}, {3.91474734559478*^9, 
   3.914747404170086*^9}, {3.915097189384449*^9, 3.915097216575899*^9}, {
   3.9151113380826*^9, 3.915111348164782*^9}, {3.915192300819622*^9, 
   3.915192305413743*^9}, {3.915469185529615*^9, 3.915469214119226*^9}, {
   3.915469650483439*^9, 3.915469692923979*^9}, {3.916457924892618*^9, 
   3.916457926667034*^9}, {3.916466625456874*^9, 3.916466627190196*^9}, 
   3.916466775671522*^9},
 CellLabel->"In[81]:=",ExpressionUUID->"32a9a206-aabb-41a4-9652-02a7dc12aae2"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SuperscriptBox["s", "2"], " ", 
     SubscriptBox["N", "C"]}]], "\[Pi]", " ", 
   SubsuperscriptBox["\[Alpha]", "W", "2"], " ", 
   SuperscriptBox[
    RowBox[{"(", 
     FractionBox["1", "2"], ")"}], 
    TemplateBox[{
      RowBox[{"i", ",", "j"}]},
     "KroneckerDeltaSeq"]], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"Re", "(", 
      RowBox[{
       RowBox[{"dLog", "(", 
        RowBox[{
         RowBox[{
          FractionBox["1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             RowBox[{"2", " ", 
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}]}], "+", 
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}]}], ",", 
         RowBox[{
          FractionBox["1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             RowBox[{"2", " ", 
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}]}], "+", 
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}]}]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         FractionBox[
          RowBox[{"4", " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", "i", "2"], "-", 
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", "j", "2"], "-", 
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}], " ", 
           RowBox[{"Re", "(", 
            RowBox[{
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Z", "s", "L"], ")"}]},
               "Conjugate"]}], "+", 
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Z", "s", "R"], ")"}]},
               "Conjugate"]}]}], ")"}]}], 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]], "-", 
         FractionBox[
          RowBox[{"4", " ", "s", " ", 
           SubscriptBox["m", "i"], " ", 
           SubscriptBox["m", "j"], " ", 
           RowBox[{"Re", "(", 
            RowBox[{
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]], " ", 
              SubsuperscriptBox["Z", "s", "L"]}], "+", 
             RowBox[{
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], " ", 
              SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]]}], ")"}]}], ")"}], "-", 
     FractionBox[
      RowBox[{"p", " ", 
       SqrtBox["s"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
           "Conjugate"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"2", " ", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
              "Conjugate"]}], "-", 
            RowBox[{"3", " ", 
             SubsuperscriptBox["m", "i", "2"]}], "-", 
            RowBox[{"3", " ", 
             SubsuperscriptBox["m", "j", "2"]}], "+", "s"}], ")"}]}], "-", 
         RowBox[{"2", " ", "s", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{"2", " ", "s", " ", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], "+", 
         RowBox[{"2", " ", 
          SubscriptBox["\[CapitalDelta]", "Z"], " ", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], "+", 
         RowBox[{"2", " ", "s", " ", 
          SubsuperscriptBox["m", "i", "2"]}], "+", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], " ", 
          SubscriptBox["\[CapitalDelta]", "Z"]}], "+", 
         RowBox[{"2", " ", "s", " ", 
          SubsuperscriptBox["m", "j", "2"]}], "+", 
         RowBox[{
          SubsuperscriptBox["m", "j", "2"], " ", 
          SubscriptBox["\[CapitalDelta]", "Z"]}], "+", 
         RowBox[{"2", " ", 
          SuperscriptBox["s", "2"]}], "-", 
         RowBox[{"3", " ", "s", " ", 
          SubscriptBox["\[CapitalDelta]", "Z"]}]}], ")"}]}], 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"s", "-", 
         SubscriptBox["\[CapitalDelta]", "Z"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{"s", "-", 
         TemplateBox[{
           RowBox[{"(", 
             SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
          "Conjugate"]}], ")"}]}]], "-", 
     FractionBox[
      RowBox[{"p", " ", 
       SqrtBox["s"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Z", "s", "L"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["Z", "s", "R"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
           "Conjugate"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"2", " ", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
              "Conjugate"]}], "+", 
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"], "-", 
            RowBox[{"3", " ", "s"}]}], ")"}]}], "-", 
         RowBox[{"2", " ", "s", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{"2", " ", "s", " ", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], "+", 
         RowBox[{"2", " ", 
          SubscriptBox["\[CapitalDelta]", "Z"], " ", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], "+", 
         RowBox[{"2", " ", "s", " ", 
          SubsuperscriptBox["m", "i", "2"]}], "-", 
         RowBox[{"3", " ", 
          SubsuperscriptBox["m", "i", "2"], " ", 
          SubscriptBox["\[CapitalDelta]", "Z"]}], "+", 
         RowBox[{"2", " ", "s", " ", 
          SubsuperscriptBox["m", "j", "2"]}], "-", 
         RowBox[{"3", " ", 
          SubsuperscriptBox["m", "j", "2"], " ", 
          SubscriptBox["\[CapitalDelta]", "Z"]}], "+", 
         RowBox[{"2", " ", 
          SuperscriptBox["s", "2"]}], "+", 
         RowBox[{"s", " ", 
          SubscriptBox["\[CapitalDelta]", "Z"]}]}], ")"}]}], 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"s", "-", 
         SubscriptBox["\[CapitalDelta]", "Z"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{"s", "-", 
         TemplateBox[{
           RowBox[{"(", 
             SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
          "Conjugate"]}], ")"}]}]]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.915591963462*^9, 3.915596031423641*^9, 
  3.915868575460105*^9, 3.916126482397948*^9, 3.916297863458951*^9, 
  3.916298604462305*^9, 3.916393237109955*^9, 3.916393913857139*^9, 
  3.916393997417511*^9, 3.916394139463683*^9, 3.9163943134065943`*^9, 
  3.916456473747806*^9, 3.91645754778419*^9, 3.916457623594892*^9, 
  3.916457928238926*^9, 3.916466439816926*^9, 3.9164666374364653`*^9, 
  3.9164666998662577`*^9, 3.9164667763804607`*^9, 3.916466822655846*^9, 
  3.916467319598619*^9, 3.916717728039446*^9},
 CellLabel->"Out[82]=",ExpressionUUID->"dfe70d8b-0c6d-4d53-b9bf-e8da63cd2251"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1383, 855},
WindowMargins->{{-2.25, Automatic}, {Automatic, -22.5}},
Magnification:>1.25 Inherited,
FrontEndVersion->"14.0 for Linux x86 (64-bit) (December 12, 2023)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"723fdb65-76d2-49eb-a6d8-9b1c3d5af7fb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[580, 22, 692, 22, 130, "Title",ExpressionUUID->"3113a770-5abe-44cf-abcb-7ce35a303d51"],
Cell[CellGroupData[{
Cell[1297, 48, 161, 3, 83, "Section",ExpressionUUID->"623a1251-67d0-47eb-8946-d965d9acab62"],
Cell[1461, 53, 312, 7, 43, "Text",ExpressionUUID->"c9b6c74b-bed6-40d7-93a2-94b88f4a1423"],
Cell[CellGroupData[{
Cell[1798, 64, 1530, 40, 382, "Code",ExpressionUUID->"8f3aec24-40f5-4cbe-be7d-b10e746f9f39"],
Cell[CellGroupData[{
Cell[3353, 108, 2908, 73, 37, "Print",ExpressionUUID->"cd38dc49-3651-4aba-8771-874e3db1d0cb"],
Cell[6264, 183, 2091, 54, 37, "Print",ExpressionUUID->"fdf6d877-bace-4743-8fb6-d5008e0b837b"],
Cell[8358, 239, 624, 12, 33, "Print",ExpressionUUID->"086a66c7-7720-4b92-8f7b-70ad3d1c20f7"],
Cell[8985, 253, 671, 14, 33, "Print",ExpressionUUID->"bb6f9925-2680-4ed5-bf28-2cc099267a26"],
Cell[9659, 269, 2275, 61, 37, "Print",ExpressionUUID->"814ce508-8533-4bc9-a9aa-ee0e09a06cbf"],
Cell[11937, 332, 566, 11, 33, "Print",ExpressionUUID->"a443e8d2-2275-4d49-becf-58e71845e012"],
Cell[12506, 345, 600, 12, 33, "Print",ExpressionUUID->"3480b97d-65cc-4343-a1c6-0941f861d1f2"],
Cell[13109, 359, 454, 8, 30, "Print",ExpressionUUID->"ed4c76d9-fe0c-4bd1-bbb7-37cc045e0812"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[13612, 373, 631, 15, 137, "Code",ExpressionUUID->"cc6ff964-d048-45bc-be5a-ea7e51f04364"],
Cell[14246, 390, 1188, 22, 35, "Message",ExpressionUUID->"5f06ac53-9627-4af9-bbda-36f325182ec3"],
Cell[15437, 414, 1203, 22, 35, "Message",ExpressionUUID->"1f0baca7-7b18-49e6-927d-60f11c794c4b"]
}, Open  ]],
Cell[16655, 439, 486, 10, 67, "Code",ExpressionUUID->"aea92a0e-64bf-4b68-917a-d10ba669d15b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[17178, 454, 263, 5, 83, "Section",ExpressionUUID->"1c0417f8-1640-4d22-b557-b0b5f20add28"],
Cell[17444, 461, 201, 4, 43, "Text",ExpressionUUID->"4186d4a3-bada-4c67-8571-a260e389a999"],
Cell[CellGroupData[{
Cell[17670, 469, 2621, 65, 266, "Code",ExpressionUUID->"cc16bb95-c627-4203-b579-2002f02b5044"],
Cell[20294, 536, 15348, 364, 330, "Print",ExpressionUUID->"b85fc58e-f326-41fa-ac1e-bf750bd8057c"]
}, Open  ]],
Cell[35657, 903, 1764, 38, 328, "Code",ExpressionUUID->"f495b4e2-7d04-4f0e-81e0-efbc9664e28e"],
Cell[37424, 943, 1544, 41, 159, "Code",ExpressionUUID->"10140aeb-b31b-4b2d-b756-899697c815c6"],
Cell[38971, 986, 632, 16, 43, "Text",ExpressionUUID->"41d39d94-ff21-4cc2-bd87-c1bdcf6657c6"],
Cell[39606, 1004, 3242, 99, 206, "Code",ExpressionUUID->"36440b80-fc3f-4d7b-8c26-ddfba8b0a672"],
Cell[42851, 1105, 1168, 24, 124, "Text",ExpressionUUID->"ad4451d8-dd8b-43c5-875a-e647cd0c3590"],
Cell[44022, 1131, 1408, 28, 67, "Code",ExpressionUUID->"f02d3fee-ced5-4933-85ed-21304906c288"]
}, Open  ]],
Cell[CellGroupData[{
Cell[45467, 1164, 166, 3, 83, "Section",ExpressionUUID->"db7b6bd3-aba9-4133-abee-dd24733cb04e"],
Cell[45636, 1169, 156, 3, 43, "Text",ExpressionUUID->"71d22fcc-faba-4d9d-8e9e-15214f0a349e"],
Cell[45795, 1174, 2711, 81, 182, "Code",ExpressionUUID->"4fd47e62-1465-4ae8-a527-695c73775065"],
Cell[48509, 1257, 232, 8, 43, "Text",ExpressionUUID->"eed70a53-a9f9-4d6e-8657-7c9bb7fd69d5"],
Cell[48744, 1267, 1617, 46, 182, "Code",ExpressionUUID->"295fa500-9c88-4314-9ced-4708b80f6228"],
Cell[50364, 1315, 327, 7, 43, "Text",ExpressionUUID->"a16dff32-b1de-40fa-b9f0-571a2c1c4ea9"],
Cell[50694, 1324, 2219, 61, 206, "Code",ExpressionUUID->"49386eef-cb3a-49d4-8239-c6b69a372a74"],
Cell[52916, 1387, 589, 16, 43, "Text",ExpressionUUID->"0e0afdb3-dece-41cb-a644-0edb6fe016f4"],
Cell[CellGroupData[{
Cell[53530, 1407, 2178, 61, 166, "Code",ExpressionUUID->"3f2bc887-6a25-44af-844f-f468f45193db"],
Cell[55711, 1470, 2978, 85, 61, "Output",ExpressionUUID->"96a48308-623c-4be5-9500-13c59083b682"]
}, Open  ]],
Cell[58704, 1558, 249, 4, 43, "Text",ExpressionUUID->"4fd79281-2702-49b2-96b8-cbb432fb13de"],
Cell[58956, 1564, 3408, 90, 284, "Code",ExpressionUUID->"213691d6-4bdd-4d4f-8a41-03c7acde6dac"],
Cell[62367, 1656, 263, 6, 43, "Text",ExpressionUUID->"9857bd9e-f705-4970-8451-41d0c5407f3f"],
Cell[CellGroupData[{
Cell[62655, 1666, 1540, 44, 166, "Code",ExpressionUUID->"c5ea0e72-1190-4ac8-9c32-2f35ebbff4ab"],
Cell[64198, 1712, 1594, 47, 45, "Output",ExpressionUUID->"5f1cff32-e873-4392-90aa-e136fadc1a88"]
}, Open  ]],
Cell[65807, 1762, 300, 6, 43, "Text",ExpressionUUID->"6fead36b-cfbc-43d7-a66f-84c0c29ae693"],
Cell[CellGroupData[{
Cell[66132, 1772, 2972, 81, 194, "Code",ExpressionUUID->"023e21e7-f598-4047-a226-039e1e3bfc04"],
Cell[69107, 1855, 17838, 515, 366, "Output",ExpressionUUID->"636bed8c-b582-492e-b9f0-219f4a57b649"]
}, Open  ]],
Cell[86960, 2373, 222, 5, 43, "Text",ExpressionUUID->"555ece66-f6f6-41bb-8d46-3e5c6a02969e"],
Cell[CellGroupData[{
Cell[87207, 2382, 2481, 65, 195, "Code",ExpressionUUID->"337361d3-737c-405b-9f1f-de884e445225"],
Cell[89691, 2449, 3689, 109, 114, "Output",ExpressionUUID->"a583cf4f-77b0-46ec-8f96-51423ac52193"],
Cell[93383, 2560, 7870, 232, 216, "Output",ExpressionUUID->"ac090c1c-53b8-490d-88ed-b7ae26a4dc62"],
Cell[101256, 2794, 8482, 246, 216, "Output",ExpressionUUID->"68dc3ecb-388c-4920-a965-0aca7ee69625"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[109787, 3046, 168, 3, 83, "Section",ExpressionUUID->"e6d77a07-eeec-44aa-b43b-b09b4f430ce9"],
Cell[109958, 3051, 152, 3, 43, "Text",ExpressionUUID->"41d62fbb-5fd7-4921-bfda-aadc1a46ba8f"],
Cell[110113, 3056, 689, 18, 72, "Text",ExpressionUUID->"4a29c216-215b-42ef-936a-10919eb7f1ef"],
Cell[110805, 3076, 2331, 60, 166, "Code",ExpressionUUID->"397c4165-053c-4434-b0b3-1dc17d856bb6"],
Cell[113139, 3138, 1675, 31, 39, "Text",ExpressionUUID->"9c701713-f89c-44f4-827a-c3d01beef026"],
Cell[CellGroupData[{
Cell[114839, 3173, 666, 13, 88, "Code",ExpressionUUID->"bf9d0b1a-94a4-4976-8666-fab9971a81ed"],
Cell[115508, 3188, 9135, 306, 117, "Output",ExpressionUUID->"45b48b7f-9dfd-4f97-99a4-f3d8238ec0f2"]
}, Open  ]],
Cell[124658, 3497, 236, 6, 43, "Text",ExpressionUUID->"1a15edf9-d50e-4ae1-a315-7b64b062e5b1"],
Cell[CellGroupData[{
Cell[124919, 3507, 468, 9, 67, "Code",ExpressionUUID->"c3aa978d-ccf6-4348-9406-9146fd7afbd9"],
Cell[125390, 3518, 52681, 1667, 887, "Output",ExpressionUUID->"6aa4fd5b-c3f2-48c9-be53-7a21589b05d3"]
}, Open  ]],
Cell[178086, 5188, 270, 6, 43, "Text",ExpressionUUID->"510361ee-7e50-409f-b90d-f01514a1fa9c"],
Cell[178359, 5196, 2923, 71, 512, "Code",ExpressionUUID->"97bd251d-7201-44a6-91ee-7d1671fc69a9"],
Cell[181285, 5269, 482, 12, 43, "Text",ExpressionUUID->"83473601-3d23-489f-8cce-22a9e8635e72"],
Cell[CellGroupData[{
Cell[181792, 5285, 2980, 71, 388, "Code",ExpressionUUID->"9185987c-c286-49a9-8e2c-abd135038383"],
Cell[184775, 5358, 8108, 255, 205, "Output",ExpressionUUID->"ae7f05aa-fe55-4c4d-b381-61ed48ad72cc"]
}, Open  ]],
Cell[192898, 5616, 264, 6, 43, "Text",ExpressionUUID->"68798862-a218-4240-be60-22ac4c755df7"],
Cell[CellGroupData[{
Cell[193187, 5626, 3196, 85, 324, "Code",ExpressionUUID->"84fccf6c-3854-43dd-a418-82c19a1daeb5"],
Cell[196386, 5713, 4965, 153, 157, "Output",ExpressionUUID->"f20d6b81-323f-4040-ae3d-e6cf4a07b1d8"]
}, Open  ]],
Cell[201366, 5869, 312, 7, 43, "Text",ExpressionUUID->"0ab35704-1865-4dd1-8623-0a67881b741f"],
Cell[CellGroupData[{
Cell[201703, 5880, 4622, 117, 526, "Code",ExpressionUUID->"a9c2b922-9999-415d-a638-4a936907ff55"],
Cell[206328, 5999, 4947, 152, 157, "Output",ExpressionUUID->"65ec66f5-3463-4a52-b5c3-e8990ddd4cb4"],
Cell[211278, 6153, 1259, 33, 35, "Print",ExpressionUUID->"ebefb1d2-03bb-48d0-a4fd-e885a74fe9b1"]
}, Open  ]],
Cell[212552, 6189, 504, 10, 101, "Text",ExpressionUUID->"d7b1fe24-c08d-4517-9539-93e5f5eeb6b9"],
Cell[CellGroupData[{
Cell[213081, 6203, 2248, 61, 143, "Code",ExpressionUUID->"a8cd05b4-5749-429f-8a09-09100b2d1a24"],
Cell[215332, 6266, 3091, 86, 109, "Output",ExpressionUUID->"c9f24f06-5e53-482d-9b7a-31d18b919a0e"]
}, Open  ]],
Cell[218438, 6355, 256, 6, 43, "Text",ExpressionUUID->"ba5d2886-298c-4fc5-a754-5f912ec2aaef"],
Cell[218697, 6363, 800, 19, 93, "Code",ExpressionUUID->"cfcb6d40-48a0-4a93-b161-1b5e167c7546"],
Cell[219500, 6384, 4758, 115, 559, "Code",ExpressionUUID->"cf05098a-c654-4851-9767-0d7f27e0f162"],
Cell[224261, 6501, 461, 8, 43, "Text",ExpressionUUID->"6477fda9-da4f-4eed-bd85-8b91789df1b9"],
Cell[CellGroupData[{
Cell[224747, 6513, 3769, 93, 326, "Code",ExpressionUUID->"cc067aff-7f1b-4d41-9980-5e2652cb2b8b"],
Cell[228519, 6608, 23754, 653, 589, "Output",ExpressionUUID->"f1162068-5c01-4cc9-b64f-2a4e6fc1c001"]
}, Open  ]],
Cell[252288, 7264, 226, 3, 43, "Text",ExpressionUUID->"5df70a33-3983-479e-8947-adb9238997a6"],
Cell[CellGroupData[{
Cell[252539, 7271, 4291, 102, 145, "Code",ExpressionUUID->"119efc26-3621-4842-a9da-e214aeb673c1"],
Cell[256833, 7375, 2878, 82, 91, "Output",ExpressionUUID->"bd127e78-f972-4ae0-ba26-d1d891e8180c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[259748, 7462, 2541, 60, 119, "Code",ExpressionUUID->"0bc5fa96-2082-46ed-95ec-6a841ef74b66"],
Cell[262292, 7524, 7540, 208, 260, "Output",ExpressionUUID->"f2a2e1cb-6553-4d30-b2d4-504b3d25c9e1"]
}, Open  ]],
Cell[CellGroupData[{
Cell[269869, 7737, 3281, 88, 145, "Code",ExpressionUUID->"32a9a206-aabb-41a4-9652-02a7dc12aae2"],
Cell[273153, 7827, 9053, 243, 305, "Output",ExpressionUUID->"dfe70d8b-0c6d-4d53-b9bf-e8da63cd2251"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

