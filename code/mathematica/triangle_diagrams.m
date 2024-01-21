(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 14.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    589622,      14962]
NotebookOptionsPosition[    584248,      14873]
NotebookOutlinePosition[    584649,      14889]
CellTagsIndexPosition[    584606,      14886]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Vertex contribution to partonic neutralino pair production", "Title",
 CellChangeTimes->{{3.914485879847805*^9, 3.914485918031783*^9}, {
  3.914568394472753*^9, 
  3.914568401654965*^9}},ExpressionUUID->"d1f23885-569f-49f9-bb3d-\
b41e8d0938ea"],

Cell[CellGroupData[{

Cell["Initialisation", "Section",
 CellChangeTimes->{{3.9144763179811068`*^9, 
  3.914476339787057*^9}},ExpressionUUID->"9d569646-c354-4d67-b2ce-\
0e1c84264cc5"],

Cell["\<\
Load FeynCalc and FeynArts. Furthermore, this notebook makes use of three \
packages found in the \[OpenCurlyDoubleQuote]include\[CloseCurlyDoubleQuote] \
folder.\
\>", "Text",
 CellChangeTimes->{{3.914476486107745*^9, 
  3.914476566436034*^9}},ExpressionUUID->"68144451-ff4b-4629-addd-\
851c23da2f68"],

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
 RowBox[{
  RowBox[{"FAPatch", "[", 
   RowBox[{"PatchModelsOnly", "->", "True"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{
  3.91447635123787*^9, {3.914476624408684*^9, 3.9144766387867937`*^9}, 
   3.914478375354082*^9, 3.914485345161674*^9, {3.914485624539702*^9, 
   3.914485650913145*^9}, {3.914644066601666*^9, 3.914644066930416*^9}, 
   3.914645456973885*^9},
 CellLabel->"In[1]:=",ExpressionUUID->"76fec7da-9481-436e-b721-a33a61426046"],

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
 CellChangeTimes->{
  3.914559435410506*^9, 3.9146420924949017`*^9, 3.9146423245763607`*^9, 
   3.914643993541977*^9, {3.914644048414221*^9, 3.914644060265332*^9}, 
   3.914644858665984*^9, 3.9146496950363626`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"3f5b74aa-d43e-4058-a691-8b09ce2e247d"],

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
 CellChangeTimes->{
  3.914559435410506*^9, 3.9146420924949017`*^9, 3.9146423245763607`*^9, 
   3.914643993541977*^9, {3.914644048414221*^9, 3.914644060265332*^9}, 
   3.914644858665984*^9, 3.914649695039653*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"728ec48b-6368-45f0-8a84-8b1dd8f09c22"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynCalc in your research, please evaluate \
FeynCalcHowToCite[] to learn how to cite this software.\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{
  3.914559435410506*^9, 3.9146420924949017`*^9, 3.9146423245763607`*^9, 
   3.914643993541977*^9, {3.914644048414221*^9, 3.914644060265332*^9}, 
   3.914644858665984*^9, 3.914649695040784*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"ac76dd12-2cc6-4384-b95b-0c83576be9e5"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"Please keep in mind that the proper academic attribution of \
our work is crucial to ensure the future development of this package!\"\>", 
   "Text",
   StripOnInput->False,
   FontSlant->Italic], TraditionalForm]], "Print",
 CellChangeTimes->{
  3.914559435410506*^9, 3.9146420924949017`*^9, 3.9146423245763607`*^9, 
   3.914643993541977*^9, {3.914644048414221*^9, 3.914644060265332*^9}, 
   3.914644858665984*^9, 3.91464969504174*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"2e2c2719-9e94-461b-98a6-a4a8a3296209"],

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
 CellChangeTimes->{
  3.914559435410506*^9, 3.9146420924949017`*^9, 3.9146423245763607`*^9, 
   3.914643993541977*^9, {3.914644048414221*^9, 3.914644060265332*^9}, 
   3.914644858665984*^9, 3.9146496951290083`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"3e5440f4-00c5-464b-9b78-fb6be5100da1"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynArts in your research, please cite\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{
  3.914559435410506*^9, 3.9146420924949017`*^9, 3.9146423245763607`*^9, 
   3.914643993541977*^9, {3.914644048414221*^9, 3.914644060265332*^9}, 
   3.914644858665984*^9, 3.9146496951309643`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"a342db52-e0df-464d-b368-a8f3158277d7"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\" \[Bullet] T. Hahn, Comput. Phys. Commun., 140, 418-431, \
2001, arXiv:hep-ph/0012260\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{
  3.914559435410506*^9, 3.9146420924949017`*^9, 3.9146423245763607`*^9, 
   3.914643993541977*^9, {3.914644048414221*^9, 3.914644060265332*^9}, 
   3.914644858665984*^9, 3.9146496951322813`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"5e74e839-d87e-43b2-bcf0-34c55e4d27ef"],

Cell["Successfully patched FeynArts.", "Print",
 CellChangeTimes->{
  3.914559435410506*^9, 3.9146420924949017`*^9, 3.9146423245763607`*^9, 
   3.914643993541977*^9, {3.914644048414221*^9, 3.914644060265332*^9}, 
   3.914644858665984*^9, 3.9146496952707033`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"27d532c4-d983-4342-a755-b88a17dc1776"]
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
 CellLabel->"In[9]:=",ExpressionUUID->"6b7d363f-1233-45c8-ae6c-ac17b9697a63"],

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
or be shadowed by other definitions.\"", 2, 11, 1, 24942862437547767877, 
    "Local", "FeynCalc`Index"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.914559436271882*^9, 3.9146420926822653`*^9, 
  3.914642325276649*^9, 3.914643994239081*^9, 3.914644049041821*^9, 
  3.914644859472919*^9, 3.914649695851923*^9},
 CellLabel->
  "During evaluation of \
In[9]:=",ExpressionUUID->"c343c158-980c-4287-ac81-a518b9f00748"],

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
or be shadowed by other definitions.\"", 2, 11, 2, 24942862437547767877, 
    "Local", "FeynCalc`IndexDelta"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.914559436271882*^9, 3.9146420926822653`*^9, 
  3.914642325276649*^9, 3.914643994239081*^9, 3.914644049041821*^9, 
  3.914644859472919*^9, 3.914649695879135*^9},
 CellLabel->
  "During evaluation of \
In[9]:=",ExpressionUUID->"5043e96f-55b4-411c-9e57-51556539739b"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "CT", "shdw", 
    "\"Symbol \\!\\(\\*FormBox[\\\"\\\\\\\"CT\\\\\\\"\\\", \
TraditionalForm]\\) appears in multiple contexts \
\\!\\(\\*FormBox[RowBox[{\\\"{\\\", \
RowBox[{\\\"\\\\\\\"CalcTools`\\\\\\\"\\\", \\\",\\\", \
\\\"\\\\\\\"Global`\\\\\\\"\\\"}], \\\"}\\\"}], TraditionalForm]\\); \
definitions in context \\!\\(\\*FormBox[\\\"\\\\\\\"CalcTools`\\\\\\\"\\\", \
TraditionalForm]\\) may shadow or be shadowed by other definitions.\"", 2, 12,
     3, 24942862437547767877, "Local", "CalcTools`CT"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.914559436271882*^9, 3.9146420926822653`*^9, 
  3.914642325276649*^9, 3.914643994239081*^9, 3.914644049041821*^9, 
  3.914644859472919*^9, 3.914649696057424*^9},
 CellLabel->
  "During evaluation of \
In[9]:=",ExpressionUUID->"f8d9d1d4-ceeb-4350-9292-bd5ea888668d"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"ResultsDir", " ", "=", " ", 
   RowBox[{"FileNameJoin", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"NotebookDirectory", "[", "]"}], ",", " ", "\"\<results\>\"", 
      ",", " ", "\"\<NLO\>\""}], "}"}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"LOResultsDir", " ", "=", " ", 
   RowBox[{"FileNameJoin", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"NotebookDirectory", "[", "]"}], ",", " ", "\"\<results\>\"", 
      ",", " ", "\"\<LO\>\""}], "}"}], "]"}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.914478341430852*^9, 3.9144783876264887`*^9}, 
   3.914479041127266*^9, {3.9144825969413*^9, 3.914482605641466*^9}, 
   3.91448596003609*^9, {3.914498383875443*^9, 3.9144983966078377`*^9}, 
   3.914553473345657*^9},
 CellLabel->"In[13]:=",ExpressionUUID->"23931d7f-ad44-4610-8d4c-c7c6b790e291"],

Cell["\<\
Set options to keep scaleless loop integrals and set Mandelstam parameters.\
\>", "Text",
 CellChangeTimes->{{3.9144859680417147`*^9, 3.9144860494356194`*^9}, {
  3.9145555260703487`*^9, 
  3.914555540476664*^9}},ExpressionUUID->"2c3dcbb5-cb15-499f-91c9-\
0fa555aa3481"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"$KeepLogDivergentScalelessIntegrals", " ", "=", " ", "True"}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"SetMandelstamParameters", "[", 
   RowBox[{"s", ",", " ", "t", ",", " ", "u", ",", " ", 
    RowBox[{
     RowBox[{"Power", "[", 
      RowBox[{
       RowBox[{"MNeu", "[", "i", "]"}], ",", "2"}], "]"}], " ", "+", " ", 
     RowBox[{"Power", "[", 
      RowBox[{
       RowBox[{"MNeu", "[", "j", "]"}], ",", " ", "2"}], "]"}]}]}], "]"}], 
  ";"}]}], "Code",
 CellChangeTimes->{{3.914486052870377*^9, 3.914486060635487*^9}, {
   3.914555545090164*^9, 3.914555646515908*^9}, 3.9145593213127117`*^9},
 CellLabel->"In[15]:=",ExpressionUUID->"ec1ec681-02a6-4f75-ae0b-93e701f20953"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Generate Feynman diagrams and amplitudes", "Section",
 CellChangeTimes->{{3.9144860696621227`*^9, 
  3.914486077945142*^9}},ExpressionUUID->"de1cf370-826a-4fec-94c7-\
8bd3b439fec8"],

Cell["Some text.", "Text",
 CellChangeTimes->{{3.914486198619994*^9, 
  3.914486199976565*^9}},ExpressionUUID->"f9dd814d-eaea-4893-9062-\
06a16e5dfd0a"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"ExcludedParticles", " ", "=", " ", 
   RowBox[{"{", "\n", "\t", 
    RowBox[{
     RowBox[{"V", "[", "1", "]"}], ",", " ", 
     RowBox[{"(*", "photon", "*)"}], "\n", 
     RowBox[{"(*", "\t", 
      RowBox[{
       RowBox[{"V", "[", "2", "]"}], ","}], " ", 
      RowBox[{"(*", 
       RowBox[{"Z", " ", "boson"}], "*)"}], "*)"}], "\n", "\t", 
     RowBox[{"V", "[", "3", "]"}], ",", " ", 
     RowBox[{"(*", 
      RowBox[{"W", " ", "boson"}], "*)"}], "\n", 
     RowBox[{"(*", "\t", 
      RowBox[{
       RowBox[{"F", "[", "11", "]"}], ",", " ", 
       RowBox[{"(*", "neutralinos", "*)"}], "\n", "\t", 
       RowBox[{"F", "[", "12", "]"}], ","}], " ", 
      RowBox[{"(*", "charginos", "*)"}], "*)"}], "\n", "\t", 
     RowBox[{"S", "[", "1", "]"}], ",", " ", 
     RowBox[{"(*", 
      RowBox[{"light", " ", "higgs"}], "*)"}], "\n", "\t", 
     RowBox[{"S", "[", "2", "]"}], ",", " ", 
     RowBox[{"(*", 
      RowBox[{"heavy", " ", "higgs"}], "*)"}], "\n", "\t", 
     RowBox[{"S", "[", "3", "]"}], ",", " ", 
     RowBox[{"(*", 
      RowBox[{"pseudoscalar", " ", "higgs"}], "*)"}], "\n", "\t", 
     RowBox[{"S", "[", "4", "]"}], ",", " ", 
     RowBox[{"(*", "G0", "*)"}], "\n", "\t", 
     RowBox[{"S", "[", "5", "]"}], ",", " ", 
     RowBox[{"(*", 
      RowBox[{"charged", " ", "higgs"}], "*)"}], "\n", "\t", 
     RowBox[{"S", "[", "6", "]"}], ",", " ", 
     RowBox[{"(*", 
      RowBox[{"charged", " ", "G"}], "*)"}], "\n", "\t", 
     RowBox[{"S", "[", "11", "]"}], ",", " ", 
     RowBox[{"(*", "sneutrinos", "*)"}], "\n", "\t", 
     RowBox[{"S", "[", "12", "]"}], ",", " ", 
     RowBox[{"(*", "sleptons", "*)"}], "\n", 
     RowBox[{"(*", "\t", 
      RowBox[{
       RowBox[{"F", "[", "15", "]"}], ",", " ", 
       RowBox[{"(*", "gluinos", "*)"}], "\n", "\t", 
       RowBox[{"S", "[", "13", "]"}], ",", " ", 
       RowBox[{"(*", 
        RowBox[{"up", " ", "squarks"}], "*)"}], "\n", "\t", 
       RowBox[{"S", "[", "14", "]"}], ","}], " ", 
      RowBox[{"(*", 
       RowBox[{"down", " ", "squarks"}], "*)"}], "*)"}], "\n", "\t", 
     RowBox[{"F", "[", "1", "]"}], ",", " ", 
     RowBox[{"(*", "neutrinos", "*)"}], "\n", "\t", 
     RowBox[{"F", "[", "2", "]"}]}], " ", 
    RowBox[{"(*", "leptons", "*)"}], "\n", "}"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"ExcludedCouplings", " ", "=", " ", 
   RowBox[{"{", "\n", 
    RowBox[{"(*", "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"FieldPoint", "[", "_", "]"}], "[", 
       RowBox[{
        RowBox[{"F", "[", "3", "]"}], ",", 
        RowBox[{"S", "[", "13", "]"}], ",", 
        RowBox[{"F", "[", "11", "]"}]}], "]"}], ",", "\n", "\t", 
      RowBox[{
       RowBox[{"FieldPoint", "[", "_", "]"}], "[", 
       RowBox[{
        RowBox[{"V", "[", "1", "]"}], ",", 
        RowBox[{"V", "[", "2", "]"}], ",", 
        RowBox[{"S", "[", "1", "]"}]}], "]"}], ",", "\n", "\t", 
      RowBox[{
       RowBox[{"FieldPoint", "[", "_", "]"}], "[", 
       RowBox[{
        RowBox[{"V", "[", "1", "]"}], ",", 
        RowBox[{"V", "[", "2", "]"}], ",", 
        RowBox[{"S", "[", "2", "]"}]}], "]"}], ",", "\n", "\t", 
      RowBox[{
       RowBox[{"FieldPoint", "[", "_", "]"}], "[", 
       RowBox[{
        RowBox[{"V", "[", "1", "]"}], ",", 
        RowBox[{"V", "[", "2", "]"}], ",", 
        RowBox[{"S", "[", "3", "]"}]}], "]"}], ",", "\n", "\t", 
      RowBox[{
       RowBox[{"FieldPoint", "[", "_", "]"}], "[", 
       RowBox[{
        RowBox[{"V", "[", "1", "]"}], ",", 
        RowBox[{"V", "[", "2", "]"}], ",", 
        RowBox[{"S", "[", "4", "]"}]}], "]"}], ",", "\n", "\t", 
      RowBox[{
       RowBox[{"FieldPoint", "[", "_", "]"}], "[", 
       RowBox[{
        RowBox[{"V", "[", "1", "]"}], ",", 
        RowBox[{"V", "[", "2", "]"}], ",", 
        RowBox[{"S", "[", "12", "]"}]}], "]"}]}], "*)"}], "\n", "}"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"parameters", " ", "=", " ", 
    RowBox[{"{", "\n", "\t", 
     RowBox[{
      RowBox[{"InsertionLevel", "->", 
       RowBox[{"{", "Classes", "}"}]}], ",", "\n", "\t", 
      RowBox[{"Model", "->", "MSSMQCD"}], ",", "\n", "\t", 
      RowBox[{"Restrictions", "->", 
       RowBox[{"{", 
        RowBox[{"NoLightFHCoupling", ",", " ", "NoElectronHCoupling"}], 
        "}"}]}], ",", "\n", "\t", 
      RowBox[{"ExcludeParticles", "->", "ExcludedParticles"}], ",", "\n", 
      "\t", 
      RowBox[{"ExcludeFieldPoints", " ", "->", " ", "ExcludedCouplings"}]}], 
     "\n", "}"}]}], ";"}], "\n"}], "\n", 
 RowBox[{
  RowBox[{"triTop", " ", "=", " ", 
   RowBox[{"CreateTopologies", "[", 
    RowBox[{"1", ",", " ", 
     RowBox[{"2", "->", "2"}], ",", " ", 
     RowBox[{"ExcludeTopologies", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{"Tadpoles", ",", " ", "SelfEnergies", ",", " ", "Boxes"}], 
       "}"}]}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"triTopCT", " ", "=", " ", 
   RowBox[{"CreateCTTopologies", "[", 
    RowBox[{"1", ",", " ", 
     RowBox[{"2", "->", "2"}], ",", " ", 
     RowBox[{"ExcludeTopologies", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{"TadpoleCTs", ",", " ", "SelfEnergyCTs", ",", " ", "BoxCTs"}], 
       "}"}]}]}], "]"}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.914642426358972*^9, 3.9146424300297203`*^9}, {
  3.914642472423459*^9, 3.914642565972343*^9}, {3.914642606452196*^9, 
  3.9146427869565907`*^9}, {3.91464288573952*^9, 3.9146429014526253`*^9}, {
  3.914644008802004*^9, 3.914644010568763*^9}},
 CellLabel->"In[17]:=",ExpressionUUID->"7aa5f023-b882-4a7b-b7f2-4dc439a8d775"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"MakeBoxes", "[", 
   RowBox[{
    RowBox[{"ColIdx", "[", "a_", "]"}], ",", "TraditionalForm"}], "]"}], " ", 
  ":=", " ", 
  RowBox[{"MakeBoxes", "[", 
   RowBox[{"a", ",", "TraditionalForm"}], "]"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{
     RowBox[{"SfeIdx", "[", "a_", "]"}], ",", "TraditionalForm"}], "]"}], " ",
    ":=", " ", 
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"a", ",", "TraditionalForm"}], "]"}]}], "\n"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"IndexChart", "=", 
    RowBox[{"{", "\n", "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"SUNFIndex", "[", "Col5", "]"}], " ", "->", " ", 
       RowBox[{"ColIdx", "[", "c", "]"}]}], ",", "\n", "\t", 
      RowBox[{
       RowBox[{"SUNFIndex", "[", "Col6", "]"}], " ", "->", " ", 
       RowBox[{"Colidx", "[", "d", "]"}]}], ",", "\n", "\t", 
      RowBox[{
       RowBox[{"Index", "[", 
        RowBox[{"Sfermion", ",", "5"}], "]"}], " ", "->", " ", "A"}], ",", 
      "\n", "\t", 
      RowBox[{
       RowBox[{"Index", "[", 
        RowBox[{"Sfermion", ",", "6"}], "]"}], " ", "->", " ", "B"}], ",", 
      "\n", "\t", 
      RowBox[{
       RowBox[{"Index", "[", 
        RowBox[{"Sfermion", ",", "7"}], "]"}], " ", "->", " ", "C"}]}], "\n", 
     "}"}]}], ";"}], "\n"}], "\n", 
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"i", " ", "=", " ", 
     RowBox[{"Index", "[", 
      RowBox[{"Neutralino", ",", " ", "1"}], "]"}]}], ";", "\n", 
    RowBox[{"j", " ", "=", " ", 
     RowBox[{"Index", "[", 
      RowBox[{"Neutralino", ",", " ", "2"}], "]"}]}], ";", "\n", 
    RowBox[{"a", " ", "=", " ", 
     RowBox[{"Index", "[", 
      RowBox[{"Colour", ",", " ", "1"}], "]"}]}], ";", "\n", 
    RowBox[{"b", " ", "=", " ", 
     RowBox[{"Index", "[", 
      RowBox[{"Colour", ",", " ", "2"}], "]"}]}], ";"}], "*)"}]}]}], "Code",
 CellChangeTimes->{
  3.914643777863258*^9, {3.91464384079136*^9, 3.9146439373154163`*^9}, {
   3.914644186268104*^9, 3.91464419440901*^9}, {3.914650054641774*^9, 
   3.9146500963409033`*^9}},ExpressionUUID->"425ab9c2-8ccf-4c51-a29c-\
f2a0b75c97bd"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"triDiags", " ", "=", " ", 
   RowBox[{"InsertFields", "[", "\n", "\t", 
    RowBox[{"triTop", ",", "\n", "\t", 
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
     RowBox[{"Sequence", " ", "@@", " ", "parameters"}]}], "\n", "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Paint", "[", 
   RowBox[{"triDiags", ",", " ", 
    RowBox[{"Numbering", "->", "Simple"}], ",", " ", 
    RowBox[{"ColumnsXRows", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{"4", ",", " ", "2"}], "}"}]}], ",", " ", 
    RowBox[{"ImageSize", "->", 
     RowBox[{"{", 
      RowBox[{"512", ",", "256"}], "}"}]}], ",", " ", 
    RowBox[{"SheetHeader", " ", "->", " ", "None"}]}], "]"}], ";"}]}], "Code",\

 CellChangeTimes->{{3.914486201447371*^9, 3.914486272623818*^9}, {
   3.914486408030343*^9, 3.914486429532601*^9}, {3.9144865232920933`*^9, 
   3.914486572167758*^9}, {3.914488024959511*^9, 3.91448808291078*^9}, {
   3.914488173519554*^9, 3.914488189571439*^9}, {3.914488621152057*^9, 
   3.914488629502839*^9}, {3.914488721557251*^9, 3.914488775102145*^9}, {
   3.914488843583189*^9, 3.914488886189464*^9}, 3.914489001839029*^9, {
   3.914489062971207*^9, 3.914489071680519*^9}, 3.9145590950263*^9, {
   3.9145593679203444`*^9, 3.914559368368308*^9}, {3.914559401311206*^9, 
   3.914559402113748*^9}, {3.914642049582447*^9, 3.914642090422329*^9}, {
   3.914642685206737*^9, 3.914642711239314*^9}, {3.9146427486013803`*^9, 
   3.9146427518377247`*^9}, {3.914644105414194*^9, 3.914644149151387*^9}, {
   3.914644254643147*^9, 3.9146442669169073`*^9}},
 CellLabel->"In[29]:=",ExpressionUUID->"8bc98a4c-f87d-4446-9a5d-3d964d4e8f14"],

Cell[CellGroupData[{

Cell[BoxData[
 FormBox[
  GraphicsBox[{InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9kwtIE3Ecx/+zskSiOV2dW+n0/iBlyvIcrMz6UQxKjVkkvcuknW6JmrXQ
ylyW6wlZhu7KrGZG9IBIs6gtW6mRnjkNSqKHWGlPNKHlY7X+UfwP7v58OO7+
v//3EZGRu8LghxBKJPfftVBCHggDQv/W6qKvTJvIApqUFPQ6BsOyC+6DFQLh
1XN19jQMbZ4ccwZPuHvgg38+hrxShyeWI2zRROmKMQy/Wxjo9UUCGozNP70b
w8LD1uonImF1IezPxLDepT9WKRC2zSy/osOwtOr6JQNPOB1pjysw2PLCnRxH
WJvw+fMXFlaOnqiRIMJlt88ONLJw7cFibYcYQfZzdu6oYuHD/abMKoHw+ff9
aisL361CrJEnPNzby1hYSJWYbBqOsNv/xdgRFi48HueUoL+syMqsZcGe1HKv
XVSReaK93W0szPHTNQgCYYtSoRlhoXPN71YDT7ishjFHYdB1/ZTGcYRT0wJ3
pGL4eLdx5i9fOCCVo74xB4MvXXWjQiBsCXAs34thfK3HruYI9/QfZYowJC0o
7mkVw4i+364mbsUwYaRugYEnnKWfr0rG8OhtWbnPN4PMt0s/PgJD6LNmhyAQ
7pnVvW+IhWVmay3HEb5s3NbSzMLuPQeXtovTAX2M0T06z0JTirOe5wlrs0Yz
DrH/fSV8B0p6i1mYX7coWRCU9P3kyoKGOE5Jv687UrhWFBX0/32z5y3meQXd
v4nLzUZIQecb809xnRZC6fy3XJZwDRdKz3cgJ2BDh8jQ80vOvdUbeYbqw+jg
uR9iqH4710nfnBGmUX37No0zxXPTqP7VY+ZyUZxK/XGYth/awk+l/ukODJd6
fXLq76Zf0R2nBDn1P2xItMdwcpoPTclO9WMxhOZHfbLg+GY+hOZrVeCrO15f
MM2fO8xVahOCaT49Ly/ejOeCaX6XFKX3u0UZzXfJt6GH2byM5r8i2fJpIpLR
fqh+WGV2IYj2xySLlCdwQbRfvHPjYJcopf1LYqKeGnkp7ady1EeuKbS/fwBx
M3iP
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{16., 13.49999999999741}, {16., 6.49999999999371}}]}, 
         PolygonBox[{{16., 10.6}, {15.6, 9.4}, {16.4, 9.4}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
          9.999999999996362}}], 
         PolygonBox[{{12.48173265946094, 11.447677384685548`}, {
          13.316718930329426`, 12.397834175673825`}, {13.719815750748694`, 
          11.706811054955079`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 12.484057296392571},
           ImageScaled[{1, 0}]], 
         LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
          9.999999999996362}}], 
         PolygonBox[{{13.51826734053906, 7.947677384685548}, {
          12.683281069670574`, 8.897834175673825}, {12.280184249251306`, 
          8.206811054955079}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 7.515942703607429}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["1",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 22}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9kwtIE3Ecx/+zskSiOV2dW+n0/iBlyvIcrMz6UQxKjVkkvcuknW6JmrXQ
ylyW6wlZhu7KrGZG9IBIs6gtW6mRnjkNSqKHWGlPNKHlY7X+UfwP7v58OO7+
v//3EZGRu8LghxBKJPfftVBCHggDQv/W6qKvTJvIApqUFPQ6BsOyC+6DFQLh
1XN19jQMbZ4ccwZPuHvgg38+hrxShyeWI2zRROmKMQy/Wxjo9UUCGozNP70b
w8LD1uonImF1IezPxLDepT9WKRC2zSy/osOwtOr6JQNPOB1pjysw2PLCnRxH
WJvw+fMXFlaOnqiRIMJlt88ONLJw7cFibYcYQfZzdu6oYuHD/abMKoHw+ff9
aisL361CrJEnPNzby1hYSJWYbBqOsNv/xdgRFi48HueUoL+syMqsZcGe1HKv
XVSReaK93W0szPHTNQgCYYtSoRlhoXPN71YDT7ishjFHYdB1/ZTGcYRT0wJ3
pGL4eLdx5i9fOCCVo74xB4MvXXWjQiBsCXAs34thfK3HruYI9/QfZYowJC0o
7mkVw4i+364mbsUwYaRugYEnnKWfr0rG8OhtWbnPN4PMt0s/PgJD6LNmhyAQ
7pnVvW+IhWVmay3HEb5s3NbSzMLuPQeXtovTAX2M0T06z0JTirOe5wlrs0Yz
DrH/fSV8B0p6i1mYX7coWRCU9P3kyoKGOE5Jv687UrhWFBX0/32z5y3meQXd
v4nLzUZIQecb809xnRZC6fy3XJZwDRdKz3cgJ2BDh8jQ80vOvdUbeYbqw+jg
uR9iqH4710nfnBGmUX37No0zxXPTqP7VY+ZyUZxK/XGYth/awk+l/ukODJd6
fXLq76Zf0R2nBDn1P2xItMdwcpoPTclO9WMxhOZHfbLg+GY+hOZrVeCrO15f
MM2fO8xVahOCaT49Ly/ejOeCaX6XFKX3u0UZzXfJt6GH2byM5r8i2fJpIpLR
fqh+WGV2IYj2xySLlCdwQbRfvHPjYJcopf1LYqKeGnkp7ady1EeuKbS/fwBx
M3iP
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{16., 13.49999999999741}, {16., 6.49999999999371}}]}, 
         PolygonBox[{{16., 9.4}, {15.6, 10.6}, {16.4, 10.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
          9.999999999996362}}], 
         PolygonBox[{{13.51826734053906, 12.052322615314452`}, {
          12.280184249251306`, 11.793188945044921`}, {12.683281069670574`, 
          11.102165824326175`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 12.484057296392571},
           ImageScaled[{1, 0}]], 
         LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
          9.999999999996362}}], 
         PolygonBox[{{12.48173265946094, 8.552322615314452}, {
          13.719815750748694`, 8.293188945044921}, {13.316718930329426`, 
          7.602165824326175}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 7.515942703607429}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["2",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9kwtIE3Ecx/+zskSiOV2dW+n0/iBlyvIcrMz6UQxKjVkkvcuknW6JmrXQ
ylyW6wlZhu7KrGZG9IBIs6gtW6mRnjkNSqKHWGlPNKHlY7X+UfwP7v58OO7+
v//3EZGRu8LghxBKJPfftVBCHggDQv/W6qKvTJvIApqUFPQ6BsOyC+6DFQLh
1XN19jQMbZ4ccwZPuHvgg38+hrxShyeWI2zRROmKMQy/Wxjo9UUCGozNP70b
w8LD1uonImF1IezPxLDepT9WKRC2zSy/osOwtOr6JQNPOB1pjysw2PLCnRxH
WJvw+fMXFlaOnqiRIMJlt88ONLJw7cFibYcYQfZzdu6oYuHD/abMKoHw+ff9
aisL361CrJEnPNzby1hYSJWYbBqOsNv/xdgRFi48HueUoL+syMqsZcGe1HKv
XVSReaK93W0szPHTNQgCYYtSoRlhoXPN71YDT7ishjFHYdB1/ZTGcYRT0wJ3
pGL4eLdx5i9fOCCVo74xB4MvXXWjQiBsCXAs34thfK3HruYI9/QfZYowJC0o
7mkVw4i+364mbsUwYaRugYEnnKWfr0rG8OhtWbnPN4PMt0s/PgJD6LNmhyAQ
7pnVvW+IhWVmay3HEb5s3NbSzMLuPQeXtovTAX2M0T06z0JTirOe5wlrs0Yz
DrH/fSV8B0p6i1mYX7coWRCU9P3kyoKGOE5Jv687UrhWFBX0/32z5y3meQXd
v4nLzUZIQecb809xnRZC6fy3XJZwDRdKz3cgJ2BDh8jQ80vOvdUbeYbqw+jg
uR9iqH4710nfnBGmUX37No0zxXPTqP7VY+ZyUZxK/XGYth/awk+l/ukODJd6
fXLq76Zf0R2nBDn1P2xItMdwcpoPTclO9WMxhOZHfbLg+GY+hOZrVeCrO15f
MM2fO8xVahOCaT49Ly/ejOeCaX6XFKX3u0UZzXfJt6GH2byM5r8i2fJpIpLR
fqh+WGV2IYj2xySLlCdwQbRfvHPjYJcopf1LYqKeGnkp7ady1EeuKbS/fwBx
M3iP
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{16., 13.49999999999741}, {16., 6.49999999999371}}]}, 
         PolygonBox[{{16., 10.6}, {15.6, 9.4}, {16.4, 9.4}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
          9.999999999996362}}], 
         PolygonBox[{{12.48173265946094, 11.447677384685548`}, {
          13.316718930329426`, 12.397834175673825`}, {13.719815750748694`, 
          11.706811054955079`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 12.484057296392571},
           ImageScaled[{1, 0}]], 
         LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
          9.999999999996362}}], 
         PolygonBox[{{13.51826734053906, 7.947677384685548}, {
          12.683281069670574`, 8.897834175673825}, {12.280184249251306`, 
          8.206811054955079}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 7.515942703607429}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["3",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9kwtIE3Ecx/+zskSiOV2dW+n0/iBlyvIcrMz6UQxKjVkkvcuknW6JmrXQ
ylyW6wlZhu7KrGZG9IBIs6gtW6mRnjkNSqKHWGlPNKHlY7X+UfwP7v58OO7+
v//3EZGRu8LghxBKJPfftVBCHggDQv/W6qKvTJvIApqUFPQ6BsOyC+6DFQLh
1XN19jQMbZ4ccwZPuHvgg38+hrxShyeWI2zRROmKMQy/Wxjo9UUCGozNP70b
w8LD1uonImF1IezPxLDepT9WKRC2zSy/osOwtOr6JQNPOB1pjysw2PLCnRxH
WJvw+fMXFlaOnqiRIMJlt88ONLJw7cFibYcYQfZzdu6oYuHD/abMKoHw+ff9
aisL361CrJEnPNzby1hYSJWYbBqOsNv/xdgRFi48HueUoL+syMqsZcGe1HKv
XVSReaK93W0szPHTNQgCYYtSoRlhoXPN71YDT7ishjFHYdB1/ZTGcYRT0wJ3
pGL4eLdx5i9fOCCVo74xB4MvXXWjQiBsCXAs34thfK3HruYI9/QfZYowJC0o
7mkVw4i+364mbsUwYaRugYEnnKWfr0rG8OhtWbnPN4PMt0s/PgJD6LNmhyAQ
7pnVvW+IhWVmay3HEb5s3NbSzMLuPQeXtovTAX2M0T06z0JTirOe5wlrs0Yz
DrH/fSV8B0p6i1mYX7coWRCU9P3kyoKGOE5Jv687UrhWFBX0/32z5y3meQXd
v4nLzUZIQecb809xnRZC6fy3XJZwDRdKz3cgJ2BDh8jQ80vOvdUbeYbqw+jg
uR9iqH4710nfnBGmUX37No0zxXPTqP7VY+ZyUZxK/XGYth/awk+l/ukODJd6
fXLq76Zf0R2nBDn1P2xItMdwcpoPTclO9WMxhOZHfbLg+GY+hOZrVeCrO15f
MM2fO8xVahOCaT49Ly/ejOeCaX6XFKX3u0UZzXfJt6GH2byM5r8i2fJpIpLR
fqh+WGV2IYj2xySLlCdwQbRfvHPjYJcopf1LYqKeGnkp7ady1EeuKbS/fwBx
M3iP
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{16., 13.49999999999741}, {16., 6.49999999999371}}]}, 
         PolygonBox[{{16., 9.4}, {15.6, 10.6}, {16.4, 10.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
          9.999999999996362}}], 
         PolygonBox[{{13.51826734053906, 12.052322615314452`}, {
          12.280184249251306`, 11.793188945044921`}, {12.683281069670574`, 
          11.102165824326175`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 12.484057296392571},
           ImageScaled[{1, 0}]], 
         LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
          9.999999999996362}}], 
         PolygonBox[{{12.48173265946094, 8.552322615314452}, {
          13.719815750748694`, 8.293188945044921}, {13.316718930329426`, 
          7.602165824326175}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 7.515942703607429}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["4",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 11.645199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{16., 13.49999999999741}, {16., 6.49999999999371}}]}, 
         PolygonBox[{{16., 10.6}, {15.6, 9.4}, {16.4, 9.4}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
          9.999999999996362}}], 
         PolygonBox[{{12.48173265946094, 11.447677384685548`}, {
          13.316718930329426`, 12.397834175673825`}, {13.719815750748694`, 
          11.706811054955079`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 12.484057296392571},
           ImageScaled[{1, 0}]], 
         LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
          9.999999999996362}}], 
         PolygonBox[{{13.51826734053906, 7.947677384685548}, {
          12.683281069670574`, 8.897834175673825}, {12.280184249251306`, 
          8.206811054955079}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 7.515942703607429}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["5",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 11.645199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{16., 13.49999999999741}, {16., 6.49999999999371}}]}, 
         PolygonBox[{{16., 9.4}, {15.6, 10.6}, {16.4, 10.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
          9.999999999996362}}], 
         PolygonBox[{{13.51826734053906, 12.052322615314452`}, {
          12.280184249251306`, 11.793188945044921`}, {12.683281069670574`, 
          11.102165824326175`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 12.484057296392571},
           ImageScaled[{1, 0}]], 
         LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
          9.999999999996362}}], 
         PolygonBox[{{12.48173265946094, 8.552322615314452}, {
          13.719815750748694`, 8.293188945044921}, {13.316718930329426`, 
          7.602165824326175}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 7.515942703607429}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["6",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 11.645199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{16., 13.49999999999741}, {16., 6.49999999999371}}]}, 
         PolygonBox[{{16., 10.6}, {15.6, 9.4}, {16.4, 9.4}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
          9.999999999996362}}], 
         PolygonBox[{{12.48173265946094, 11.447677384685548`}, {
          13.316718930329426`, 12.397834175673825`}, {13.719815750748694`, 
          11.706811054955079`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 12.484057296392571},
           ImageScaled[{1, 0}]], 
         LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
          9.999999999996362}}], 
         PolygonBox[{{13.51826734053906, 7.947677384685548}, {
          12.683281069670574`, 8.897834175673825}, {12.280184249251306`, 
          8.206811054955079}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 7.515942703607429}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["7",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9lQs4VGkYxw9bGa1QZjQzEuOc41LZJHbHZe3LEqISZbEu41YoJU3WJRW6
oBXZlOsM3YWiVDYVScilLKvY3LZc1xbKLYX97O7zneeZc57fM8/5vvO97/v/
/3lee+19JQmCCEO/f58S6EZQQBD/PZOGdRaxHpNACBY61NaTEANlk4mRiKfW
qfMvkSASBb9rWYcYWo2sT5LwDIrtMl+rAZEaMWZ7hISID57VT5IR2+12/e0o
CZ8PRA8aWyCW/3Y2I5WEvlqLqGefeUBc/fwi/x4J8Rof7BfeRxw0aWEzSEL7
/gZD6WOIR2LtVqhRIGxPsIlxRtzYwDH1oiCkju0Ya4i4pOeLg5cpsFDtGI7X
RMywSncZoqA8Rzl/O4nYaUrdS5uGlpf6TUtWIVatLzL2p0GlWTnQxAhx9yey
J4MGKvI0NbRtfj8tr6cVNOTbVQzlChHHBnmPv6Ihy9rDoOLcPNemqfXRUOYX
pG9XinjgsHdDNw2mOicVA9oRC1SKDOtpMGirqbOYQqyzMl6YS0OBmcwSNxl0
/m5ulnE4DT5z9+YSFBGXC+LGgYZpj6W1X7MQM1ZLHSVoaO4NLdwohXjq+0it
+xT4XUvI8/gbrRea0+/8EwV7g0RVtyrn19+wNlGfglGn08Sq04itOvVWTJPg
3vjmhYkD4iMpzRI1JNja+8qOy8zXy5pRk0NC/VBXUWm5KhDs8vVucSSsN/l4
dvM+xK0pKjOHSWjefZP4hYeYbybNO06CQlaTfc9VFVT/u1FhGSScODulu5OD
OHYs6P1DEspepvncTFuJ9ouTfvSOBL6b/6EZbcQQMxmuSUEJI0AQ2aaM3s8S
6ftTkH1b76GhCPGRwOa8AgoGGp63TB5ELHDR8HtPgdXCxZfVDyBONbw4up6G
/mExb+Qo4pGR4qk9NDASygjbXMTZWyeismlo3VD3SaMTsd+9KpkqGmrkPfdn
rkT7Tw3m3OqgwUGU2b7aF7FV12Vz1L9Q+84H0vmIB14t3tpFw8yk9BXft4iT
Bop0n9JQYjPmeodE5xMkXZS6RENvnlqgxEbEJeFZF4Q0bJnjJyi5Ih5I9A81
pEHigcbxTkfEhSM2IR8p4AtrR7fyETtZzvYWU3DXOqq0cg6t7yfmmwRRELRr
kP2iAHFoa+/EVxQIhO7HAs0Rl0xauo6RUG53Rf18FToPJNj5IB1Khs+8TObP
14fYHitC/YhJ79IRr0D1sZa9dIL8X7eISyD6NeqfMMlX9blACf8/c0xSM7Ca
i9//7oZTm5sBF6+vKc4JTy7l4P0Tzyj2a9lz8PdZ3zlkbkRw8PdvEevLXq9m
4/PNmrWG8XLZ+PyFRHVwzwU2rs/5nR3Js7fZuH5WxV9esG5n4/pKMiac0pdx
cP3lHvHMJhw4uD/5nt7k7+kc3L9vhkU/e//Jwf29Ua+3oJXHxf2fCoa5W45c
PB9seUGnXAQXz0/J9LhzWzwXzxdbV2cVI4aL52/Arc70iScXz6flZIo4Wp2L
57fm/NkoySYOnu+nRjsyNu3g4PkP85dqSO1jY3289dIuUPqBjfXz2iBjtu3+
cqyvtJglTV7Ky7H+/DQhM/aQItbn8B79N6w+FtavuQffPtqZhfWtvLljNq+D
ifV/TfdxcGoIE/vD2ryeq6DBxP7hoicrDhhVwP4iAx27klsUsP8YSMQTPU0K
2J+0T/X3WvQrYP86tWmPn1COif0tUjzYtNqSif1vsZlKikccE/tj1W7ThIhG
JvbPXPcIzXxFFvZX4HTc0XJkYf995FxJx8SxsD872p35sSePhf1bqrHyyrZf
WdjfQ8osVP+6zsL+z/R/5jAcz8L5kO3S4/fRloXzw4rtG/92nInzZaiQ4zJ+
gonzRy9AOOO1iInzicH8tOb4AQWcX8lrjPcJ/1iG883n0Dn3asNlOP8qKrjk
tsylOB+jkqPkuxcsxfnZrSr60BImj/NVaXoOXXI4f/8Bkxb+7A==
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 11.645199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{16., 13.49999999999741}, {16., 6.49999999999371}}]}, 
         PolygonBox[{{16., 9.4}, {15.6, 10.6}, {16.4, 10.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
          9.999999999996362}}], 
         PolygonBox[{{13.51826734053906, 12.052322615314452`}, {
          12.280184249251306`, 11.793188945044921`}, {12.683281069670574`, 
          11.102165824326175`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 12.484057296392571},
           ImageScaled[{1, 0}]], 
         LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
          9.999999999996362}}], 
         PolygonBox[{{12.48173265946094, 8.552322615314452}, {
          13.719815750748694`, 8.293188945044921}, {13.316718930329426`, 
          7.602165824326175}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 7.515942703607429}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["8",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 0}, {0, 0}, {22, 22}]},
   AspectRatio->NCache[
     Rational[1, 2], 0.5],
   ImageSize->{512, 256},
   PlotRange->{{0, 88}, {0, 44}}], TraditionalForm]], "Print",
 CellChangeTimes->{{3.914644118569538*^9, 3.9146441503624363`*^9}, 
   3.914644197358041*^9, {3.9146442390367126`*^9, 3.914644268241125*^9}, 
   3.9146448699270487`*^9, 3.914649706744063*^9},
 CellLabel->
  "During evaluation of \
In[29]:=",ExpressionUUID->"d448e068-1dfd-4a13-9b97-bf6520eddd64"],

Cell[BoxData[
 FormBox[
  GraphicsBox[{InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9kwtIE3Ecx/+zskSiOV2dW+n0/iBlyvIcrMz6UQxKjVkkvcuknW6JmrXQ
ylyW6wlZhu7KrGZG9IBIs6gtW6mRnjkNSqKHWGlPNKHlY7X+UfwP7v58OO7+
v//3EZGRu8LghxBKJPfftVBCHggDQv/W6qKvTJvIApqUFPQ6BsOyC+6DFQLh
1XN19jQMbZ4ccwZPuHvgg38+hrxShyeWI2zRROmKMQy/Wxjo9UUCGozNP70b
w8LD1uonImF1IezPxLDepT9WKRC2zSy/osOwtOr6JQNPOB1pjysw2PLCnRxH
WJvw+fMXFlaOnqiRIMJlt88ONLJw7cFibYcYQfZzdu6oYuHD/abMKoHw+ff9
aisL361CrJEnPNzby1hYSJWYbBqOsNv/xdgRFi48HueUoL+syMqsZcGe1HKv
XVSReaK93W0szPHTNQgCYYtSoRlhoXPN71YDT7ishjFHYdB1/ZTGcYRT0wJ3
pGL4eLdx5i9fOCCVo74xB4MvXXWjQiBsCXAs34thfK3HruYI9/QfZYowJC0o
7mkVw4i+364mbsUwYaRugYEnnKWfr0rG8OhtWbnPN4PMt0s/PgJD6LNmhyAQ
7pnVvW+IhWVmay3HEb5s3NbSzMLuPQeXtovTAX2M0T06z0JTirOe5wlrs0Yz
DrH/fSV8B0p6i1mYX7coWRCU9P3kyoKGOE5Jv687UrhWFBX0/32z5y3meQXd
v4nLzUZIQecb809xnRZC6fy3XJZwDRdKz3cgJ2BDh8jQ80vOvdUbeYbqw+jg
uR9iqH4710nfnBGmUX37No0zxXPTqP7VY+ZyUZxK/XGYth/awk+l/ukODJd6
fXLq76Zf0R2nBDn1P2xItMdwcpoPTclO9WMxhOZHfbLg+GY+hOZrVeCrO15f
MM2fO8xVahOCaT49Ly/ejOeCaX6XFKX3u0UZzXfJt6GH2byM5r8i2fJpIpLR
fqh+WGV2IYj2xySLlCdwQbRfvHPjYJcopf1LYqKeGnkp7ady1EeuKbS/fwBx
M3iP
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{16., 13.49999999999741}, {16., 6.49999999999371}}], 
         PolygonBox[{{16., 10.6}, {15.6, 9.4}, {16.4, 9.4}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
           9.999999999996362}}]}, 
         PolygonBox[{{12.48173265946094, 11.447677384685548`}, {
          13.316718930329426`, 12.397834175673825`}, {13.719815750748694`, 
          11.706811054955079`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 12.484057296392571},
           ImageScaled[{1, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
           9.999999999996362}}]}, 
         PolygonBox[{{13.51826734053906, 7.947677384685548}, {
          12.683281069670574`, 8.897834175673825}, {12.280184249251306`, 
          8.206811054955079}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "m", "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 7.515942703607429}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["9",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 22}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9kwtIE3Ecx/+zskSiOV2dW+n0/iBlyvIcrMz6UQxKjVkkvcuknW6JmrXQ
ylyW6wlZhu7KrGZG9IBIs6gtW6mRnjkNSqKHWGlPNKHlY7X+UfwP7v58OO7+
v//3EZGRu8LghxBKJPfftVBCHggDQv/W6qKvTJvIApqUFPQ6BsOyC+6DFQLh
1XN19jQMbZ4ccwZPuHvgg38+hrxShyeWI2zRROmKMQy/Wxjo9UUCGozNP70b
w8LD1uonImF1IezPxLDepT9WKRC2zSy/osOwtOr6JQNPOB1pjysw2PLCnRxH
WJvw+fMXFlaOnqiRIMJlt88ONLJw7cFibYcYQfZzdu6oYuHD/abMKoHw+ff9
aisL361CrJEnPNzby1hYSJWYbBqOsNv/xdgRFi48HueUoL+syMqsZcGe1HKv
XVSReaK93W0szPHTNQgCYYtSoRlhoXPN71YDT7ishjFHYdB1/ZTGcYRT0wJ3
pGL4eLdx5i9fOCCVo74xB4MvXXWjQiBsCXAs34thfK3HruYI9/QfZYowJC0o
7mkVw4i+364mbsUwYaRugYEnnKWfr0rG8OhtWbnPN4PMt0s/PgJD6LNmhyAQ
7pnVvW+IhWVmay3HEb5s3NbSzMLuPQeXtovTAX2M0T06z0JTirOe5wlrs0Yz
DrH/fSV8B0p6i1mYX7coWRCU9P3kyoKGOE5Jv687UrhWFBX0/32z5y3meQXd
v4nLzUZIQecb809xnRZC6fy3XJZwDRdKz3cgJ2BDh8jQ80vOvdUbeYbqw+jg
uR9iqH4710nfnBGmUX37No0zxXPTqP7VY+ZyUZxK/XGYth/awk+l/ukODJd6
fXLq76Zf0R2nBDn1P2xItMdwcpoPTclO9WMxhOZHfbLg+GY+hOZrVeCrO15f
MM2fO8xVahOCaT49Ly/ejOeCaX6XFKX3u0UZzXfJt6GH2byM5r8i2fJpIpLR
fqh+WGV2IYj2xySLlCdwQbRfvHPjYJcopf1LYqKeGnkp7ady1EeuKbS/fwBx
M3iP
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{16., 13.49999999999741}, {16., 6.49999999999371}}], 
         PolygonBox[{{16., 9.4}, {15.6, 10.6}, {16.4, 10.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
           9.999999999996362}}]}, 
         PolygonBox[{{13.51826734053906, 12.052322615314452`}, {
          12.280184249251306`, 11.793188945044921`}, {12.683281069670574`, 
          11.102165824326175`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 12.484057296392571},
           ImageScaled[{1, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
           9.999999999996362}}]}, 
         PolygonBox[{{12.48173265946094, 8.552322615314452}, {
          13.719815750748694`, 8.293188945044921}, {13.316718930329426`, 
          7.602165824326175}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "m", "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 7.515942703607429}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["10",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9kwtIE3Ecx/+zskSiOV2dW+n0/iBlyvIcrMz6UQxKjVkkvcuknW6JmrXQ
ylyW6wlZhu7KrGZG9IBIs6gtW6mRnjkNSqKHWGlPNKHlY7X+UfwP7v58OO7+
v//3EZGRu8LghxBKJPfftVBCHggDQv/W6qKvTJvIApqUFPQ6BsOyC+6DFQLh
1XN19jQMbZ4ccwZPuHvgg38+hrxShyeWI2zRROmKMQy/Wxjo9UUCGozNP70b
w8LD1uonImF1IezPxLDepT9WKRC2zSy/osOwtOr6JQNPOB1pjysw2PLCnRxH
WJvw+fMXFlaOnqiRIMJlt88ONLJw7cFibYcYQfZzdu6oYuHD/abMKoHw+ff9
aisL361CrJEnPNzby1hYSJWYbBqOsNv/xdgRFi48HueUoL+syMqsZcGe1HKv
XVSReaK93W0szPHTNQgCYYtSoRlhoXPN71YDT7ishjFHYdB1/ZTGcYRT0wJ3
pGL4eLdx5i9fOCCVo74xB4MvXXWjQiBsCXAs34thfK3HruYI9/QfZYowJC0o
7mkVw4i+364mbsUwYaRugYEnnKWfr0rG8OhtWbnPN4PMt0s/PgJD6LNmhyAQ
7pnVvW+IhWVmay3HEb5s3NbSzMLuPQeXtovTAX2M0T06z0JTirOe5wlrs0Yz
DrH/fSV8B0p6i1mYX7coWRCU9P3kyoKGOE5Jv687UrhWFBX0/32z5y3meQXd
v4nLzUZIQecb809xnRZC6fy3XJZwDRdKz3cgJ2BDh8jQ80vOvdUbeYbqw+jg
uR9iqH4710nfnBGmUX37No0zxXPTqP7VY+ZyUZxK/XGYth/awk+l/ukODJd6
fXLq76Zf0R2nBDn1P2xItMdwcpoPTclO9WMxhOZHfbLg+GY+hOZrVeCrO15f
MM2fO8xVahOCaT49Ly/ejOeCaX6XFKX3u0UZzXfJt6GH2byM5r8i2fJpIpLR
fqh+WGV2IYj2xySLlCdwQbRfvHPjYJcopf1LYqKeGnkp7ady1EeuKbS/fwBx
M3iP
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{16., 13.49999999999741}, {16., 6.49999999999371}}], 
         PolygonBox[{{16., 10.6}, {15.6, 9.4}, {16.4, 9.4}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
           9.999999999996362}}]}, 
         PolygonBox[{{12.48173265946094, 11.447677384685548`}, {
          13.316718930329426`, 12.397834175673825`}, {13.719815750748694`, 
          11.706811054955079`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 12.484057296392571},
           ImageScaled[{1, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
           9.999999999996362}}]}, 
         PolygonBox[{{13.51826734053906, 7.947677384685548}, {
          12.683281069670574`, 8.897834175673825}, {12.280184249251306`, 
          8.206811054955079}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 7.515942703607429}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["11",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9kwtIE3Ecx/+zskSiOV2dW+n0/iBlyvIcrMz6UQxKjVkkvcuknW6JmrXQ
ylyW6wlZhu7KrGZG9IBIs6gtW6mRnjkNSqKHWGlPNKHlY7X+UfwP7v58OO7+
v//3EZGRu8LghxBKJPfftVBCHggDQv/W6qKvTJvIApqUFPQ6BsOyC+6DFQLh
1XN19jQMbZ4ccwZPuHvgg38+hrxShyeWI2zRROmKMQy/Wxjo9UUCGozNP70b
w8LD1uonImF1IezPxLDepT9WKRC2zSy/osOwtOr6JQNPOB1pjysw2PLCnRxH
WJvw+fMXFlaOnqiRIMJlt88ONLJw7cFibYcYQfZzdu6oYuHD/abMKoHw+ff9
aisL361CrJEnPNzby1hYSJWYbBqOsNv/xdgRFi48HueUoL+syMqsZcGe1HKv
XVSReaK93W0szPHTNQgCYYtSoRlhoXPN71YDT7ishjFHYdB1/ZTGcYRT0wJ3
pGL4eLdx5i9fOCCVo74xB4MvXXWjQiBsCXAs34thfK3HruYI9/QfZYowJC0o
7mkVw4i+364mbsUwYaRugYEnnKWfr0rG8OhtWbnPN4PMt0s/PgJD6LNmhyAQ
7pnVvW+IhWVmay3HEb5s3NbSzMLuPQeXtovTAX2M0T06z0JTirOe5wlrs0Yz
DrH/fSV8B0p6i1mYX7coWRCU9P3kyoKGOE5Jv687UrhWFBX0/32z5y3meQXd
v4nLzUZIQecb809xnRZC6fy3XJZwDRdKz3cgJ2BDh8jQ80vOvdUbeYbqw+jg
uR9iqH4710nfnBGmUX37No0zxXPTqP7VY+ZyUZxK/XGYth/awk+l/ukODJd6
fXLq76Zf0R2nBDn1P2xItMdwcpoPTclO9WMxhOZHfbLg+GY+hOZrVeCrO15f
MM2fO8xVahOCaT49Ly/ejOeCaX6XFKX3u0UZzXfJt6GH2byM5r8i2fJpIpLR
fqh+WGV2IYj2xySLlCdwQbRfvHPjYJcopf1LYqKeGnkp7ady1EeuKbS/fwBx
M3iP
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{16., 13.49999999999741}, {16., 6.49999999999371}}], 
         PolygonBox[{{16., 9.4}, {15.6, 10.6}, {16.4, 10.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
           9.999999999996362}}]}, 
         PolygonBox[{{13.51826734053906, 12.052322615314452`}, {
          12.280184249251306`, 11.793188945044921`}, {12.683281069670574`, 
          11.102165824326175`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 12.484057296392571},
           ImageScaled[{1, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
           9.999999999996362}}]}, 
         PolygonBox[{{12.48173265946094, 8.552322615314452}, {
          13.719815750748694`, 8.293188945044921}, {13.316718930329426`, 
          7.602165824326175}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 7.515942703607429}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["12",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 11.645199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{16., 13.49999999999741}, {16., 6.49999999999371}}], 
         PolygonBox[{{16., 10.6}, {15.6, 9.4}, {16.4, 9.4}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
           9.999999999996362}}]}, 
         PolygonBox[{{12.48173265946094, 11.447677384685548`}, {
          13.316718930329426`, 12.397834175673825`}, {13.719815750748694`, 
          11.706811054955079`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 12.484057296392571},
           ImageScaled[{1, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
           9.999999999996362}}]}, 
         PolygonBox[{{13.51826734053906, 7.947677384685548}, {
          12.683281069670574`, 8.897834175673825}, {12.280184249251306`, 
          8.206811054955079}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 7.515942703607429}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["13",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 11.645199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{16., 13.49999999999741}, {16., 6.49999999999371}}], 
         PolygonBox[{{16., 9.4}, {15.6, 10.6}, {16.4, 10.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
           9.999999999996362}}]}, 
         PolygonBox[{{13.51826734053906, 12.052322615314452`}, {
          12.280184249251306`, 11.793188945044921`}, {12.683281069670574`, 
          11.102165824326175`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 12.484057296392571},
           ImageScaled[{1, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
           9.999999999996362}}]}, 
         PolygonBox[{{12.48173265946094, 8.552322615314452}, {
          13.719815750748694`, 8.293188945044921}, {13.316718930329426`, 
          7.602165824326175}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 7.515942703607429}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["14",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 11.645199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{16., 13.49999999999741}, {16., 6.49999999999371}}], 
         PolygonBox[{{16., 10.6}, {15.6, 9.4}, {16.4, 9.4}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
           9.999999999996362}}]}, 
         PolygonBox[{{12.48173265946094, 11.447677384685548`}, {
          13.316718930329426`, 12.397834175673825`}, {13.719815750748694`, 
          11.706811054955079`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 12.484057296392571},
           ImageScaled[{1, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
           9.999999999996362}}]}, 
         PolygonBox[{{13.51826734053906, 7.947677384685548}, {
          12.683281069670574`, 8.897834175673825}, {12.280184249251306`, 
          8.206811054955079}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 7.515942703607429}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["15",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 11.645199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{16., 13.49999999999741}, {16., 6.49999999999371}}], 
         PolygonBox[{{16., 9.4}, {15.6, 10.6}, {16.4, 10.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
           9.999999999996362}}]}, 
         PolygonBox[{{13.51826734053906, 12.052322615314452`}, {
          12.280184249251306`, 11.793188945044921`}, {12.683281069670574`, 
          11.102165824326175`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 12.484057296392571},
           ImageScaled[{1, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
           9.999999999996362}}]}, 
         PolygonBox[{{12.48173265946094, 8.552322615314452}, {
          13.719815750748694`, 8.293188945044921}, {13.316718930329426`, 
          7.602165824326175}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.823799910437668, 7.515942703607429}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["16",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 0}, {0, 0}, {22, 22}]},
   AspectRatio->NCache[
     Rational[1, 2], 0.5],
   ImageSize->{512, 256},
   PlotRange->{{0, 88}, {0, 44}}], TraditionalForm]], "Print",
 CellChangeTimes->{{3.914644118569538*^9, 3.9146441503624363`*^9}, 
   3.914644197358041*^9, {3.9146442390367126`*^9, 3.914644268241125*^9}, 
   3.9146448699270487`*^9, 3.9146497067675657`*^9},
 CellLabel->
  "During evaluation of \
In[29]:=",ExpressionUUID->"f584becd-3f54-490d-afe7-4d29d6f2c2c8"],

Cell[BoxData[
 FormBox[
  GraphicsBox[{InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{0., 15.000000000003638`}, {4.000000000001819, 10.}}], 
         PolygonBox[{{2.3748170285326546`, 12.031478714334181`}, {
          1.3128354476901332`, 12.71864326664405}, {1.9375304952445576`, 
          13.218399304687589`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {1.3944533453633028, 12.136522676290642},
           ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.000000000001819}, {
          3.999999999998181, 10.000000000003638`}}], 
         PolygonBox[{{1.6251829714673454`, 7.031478714334182}, {
          2.687164552309867, 7.718643266644048}, {2.0624695047554424`, 
          8.218399304687587}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.605546654636697, 7.136522676290642}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{19.99999999999909, 15.}, {16.00000000000091, 13.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 14.862427930839758},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.99999999999909, 5.}, {16.00000000000091, 6.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.543539525935092, 5.137572069160242}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9kwtIE3Ecx/+zskSiOV2dW+n0/iBlyvIcrMz6UQxKjVkkvcuknW6JmrXQ
ylyW6wlZhu7KrGZG9IBIs6gtW6mRnjkNSqKHWGlPNKHlY7X+UfwP7v58OO7+
v//3EZGRu8LghxBKJPfftVBCHggDQv/W6qKvTJvIApqUFPQ6BsOyC+6DFQLh
1XN19jQMbZ4ccwZPuHvgg38+hrxShyeWI2zRROmKMQy/Wxjo9UUCGozNP70b
w8LD1uonImF1IezPxLDepT9WKRC2zSy/osOwtOr6JQNPOB1pjysw2PLCnRxH
WJvw+fMXFlaOnqiRIMJlt88ONLJw7cFibYcYQfZzdu6oYuHD/abMKoHw+ff9
aisL361CrJEnPNzby1hYSJWYbBqOsNv/xdgRFi48HueUoL+syMqsZcGe1HKv
XVSReaK93W0szPHTNQgCYYtSoRlhoXPN71YDT7ishjFHYdB1/ZTGcYRT0wJ3
pGL4eLdx5i9fOCCVo74xB4MvXXWjQiBsCXAs34thfK3HruYI9/QfZYowJC0o
7mkVw4i+364mbsUwYaRugYEnnKWfr0rG8OhtWbnPN4PMt0s/PgJD6LNmhyAQ
7pnVvW+IhWVmay3HEb5s3NbSzMLuPQeXtovTAX2M0T06z0JTirOe5wlrs0Yz
DrH/fSV8B0p6i1mYX7coWRCU9P3kyoKGOE5Jv687UrhWFBX0/32z5y3meQXd
v4nLzUZIQecb809xnRZC6fy3XJZwDRdKz3cgJ2BDh8jQ80vOvdUbeYbqw+jg
uR9iqH4710nfnBGmUX37No0zxXPTqP7VY+ZyUZxK/XGYth/awk+l/ukODJd6
fXLq76Zf0R2nBDn1P2xItMdwcpoPTclO9WMxhOZHfbLg+GY+hOZrVeCrO15f
MM2fO8xVahOCaT49Ly/ejOeCaX6XFKX3u0UZzXfJt6GH2byM5r8i2fJpIpLR
fqh+WGV2IYj2xySLlCdwQbRfvHPjYJcopf1LYqKeGnkp7ady1EeuKbS/fwBx
M3iP
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[CompressedData["
1:eJxFlH9M1GUcx5/oJGbuik4J7LQT7r73Q+B56OE2wILPliOpYeWwFEdcCY9H
Wv4YYzmDaYZWNyGZiA9i14KoHHNoqLP+QEGN3KNgGsvQdIPA5rGJ5pJr3vW5
1Z6e7bvvXvs+z/P9PO/P+/0seGv9sso4QsgL+MTe/w4Gr41FcaQAeTwhy0hh
UNfw4g9vi7lATKGZkMngyZWBA5cVck9DeGIRgz3ns03P8aeQF2fcKmBwbHdO
b7tEbks1OnIZzD6fNJJArEB8q31zPAwWZ33VuU4gD2w/2mthkH668ItBhXxy
0aaaPynE16o1z/B5QJKfXVLYTyHuVFdjs0QeMhdd2U9hZOpey3QU2Vckd35I
ocMOF98Q87He908mbqNgjltfckYh/3IwMb6Jwg3/lrgM/jSQm0X93/RQ2Fh4
eFezRPbVi6pRCtk93k8iUeRk07LyRxmcnXz+FOc2nL88lacxCCQlxfsFss38
SqmXwdTr1aH9Evn29ks38xl0PjHqG1Sx+Sd+LkEuFW7UdUFMD8sxziDiNJu9
HNlaPLPPhnrMuF67RiBvnb27PoHBkenwVSmRYWHJhWsUir2jryqFvGJJcFY3
hdQ7JeFIFHnDcVdaI4VPyzvGs3gqkPvjv5VtpZCxy5JcKZD93+bP20Hh62H4
YJ9E/jxYUR2kkHcv8zGlkElixssDFMp2hjqiUeTuIzA3TOHaZOtCztNwfQOp
SmIQHmtsEiLGe8uMdAaJxR9fkhK5h9aeyWPg7155VylkCE/G+v1eKOaX/79/
5Oqcxbldr/cHa9KFsOv96x7Z8I6Udv3/tkjFZaXsuj5rpWUVIQ5df8FfQ7c5
d+jzXZzTi/o59Pn7XwpNtEqH1se3eVXKBeXQ+g2OH5zxEDG0vu3t1kOcG1r/
s3dMaUIYuj8VEzbUz9D923J6auqcMnR/5+8Ybn0QNXT/f7piDTLu1P4g2wKW
CuHU/hF9f0y3SKf2l+fW9/lKObX/hiNj3xHi0v6EImeul7u0fxNy+uqqhEv7
e+PageUHpEv73/i1vGVIuXQ+AndN2Q8Tt87P/YA7x8vdOl/vtqYoIdw6fyM1
VzP3SbfO51Lo6vpRuXV+xabqpr+jbp3vz9pX2zK5R+f/UP3vtW8Kj74fJgvy
DjdLj74/cr8sbTunkP+7X5aGY37xwD8Tl6vj
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.9452, 10.}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         LineBox[{{16.00000000000182, 13.5}, {9.999999999998181, 
          9.999999999996362}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "m", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.949767666818687, 12.268112571167965},
           ImageScaled[{1, 0}]], 
         LineBox[{{15.999999999998181`, 6.5}, {9.999999999998181, 
          9.999999999996362}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "n", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.949767666818687, 7.731887428832037}, 
          ImageScaled[{1, 1}]], 
         {PointSize[0.04], PointBox[{4., 10.}], PointBox[{16., 13.5}], 
          PointBox[{16., 6.5}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["17",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebe/cfdg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebe/cfdg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 22}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}],
          PolygonBox[{{5.599251403326707, 14.720037429833665`}, {
          4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 
          15.179463505717473`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 15.693266125260656}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{2.2737367544323206`*^-13, 5.}, {6.499999999999773, 5.5}}], 
         PolygonBox[{{2.651767308699051, 5.203982100669157}, {
          3.8789112908548438`, 4.8971961051302095`}, {3.817554091747054, 
          5.694839693531476}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271343, 4.309365547472549}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000005343`, 15.}, {10.000000000012506`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {14.93508109797294, 15.443578040541198}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.999999999999773`, 5.}, {13.500000000000227`, 5.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.650294551449843, 4.5586291688479434},
           NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000001059`}, {10., 10.999999999998941`}}]}, 
         PolygonBox[{{10., 12.15}, {9.6, 13.35}, {10.4, 13.35}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10.9452, 12.75}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{6.499999999998151, 5.5}, {13.49999999999741, 5.5}}]}, 
         PolygonBox[{{9.4, 5.5}, {10.6, 5.1}, {10.6, 5.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 4.5548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{6.500000000003638, 5.5}, {10.000000000003638`, 
          10.999999999998181`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "m", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.7580400659482605, 8.343138139851106}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{13.500000000003638`, 5.500000000001819}, {
          10.000000000003638`, 11.}}], 
         PolygonBox[{{12.072125295315896`, 7.743803107360735}, {
          11.765339299776947`, 8.970947089516528}, {11.09041010959126, 
          8.541446695762001}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.452875305984765, 8.477357012899397}, 
          ImageScaled[{0, 0}]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{6.5, 5.5}], 
          PointBox[{13.5, 5.5}], PointBox[{10., 11.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["18",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cedg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cedg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}],
          PolygonBox[{{5.599251403326707, 14.720037429833665`}, {
          4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 
          15.179463505717473`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 15.693266125260656}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{2.2737367544323206`*^-13, 5.}, {6.499999999999773, 5.5}}], 
         PolygonBox[{{2.651767308699051, 5.203982100669157}, {
          3.8789112908548438`, 4.8971961051302095`}, {3.817554091747054, 
          5.694839693531476}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271343, 4.309365547472549}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000005343`, 15.}, {10.000000000012506`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {14.93508109797294, 15.443578040541198}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.999999999999773`, 5.}, {13.500000000000227`, 5.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.650294551449843, 4.5586291688479434},
           NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000001059`}, {10., 10.999999999998941`}}]}, 
         PolygonBox[{{10., 12.15}, {9.6, 13.35}, {10.4, 13.35}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10.9452, 12.75}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{6.499999999998151, 5.5}, {13.49999999999741, 5.5}}]}, 
         PolygonBox[{{9.4, 5.5}, {10.6, 5.1}, {10.6, 5.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 4.5548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{6.500000000003638, 5.5}, {10.000000000003638`, 
          10.999999999998181`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.7580400659482605, 8.343138139851106}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{13.500000000003638`, 5.500000000001819}, {
          10.000000000003638`, 11.}}], 
         PolygonBox[{{12.072125295315896`, 7.743803107360735}, {
          11.765339299776947`, 8.970947089516528}, {11.09041010959126, 
          8.541446695762001}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.452875305984765, 8.477357012899397}, 
          ImageScaled[{0, 0}]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{6.5, 5.5}], 
          PointBox[{13.5, 5.5}], PointBox[{10., 11.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["19",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cedg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cedg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}],
          PolygonBox[{{5.599251403326707, 14.720037429833665`}, {
          4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 
          15.179463505717473`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 15.693266125260656}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{2.2737367544323206`*^-13, 5.}, {6.499999999999773, 5.5}}], 
         PolygonBox[{{2.651767308699051, 5.203982100669157}, {
          3.8789112908548438`, 4.8971961051302095`}, {3.817554091747054, 
          5.694839693531476}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271343, 4.309365547472549}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000005343`, 15.}, {10.000000000012506`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {14.93508109797294, 15.443578040541198}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.999999999999773`, 5.}, {13.500000000000227`, 5.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.650294551449843, 4.5586291688479434},
           NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000001059`}, {10., 10.999999999998941`}}]}, 
         PolygonBox[{{10., 12.15}, {9.6, 13.35}, {10.4, 13.35}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10.9452, 12.75}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{6.499999999998151, 5.5}, {13.49999999999741, 5.5}}]}, 
         PolygonBox[{{9.4, 5.5}, {10.6, 5.1}, {10.6, 5.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 4.5548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{6.500000000003638, 5.5}, {10.000000000003638`, 
          10.999999999998181`}}], 
         PolygonBox[{{8.572125295315896, 8.756196892639265}, {
          8.265339299776947, 7.529052910483472}, {7.590410109591261, 
          7.958553304237999}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox[
              OverscriptBox["\[Chi]", "~"], "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.547124694015234, 8.477357012899397}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{13.500000000003638`, 5.500000000001819}, {
          10.000000000003638`, 11.}}], 
         PolygonBox[{{12.072125295315896`, 7.743803107360735}, {
          11.765339299776947`, 8.970947089516528}, {11.09041010959126, 
          8.541446695762001}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.452875305984765, 8.477357012899397}, 
          ImageScaled[{0, 0}]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{6.5, 5.5}], 
          PointBox[{13.5, 5.5}], PointBox[{10., 11.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["20",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cedg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cedg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}],
          PolygonBox[{{5.599251403326707, 14.720037429833665`}, {
          4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 
          15.179463505717473`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 15.693266125260656}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{2.2737367544323206`*^-13, 5.}, {6.499999999999773, 5.5}}], 
         PolygonBox[{{2.651767308699051, 5.203982100669157}, {
          3.8789112908548438`, 4.8971961051302095`}, {3.817554091747054, 
          5.694839693531476}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271343, 4.309365547472549}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000005343`, 15.}, {10.000000000012506`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {14.93508109797294, 15.443578040541198}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.999999999999773`, 5.}, {13.500000000000227`, 5.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.650294551449843, 4.5586291688479434},
           NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000001059`}, {10., 10.999999999998941`}}]}, 
         PolygonBox[{{10., 12.15}, {9.6, 13.35}, {10.4, 13.35}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10.9452, 12.75}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         LineBox[CompressedData["
1:eJw9lH9QlEUYx9cLihpGUNod0QPeu1PoFBljuRGZhKdf5DiBo3gWOiYat4hZ
0uSvGaM5dYaSw7hAgiUNRvHnQGFlTTGmlVo6i56GaGml4y9UVBgZELB73fOP
Z2feeecz++6++3yf73dtS1bM8VgIIa/pJ/TOHTL1mAjk8WCQsXP+1hNKMxhH
6goZ3MnK2F8jNUe3TiI/Mvig8lrpYqE5kHGr4R6DJS1vGyk8xKMPNJsMJn64
smrYdAIpKa/zX2cwemZz83Gl2bt5vXsPgwbvxZQ6qdmI6gzmMuhviVVChObX
XO3uovDA50x3cc1T1voryij47oelPUE0N8ZVfTOVQuLfi2oD6jkgh6tSo56m
4Fr1h3ub1Gw88DosFNSLv35ULDS3uh2R4ymE5SVNc3HNgeqyvGIK9RHXfiIk
tP6Z9jPHKNzta8tUKglIQfSM0skM7p69OVgrNTe+sUlVMPhkiy+mUGj2pkPx
WQZn/rI2TOGaD0fl7hhmkFDWWf+/mai/vzEvb5DBuiO9vSdUYkiPnPMnGTh7
jQ11UnNJmjNiI4Pyh2EOITSTOa8wO4OiFutXnGv2ztuztY1Cdc++8BFEc6s/
M7aAQlfFgtiTagKQS+/Nzo6n8Pqi7hv1UnNP+8E2QuE0PVRaJDQHRGlGJIWs
gUAP55oh63hXJgWrJ2YBIZqJff6XfgoFEZ4Opcbrej3r0/oovDSq5F0pNTdO
szTlM0jeuzpZiBDnr5atDHJSd0Vyrjnwcx+9zeCF/pBfHHq/mz98rfvd81v+
faUcOD8qZ9OfUjpw/fDVyiohHLj/P3fqJ3HuwP8v/Li7yTTteL5gMCVKKTue
f/kl0PrZsb7ez2PGeIQd659b3HT9eW5HffaFu4eCpg3165xxZbZSNtT328Gh
i1LaUP9nw//T+tmwP8GkkSNd3Ib9iy9x6rzYsL/vWK8UnFIG9v/A4pXdX0gD
/THLYE8uFQb6xzfw8i+cG+ivVy+4yoNmAvrv/ez9m2tkAvrz8tJ1lsk8Af0b
bVkx96iKR38np8Ppt0Q8+r8wvL920IzDfJR3NFfWyDjMz6d+VZTK4zBf353L
3n5KWTF/7jd371ourJjPCX3sQgSxYn6//yz90A45DvO9pT0tbDofh/kfk+/b
1qHG4v3w1PaZvy8TY/H++Hcg5JdYvF8eAWhNtrY=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 4.5548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{6.500000000003638, 5.5}, {10.000000000003638`, 
          10.999999999998181`}}], 
         PolygonBox[{{7.927874704684104, 7.743803107360735}, {
          8.90958989040874, 8.541446695762001}, {8.234660700223053, 
          8.970947089516528}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.547124694015234, 8.477357012899397}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{13.500000000003638`, 5.500000000001819}, {
          10.000000000003638`, 11.}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "m", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.241959934051739, 8.343138139851106}, 
          ImageScaled[{0, 0}]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{6.5, 5.5}], 
          PointBox[{13.5, 5.5}], PointBox[{10., 11.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["21",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cedg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cedg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}],
          PolygonBox[{{5.599251403326707, 14.720037429833665`}, {
          4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 
          15.179463505717473`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 15.693266125260656}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{2.2737367544323206`*^-13, 5.}, {6.499999999999773, 5.5}}], 
         PolygonBox[{{2.651767308699051, 5.203982100669157}, {
          3.8789112908548438`, 4.8971961051302095`}, {3.817554091747054, 
          5.694839693531476}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271343, 4.309365547472549}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000005343`, 15.}, {10.000000000012506`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {14.93508109797294, 15.443578040541198}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.999999999999773`, 5.}, {13.500000000000227`, 5.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.650294551449843, 4.5586291688479434},
           NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000001059`}, {10., 10.999999999998941`}}]}, 
         PolygonBox[{{10., 12.15}, {9.6, 13.35}, {10.4, 13.35}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10.9452, 12.75}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         LineBox[{{6.499999999998151, 5.5}, {13.49999999999741, 5.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "m", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 4.8048}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{6.500000000003638, 5.5}, {10.000000000003638`, 
           10.999999999998181`}}]}, 
         PolygonBox[{{7.927874704684104, 7.743803107360735}, {
          8.90958989040874, 8.541446695762001}, {8.234660700223053, 
          8.970947089516528}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.547124694015234, 8.477357012899397}, 
          ImageScaled[{1, 0}]], LineBox[CompressedData["
1:eJwt1A1Qy2EcB/CnXWq9yOREpRkly5SEzjnZvyRJWFOanSO76RxO1JUxrUx1
ZK7kpfVCO4XpWHnNS2adt+XlOJI6Yc7b6HJzWyQL38fZ3X/f+zy///N7nv/z
v/tPkGWJ17EIIXG4aBI2/QthyL9fKEO05x62/ghmyPte26sbkxgy8MSw1w4n
xwWKVfCe+X2E1h1tB07Np/V14teumF9LTDUjaP1URxMXbvXpFbxDWjO36eNp
LlUqjEjbzV3VuUi9UdSmQ0YmXfBvQvbwNMo9dJx9pK0P2VGXqspBSqodleHo
e2hFSewaen9vUuEGuCMzYvIiWNEZcEEHO68X3IuATXOOCh7Bis/10T4w27jm
Tx+c/DR/7kfsmz/LcpiF5xTd8lJchrc0vrjqBa8PytxQACvchWrqi/sC18fB
bKl+9DDYaj6Y7QKbWI+WOtGvp717yDgR428Nyf3w1HeZp/NhXc6vQTtsbXRx
CGFtKaP7BeujxHZ3uHxHt8qHnnPp2jEvJuC+aasOhsNXiizEANtU/dsksPO4
bbMGNg/Ys/bD7DsFCVvh2alR1e1wUW/GeSlcPr0x3mMyQ+QylSQBjqy9lJ4I
OxYEHZsOb0nsfKiGG9xy7f4wP2Bf8CVa/8TmDvEY8uSj424PrNekbe+GtQtv
SwZgkSw/1ACTxm9d7nysv0wzSQmLjMYT3jDJzk2LhTkeLqkecGvKAykLNg2P
lrvQej3PUjge51H2pof2k4wbkeTkYp0PZ5/b4a4ZLfydMHtTC/kO60b5Rg6D
m5tnClmYrxXEeNYE4X0YviwJgAuXjO8TwpLgGxXz4OaMWKljHM7tMm/kZtim
5nFaYL20teQknJFVH1EMi4YGz7yHJe3lpVLYrOJqQ8LQv7ksNIrOV3mHyWDO
zsFbbnChz9eiKtgaMlb5LBDPkeBbfA9ODN+x6BDMpMh9v8CKQWlJAmwW+8nI
FIzPezDtcwDWmaXz9oJJ5Vf3fHjAluek1rv+ULnCvJdbo91ga87qTbv9sf4z
gXqI9muT1/0ei33Llzn7Ydv9vOVKuKszps4Od60Ua3+PYYhlbtXjn2H0XLk3
NXB5lfmnJ/opKniv+HBkg24xH85wMNkdfth3+5SKFNhyrSSmDDbf3igshjmO
vPh0mBOnrjTB7Aa1dxj873sg+J9+zF/hiXUV
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.452875305984765, 8.477357012899397}, 
          ImageScaled[{0, 0}]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{6.5, 5.5}], 
          PointBox[{13.5, 5.5}], PointBox[{10., 11.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["22",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cedg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cedg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}],
          PolygonBox[{{5.599251403326707, 14.720037429833665`}, {
          4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 
          15.179463505717473`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 15.693266125260656}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{2.2737367544323206`*^-13, 5.}, {6.499999999999773, 5.5}}], 
         PolygonBox[{{2.651767308699051, 5.203982100669157}, {
          3.8789112908548438`, 4.8971961051302095`}, {3.817554091747054, 
          5.694839693531476}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271343, 4.309365547472549}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000005343`, 15.}, {10.000000000012506`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {14.93508109797294, 15.443578040541198}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.999999999999773`, 5.}, {13.500000000000227`, 5.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.650294551449843, 4.5586291688479434},
           NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000001059`}, {10., 10.999999999998941`}}]}, 
         PolygonBox[{{10., 12.15}, {9.6, 13.35}, {10.4, 13.35}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10.9452, 12.75}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         LineBox[{{6.499999999998151, 5.5}, {13.49999999999741, 5.5}}], 
         PolygonBox[{{9.4, 5.5}, {10.6, 5.1}, {10.6, 5.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 4.5548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJwd1H9Qy3Ecx/FvP7AxhH6OMvIj4kw/nEhNN2d+XatzjClJ0vnRj5tfMZnV
yI8j4bT8CnGzqwzhey6zWJnDmVSX6q751bJoI63ltnh97G573mPfz+f9/Xz3
xyalZiVucacoKg5vUopBPqbwKOdfvKbyKK84+QVdMFypze2GDfrtsQrYodAn
NcKClzOLE+Ci69GbaJhbXrYiBDYqOurPw0VKw8BwWP8w68x22BStfDswmUfN
orPLouCW5kVXe2Hv9833KTglLd7ZBxeW8tc8wzno96FyF8y/ukojgzltOfOG
Yh6r3rgsBnbY9jhHwBUHC3QuVBRZxiKWVTOktagh0TeVQk0p7IwTKC8hbawF
8/TyhpoN5DmWjFW8gDd8i2uLJPtG9RQo4ZM/JHG+MJ3HmpEKO2rdrzhRQ15Q
yRS0ejr9vRMVuv5UfJmEXnz0uAFWra85cotYUJXxBKYfcsZkwoVa695yWBT8
pDgGVsV3NCjgfVWWVWyYty6bmUL2ayJi3WHuto/7w2DGjkeUnQPb7VtdZN/X
yqZe2Du9vLsWLjvd0e6AG3McrYdh3ch5aW6otMp6Ohb1YrqtZqL8qoibLqwT
arU3WTB16rhaC1Pqny3DYIdG0loAlyzVi8g8zWX5hwTU2Pm7vh0VSdRHpqEh
7BPBD1CWf/9HdzRb0PxajtK/fAJeT8Q5Lz1YK4D9d9U9vwQXzVXzmeT8Cz3i
JXC2Ki3iLOoIibm4nFz/ae5go7bdlCQQNbksVk0Qnvtx0GQzatxITxOjRfaY
wRsop++eawL53hL9LgHl+hzm9QfivKXiABvKM9v7zChX7fSTocbnSUoLqooK
q/REZUNKLzvIuh0rPeUT8PtUC0OHkzmZLWzXeJxjVJ6nH1zSZZhzADatviMh
5taFh7rBwm260CGwMLdr9Fk29kufDrZhXobY82g4LNu9YG0p7DWbLv4cgHkV
kemLYUYhlXMdTmk+TzXhvqKwG3d3wpqIb3PEcEtir3QxLBwzK78N9xHp1ngE
kPXn0sOTYYHWzLD64zyHPCK7cR+NPPmgFja+6REegzmpzNH5sFf87Y2L4MJP
M1RRsO1VeQ0TNgweMpj8cP1oq1sP5vpL2zX7YNu1pHFmWHTgpdgD5m5W5lrh
+SFB/AJfrCf/B9j//+XL+wdVR3wr
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.547124694015234, 8.477357012899397}, 
          ImageScaled[{1, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{13.500000000003638`, 5.500000000001819}, {
           10.000000000003638`, 11.}}]}, 
         PolygonBox[{{12.072125295315896`, 7.743803107360735}, {
          11.765339299776947`, 8.970947089516528}, {11.09041010959126, 
          8.541446695762001}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.452875305984765, 8.477357012899397}, 
          ImageScaled[{0, 0}]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{6.5, 5.5}], 
          PointBox[{13.5, 5.5}], PointBox[{10., 11.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["23",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cedg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cedg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}],
          PolygonBox[{{5.599251403326707, 14.720037429833665`}, {
          4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 
          15.179463505717473`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 15.693266125260656}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{2.2737367544323206`*^-13, 5.}, {6.499999999999773, 5.5}}], 
         PolygonBox[{{2.651767308699051, 5.203982100669157}, {
          3.8789112908548438`, 4.8971961051302095`}, {3.817554091747054, 
          5.694839693531476}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271343, 4.309365547472549}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000005343`, 15.}, {10.000000000012506`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {14.93508109797294, 15.443578040541198}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{19.999999999999773`, 5.}, {13.500000000000227`, 5.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.650294551449843, 4.5586291688479434},
           NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000001059`}, {10., 10.999999999998941`}}]}, 
         PolygonBox[{{10., 12.15}, {9.6, 13.35}, {10.4, 13.35}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10.9452, 12.75}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         LineBox[{{6.499999999998151, 5.5}, {13.49999999999741, 5.5}}], 
         PolygonBox[{{9.4, 5.5}, {10.6, 5.1}, {10.6, 5.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 4.5548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
HT7wfx8Xwb8g5PY4
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {6.956561652602758, 8.853169857434608}, 
          ImageScaled[{1, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{13.500000000003638`, 5.500000000001819}, {
           10.000000000003638`, 11.}}]}, 
         PolygonBox[{{12.072125295315896`, 7.743803107360735}, {
          11.765339299776947`, 8.970947089516528}, {11.09041010959126, 
          8.541446695762001}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.452875305984765, 8.477357012899397}, 
          ImageScaled[{0, 0}]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{6.5, 5.5}], 
          PointBox[{13.5, 5.5}], PointBox[{10., 11.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["24",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cedg/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cedg/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 0}, {0, 0}, {22, 22}]},
   AspectRatio->NCache[
     Rational[1, 2], 0.5],
   ImageSize->{512, 256},
   PlotRange->{{0, 88}, {0, 44}}], TraditionalForm]], "Print",
 CellChangeTimes->{{3.914644118569538*^9, 3.9146441503624363`*^9}, 
   3.914644197358041*^9, {3.9146442390367126`*^9, 3.914644268241125*^9}, 
   3.9146448699270487`*^9, 3.914649706791935*^9},
 CellLabel->
  "During evaluation of \
In[29]:=",ExpressionUUID->"78e11a7b-459a-43a3-8b96-4747e573c6a2"],

Cell[BoxData[
 FormBox[
  GraphicsBox[{InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[{{0., 15.}, {6.499999999999545, 14.5}}], 
         PolygonBox[{{3.848232691300949, 14.703982100669158`}, {
          2.6210887091451562`, 14.39719610513021}, {2.682445908252946, 
          15.194839693531474`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271342, 15.690634452527451}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 
          5.5}}], PolygonBox[{{4.400748596673293, 5.220037429833664}, {
          5.6192264501042635`, 4.880461634615198}, {5.57927635654915, 
          5.679463505717473}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999996362`, 15.}, {10., 5.500000000001819}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {13.027292937434868, 8.0361976392218}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{20., 5.}, {13.499999999996362`, 14.5}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.117582797289955, 8.325320679029748}, 
          ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 8.5}}]}, 
         PolygonBox[{{10., 6.4}, {10.4, 7.6}, {9.6, 7.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.0548, 7.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{6.499999999998151, 14.5}, {13.49999999999741, 14.5}}]}, 
         PolygonBox[{{10.6, 14.5}, {9.4, 14.1}, {9.4, 14.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 15.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{6.5, 14.500000000001819`}, {10.000000000003638`, 
          8.500000000001819}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "m", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.731887428832036, 11.449767666818687}, 
          ImageScaled[{1, 1}]], 
         LineBox[{{13.500000000003638`, 14.500000000001819`}, {
          10.000000000003638`, 8.499999999998181}}], 
         PolygonBox[{{11.447677384685548`, 10.98173265946094}, {
          11.706811054955079`, 12.219815750748694`}, {12.397834175673825`, 
          11.816718930329426`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.409234274088892, 12.042143360821761},
           ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{6.5, 14.5}], PointBox[{10., 5.5}], 
          PointBox[{13.5, 14.5}], PointBox[{10., 8.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["25",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cfdg/fhegehgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cfdg/fhegehgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 22}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[{{0., 15.}, {6.499999999999545, 14.5}}], 
         PolygonBox[{{3.848232691300949, 14.703982100669158`}, {
          2.6210887091451562`, 14.39719610513021}, {2.682445908252946, 
          15.194839693531474`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271342, 15.690634452527451}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 
          5.5}}], PolygonBox[{{4.400748596673293, 5.220037429833664}, {
          5.6192264501042635`, 4.880461634615198}, {5.57927635654915, 
          5.679463505717473}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999996362`, 15.}, {10., 5.500000000001819}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {13.027292937434868, 8.0361976392218}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{20., 5.}, {13.499999999996362`, 14.5}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.117582797289955, 8.325320679029748}, 
          ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 8.5}}]}, 
         PolygonBox[{{10., 6.4}, {10.4, 7.6}, {9.6, 7.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.0548, 7.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{6.499999999998151, 14.5}, {13.49999999999741, 14.5}}]}, 
         PolygonBox[{{10.6, 14.5}, {9.4, 14.1}, {9.4, 14.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 15.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{6.5, 14.500000000001819`}, {10.000000000003638`, 
          8.500000000001819}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.731887428832036, 11.449767666818687}, 
          ImageScaled[{1, 1}]], 
         LineBox[{{13.500000000003638`, 14.500000000001819`}, {
          10.000000000003638`, 8.499999999998181}}], 
         PolygonBox[{{11.447677384685548`, 10.98173265946094}, {
          11.706811054955079`, 12.219815750748694`}, {12.397834175673825`, 
          11.816718930329426`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.409234274088892, 12.042143360821761},
           ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{6.5, 14.5}], PointBox[{10., 5.5}], 
          PointBox[{13.5, 14.5}], PointBox[{10., 8.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["26",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cfdg/fhegehgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cfdg/fhegehgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[{{0., 15.}, {6.499999999999545, 14.5}}], 
         PolygonBox[{{3.848232691300949, 14.703982100669158`}, {
          2.6210887091451562`, 14.39719610513021}, {2.682445908252946, 
          15.194839693531474`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271342, 15.690634452527451}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 
          5.5}}], PolygonBox[{{4.400748596673293, 5.220037429833664}, {
          5.6192264501042635`, 4.880461634615198}, {5.57927635654915, 
          5.679463505717473}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999996362`, 15.}, {10., 5.500000000001819}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {13.027292937434868, 8.0361976392218}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{20., 5.}, {13.499999999996362`, 14.5}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.117582797289955, 8.325320679029748}, 
          ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 8.5}}]}, 
         PolygonBox[{{10., 6.4}, {10.4, 7.6}, {9.6, 7.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.0548, 7.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{6.499999999998151, 14.5}, {13.49999999999741, 14.5}}]}, 
         PolygonBox[{{10.6, 14.5}, {9.4, 14.1}, {9.4, 14.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 15.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{6.5, 14.500000000001819`}, {10.000000000003638`, 
          8.500000000001819}}], 
         PolygonBox[{{7.947677384685548, 12.01826734053906}, {
          8.206811054955079, 10.780184249251306`}, {8.897834175673825, 
          11.183281069670574`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox[
              OverscriptBox["\[Chi]", "~"], "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.515942703607428, 11.323799910437668}, 
          ImageScaled[{1, 1}]], 
         LineBox[{{13.500000000003638`, 14.500000000001819`}, {
          10.000000000003638`, 8.499999999998181}}], 
         PolygonBox[{{11.447677384685548`, 10.98173265946094}, {
          11.706811054955079`, 12.219815750748694`}, {12.397834175673825`, 
          11.816718930329426`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.409234274088892, 12.042143360821761},
           ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{6.5, 14.5}], PointBox[{10., 5.5}], 
          PointBox[{13.5, 14.5}], PointBox[{10., 8.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["27",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cfdg/fhegehgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cfdg/fhegehgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[{{0., 15.}, {6.499999999999545, 14.5}}], 
         PolygonBox[{{3.848232691300949, 14.703982100669158`}, {
          2.6210887091451562`, 14.39719610513021}, {2.682445908252946, 
          15.194839693531474`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271342, 15.690634452527451}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 
          5.5}}], PolygonBox[{{4.400748596673293, 5.220037429833664}, {
          5.6192264501042635`, 4.880461634615198}, {5.57927635654915, 
          5.679463505717473}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999996362`, 15.}, {10., 5.500000000001819}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {13.027292937434868, 8.0361976392218}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{20., 5.}, {13.499999999996362`, 14.5}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.117582797289955, 8.325320679029748}, 
          ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 8.5}}]}, 
         PolygonBox[{{10., 6.4}, {10.4, 7.6}, {9.6, 7.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.0548, 7.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[CompressedData["
1:eJw9lH9MlVUYx48EcrcccUMZ4Hvh/kjw4jnMON7tpqaPlQQOdRVsqBlIcLgo
Tgq0P4SkZprcCiMJz1V3nZEOhKZJteWWFP0wd5KLEWqo6UizDR1MBLnWvZ3b
H8/Z3r377LznvOd8n+/3sZVuebE8ihDyvH4i71XBsB6ZQP4fDBZ+uvbgOaXZ
Gl+an83gztKFJ1ukZtOlWQ0vM6hpulm/QWj2WO73vcGgtOtVaxaP8J61gzsY
ZNbVNj8MO4G4l+fn1jB4fEVn589Kc8+PPZkFDPwNV7L2S817YzftyGAw0ZWs
hIjML3p92ziFB16n28U1Jy3Ozeml4L0XveARojkQl3f5AIX034tbA2oukJI8
uXsnBdfWs4WHpOb4uh7zWxTUsu/erBSaL3WYpzdTiH4p4ykX13w7r7e9m4LP
dPNrQiLr3xGVwxTujp9eolQGkPmmtm8SGdz97e+pVqk5cPw5kcPg3X3ehDKh
GYzD3RsZXLhs+Odzzddjj/XXM0jbNej7N5yuv6853l7HYPv3Y2PnVHpEj/Sq
CgbOMevb+6Vmt2/mzmUMGv+JdgihmTjtj5oZVHQZn3GuGeYVnL9K4aPRjphp
RHNRrn/GCQq331uXfF7NAVL91VxHE4X84pG/fFLzg1vX1jdQ6J91pr5CaPac
WmLZRWHpZGCUc82H/WW1fgpGecI6QjQTM1t9lkKJqXxAqSeAnPgcUoIUnjFX
b5ZSc8CYdoEyoO3bqBARpqfzixiszD46g3PNnuJg41YGiycifnEAaRgfuqjr
Pdq75p5SDpw3r9zzq5QOXP/wz6ZmIRy4/9U7vnmcO/D/63ePtIXDdjxfKJT1
mFJ2PH/VddD62fF+Yx8nJJULO96/oLLt1pPcjvp0xBQGQ2Eb6jeYO/yCUjbU
99RU8IqUNtR/ZswfWj8b1ieUERfn4jasX2q1U+fFhvXdZAyX9Ckr1v+LDbUj
B6QV/bHamjjdI6zoH+/ks99ybkV/LR9yNYbCaei/13JOvt8i09CfNzzboxhP
Q//GR20p+EGlor+pG/pfEano/7KYidapsAXz0TjQ2dQiLZifD/aqimxuwXx1
X8w50qcMzF9h0bGjVcLAfM4ZTxwyEQPz++WH7jOfyNmY732/LIh+ms/G/Cet
8R4aUCnYH2KPrPhpo0jB/nFtMuKXZOwv/wFdK7Iy
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 15.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{6.5, 14.500000000001819`}, {10.000000000003638`, 
          8.500000000001819}}], 
         PolygonBox[{{8.552322615314452, 10.98173265946094}, {
          7.602165824326175, 11.816718930329426`}, {8.293188945044921, 
          12.219815750748694`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.515942703607428, 11.323799910437668}, 
          ImageScaled[{1, 1}]], 
         LineBox[{{13.500000000003638`, 14.500000000001819`}, {
          10.000000000003638`, 8.499999999998181}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "m", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.193289548864282, 12.168111117202784},
           ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{6.5, 14.5}], PointBox[{10., 5.5}], 
          PointBox[{13.5, 14.5}], PointBox[{10., 8.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["28",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cfdg/fhegehgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cfdg/fhegehgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[{{0., 15.}, {6.499999999999545, 14.5}}], 
         PolygonBox[{{3.848232691300949, 14.703982100669158`}, {
          2.6210887091451562`, 14.39719610513021}, {2.682445908252946, 
          15.194839693531474`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271342, 15.690634452527451}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 
          5.5}}], PolygonBox[{{4.400748596673293, 5.220037429833664}, {
          5.6192264501042635`, 4.880461634615198}, {5.57927635654915, 
          5.679463505717473}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999996362`, 15.}, {10., 5.500000000001819}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {13.027292937434868, 8.0361976392218}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{20., 5.}, {13.499999999996362`, 14.5}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.117582797289955, 8.325320679029748}, 
          ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 8.5}}]}, 
         PolygonBox[{{10., 6.4}, {10.4, 7.6}, {9.6, 7.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.0548, 7.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{6.499999999998151, 14.5}, {13.49999999999741, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "m", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 15.1952}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{6.5, 14.500000000001819`}, {10.000000000003638`, 
           8.500000000001819}}]}, 
         PolygonBox[{{8.552322615314452, 10.98173265946094}, {
          7.602165824326175, 11.816718930329426`}, {8.293188945044921, 
          12.219815750748694`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.515942703607428, 11.323799910437668}, 
          ImageScaled[{1, 1}]], LineBox[CompressedData["
1:eJwd1HtMU1cAx/ED1tC4MsHJa25YHJYWZEMppDVM7niYbi1bVVyYoaarA0t8
UAcOkFLuKmoxIzCBpC51VgajECWQ4CAOpDjHmihaFQ0oOojiOoZWHEJxSPc7
Nrn95tNz7rn3nD8aocnfmuNLCNmMi5Zw6VckQxa8+PAZUpOotyTB4onTW0Mj
GKIcP/nrQdh2J6BtA1zjmpXa4O7G64+VMNsQdvoGrN97fl8h7KyOVD2DJRXO
6B9hR7fLs2QtQ/ZqOLnXYG1JRrA/XCG70sdZwxDr5OBuasnxoY0M7Gk6b/SD
ifHY9nJYnXnEsoj1sotG4uywrkwsmYUVwio7eY8hWSE/X5mG291e7yZYZ9if
O0PHQ+IFJTCj/0tDsF5a/a1b52Cz4ogoBJZ9eipxFB5+aOJJ4bEdleEcui99
V3IOzF3V5CuAtbNTUydhvTToRQqsq/xm1xDMs5Ucy6bz/9CpAgVYN+9QQyHs
ka3LzIDHwmoyq+DiF6H3KmB2wysLPbe4M8s9nXCx4jOJg9oUpLsHk2hzwRNY
qXlA5uBh/viyMDzHkZ7yrV8UQzK90mA5rM7TTPjDxY/lfodh7XyggAd3Xmjr
6qPnGPrKfynsbK4+6oXtUeem/6PrfXTWyKDC/NYvZtCAkd0WFtWKv2yepu9r
c9/tRU2aud5ZlN/yVjWtOeluF13v8j+dBhEqtB1uX03bmMf5HFUrnjSnoWPP
BHw9am343liAzrSlFFlQ282Xa1tRV9BgajfqmFlsm0DFWW7xDVSXGt+zRoj9
DRpS/4Y9VcG/q+B2eWS5LyrbFXOwFmW7EkfC0Tj3kE8/2hPx0/NkVGtVfv0I
Nb/7dDoXdQ18d3MBdUZV5tSh6uxe+TIR3mN1SYID5q5P4L8J94z3NfnQ3+ue
Hqfjlx99kpeMmpu4R33RrH7Db+VowPscwzzuS7u02GmHHarS+ef0/SZjPyDR
OIcOySZqV6H04yRY+/btBTpfKNh+oICOi1Rv8HCfZyq+vhG25s8niGA2seXD
63T+tZ3RW+Dh0tYf/oX5A6GsES7+qtSwIgb3k+HRC7DzISuLhR0P3lk/B69k
7venw9arEX5i+pzSHLcqhq6zYnQfzN1Ye78IJh21h87AZ3d27KmHTdvKMq7C
PXvqV3XD7C8HGqbg7LJLk2OwLfzUbR9U7PlTErAO+zIlaHiwbn/wxXTYpAy8
40/HFfITLGwfqGvhwupRNq0Pfv1/AnNoY5n/AYZAj+I=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.409234274088892, 12.042143360821761},
           ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{6.5, 14.5}], PointBox[{10., 5.5}], 
          PointBox[{13.5, 14.5}], PointBox[{10., 8.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["29",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cfdg/fhegehgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cfdg/fhegehgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[{{0., 15.}, {6.499999999999545, 14.5}}], 
         PolygonBox[{{3.848232691300949, 14.703982100669158`}, {
          2.6210887091451562`, 14.39719610513021}, {2.682445908252946, 
          15.194839693531474`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271342, 15.690634452527451}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 
          5.5}}], PolygonBox[{{4.400748596673293, 5.220037429833664}, {
          5.6192264501042635`, 4.880461634615198}, {5.57927635654915, 
          5.679463505717473}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999996362`, 15.}, {10., 5.500000000001819}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {13.027292937434868, 8.0361976392218}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{20., 5.}, {13.499999999996362`, 14.5}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.117582797289955, 8.325320679029748}, 
          ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 8.5}}]}, 
         PolygonBox[{{10., 6.4}, {10.4, 7.6}, {9.6, 7.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.0548, 7.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{6.499999999998151, 14.5}, {13.49999999999741, 14.5}}], 
         PolygonBox[{{10.6, 14.5}, {9.4, 14.1}, {9.4, 14.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 15.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[CompressedData["
1:eJwt1A1MU1cUB/AL0YAMtBA1UJGWAh1Ih0UgsgThyWB2g7kiKISPhUHMEGFU
/MIxbYtImsE2lIYJaoKoseJXCQiGlVHZWkSrVmJdqw2WgYqMAhqNrRTd/yZ7
yXsnv5xzz7n3tXnBRRVbtrsTQj7HTSPxpI9QhiyiMZgh1/XKC57w2RDp7wzc
KPZ96ANru7rLpbBNEVfkDSuPvtjYB6uCTpnc4Ace3KFZWNazq306BPmaDSs4
PIYoMg9+ZYBTlKUTm2DPzqYfTlOf3qwshc3VftZy2KUr4yngNkOwRyxsrW1l
tcPG0cDot4jWAV5iHyKXmK00xgZKe0eo9f6yGjrnRK3cjlhy95s1GYiBtVu3
e6PP8QpnXAQsG942KISFEQUfecMOP0NpHlzCNrmc2LfZ0vFLA8ztjE98BXPr
9T1/wjcLqp3UKStGjB9gVtSiQ7Res8EtLQnnbjznWeeOfupEeYIMVitnfvKC
BauuNWthEh3HXQqLgpjc93BOfn8azefb6m6tD2PInL5hxEXnmfe17oQL28SV
E3DZP75LW2Dh7AO3G3D8aL6PFhYVR+5tgmtFw/wxuv7nlboCOKv7sWwBrvos
RsODT66Ta1bysf/X76885eI9nmfdjoLbRt6FdcD+U+s0m2BV+9Ga3bBL3K8o
hgvT7edT4PBllieHYa7qsJoDm/Oa5y/AjQmPehfDCcvT5A9hlm6m2s5hyOS2
acmSj/H/KBncPA4vz2aFJcPMaFbXJOzgHy+WwpKvc8ffwsI/Mg8O0Lz/gg/t
F5ojOUDCMd/py/eG01MzRAycs6PoqQ+sCOh2/AjfTE2We8Anif5FN9z4l8Zt
Bv3CnwS9eUbXsyJtPfBr03cNfhEMESdz5nbAii710Hp4biq6Zwn1HffibJgc
y1G1BmG/zyouVsKSX8f6eHBZ85GCetjoZ9erVqNfdl3VGdg2bbHEwHv0U179
tN75vfRWIM43kbtggduGfAMq4dBz+8bmYWGLV2YUfKmzaDhkDeodd3UE1pYK
BFtgm8tqmFyF32HSYKmD1VHpv43DWSxCbsDGdyWSafj635VJH2CtyuvTBVip
4N9LisR50nYuXoZ+5FBVhwwWmk7cY8OGvZG6Adj2qlVALemNZeZh2a77Lz1g
5an5lmgB5nG+6LOhn6Z6relbmKTGJJ6BFU1fHquHufftu8WwKE8YcJXWD8bs
/5cNR8xm3KH5ckf8AdjILrz8nK6nF/v/78knzH+cAo38
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.515942703607428, 11.323799910437668}, 
          ImageScaled[{1, 1}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{13.500000000003638`, 14.500000000001819`}, {
           10.000000000003638`, 8.499999999998181}}]}, 
         PolygonBox[{{11.447677384685548`, 10.98173265946094}, {
          11.706811054955079`, 12.219815750748694`}, {12.397834175673825`, 
          11.816718930329426`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.409234274088892, 12.042143360821761},
           ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{6.5, 14.5}], PointBox[{10., 5.5}], 
          PointBox[{13.5, 14.5}], PointBox[{10., 8.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["30",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cfdg/fhegehgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cfdg/fhegehgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[{{0., 15.}, {6.499999999999545, 14.5}}], 
         PolygonBox[{{3.848232691300949, 14.703982100669158`}, {
          2.6210887091451562`, 14.39719610513021}, {2.682445908252946, 
          15.194839693531474`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271342, 15.690634452527451}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 
          5.5}}], PolygonBox[{{4.400748596673293, 5.220037429833664}, {
          5.6192264501042635`, 4.880461634615198}, {5.57927635654915, 
          5.679463505717473}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999996362`, 15.}, {10., 5.500000000001819}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {13.027292937434868, 8.0361976392218}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{20., 5.}, {13.499999999996362`, 14.5}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.117582797289955, 8.325320679029748}, 
          ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 8.5}}]}, 
         PolygonBox[{{10., 6.4}, {10.4, 7.6}, {9.6, 7.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.0548, 7.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{6.499999999998151, 14.5}, {13.49999999999741, 14.5}}], 
         PolygonBox[{{10.6, 14.5}, {9.4, 14.1}, {9.4, 14.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 15.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[CompressedData["
1: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
/ii4t8GA9QzWxfWfr4P//rH95/8TL+H/ATRR9ZE=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.515942703607428, 11.323799910437668}, 
          ImageScaled[{1, 1}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{13.500000000003638`, 14.500000000001819`}, {
           10.000000000003638`, 8.499999999998181}}]}, 
         PolygonBox[{{11.447677384685548`, 10.98173265946094}, {
          11.706811054955079`, 12.219815750748694`}, {12.397834175673825`, 
          11.816718930329426`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.409234274088892, 12.042143360821761},
           ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{6.5, 14.5}], PointBox[{10., 5.5}], 
          PointBox[{13.5, 14.5}], PointBox[{10., 8.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["31",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cfdg/fhegehgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cfdg/fhegehgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}],
          PolygonBox[{{5.599251403326707, 14.720037429833665`}, {
          4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 
          15.179463505717473`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 15.693266125260656}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{2.2737367544323206`*^-13, 5.}, {6.499999999999773, 5.5}}], 
         PolygonBox[{{2.651767308699051, 5.203982100669157}, {
          3.8789112908548438`, 4.8971961051302095`}, {3.817554091747054, 
          5.694839693531476}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271343, 4.309365547472549}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000003638`, 15.000000000001819`}, {13.5, 
          5.499999999998181}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.245034441796587, 11.605529856236451},
           ImageScaled[{0, 1}]], LineBox[{{20., 5.}, {10., 14.5}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.996196219958652, 12.146118096754726},
           ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000002458`}, {10., 11.500000000006423`}}]}, 
         PolygonBox[{{10., 12.4}, {9.6, 13.6}, {10.4, 13.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.154900000000001, 13.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{6.499999999998151, 5.5}, {13.49999999999741, 5.5}}]}, 
         PolygonBox[{{9.4, 5.5}, {10.6, 5.1}, {10.6, 5.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 4.5548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{6.499999999996362, 5.500000000001819}, {9.999999999996362, 
          11.500000000001819`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "m", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.731887428832036, 8.550232333181313}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{13.5, 5.5}, {10., 11.500000000001819`}}], 
         PolygonBox[{{12.052322615314452`, 7.98173265946094}, {
          11.793188945044921`, 9.219815750748694}, {11.102165824326175`, 
          8.816718930329426}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.800156843998153, 7.716069211607572}, 
          ImageScaled[{0, 0}]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{6.5, 5.5}], 
          PointBox[{13.5, 5.5}], PointBox[{10., 11.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["32",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgde/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgde/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 0}, {0, 0}, {22, 22}]},
   AspectRatio->NCache[
     Rational[1, 2], 0.5],
   ImageSize->{512, 256},
   PlotRange->{{0, 88}, {0, 44}}], TraditionalForm]], "Print",
 CellChangeTimes->{{3.914644118569538*^9, 3.9146441503624363`*^9}, 
   3.914644197358041*^9, {3.9146442390367126`*^9, 3.914644268241125*^9}, 
   3.9146448699270487`*^9, 3.914649706815034*^9},
 CellLabel->
  "During evaluation of \
In[29]:=",ExpressionUUID->"687f51d7-7932-4f51-80b6-ff30b4ef80e8"],

Cell[BoxData[
 FormBox[
  GraphicsBox[{InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}],
          PolygonBox[{{5.599251403326707, 14.720037429833665`}, {
          4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 
          15.179463505717473`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 15.693266125260656}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{2.2737367544323206`*^-13, 5.}, {6.499999999999773, 5.5}}], 
         PolygonBox[{{2.651767308699051, 5.203982100669157}, {
          3.8789112908548438`, 4.8971961051302095`}, {3.817554091747054, 
          5.694839693531476}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271343, 4.309365547472549}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000003638`, 15.000000000001819`}, {13.5, 
          5.499999999998181}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.245034441796587, 11.605529856236451},
           ImageScaled[{0, 1}]], LineBox[{{20., 5.}, {10., 14.5}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.996196219958652, 12.146118096754726},
           ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000002458`}, {10., 11.500000000006423`}}]}, 
         PolygonBox[{{10., 12.4}, {9.6, 13.6}, {10.4, 13.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.154900000000001, 13.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{6.499999999998151, 5.5}, {13.49999999999741, 5.5}}]}, 
         PolygonBox[{{9.4, 5.5}, {10.6, 5.1}, {10.6, 5.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 4.5548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{6.499999999996362, 5.500000000001819}, {9.999999999996362, 
          11.500000000001819`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.731887428832036, 8.550232333181313}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{13.5, 5.5}, {10., 11.500000000001819`}}], 
         PolygonBox[{{12.052322615314452`, 7.98173265946094}, {
          11.793188945044921`, 9.219815750748694}, {11.102165824326175`, 
          8.816718930329426}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.800156843998153, 7.716069211607572}, 
          ImageScaled[{0, 0}]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{6.5, 5.5}], 
          PointBox[{13.5, 5.5}], PointBox[{10., 11.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["33",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgde/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgde/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 22}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}],
          PolygonBox[{{5.599251403326707, 14.720037429833665`}, {
          4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 
          15.179463505717473`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 15.693266125260656}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{2.2737367544323206`*^-13, 5.}, {6.499999999999773, 5.5}}], 
         PolygonBox[{{2.651767308699051, 5.203982100669157}, {
          3.8789112908548438`, 4.8971961051302095`}, {3.817554091747054, 
          5.694839693531476}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271343, 4.309365547472549}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000003638`, 15.000000000001819`}, {13.5, 
          5.499999999998181}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.245034441796587, 11.605529856236451},
           ImageScaled[{0, 1}]], LineBox[{{20., 5.}, {10., 14.5}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.996196219958652, 12.146118096754726},
           ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000002458`}, {10., 11.500000000006423`}}]}, 
         PolygonBox[{{10., 12.4}, {9.6, 13.6}, {10.4, 13.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.154900000000001, 13.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{6.499999999998151, 5.5}, {13.49999999999741, 5.5}}]}, 
         PolygonBox[{{9.4, 5.5}, {10.6, 5.1}, {10.6, 5.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 4.5548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{6.499999999996362, 5.500000000001819}, {9.999999999996362, 
          11.500000000001819`}}], 
         PolygonBox[{{8.552322615314452, 9.01826734053906}, {
          8.293188945044921, 7.780184249251306}, {7.602165824326175, 
          8.183281069670574}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox[
              OverscriptBox["\[Chi]", "~"], "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.515942703607428, 8.676200089562332}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{13.5, 5.5}, {10., 11.500000000001819`}}], 
         PolygonBox[{{12.052322615314452`, 7.98173265946094}, {
          11.793188945044921`, 9.219815750748694}, {11.102165824326175`, 
          8.816718930329426}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.800156843998153, 7.716069211607572}, 
          ImageScaled[{0, 0}]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{6.5, 5.5}], 
          PointBox[{13.5, 5.5}], PointBox[{10., 11.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["34",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgde/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgde/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}],
          PolygonBox[{{5.599251403326707, 14.720037429833665`}, {
          4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 
          15.179463505717473`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 15.693266125260656}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{2.2737367544323206`*^-13, 5.}, {6.499999999999773, 5.5}}], 
         PolygonBox[{{2.651767308699051, 5.203982100669157}, {
          3.8789112908548438`, 4.8971961051302095`}, {3.817554091747054, 
          5.694839693531476}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271343, 4.309365547472549}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000003638`, 15.000000000001819`}, {13.5, 
          5.499999999998181}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.245034441796587, 11.605529856236451},
           ImageScaled[{0, 1}]], LineBox[{{20., 5.}, {10., 14.5}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.996196219958652, 12.146118096754726},
           ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000002458`}, {10., 11.500000000006423`}}]}, 
         PolygonBox[{{10., 12.4}, {9.6, 13.6}, {10.4, 13.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.154900000000001, 13.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[CompressedData["
1:eJw9lH9QlEUYx9cLihpGUNod0QPeu1PoFBljuRGZhKdf5DiBo3gWOiYat4hZ
0uSvGaM5dYaSw7hAgiUNRvHnQGFlTTGmlVo6i56GaGml4y9UVBgZELB73fOP
Z2feeecz++6++3yf73dtS1bM8VgIIa/pJ/TOHTL1mAjk8WCQsXP+1hNKMxhH
6goZ3MnK2F8jNUe3TiI/Mvig8lrpYqE5kHGr4R6DJS1vGyk8xKMPNJsMJn64
smrYdAIpKa/zX2cwemZz83Gl2bt5vXsPgwbvxZQ6qdmI6gzmMuhviVVChObX
XO3uovDA50x3cc1T1voryij47oelPUE0N8ZVfTOVQuLfi2oD6jkgh6tSo56m
4Fr1h3ub1Gw88DosFNSLv35ULDS3uh2R4ymE5SVNc3HNgeqyvGIK9RHXfiIk
tP6Z9jPHKNzta8tUKglIQfSM0skM7p69OVgrNTe+sUlVMPhkiy+mUGj2pkPx
WQZn/rI2TOGaD0fl7hhmkFDWWf+/mai/vzEvb5DBuiO9vSdUYkiPnPMnGTh7
jQ11UnNJmjNiI4Pyh2EOITSTOa8wO4OiFutXnGv2ztuztY1Cdc++8BFEc6s/
M7aAQlfFgtiTagKQS+/Nzo6n8Pqi7hv1UnNP+8E2QuE0PVRaJDQHRGlGJIWs
gUAP55oh63hXJgWrJ2YBIZqJff6XfgoFEZ4Opcbrej3r0/oovDSq5F0pNTdO
szTlM0jeuzpZiBDnr5atDHJSd0Vyrjnwcx+9zeCF/pBfHHq/mz98rfvd81v+
faUcOD8qZ9OfUjpw/fDVyiohHLj/P3fqJ3HuwP8v/Li7yTTteL5gMCVKKTue
f/kl0PrZsb7ez2PGeIQd659b3HT9eW5HffaFu4eCpg3165xxZbZSNtT328Gh
i1LaUP9nw//T+tmwP8GkkSNd3Ib9iy9x6rzYsL/vWK8UnFIG9v/A4pXdX0gD
/THLYE8uFQb6xzfw8i+cG+ivVy+4yoNmAvrv/ez9m2tkAvrz8tJ1lsk8Af0b
bVkx96iKR38np8Ppt0Q8+r8wvL920IzDfJR3NFfWyDjMz6d+VZTK4zBf353L
3n5KWTF/7jd371ourJjPCX3sQgSxYn6//yz90A45DvO9pT0tbDofh/kfk+/b
1qHG4v3w1PaZvy8TY/H++Hcg5JdYvF8eAWhNtrY=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 4.5548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{6.499999999996362, 5.500000000001819}, {9.999999999996362, 
          11.500000000001819`}}], 
         PolygonBox[{{7.947677384685548, 7.98173265946094}, {
          8.897834175673825, 8.816718930329426}, {8.206811054955079, 
          9.219815750748694}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.515942703607428, 8.676200089562332}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{13.5, 5.5}, {10., 11.500000000001819`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "m", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.584212118773543, 7.590101455226551}, 
          ImageScaled[{0, 0}]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{6.5, 5.5}], 
          PointBox[{13.5, 5.5}], PointBox[{10., 11.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["35",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgde/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgde/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}],
          PolygonBox[{{5.599251403326707, 14.720037429833665`}, {
          4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 
          15.179463505717473`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 15.693266125260656}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{2.2737367544323206`*^-13, 5.}, {6.499999999999773, 5.5}}], 
         PolygonBox[{{2.651767308699051, 5.203982100669157}, {
          3.8789112908548438`, 4.8971961051302095`}, {3.817554091747054, 
          5.694839693531476}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271343, 4.309365547472549}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000003638`, 15.000000000001819`}, {13.5, 
          5.499999999998181}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.245034441796587, 11.605529856236451},
           ImageScaled[{0, 1}]], LineBox[{{20., 5.}, {10., 14.5}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.996196219958652, 12.146118096754726},
           ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000002458`}, {10., 11.500000000006423`}}]}, 
         PolygonBox[{{10., 12.4}, {9.6, 13.6}, {10.4, 13.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.154900000000001, 13.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{6.499999999998151, 5.5}, {13.49999999999741, 5.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "m", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 4.8048}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{6.499999999996362, 5.500000000001819}, {9.999999999996362,
            11.500000000001819`}}]}, 
         PolygonBox[{{7.947677384685548, 7.98173265946094}, {
          8.897834175673825, 8.816718930329426}, {8.206811054955079, 
          9.219815750748694}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.515942703607428, 8.676200089562332}, 
          ImageScaled[{1, 0}]], LineBox[CompressedData["
1:eJwt0w1Qk3UcB/AHnPNZnHNBvDQUtpi8jLAlxG2cxiNgIXAxvdBljpY2wiBd
IQ3FvfCih17FtKDlbTampgQFIZ3rxRzgqYHkeRo3UGKeFC+dAzfKndXW91/9
75773uf5/5/f/+0e4fbdm9ShFEU9h4fkf03EUCySSQzFyCo2P0hgqPLbxrwL
iQxV0+VJ8cJMUeFRIyzQDlp98J5dUd+vhxV3tosDsNQ/IeXBxg3vKyNQr1LX
P+teie8763vS4YsVLbEOmCquPFAKO0q/rGiBJY33Eo7CdNYH41pYlf6zfwiW
1KrnlLBUePdHGilgxvvWI93BpASSN+8a89OIZVMGHdL4Wq0+HGl+uu2nL8j7
2s+O+VBHZWIPjsCNme1rr8GuEfuCD2bdS285CZt/ES9iY93JiSVvVcHuFy73
LYWn98g2rIEZeyObuHc27SlyTv7rf9aR8Xn9gV4n9q3Z+mDv36i3rU8/YIDl
FY9W/07WN1mwMxumrg1O3Ieddy6cCoFtJ3J6SX9n/N5nrjzBUDGyqrRFqOdO
OqT+ELa90vVeLGxb4blfBrt4qYFnYafwhDcbdlpuHq4k53wuczQO5r09k2WH
HYUiQyjc9N3V3HFYNazPnRFi/WEhG/m4V6liLuM6rEhbPFYCL0QO5zpglXKX
7l2Y1ZWjtcC2s+GKb+HJ+UTBfti9ZX+xG844uZO1GdYMrMx/CDt/69WnwDVW
OoeTzFCi9ojmPwQ4z6HjCi48eWZu7DzsNpV8GgbzRl+3GOF81yYuC769rrOe
gZ1ToV5Sr7s4fmkwHvOzPaM+uLxaudtA3Grle2F6+CMuG5Z+c17vJ/MHqp5s
jcO+rcIgjXrOdf2Rq2GXdrZZBNMvSqbGVsCl80sK4XnzcY0JbnpkSlRL+tUP
ZRth+tyNjh7YnS5o58NyabPdA0tuLOTNLGco0zuHLKkpsNzH/Ro2cyIiymBe
lXj2ACxvyHceI84sWFwEJy/X+i7Brq/C19Jw+dl9I9NwtyXrTUcsQ11piLEG
YbP49OmXYXPdkY/DxAx1ZlVZkZePcdMvZXDh8olgUAeb64cuc2CbnF8XAts6
9u0IgV2enleNj2PerQU6P+pRrGUdgRjcZ+Rqsxc2PtZebYRNB3tmiJOPtBo4
MPN89JK/YPdF+qolGvvS3LIvQ70auq1kDdyk/FW1CqZG37g1HYX7juZc2iIm
//Unw21wd1xZ3mGyvs+F29Sk/4eGHQOwZjD7lAT+t6X+n1HMP4shhx0=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.800156843998153, 7.716069211607572}, 
          ImageScaled[{0, 0}]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{6.5, 5.5}], 
          PointBox[{13.5, 5.5}], PointBox[{10., 11.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["36",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgde/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgde/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}],
          PolygonBox[{{5.599251403326707, 14.720037429833665`}, {
          4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 
          15.179463505717473`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 15.693266125260656}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{2.2737367544323206`*^-13, 5.}, {6.499999999999773, 5.5}}], 
         PolygonBox[{{2.651767308699051, 5.203982100669157}, {
          3.8789112908548438`, 4.8971961051302095`}, {3.817554091747054, 
          5.694839693531476}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271343, 4.309365547472549}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000003638`, 15.000000000001819`}, {13.5, 
          5.499999999998181}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.245034441796587, 11.605529856236451},
           ImageScaled[{0, 1}]], LineBox[{{20., 5.}, {10., 14.5}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.996196219958652, 12.146118096754726},
           ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000002458`}, {10., 11.500000000006423`}}]}, 
         PolygonBox[{{10., 12.4}, {9.6, 13.6}, {10.4, 13.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.154900000000001, 13.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{6.499999999998151, 5.5}, {13.49999999999741, 5.5}}], 
         PolygonBox[{{9.4, 5.5}, {10.6, 5.1}, {10.6, 5.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 4.5548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJwV1A9Qk2UAx/GHCbhBwNIENiYxB2sp2uIo1tXle7shO63zQJGJB4fuBPJK
doQ4hOHWFJeiTEEaXfOWfypbXEt2UQqxFCdGFpcNt7gOujgGq9aCunZssX7P
7nbf+7zv+/x53+1e4YGGsoMsQsg2fGlJOIaPiCHxFE8xRHvfqL4DT/Br+v1i
hjiyaxWn4d1P/1n6ANZkcNwVsHKflPcpbKqaq9kCd3Zvv3AGlmqmLqfBo63P
ePbDTEnG6ugGhvRYI33PwpaOGwuLcNNgIRPJY0jNugIL9eiRTXdHYHbldl0Y
Ju3aj/WwzX5MHYf5bCbx91thy1vj9ziw81Hj1lgu9je/tzAVVnEJ+Ro2G873
JYvo8W99HfCYMdMaw3yuQ/n5ZXD9wLHJedjx2YH7IlgqOLrkhnOuNf8Sofdl
VLrehcOzlf/5YAtn7dpaWOsOJA1TN7/93ib474oO7RV6vazrclDIkNd7T1ad
gdmDD+03YMFcg70RNiX5c1th/QOWmj43b3Vo9Q7YPOC4V0Sf89FAVy4c9dR1
roG/sApjbFgynf3PHNaR3RxuD+cw5CpxLzhhW6+Vvwif4DnDbdSJQd8S/Epx
qZKBx/ysxWU4X6VpIbDSW5YaT+f7apduBJ0xl3+QTNcTW9THUcv4JVUq3W8F
N0+Oaq1sOQed3/O7hlZzJ09J52Oe2GGYRL0VbTtn0B/39Uauo7aBNapbqCTN
N21EVVWHdZ1ofOmwSU29OeGncjQzUDBUgsqS40r56MSH3PEtaE5L36mbTzLk
owLDUDrMnf3hiAK21Q/GRVD9C9fX+bIx/vyFV2/T48I9UR2sH/qSr4eZkeqs
Itg7KhIUwNLGucpEWOn4o/BRNv3/naz/bT1+b1fKxQaYXLo48itsfknvjNLj
kxsCAVTz/KHNBnTGGVxaRlU6VgtBQ1f+XZWCcaZWVm+7ANcpOCl82LLx6vux
LIy3njNmwbL0s2+cgqXj5YmPwa6B8vU8er6/eMGPedhii+dzPu47J6WnHybd
/Sf2w1K13F4FM2z7N5mw683vYstYh13EWTXFg2M7t52G62Urh6/BGrnb+jg8
cby4rYmerx366x26Duc5oQKuYU+V5MLsTp+CC4es3qRhzGuTWyWeTKy7N+Fg
HWySeMa6qLsFt8SwLKF148uw4/bd3VGMs6Qx56YzsK9gz4t+WCJ6aGyCQ9U/
75qFzXWvTa2ko42TnwR59DmvNBvgEH2fwGz6Pkln/gcKcYtA
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.515942703607428, 8.676200089562332}, 
          ImageScaled[{1, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{13.5, 5.5}, {10., 11.500000000001819`}}]}, 
         PolygonBox[{{12.052322615314452`, 7.98173265946094}, {
          11.793188945044921`, 9.219815750748694}, {11.102165824326175`, 
          8.816718930329426}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.800156843998153, 7.716069211607572}, 
          ImageScaled[{0, 0}]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{6.5, 5.5}], 
          PointBox[{13.5, 5.5}], PointBox[{10., 11.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["37",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgde/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgde/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-7.958078640513122*^-13, 15.}, {10.00000000000091, 14.5}}],
          PolygonBox[{{5.599251403326707, 14.720037429833665`}, {
          4.3807735498957365`, 14.380461634615196`}, {4.42072364345085, 
          15.179463505717473`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 15.693266125260656}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{2.2737367544323206`*^-13, 5.}, {6.499999999999773, 5.5}}], 
         PolygonBox[{{2.651767308699051, 5.203982100669157}, {
          3.8789112908548438`, 4.8971961051302095`}, {3.817554091747054, 
          5.694839693531476}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271343, 4.309365547472549}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000003638`, 15.000000000001819`}, {13.5, 
          5.499999999998181}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.245034441796587, 11.605529856236451},
           ImageScaled[{0, 1}]], LineBox[{{20., 5.}, {10., 14.5}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.996196219958652, 12.146118096754726},
           ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000002458`}, {10., 11.500000000006423`}}]}, 
         PolygonBox[{{10., 12.4}, {9.6, 13.6}, {10.4, 13.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.154900000000001, 13.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{6.499999999998151, 5.5}, {13.49999999999741, 5.5}}], 
         PolygonBox[{{9.4, 5.5}, {10.6, 5.1}, {10.6, 5.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 4.5548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {6.911297472978524, 9.028909807429194}, 
          ImageScaled[{1, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{13.5, 5.5}, {10., 11.500000000001819`}}]}, 
         PolygonBox[{{12.052322615314452`, 7.98173265946094}, {
          11.793188945044921`, 9.219815750748694}, {11.102165824326175`, 
          8.816718930329426}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.800156843998153, 7.716069211607572}, 
          ImageScaled[{0, 0}]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{6.5, 5.5}], 
          PointBox[{13.5, 5.5}], PointBox[{10., 11.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["38",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgde/ehfgfhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgde/ehfgfhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[{{0., 15.}, {6.499999999999545, 14.5}}], 
         PolygonBox[{{3.848232691300949, 14.703982100669158`}, {
          2.6210887091451562`, 14.39719610513021}, {2.682445908252946, 
          15.194839693531474`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271342, 15.690634452527451}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 
          5.5}}], PolygonBox[{{4.400748596673293, 5.220037429833664}, {
          5.6192264501042635`, 4.880461634615198}, {5.57927635654915, 
          5.679463505717473}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999999773`, 15.}, {13.500000000000227`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.650294551449843, 15.441370831152057},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{20.000000000000796`, 5.}, {9.999999999998977, 5.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {14.93508109797294, 4.5564219594588025}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 8.5}}]}, 
         PolygonBox[{{10., 6.4}, {10.4, 7.6}, {9.6, 7.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.0548, 7.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{6.499999999998151, 14.5}, {13.49999999999741, 14.5}}]}, 
         PolygonBox[{{10.6, 14.5}, {9.4, 14.1}, {9.4, 14.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 15.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{6.5, 14.500000000001819`}, {10.000000000003638`, 
          8.500000000001819}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "m", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.731887428832036, 11.449767666818687}, 
          ImageScaled[{1, 1}]], 
         LineBox[{{13.500000000003638`, 14.500000000001819`}, {
          10.000000000003638`, 8.499999999998181}}], 
         PolygonBox[{{11.447677384685548`, 10.98173265946094}, {
          11.706811054955079`, 12.219815750748694`}, {12.397834175673825`, 
          11.816718930329426`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.484057296392571, 11.323799910437668},
           ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{6.5, 14.5}], PointBox[{10., 5.5}], 
          PointBox[{13.5, 14.5}], PointBox[{10., 8.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["39",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgdf/fhegehgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgdf/fhegehgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[{{0., 15.}, {6.499999999999545, 14.5}}], 
         PolygonBox[{{3.848232691300949, 14.703982100669158`}, {
          2.6210887091451562`, 14.39719610513021}, {2.682445908252946, 
          15.194839693531474`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271342, 15.690634452527451}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 
          5.5}}], PolygonBox[{{4.400748596673293, 5.220037429833664}, {
          5.6192264501042635`, 4.880461634615198}, {5.57927635654915, 
          5.679463505717473}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999999773`, 15.}, {13.500000000000227`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.650294551449843, 15.441370831152057},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{20.000000000000796`, 5.}, {9.999999999998977, 5.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {14.93508109797294, 4.5564219594588025}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 8.5}}]}, 
         PolygonBox[{{10., 6.4}, {10.4, 7.6}, {9.6, 7.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.0548, 7.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{6.499999999998151, 14.5}, {13.49999999999741, 14.5}}]}, 
         PolygonBox[{{10.6, 14.5}, {9.4, 14.1}, {9.4, 14.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 15.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{6.5, 14.500000000001819`}, {10.000000000003638`, 
          8.500000000001819}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.731887428832036, 11.449767666818687}, 
          ImageScaled[{1, 1}]], 
         LineBox[{{13.500000000003638`, 14.500000000001819`}, {
          10.000000000003638`, 8.499999999998181}}], 
         PolygonBox[{{11.447677384685548`, 10.98173265946094}, {
          11.706811054955079`, 12.219815750748694`}, {12.397834175673825`, 
          11.816718930329426`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.484057296392571, 11.323799910437668},
           ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{6.5, 14.5}], PointBox[{10., 5.5}], 
          PointBox[{13.5, 14.5}], PointBox[{10., 8.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["40",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgdf/fhegehgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgdf/fhegehgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 0}, {0, 0}, {22, 22}]},
   AspectRatio->NCache[
     Rational[1, 2], 0.5],
   ImageSize->{512, 256},
   PlotRange->{{0, 88}, {0, 44}}], TraditionalForm]], "Print",
 CellChangeTimes->{{3.914644118569538*^9, 3.9146441503624363`*^9}, 
   3.914644197358041*^9, {3.9146442390367126`*^9, 3.914644268241125*^9}, 
   3.9146448699270487`*^9, 3.9146497068807487`*^9},
 CellLabel->
  "During evaluation of \
In[29]:=",ExpressionUUID->"f4c10e66-7e93-4c37-beef-53c950db9503"],

Cell[BoxData[
 FormBox[
  GraphicsBox[{InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[{{0., 15.}, {6.499999999999545, 14.5}}], 
         PolygonBox[{{3.848232691300949, 14.703982100669158`}, {
          2.6210887091451562`, 14.39719610513021}, {2.682445908252946, 
          15.194839693531474`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271342, 15.690634452527451}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 
          5.5}}], PolygonBox[{{4.400748596673293, 5.220037429833664}, {
          5.6192264501042635`, 4.880461634615198}, {5.57927635654915, 
          5.679463505717473}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999999773`, 15.}, {13.500000000000227`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.650294551449843, 15.441370831152057},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{20.000000000000796`, 5.}, {9.999999999998977, 5.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {14.93508109797294, 4.5564219594588025}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 8.5}}]}, 
         PolygonBox[{{10., 6.4}, {10.4, 7.6}, {9.6, 7.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.0548, 7.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{6.499999999998151, 14.5}, {13.49999999999741, 14.5}}]}, 
         PolygonBox[{{10.6, 14.5}, {9.4, 14.1}, {9.4, 14.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 15.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{6.5, 14.500000000001819`}, {10.000000000003638`, 
          8.500000000001819}}], 
         PolygonBox[{{7.947677384685548, 12.01826734053906}, {
          8.206811054955079, 10.780184249251306`}, {8.897834175673825, 
          11.183281069670574`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox[
              OverscriptBox["\[Chi]", "~"], "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.515942703607428, 11.323799910437668}, 
          ImageScaled[{1, 1}]], 
         LineBox[{{13.500000000003638`, 14.500000000001819`}, {
          10.000000000003638`, 8.499999999998181}}], 
         PolygonBox[{{11.447677384685548`, 10.98173265946094}, {
          11.706811054955079`, 12.219815750748694`}, {12.397834175673825`, 
          11.816718930329426`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.484057296392571, 11.323799910437668},
           ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{6.5, 14.5}], PointBox[{10., 5.5}], 
          PointBox[{13.5, 14.5}], PointBox[{10., 8.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["41",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgdf/fhegehgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgdf/fhegehgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 22}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[{{0., 15.}, {6.499999999999545, 14.5}}], 
         PolygonBox[{{3.848232691300949, 14.703982100669158`}, {
          2.6210887091451562`, 14.39719610513021}, {2.682445908252946, 
          15.194839693531474`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271342, 15.690634452527451}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 
          5.5}}], PolygonBox[{{4.400748596673293, 5.220037429833664}, {
          5.6192264501042635`, 4.880461634615198}, {5.57927635654915, 
          5.679463505717473}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999999773`, 15.}, {13.500000000000227`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.650294551449843, 15.441370831152057},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{20.000000000000796`, 5.}, {9.999999999998977, 5.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {14.93508109797294, 4.5564219594588025}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 8.5}}]}, 
         PolygonBox[{{10., 6.4}, {10.4, 7.6}, {9.6, 7.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.0548, 7.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[CompressedData["
1:eJw9lH9MlVUYx48EcrcccUMZ4Hvh/kjw4jnMON7tpqaPlQQOdRVsqBlIcLgo
Tgq0P4SkZprcCiMJz1V3nZEOhKZJteWWFP0wd5KLEWqo6UizDR1MBLnWvZ3b
H8/Z3r377LznvOd8n+/3sZVuebE8ihDyvH4i71XBsB6ZQP4fDBZ+uvbgOaXZ
Gl+an83gztKFJ1ukZtOlWQ0vM6hpulm/QWj2WO73vcGgtOtVaxaP8J61gzsY
ZNbVNj8MO4G4l+fn1jB4fEVn589Kc8+PPZkFDPwNV7L2S817YzftyGAw0ZWs
hIjML3p92ziFB16n28U1Jy3Ozeml4L0XveARojkQl3f5AIX034tbA2oukJI8
uXsnBdfWs4WHpOb4uh7zWxTUsu/erBSaL3WYpzdTiH4p4ykX13w7r7e9m4LP
dPNrQiLr3xGVwxTujp9eolQGkPmmtm8SGdz97e+pVqk5cPw5kcPg3X3ehDKh
GYzD3RsZXLhs+Odzzddjj/XXM0jbNej7N5yuv6853l7HYPv3Y2PnVHpEj/Sq
CgbOMevb+6Vmt2/mzmUMGv+JdgihmTjtj5oZVHQZn3GuGeYVnL9K4aPRjphp
RHNRrn/GCQq331uXfF7NAVL91VxHE4X84pG/fFLzg1vX1jdQ6J91pr5CaPac
WmLZRWHpZGCUc82H/WW1fgpGecI6QjQTM1t9lkKJqXxAqSeAnPgcUoIUnjFX
b5ZSc8CYdoEyoO3bqBARpqfzixiszD46g3PNnuJg41YGiycifnEAaRgfuqjr
Pdq75p5SDpw3r9zzq5QOXP/wz6ZmIRy4/9U7vnmcO/D/63ePtIXDdjxfKJT1
mFJ2PH/VddD62fF+Yx8nJJULO96/oLLt1pPcjvp0xBQGQ2Eb6jeYO/yCUjbU
99RU8IqUNtR/ZswfWj8b1ieUERfn4jasX2q1U+fFhvXdZAyX9Ckr1v+LDbUj
B6QV/bHamjjdI6zoH+/ks99ybkV/LR9yNYbCaei/13JOvt8i09CfNzzboxhP
Q//GR20p+EGlor+pG/pfEano/7KYidapsAXz0TjQ2dQiLZifD/aqimxuwXx1
X8w50qcMzF9h0bGjVcLAfM4ZTxwyEQPz++WH7jOfyNmY732/LIh+ms/G/Cet
8R4aUCnYH2KPrPhpo0jB/nFtMuKXZOwv/wFdK7Iy
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 15.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{6.5, 14.500000000001819`}, {10.000000000003638`, 
          8.500000000001819}}], 
         PolygonBox[{{8.552322615314452, 10.98173265946094}, {
          7.602165824326175, 11.816718930329426`}, {8.293188945044921, 
          12.219815750748694`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.515942703607428, 11.323799910437668}, 
          ImageScaled[{1, 1}]], 
         LineBox[{{13.500000000003638`, 14.500000000001819`}, {
          10.000000000003638`, 8.499999999998181}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "m", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.268112571167965, 11.449767666818687},
           ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{6.5, 14.5}], PointBox[{10., 5.5}], 
          PointBox[{13.5, 14.5}], PointBox[{10., 8.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["42",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgdf/fhegehgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgdf/fhegehgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[{{0., 15.}, {6.499999999999545, 14.5}}], 
         PolygonBox[{{3.848232691300949, 14.703982100669158`}, {
          2.6210887091451562`, 14.39719610513021}, {2.682445908252946, 
          15.194839693531474`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271342, 15.690634452527451}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 
          5.5}}], PolygonBox[{{4.400748596673293, 5.220037429833664}, {
          5.6192264501042635`, 4.880461634615198}, {5.57927635654915, 
          5.679463505717473}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999999773`, 15.}, {13.500000000000227`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.650294551449843, 15.441370831152057},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{20.000000000000796`, 5.}, {9.999999999998977, 5.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {14.93508109797294, 4.5564219594588025}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 8.5}}]}, 
         PolygonBox[{{10., 6.4}, {10.4, 7.6}, {9.6, 7.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.0548, 7.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{6.499999999998151, 14.5}, {13.49999999999741, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "m", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 15.1952}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{6.5, 14.500000000001819`}, {10.000000000003638`, 
           8.500000000001819}}]}, 
         PolygonBox[{{8.552322615314452, 10.98173265946094}, {
          7.602165824326175, 11.816718930329426`}, {8.293188945044921, 
          12.219815750748694`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.515942703607428, 11.323799910437668}, 
          ImageScaled[{1, 1}]], LineBox[CompressedData["
1:eJwd1HtMU1cAx/ED1tC4MsHJa25YHJYWZEMppDVM7niYbi1bVVyYoaarA0t8
UAcOkFLuKmoxIzCBpC51VgajECWQ4CAOpDjHmihaFQ0oOojiOoZWHEJxSPc7
Nrn95tNz7rn3nD8aocnfmuNLCNmMi5Zw6VckQxa8+PAZUpOotyTB4onTW0Mj
GKIcP/nrQdh2J6BtA1zjmpXa4O7G64+VMNsQdvoGrN97fl8h7KyOVD2DJRXO
6B9hR7fLs2QtQ/ZqOLnXYG1JRrA/XCG70sdZwxDr5OBuasnxoY0M7Gk6b/SD
ifHY9nJYnXnEsoj1sotG4uywrkwsmYUVwio7eY8hWSE/X5mG291e7yZYZ9if
O0PHQ+IFJTCj/0tDsF5a/a1b52Cz4ogoBJZ9eipxFB5+aOJJ4bEdleEcui99
V3IOzF3V5CuAtbNTUydhvTToRQqsq/xm1xDMs5Ucy6bz/9CpAgVYN+9QQyHs
ka3LzIDHwmoyq+DiF6H3KmB2wysLPbe4M8s9nXCx4jOJg9oUpLsHk2hzwRNY
qXlA5uBh/viyMDzHkZ7yrV8UQzK90mA5rM7TTPjDxY/lfodh7XyggAd3Xmjr
6qPnGPrKfynsbK4+6oXtUeem/6PrfXTWyKDC/NYvZtCAkd0WFtWKv2yepu9r
c9/tRU2aud5ZlN/yVjWtOeluF13v8j+dBhEqtB1uX03bmMf5HFUrnjSnoWPP
BHw9am343liAzrSlFFlQ282Xa1tRV9BgajfqmFlsm0DFWW7xDVSXGt+zRoj9
DRpS/4Y9VcG/q+B2eWS5LyrbFXOwFmW7EkfC0Tj3kE8/2hPx0/NkVGtVfv0I
Nb/7dDoXdQ18d3MBdUZV5tSh6uxe+TIR3mN1SYID5q5P4L8J94z3NfnQ3+ue
Hqfjlx99kpeMmpu4R33RrH7Db+VowPscwzzuS7u02GmHHarS+ef0/SZjPyDR
OIcOySZqV6H04yRY+/btBTpfKNh+oICOi1Rv8HCfZyq+vhG25s8niGA2seXD
63T+tZ3RW+Dh0tYf/oX5A6GsES7+qtSwIgb3k+HRC7DzISuLhR0P3lk/B69k
7venw9arEX5i+pzSHLcqhq6zYnQfzN1Ye78IJh21h87AZ3d27KmHTdvKMq7C
PXvqV3XD7C8HGqbg7LJLk2OwLfzUbR9U7PlTErAO+zIlaHiwbn/wxXTYpAy8
40/HFfITLGwfqGvhwupRNq0Pfv1/AnNoY5n/AYZAj+I=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.484057296392571, 11.323799910437668},
           ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{6.5, 14.5}], PointBox[{10., 5.5}], 
          PointBox[{13.5, 14.5}], PointBox[{10., 8.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["43",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgdf/fhegehgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgdf/fhegehgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[{{0., 15.}, {6.499999999999545, 14.5}}], 
         PolygonBox[{{3.848232691300949, 14.703982100669158`}, {
          2.6210887091451562`, 14.39719610513021}, {2.682445908252946, 
          15.194839693531474`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271342, 15.690634452527451}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 
          5.5}}], PolygonBox[{{4.400748596673293, 5.220037429833664}, {
          5.6192264501042635`, 4.880461634615198}, {5.57927635654915, 
          5.679463505717473}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999999773`, 15.}, {13.500000000000227`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.650294551449843, 15.441370831152057},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{20.000000000000796`, 5.}, {9.999999999998977, 5.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {14.93508109797294, 4.5564219594588025}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 8.5}}]}, 
         PolygonBox[{{10., 6.4}, {10.4, 7.6}, {9.6, 7.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.0548, 7.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{6.499999999998151, 14.5}, {13.49999999999741, 14.5}}], 
         PolygonBox[{{10.6, 14.5}, {9.4, 14.1}, {9.4, 14.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 15.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[CompressedData["
1:eJwt1A1MU1cUB/AL0YAMtBA1UJGWAh1Ih0UgsgThyWB2g7kiKISPhUHMEGFU
/MIxbYtImsE2lIYJaoKoseJXCQiGlVHZWkSrVmJdqw2WgYqMAhqNrRTd/yZ7
yXsnv5xzz7n3tXnBRRVbtrsTQj7HTSPxpI9QhiyiMZgh1/XKC57w2RDp7wzc
KPZ96ANru7rLpbBNEVfkDSuPvtjYB6uCTpnc4Ace3KFZWNazq306BPmaDSs4
PIYoMg9+ZYBTlKUTm2DPzqYfTlOf3qwshc3VftZy2KUr4yngNkOwRyxsrW1l
tcPG0cDot4jWAV5iHyKXmK00xgZKe0eo9f6yGjrnRK3cjlhy95s1GYiBtVu3
e6PP8QpnXAQsG942KISFEQUfecMOP0NpHlzCNrmc2LfZ0vFLA8ztjE98BXPr
9T1/wjcLqp3UKStGjB9gVtSiQ7Res8EtLQnnbjznWeeOfupEeYIMVitnfvKC
BauuNWthEh3HXQqLgpjc93BOfn8azefb6m6tD2PInL5hxEXnmfe17oQL28SV
E3DZP75LW2Dh7AO3G3D8aL6PFhYVR+5tgmtFw/wxuv7nlboCOKv7sWwBrvos
RsODT66Ta1bysf/X76885eI9nmfdjoLbRt6FdcD+U+s0m2BV+9Ga3bBL3K8o
hgvT7edT4PBllieHYa7qsJoDm/Oa5y/AjQmPehfDCcvT5A9hlm6m2s5hyOS2
acmSj/H/KBncPA4vz2aFJcPMaFbXJOzgHy+WwpKvc8ffwsI/Mg8O0Lz/gg/t
F5ojOUDCMd/py/eG01MzRAycs6PoqQ+sCOh2/AjfTE2We8Anif5FN9z4l8Zt
Bv3CnwS9eUbXsyJtPfBr03cNfhEMESdz5nbAii710Hp4biq6Zwn1HffibJgc
y1G1BmG/zyouVsKSX8f6eHBZ85GCetjoZ9erVqNfdl3VGdg2bbHEwHv0U179
tN75vfRWIM43kbtggduGfAMq4dBz+8bmYWGLV2YUfKmzaDhkDeodd3UE1pYK
BFtgm8tqmFyF32HSYKmD1VHpv43DWSxCbsDGdyWSafj635VJH2CtyuvTBVip
4N9LisR50nYuXoZ+5FBVhwwWmk7cY8OGvZG6Adj2qlVALemNZeZh2a77Lz1g
5an5lmgB5nG+6LOhn6Z6relbmKTGJJ6BFU1fHquHufftu8WwKE8YcJXWD8bs
/5cNR8xm3KH5ckf8AdjILrz8nK6nF/v/78knzH+cAo38
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.515942703607428, 11.323799910437668}, 
          ImageScaled[{1, 1}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{13.500000000003638`, 14.500000000001819`}, {
           10.000000000003638`, 8.499999999998181}}]}, 
         PolygonBox[{{11.447677384685548`, 10.98173265946094}, {
          11.706811054955079`, 12.219815750748694`}, {12.397834175673825`, 
          11.816718930329426`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.484057296392571, 11.323799910437668},
           ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{6.5, 14.5}], PointBox[{10., 5.5}], 
          PointBox[{13.5, 14.5}], PointBox[{10., 8.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["44",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgdf/fhegehgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgdf/fhegehgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[{{0., 15.}, {6.499999999999545, 14.5}}], 
         PolygonBox[{{3.848232691300949, 14.703982100669158`}, {
          2.6210887091451562`, 14.39719610513021}, {2.682445908252946, 
          15.194839693531474`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.368879573271342, 15.690634452527451}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{-1.0231815394945443`*^-12, 5.}, {10.000000000000796`, 
          5.5}}], PolygonBox[{{4.400748596673293, 5.220037429833664}, {
          5.6192264501042635`, 4.880461634615198}, {5.57927635654915, 
          5.679463505717473}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999999773`, 15.}, {13.500000000000227`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {16.650294551449843, 15.441370831152057},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{20.000000000000796`, 5.}, {9.999999999998977, 5.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {14.93508109797294, 4.5564219594588025}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 8.5}}]}, 
         PolygonBox[{{10., 6.4}, {10.4, 7.6}, {9.6, 7.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {9.0548, 7.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{6.499999999998151, 14.5}, {13.49999999999741, 14.5}}], 
         PolygonBox[{{10.6, 14.5}, {9.4, 14.1}, {9.4, 14.9}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {10., 15.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[CompressedData["
1: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
/ii4t8GA9QzWxfWfr4P//rH95/8TL+H/ATRR9ZE=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.515942703607428, 11.323799910437668}, 
          ImageScaled[{1, 1}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{13.500000000003638`, 14.500000000001819`}, {
           10.000000000003638`, 8.499999999998181}}]}, 
         PolygonBox[{{11.447677384685548`, 10.98173265946094}, {
          11.706811054955079`, 12.219815750748694`}, {12.397834175673825`, 
          11.816718930329426`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {12.484057296392571, 11.323799910437668},
           ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{6.5, 14.5}], PointBox[{10., 5.5}], 
          PointBox[{13.5, 14.5}], PointBox[{10., 8.5}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["45",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgdf/fhegehgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgdf/fhegehgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{9.094947017729282*^-13, 15.}, {3.9999999999990905`, 
          13.5}}], 
         PolygonBox[{{2.561797506541427, 14.039325935046964`}, {
          1.2977531168232166`, 14.086142393925417`}, {1.57865187009393, 
          14.835205735980654`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.544241334462007, 15.09651022523202}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{9.094947017729282*^-13, 5.}, {3.9999999999990905`, 6.5}}], 
         PolygonBox[{{1.4382024934585733`, 5.539325935046965}, {
          2.7022468831767834`, 5.586142393925417}, {2.4213481299060704`, 
          6.335205735980653}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.5442413344620074, 4.903489774767981}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20., 15.000000000001819`}, {15.999999999998181`, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.58967054772406, 12.707303561820751}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{20., 5.000000000001819}, {16., 10.000000000001819`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.41032945227594, 7.707303561820752}, 
          ImageScaled[{0, 0}]], LineBox[CompressedData["
1:eJw9k3tIVEEUxu9qhhLCUhmSmY97S9t1725eNTXLo1ZYQaUkqJnayo5aYQtq
pZWt5oN8pIbpXslMNA1JW0gl1meu+bzigwpJUv/ItiASQkzLdhslZmAYfgwz
c+Z83+eivBausqAo6gieG2uByYwHDdTmYECZs8PoxTFArbb/cJ2m4VWs/GYy
wvx8UH+xmQYfm/LCGh6zu3j3WgkNZZkhNlMCZs3ojF5Dg/WevmVLah9Q4qkS
VS4N/dczLvlwmCfze29raWg4qktNQpiTPlyN0NPwOiE8qprH/NQ8pF6kIal0
IVgQMA8P2NntZOCFVUqMyYxZHaoUAwMRgV1DCm4/fi+YLUpgwCHosDYBYY53
sJ/IYECcgaYqeczWjo7GuwzoTI8SRwXMijX3LekMxPmuB5vMG7xYpY1mILbd
75gn54breWfp5sXA5F/9SYQwaz4vjm5lQNEo8q7mMatjjIUzNHTKrJfGBcy6
5uWilzQUuzpfEVHuQC2EnIZyGrInlpq8OMyalZDWbBqyWnJbExFmZ/s0Yw4N
s/F9pdU85tXt5/sr8L5lY/y4gFmrM8y30eBUdsiHog7g+vJ0f+ZoSNtV48Jx
mJ3fu2XZMhD9NkCGEObIygd+/gwYggIu8Dxm+2l9QBwDtVF1zwQB83CVVc0N
5r+uEqBCe+84arC+jbHRHCch+5lthgaEJOR8k79hmucl5P6Sb8o5QZCQ9/ei
4RGzWULqu7ceVevJSUn9+2sD1SokJf/rCb0VpuWl5P8ahThyTJCS/qR/mq8w
maWkfyemf4k9OQ/SX9tzplEV8iD9P2hxvIPnPYg+9acGO8cFD6LfXLdlt4iS
EX3DRJe13pyM6P8zn2eTkYz440vPQOJjXkb887UjxHdCkBF/RfwurxdRLPGf
Vu3UzXEs8Wf+w5ZGFWKJf2PenC2u4lni78D7+U9GBJb43/tj4LZ1M0vyoc7r
WmE5OcnP2EpKuhLJSb7O1E0WVPJykr/Z1O/2Y4Kc5LN7U18Fye8/4GN6GA==

          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {13., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{4., 13.49999999999741}, {4., 6.49999999999371}}]}, 
         PolygonBox[{{4., 9.4}, {3.6, 10.6}, {4.4, 10.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.0548, 10.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{4., 13.500000000003638`}, {10.000000000001819`, 
          10.000000000003638`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "m", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.050232333181312, 12.268112571167965}, 
          ImageScaled[{0, 0}]], 
         LineBox[{{3.999999999996362, 6.5}, {9.999999999994543, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "n", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.050232333181312, 7.731887428832037}, 
          ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{4., 13.5}], PointBox[{4., 6.5}], 
          PointBox[{16., 10.}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["46",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgdg/ghefehfh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgdg/ghefehfh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{9.094947017729282*^-13, 15.}, {3.9999999999990905`, 
          13.5}}], 
         PolygonBox[{{2.561797506541427, 14.039325935046964`}, {
          1.2977531168232166`, 14.086142393925417`}, {1.57865187009393, 
          14.835205735980654`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.544241334462007, 15.09651022523202}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{9.094947017729282*^-13, 5.}, {3.9999999999990905`, 6.5}}], 
         PolygonBox[{{1.4382024934585733`, 5.539325935046965}, {
          2.7022468831767834`, 5.586142393925417}, {2.4213481299060704`, 
          6.335205735980653}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.5442413344620074, 4.903489774767981}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20., 15.000000000001819`}, {15.999999999998181`, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.58967054772406, 12.707303561820751}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{20., 5.000000000001819}, {16., 10.000000000001819`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.41032945227594, 7.707303561820752}, 
          ImageScaled[{0, 0}]], LineBox[CompressedData["
1:eJw9k3tIVEEUxu9qhhLCUhmSmY97S9t1725eNTXLo1ZYQaUkqJnayo5aYQtq
pZWt5oN8pIbpXslMNA1JW0gl1meu+bzigwpJUv/ItiASQkzLdhslZmAYfgwz
c+Z83+eivBausqAo6gieG2uByYwHDdTmYECZs8PoxTFArbb/cJ2m4VWs/GYy
wvx8UH+xmQYfm/LCGh6zu3j3WgkNZZkhNlMCZs3ojF5Dg/WevmVLah9Q4qkS
VS4N/dczLvlwmCfze29raWg4qktNQpiTPlyN0NPwOiE8qprH/NQ8pF6kIal0
IVgQMA8P2NntZOCFVUqMyYxZHaoUAwMRgV1DCm4/fi+YLUpgwCHosDYBYY53
sJ/IYECcgaYqeczWjo7GuwzoTI8SRwXMijX3LekMxPmuB5vMG7xYpY1mILbd
75gn54breWfp5sXA5F/9SYQwaz4vjm5lQNEo8q7mMatjjIUzNHTKrJfGBcy6
5uWilzQUuzpfEVHuQC2EnIZyGrInlpq8OMyalZDWbBqyWnJbExFmZ/s0Yw4N
s/F9pdU85tXt5/sr8L5lY/y4gFmrM8y30eBUdsiHog7g+vJ0f+ZoSNtV48Jx
mJ3fu2XZMhD9NkCGEObIygd+/gwYggIu8Dxm+2l9QBwDtVF1zwQB83CVVc0N
5r+uEqBCe+84arC+jbHRHCch+5lthgaEJOR8k79hmucl5P6Sb8o5QZCQ9/ei
4RGzWULqu7ceVevJSUn9+2sD1SokJf/rCb0VpuWl5P8ahThyTJCS/qR/mq8w
maWkfyemf4k9OQ/SX9tzplEV8iD9P2hxvIPnPYg+9acGO8cFD6LfXLdlt4iS
EX3DRJe13pyM6P8zn2eTkYz440vPQOJjXkb887UjxHdCkBF/RfwurxdRLPGf
Vu3UzXEs8Wf+w5ZGFWKJf2PenC2u4lni78D7+U9GBJb43/tj4LZ1M0vyoc7r
WmE5OcnP2EpKuhLJSb7O1E0WVPJykr/Z1O/2Y4Kc5LN7U18Fye8/4GN6GA==

          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {13., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{4., 13.49999999999741}, {4., 6.49999999999371}}]}, 
         PolygonBox[{{4., 9.4}, {3.6, 10.6}, {4.4, 10.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.0548, 10.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{4., 13.500000000003638`}, {10.000000000001819`, 
          10.000000000003638`}}], 
         PolygonBox[{{6.48173265946094, 12.052322615314452`}, {
          7.316718930329426, 11.102165824326175`}, {7.719815750748694, 
          11.793188945044921`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox[
              OverscriptBox["\[Chi]", "~"], "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.176200089562334, 12.484057296392571}, 
          ImageScaled[{0, 0}]], 
         LineBox[{{3.999999999996362, 6.5}, {9.999999999994543, 10.}}], 
         PolygonBox[{{7.51826734053906, 8.552322615314452}, {
          6.683281069670574, 7.602165824326175}, {6.280184249251306, 
          8.293188945044921}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox[
              OverscriptBox["\[Chi]", "~"], "n"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.176200089562334, 7.515942703607429}, 
          ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{4., 13.5}], PointBox[{4., 6.5}], 
          PointBox[{16., 10.}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["47",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgdg/ghefehfh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgdg/ghefehfh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{9.094947017729282*^-13, 15.}, {3.9999999999990905`, 
          13.5}}], 
         PolygonBox[{{2.561797506541427, 14.039325935046964`}, {
          1.2977531168232166`, 14.086142393925417`}, {1.57865187009393, 
          14.835205735980654`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.544241334462007, 15.09651022523202}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{9.094947017729282*^-13, 5.}, {3.9999999999990905`, 6.5}}], 
         PolygonBox[{{1.4382024934585733`, 5.539325935046965}, {
          2.7022468831767834`, 5.586142393925417}, {2.4213481299060704`, 
          6.335205735980653}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.5442413344620074, 4.903489774767981}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20., 15.000000000001819`}, {15.999999999998181`, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.58967054772406, 12.707303561820751}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{20., 5.000000000001819}, {16., 10.000000000001819`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.41032945227594, 7.707303561820752}, 
          ImageScaled[{0, 0}]], LineBox[CompressedData["
1:eJw9k3tIVEEUxu9qhhLCUhmSmY97S9t1725eNTXLo1ZYQaUkqJnayo5aYQtq
pZWt5oN8pIbpXslMNA1JW0gl1meu+bzigwpJUv/ItiASQkzLdhslZmAYfgwz
c+Z83+eivBausqAo6gieG2uByYwHDdTmYECZs8PoxTFArbb/cJ2m4VWs/GYy
wvx8UH+xmQYfm/LCGh6zu3j3WgkNZZkhNlMCZs3ojF5Dg/WevmVLah9Q4qkS
VS4N/dczLvlwmCfze29raWg4qktNQpiTPlyN0NPwOiE8qprH/NQ8pF6kIal0
IVgQMA8P2NntZOCFVUqMyYxZHaoUAwMRgV1DCm4/fi+YLUpgwCHosDYBYY53
sJ/IYECcgaYqeczWjo7GuwzoTI8SRwXMijX3LekMxPmuB5vMG7xYpY1mILbd
75gn54breWfp5sXA5F/9SYQwaz4vjm5lQNEo8q7mMatjjIUzNHTKrJfGBcy6
5uWilzQUuzpfEVHuQC2EnIZyGrInlpq8OMyalZDWbBqyWnJbExFmZ/s0Yw4N
s/F9pdU85tXt5/sr8L5lY/y4gFmrM8y30eBUdsiHog7g+vJ0f+ZoSNtV48Jx
mJ3fu2XZMhD9NkCGEObIygd+/gwYggIu8Dxm+2l9QBwDtVF1zwQB83CVVc0N
5r+uEqBCe+84arC+jbHRHCch+5lthgaEJOR8k79hmucl5P6Sb8o5QZCQ9/ei
4RGzWULqu7ceVevJSUn9+2sD1SokJf/rCb0VpuWl5P8ahThyTJCS/qR/mq8w
maWkfyemf4k9OQ/SX9tzplEV8iD9P2hxvIPnPYg+9acGO8cFD6LfXLdlt4iS
EX3DRJe13pyM6P8zn2eTkYz440vPQOJjXkb887UjxHdCkBF/RfwurxdRLPGf
Vu3UzXEs8Wf+w5ZGFWKJf2PenC2u4lni78D7+U9GBJb43/tj4LZ1M0vyoc7r
WmE5OcnP2EpKuhLJSb7O1E0WVPJykr/Z1O/2Y4Kc5LN7U18Fye8/4GN6GA==

          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {13., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{4., 13.49999999999741}, {4., 6.49999999999371}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "m", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.3048, 10.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{4., 13.500000000003638`}, {10.000000000001819`, 
           10.000000000003638`}}]}, 
         PolygonBox[{{7.51826734053906, 11.447677384685548`}, {
          6.280184249251306, 11.706811054955079`}, {6.683281069670574, 
          12.397834175673825`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.176200089562334, 12.484057296392571}, 
          ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{3.999999999996362, 6.5}, {9.999999999994543, 10.}}]}, 
         PolygonBox[{{6.48173265946094, 7.947677384685548}, {
          7.719815750748694, 8.206811054955079}, {7.316718930329426, 
          8.897834175673825}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.176200089562334, 7.515942703607429}, 
          ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{4., 13.5}], PointBox[{4., 6.5}], 
          PointBox[{16., 10.}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["48",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgdg/ghefehfh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgdg/ghefehfh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 0}, {0, 0}, {22, 22}]},
   AspectRatio->NCache[
     Rational[1, 2], 0.5],
   ImageSize->{512, 256},
   PlotRange->{{0, 88}, {0, 44}}], TraditionalForm]], "Print",
 CellChangeTimes->{{3.914644118569538*^9, 3.9146441503624363`*^9}, 
   3.914644197358041*^9, {3.9146442390367126`*^9, 3.914644268241125*^9}, 
   3.9146448699270487`*^9, 3.914649706913968*^9},
 CellLabel->
  "During evaluation of \
In[29]:=",ExpressionUUID->"b794eec0-9522-43ad-b203-3c6eb5dfa0a6"],

Cell[BoxData[
 FormBox[
  GraphicsBox[{InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{9.094947017729282*^-13, 15.}, {3.9999999999990905`, 
          13.5}}], 
         PolygonBox[{{2.561797506541427, 14.039325935046964`}, {
          1.2977531168232166`, 14.086142393925417`}, {1.57865187009393, 
          14.835205735980654`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.544241334462007, 15.09651022523202}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{9.094947017729282*^-13, 5.}, {3.9999999999990905`, 6.5}}], 
         PolygonBox[{{1.4382024934585733`, 5.539325935046965}, {
          2.7022468831767834`, 5.586142393925417}, {2.4213481299060704`, 
          6.335205735980653}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.5442413344620074, 4.903489774767981}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20., 15.000000000001819`}, {15.999999999998181`, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.58967054772406, 12.707303561820751}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{20., 5.000000000001819}, {16., 10.000000000001819`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.41032945227594, 7.707303561820752}, 
          ImageScaled[{0, 0}]], LineBox[CompressedData["
1:eJw9k3tIVEEUxu9qhhLCUhmSmY97S9t1725eNTXLo1ZYQaUkqJnayo5aYQtq
pZWt5oN8pIbpXslMNA1JW0gl1meu+bzigwpJUv/ItiASQkzLdhslZmAYfgwz
c+Z83+eivBausqAo6gieG2uByYwHDdTmYECZs8PoxTFArbb/cJ2m4VWs/GYy
wvx8UH+xmQYfm/LCGh6zu3j3WgkNZZkhNlMCZs3ojF5Dg/WevmVLah9Q4qkS
VS4N/dczLvlwmCfze29raWg4qktNQpiTPlyN0NPwOiE8qprH/NQ8pF6kIal0
IVgQMA8P2NntZOCFVUqMyYxZHaoUAwMRgV1DCm4/fi+YLUpgwCHosDYBYY53
sJ/IYECcgaYqeczWjo7GuwzoTI8SRwXMijX3LekMxPmuB5vMG7xYpY1mILbd
75gn54breWfp5sXA5F/9SYQwaz4vjm5lQNEo8q7mMatjjIUzNHTKrJfGBcy6
5uWilzQUuzpfEVHuQC2EnIZyGrInlpq8OMyalZDWbBqyWnJbExFmZ/s0Yw4N
s/F9pdU85tXt5/sr8L5lY/y4gFmrM8y30eBUdsiHog7g+vJ0f+ZoSNtV48Jx
mJ3fu2XZMhD9NkCGEObIygd+/gwYggIu8Dxm+2l9QBwDtVF1zwQB83CVVc0N
5r+uEqBCe+84arC+jbHRHCch+5lthgaEJOR8k79hmucl5P6Sb8o5QZCQ9/ei
4RGzWULqu7ceVevJSUn9+2sD1SokJf/rCb0VpuWl5P8ahThyTJCS/qR/mq8w
maWkfyemf4k9OQ/SX9tzplEV8iD9P2hxvIPnPYg+9acGO8cFD6LfXLdlt4iS
EX3DRJe13pyM6P8zn2eTkYz440vPQOJjXkb887UjxHdCkBF/RfwurxdRLPGf
Vu3UzXEs8Wf+w5ZGFWKJf2PenC2u4lni78D7+U9GBJb43/tj4LZ1M0vyoc7r
WmE5OcnP2EpKuhLJSb7O1E0WVPJykr/Z1O/2Y4Kc5LN7U18Fye8/4GN6GA==

          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {13., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{4., 13.49999999999741}, {4., 6.49999999999371}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.3048, 10.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{4., 13.500000000003638`}, {10.000000000001819`, 
           10.000000000003638`}}]}, 
         PolygonBox[{{7.51826734053906, 11.447677384685548`}, {
          6.280184249251306, 11.706811054955079`}, {6.683281069670574, 
          12.397834175673825`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.176200089562334, 12.484057296392571}, 
          ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{3.999999999996362, 6.5}, {9.999999999994543, 10.}}]}, 
         PolygonBox[{{6.48173265946094, 7.947677384685548}, {
          7.719815750748694, 8.206811054955079}, {7.316718930329426, 
          8.897834175673825}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.176200089562334, 7.515942703607429}, 
          ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{4., 13.5}], PointBox[{4., 6.5}], 
          PointBox[{16., 10.}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["49",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgdg/ghefehfh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgdg/ghefehfh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 22}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{9.094947017729282*^-13, 15.}, {3.9999999999990905`, 
          13.5}}], 
         PolygonBox[{{2.561797506541427, 14.039325935046964`}, {
          1.2977531168232166`, 14.086142393925417`}, {1.57865187009393, 
          14.835205735980654`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.544241334462007, 15.09651022523202}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{9.094947017729282*^-13, 5.}, {3.9999999999990905`, 6.5}}], 
         PolygonBox[{{1.4382024934585733`, 5.539325935046965}, {
          2.7022468831767834`, 5.586142393925417}, {2.4213481299060704`, 
          6.335205735980653}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.5442413344620074, 4.903489774767981}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20., 15.000000000001819`}, {15.999999999998181`, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.58967054772406, 12.707303561820751}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{20., 5.000000000001819}, {16., 10.000000000001819`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.41032945227594, 7.707303561820752}, 
          ImageScaled[{0, 0}]], LineBox[CompressedData["
1:eJw9k3tIVEEUxu9qhhLCUhmSmY97S9t1725eNTXLo1ZYQaUkqJnayo5aYQtq
pZWt5oN8pIbpXslMNA1JW0gl1meu+bzigwpJUv/ItiASQkzLdhslZmAYfgwz
c+Z83+eivBausqAo6gieG2uByYwHDdTmYECZs8PoxTFArbb/cJ2m4VWs/GYy
wvx8UH+xmQYfm/LCGh6zu3j3WgkNZZkhNlMCZs3ojF5Dg/WevmVLah9Q4qkS
VS4N/dczLvlwmCfze29raWg4qktNQpiTPlyN0NPwOiE8qprH/NQ8pF6kIal0
IVgQMA8P2NntZOCFVUqMyYxZHaoUAwMRgV1DCm4/fi+YLUpgwCHosDYBYY53
sJ/IYECcgaYqeczWjo7GuwzoTI8SRwXMijX3LekMxPmuB5vMG7xYpY1mILbd
75gn54breWfp5sXA5F/9SYQwaz4vjm5lQNEo8q7mMatjjIUzNHTKrJfGBcy6
5uWilzQUuzpfEVHuQC2EnIZyGrInlpq8OMyalZDWbBqyWnJbExFmZ/s0Yw4N
s/F9pdU85tXt5/sr8L5lY/y4gFmrM8y30eBUdsiHog7g+vJ0f+ZoSNtV48Jx
mJ3fu2XZMhD9NkCGEObIygd+/gwYggIu8Dxm+2l9QBwDtVF1zwQB83CVVc0N
5r+uEqBCe+84arC+jbHRHCch+5lthgaEJOR8k79hmucl5P6Sb8o5QZCQ9/ei
4RGzWULqu7ceVevJSUn9+2sD1SokJf/rCb0VpuWl5P8ahThyTJCS/qR/mq8w
maWkfyemf4k9OQ/SX9tzplEV8iD9P2hxvIPnPYg+9acGO8cFD6LfXLdlt4iS
EX3DRJe13pyM6P8zn2eTkYz440vPQOJjXkb887UjxHdCkBF/RfwurxdRLPGf
Vu3UzXEs8Wf+w5ZGFWKJf2PenC2u4lni78D7+U9GBJb43/tj4LZ1M0vyoc7r
WmE5OcnP2EpKuhLJSb7O1E0WVPJykr/Z1O/2Y4Kc5LN7U18Fye8/4GN6GA==

          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {13., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{4., 13.49999999999741}, {4., 6.49999999999371}}], 
         PolygonBox[{{4., 10.6}, {3.6, 9.4}, {4.4, 9.4}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox[
              OverscriptBox["\[Chi]", "~"], "m"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.0548, 10.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{4., 13.500000000003638`}, {10.000000000001819`, 
           10.000000000003638`}}]}, 
         PolygonBox[{{7.51826734053906, 11.447677384685548`}, {
          6.280184249251306, 11.706811054955079`}, {6.683281069670574, 
          12.397834175673825`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.176200089562334, 12.484057296392571}, 
          ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{3.999999999996362, 6.5}, {9.999999999994543, 10.}}]}, 
         PolygonBox[{{6.48173265946094, 7.947677384685548}, {
          7.719815750748694, 8.206811054955079}, {7.316718930329426, 
          8.897834175673825}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "m", "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.176200089562334, 7.515942703607429}, 
          ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{4., 13.5}], PointBox[{4., 6.5}], 
          PointBox[{16., 10.}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["50",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgdg/ghefehfh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgdg/ghefehfh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{9.094947017729282*^-13, 15.}, {3.9999999999990905`, 
          13.5}}], 
         PolygonBox[{{2.561797506541427, 14.039325935046964`}, {
          1.2977531168232166`, 14.086142393925417`}, {1.57865187009393, 
          14.835205735980654`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.544241334462007, 15.09651022523202}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{9.094947017729282*^-13, 5.}, {3.9999999999990905`, 6.5}}], 
         PolygonBox[{{1.4382024934585733`, 5.539325935046965}, {
          2.7022468831767834`, 5.586142393925417}, {2.4213481299060704`, 
          6.335205735980653}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.5442413344620074, 4.903489774767981}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20., 15.000000000001819`}, {15.999999999998181`, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.58967054772406, 12.707303561820751}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{20., 5.000000000001819}, {16., 10.000000000001819`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.41032945227594, 7.707303561820752}, 
          ImageScaled[{0, 0}]], LineBox[CompressedData["
1:eJw9k3tIVEEUxu9qhhLCUhmSmY97S9t1725eNTXLo1ZYQaUkqJnayo5aYQtq
pZWt5oN8pIbpXslMNA1JW0gl1meu+bzigwpJUv/ItiASQkzLdhslZmAYfgwz
c+Z83+eivBausqAo6gieG2uByYwHDdTmYECZs8PoxTFArbb/cJ2m4VWs/GYy
wvx8UH+xmQYfm/LCGh6zu3j3WgkNZZkhNlMCZs3ojF5Dg/WevmVLah9Q4qkS
VS4N/dczLvlwmCfze29raWg4qktNQpiTPlyN0NPwOiE8qprH/NQ8pF6kIal0
IVgQMA8P2NntZOCFVUqMyYxZHaoUAwMRgV1DCm4/fi+YLUpgwCHosDYBYY53
sJ/IYECcgaYqeczWjo7GuwzoTI8SRwXMijX3LekMxPmuB5vMG7xYpY1mILbd
75gn54breWfp5sXA5F/9SYQwaz4vjm5lQNEo8q7mMatjjIUzNHTKrJfGBcy6
5uWilzQUuzpfEVHuQC2EnIZyGrInlpq8OMyalZDWbBqyWnJbExFmZ/s0Yw4N
s/F9pdU85tXt5/sr8L5lY/y4gFmrM8y30eBUdsiHog7g+vJ0f+ZoSNtV48Jx
mJ3fu2XZMhD9NkCGEObIygd+/gwYggIu8Dxm+2l9QBwDtVF1zwQB83CVVc0N
5r+uEqBCe+84arC+jbHRHCch+5lthgaEJOR8k79hmucl5P6Sb8o5QZCQ9/ei
4RGzWULqu7ceVevJSUn9+2sD1SokJf/rCb0VpuWl5P8ahThyTJCS/qR/mq8w
maWkfyemf4k9OQ/SX9tzplEV8iD9P2hxvIPnPYg+9acGO8cFD6LfXLdlt4iS
EX3DRJe13pyM6P8zn2eTkYz440vPQOJjXkb887UjxHdCkBF/RfwurxdRLPGf
Vu3UzXEs8Wf+w5ZGFWKJf2PenC2u4lni78D7+U9GBJb43/tj4LZ1M0vyoc7r
WmE5OcnP2EpKuhLJSb7O1E0WVPJykr/Z1O/2Y4Kc5LN7U18Fye8/4GN6GA==

          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {13., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJxFlH9MlVUYxw83VP7I9z2CEBTRBe+v9yosPdwNyPLZYqg1mJrC0JW34h6h
X2BjWGOXXWv90CtpTAbn+gPnRXRFCE5r1ZZoZMYOAmYsQ5ebBJkwQXPFdd23
5652PNu7d5+dc973nO/z/T6ZL1Wv81kIISvxib3/GxRKx0wcaUDA2tdaQaHh
o2e+f4U/DIR2LyZfUnioPHjgkkQeKvij7RaFvQO58U+yR5ATT3WaFD7/OO90
WCDX7GzdM05h4UDKaAJJBxJo3L7hGIXCpUc7XuPIVn0kWkJhSV/R4UGJTG6d
vzysw1y/3LKMPQrEO21Nm6+D5Uzn7maBDE/YfNUajM7cbZk1kQN2X0aiBu02
GH6BZ+D8dNzKeA00S/X67ySy99Oi1FUaXKust2Szx4Accs4/elGDrUU9jc0C
OZAcOtKoQ+5Jz86oieylq/zZFM5NPX2GMSuuL9shd1EIpqTMreTIgTyo+onC
TFnt5D6B3KuXhO9R6Ei87h2UsfUTpc/NUtjIDdQ1M6ZH8c8XKESdmuZhyDW5
RsK7qMecX/1bODJZV5iSReHEbOSKEDH+bE3+Nh2KPdfXSonszfQv69Ug6/b6
SNRE7r16eNdyDfZsbh9fyrKAXNtXvy1Og+zGpFQfRz40EKlN1eDYCLzTKpAD
DU3Dfg0K7uboUiKTwpPLM3V4/oPJdtNE7u23VP2uw9Wp0GLGFuH+fEt7OYXI
2O4mzmNcXie6KSwo3vGjEMhD3/yZfJNCZXf5HSmRyY0vjmO935qM+eX+/Ieu
jgcZs6n9lW11Szi3qe83zKt5XQib+v/+aMUlKW3qfOm+pE2E2NX5V/w1NM2Y
Xd1vOPk06mdX9//22cmJkLArfbxvb0q7IO1Kv8HxT+bEEYfSNxxO72LMofQ/
dzt+EecOVZ+KCSvq51D1q++bmemXDlXfjPdHQv+YDlX/i5fT2x5nTuUPsj2Y
VMGdyj/87I3ZFuFU/nLf/PopKZ3KfyPRsa8IcSl/wmpnvoe5lH8T8s42VHGX
8vfWV89vOCBcyv+OXza3DEmXykfwTnzuA8RQ+fk7aOR5mKHy9UYoTXJuqPyN
1l3JaRWGymcJdHb+IA2VX/5mbdM901D5Phh+2ZrD3Cr/Xe/95n+Ru1V/mFpR
0NMs3Kp/5B/ZuL9fIv/fX0oiMb+44V/ORK9U
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.0548, 10.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{4., 13.500000000003638`}, {10.000000000001819`, 
          10.000000000003638`}}], 
         PolygonBox[{{7.51826734053906, 11.447677384685548`}, {
          6.280184249251306, 11.706811054955079`}, {6.683281069670574, 
          12.397834175673825`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.176200089562334, 12.484057296392571}, 
          ImageScaled[{0, 0}]], 
         LineBox[{{3.999999999996362, 6.5}, {9.999999999994543, 10.}}], 
         PolygonBox[{{6.48173265946094, 7.947677384685548}, {
          7.719815750748694, 8.206811054955079}, {7.316718930329426, 
          8.897834175673825}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.176200089562334, 7.515942703607429}, 
          ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{4., 13.5}], PointBox[{4., 6.5}], 
          PointBox[{16., 10.}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["51",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgdg/ghefehfh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgdg/ghefehfh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{9.094947017729282*^-13, 15.}, {3.9999999999990905`, 
          13.5}}], 
         PolygonBox[{{2.561797506541427, 14.039325935046964`}, {
          1.2977531168232166`, 14.086142393925417`}, {1.57865187009393, 
          14.835205735980654`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.544241334462007, 15.09651022523202}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{9.094947017729282*^-13, 5.}, {3.9999999999990905`, 6.5}}], 
         PolygonBox[{{1.4382024934585733`, 5.539325935046965}, {
          2.7022468831767834`, 5.586142393925417}, {2.4213481299060704`, 
          6.335205735980653}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {2.5442413344620074, 4.903489774767981}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20., 15.000000000001819`}, {15.999999999998181`, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {17.58967054772406, 12.707303561820751}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{20., 5.000000000001819}, {16., 10.000000000001819`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {18.41032945227594, 7.707303561820752}, 
          ImageScaled[{0, 0}]], LineBox[CompressedData["
1:eJw9k3tIVEEUxu9qhhLCUhmSmY97S9t1725eNTXLo1ZYQaUkqJnayo5aYQtq
pZWt5oN8pIbpXslMNA1JW0gl1meu+bzigwpJUv/ItiASQkzLdhslZmAYfgwz
c+Z83+eivBausqAo6gieG2uByYwHDdTmYECZs8PoxTFArbb/cJ2m4VWs/GYy
wvx8UH+xmQYfm/LCGh6zu3j3WgkNZZkhNlMCZs3ojF5Dg/WevmVLah9Q4qkS
VS4N/dczLvlwmCfze29raWg4qktNQpiTPlyN0NPwOiE8qprH/NQ8pF6kIal0
IVgQMA8P2NntZOCFVUqMyYxZHaoUAwMRgV1DCm4/fi+YLUpgwCHosDYBYY53
sJ/IYECcgaYqeczWjo7GuwzoTI8SRwXMijX3LekMxPmuB5vMG7xYpY1mILbd
75gn54breWfp5sXA5F/9SYQwaz4vjm5lQNEo8q7mMatjjIUzNHTKrJfGBcy6
5uWilzQUuzpfEVHuQC2EnIZyGrInlpq8OMyalZDWbBqyWnJbExFmZ/s0Yw4N
s/F9pdU85tXt5/sr8L5lY/y4gFmrM8y30eBUdsiHog7g+vJ0f+ZoSNtV48Jx
mJ3fu2XZMhD9NkCGEObIygd+/gwYggIu8Dxm+2l9QBwDtVF1zwQB83CVVc0N
5r+uEqBCe+84arC+jbHRHCch+5lthgaEJOR8k79hmucl5P6Sb8o5QZCQ9/ei
4RGzWULqu7ceVevJSUn9+2sD1SokJf/rCb0VpuWl5P8ahThyTJCS/qR/mq8w
maWkfyemf4k9OQ/SX9tzplEV8iD9P2hxvIPnPYg+9acGO8cFD6LfXLdlt4iS
EX3DRJe13pyM6P8zn2eTkYz440vPQOJjXkb887UjxHdCkBF/RfwurxdRLPGf
Vu3UzXEs8Wf+w5ZGFWKJf2PenC2u4lni78D7+U9GBJb43/tj4LZ1M0vyoc7r
WmE5OcnP2EpKuhLJSb7O1E0WVPJykr/Z1O/2Y4Kc5LN7U18Fye8/4GN6GA==

          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {13., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
Y4y+zIb/AYX1XyQ=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {3.0548, 10.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{4., 13.500000000003638`}, {10.000000000001819`, 
          10.000000000003638`}}], 
         PolygonBox[{{7.51826734053906, 11.447677384685548`}, {
          6.280184249251306, 11.706811054955079`}, {6.683281069670574, 
          12.397834175673825`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.176200089562334, 12.484057296392571}, 
          ImageScaled[{0, 0}]], 
         LineBox[{{3.999999999996362, 6.5}, {9.999999999994543, 10.}}], 
         PolygonBox[{{6.48173265946094, 7.947677384685548}, {
          7.719815750748694, 8.206811054955079}, {7.316718930329426, 
          8.897834175673825}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->14.661818181818182`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            14.661818181818182`]& ], {7.176200089562334, 7.515942703607429}, 
          ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{4., 13.5}], PointBox[{4., 6.5}], 
          PointBox[{16., 10.}], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["52",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454546`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454546`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"aebf/cgdg/ghefehfh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "aebf/cgdg/ghefehfh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 22}, {0, 0}, {22, 22}]},
   AspectRatio->NCache[
     Rational[1, 2], 0.5],
   ImageSize->{512, 256},
   PlotRange->{{0, 88}, {0, 44}}], TraditionalForm]], "Print",
 CellChangeTimes->{{3.914644118569538*^9, 3.9146441503624363`*^9}, 
   3.914644197358041*^9, {3.9146442390367126`*^9, 3.914644268241125*^9}, 
   3.9146448699270487`*^9, 3.91464970693521*^9},
 CellLabel->
  "During evaluation of \
In[29]:=",ExpressionUUID->"8ed83cc0-56bd-46c1-a1af-03da979397cb"]
}, Open  ]]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"triCTDiags", " ", "=", " ", 
   RowBox[{"InsertFields", "[", "\n", "\t", 
    RowBox[{"triTopCT", ",", "\n", "\t", 
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
     RowBox[{"Sequence", " ", "@@", " ", "parameters"}]}], "\n", "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Paint", "[", 
   RowBox[{"triCTDiags", ",", " ", 
    RowBox[{"Numbering", "->", "Simple"}], ",", " ", 
    RowBox[{"ImageSize", "->", 
     RowBox[{"{", 
      RowBox[{"512", ",", "256"}], "}"}]}]}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{
  3.914488191156465*^9, {3.914488231294777*^9, 3.914488236348583*^9}, {
   3.914488314691807*^9, 3.914488321275115*^9}, {3.914488425262734*^9, 
   3.914488435411188*^9}, {3.914488483818517*^9, 3.914488554522682*^9}, {
   3.9144888977235527`*^9, 3.914488903366401*^9}, {3.914489085691751*^9, 
   3.914489087228053*^9}, {3.91448914683384*^9, 3.91448919939846*^9}, {
   3.914556529301778*^9, 3.914556532683961*^9}, {3.914559102496831*^9, 
   3.914559102497434*^9}, {3.914559410816409*^9, 3.914559411781386*^9}, {
   3.914644092987115*^9, 3.91464411518258*^9}, {3.9146442917829657`*^9, 
   3.9146442935390987`*^9}},
 CellLabel->"In[31]:=",ExpressionUUID->"09a82225-0c8f-4dfe-8d39-af2f28976bbf"],

Cell["Getting amplitudes", "Text",
 CellChangeTimes->{{3.914489277772258*^9, 
  3.914489290151503*^9}},ExpressionUUID->"239dabcc-702d-4ccf-a9e3-\
a4b4ef367fac"],

Cell[BoxData[
 RowBox[{
  RowBox[{"IndexChart", "=", 
   RowBox[{"{", "\n", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{"SUNFIndex", "[", "Col5", "]"}], "->", "c"}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{"SUNFIndex", "[", "Col6", "]"}], "->", "d"}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{"Index", "[", 
       RowBox[{"Sfermion", ",", "5"}], "]"}], "->", "A"}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{"Index", "[", 
       RowBox[{"Sfermion", ",", "6"}], "]"}], "->", "B"}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{"Index", "[", 
       RowBox[{"Sfermion", ",", "7"}], "]"}], "->", "C"}]}], "\n", "}"}]}], 
  ";"}]], "Code",
 CellChangeTimes->{{3.914503749207632*^9, 3.9145039103855047`*^9}, {
  3.9145040345889263`*^9, 3.914504115926426*^9}, {3.9145041868404007`*^9, 
  3.914504186956452*^9}, {3.914505570620687*^9, 3.914505581925769*^9}, {
  3.914649376592175*^9, 3.914649395502684*^9}},
 CellLabel->"In[33]:=",ExpressionUUID->"75ce592a-f6e6-4082-8f2b-d6cd47f61df7"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Mtri", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"FCFAConvert", "[", "\n", "\t", 
     RowBox[{
      RowBox[{"CreateFeynAmp", "[", "triDiags", "]"}], ",", "\n", "\t", 
      RowBox[{"IncomingMomenta", "->", 
       RowBox[{"{", 
        RowBox[{"ki", ",", "kj"}], "}"}]}], ",", "\n", "\t", 
      RowBox[{"OutgoingMomenta", "->", 
       RowBox[{"{", 
        RowBox[{"pi", ",", "pj"}], "}"}]}], ",", "\n", "\t", 
      RowBox[{"LoopMomenta", "->", 
       RowBox[{"{", "qloop", "}"}]}], ",", "\n", "\t", 
      RowBox[{"ChangeDimension", "->", "D"}], ",", "\n", "\t", 
      RowBox[{"UndoChiralSplittings", "->", "True"}], ",", "\n", "\t", 
      RowBox[{"List", "->", "True"}], ",", "\n", "\t", 
      RowBox[{"SMP", "->", "True"}], ",", "\n", "\t", 
      RowBox[{"DropSumOver", "->", "True"}], ",", "\n", "\t", 
      RowBox[{"LorentzIndexNames", "->", 
       RowBox[{"{", 
        RowBox[{"\[Mu]", ",", "\[Nu]", ",", "\[Rho]", ",", "\[Sigma]"}], 
        "}"}]}], ",", "\n", "\t", 
      RowBox[{"FinalSubstitutions", "->", "AmpSimplifyRules"}]}], "\n", "]"}],
     "/.", 
    RowBox[{"IndexDelta", "->", "FeynCalc`IndexDelta"}]}]}], 
  RowBox[{"(*", 
   RowBox[{"/.", "IndexChart"}], "*)"}], ";"}]], "Code",
 CellChangeTimes->{{3.9144892922548637`*^9, 3.914489500946168*^9}, {
   3.914489833736471*^9, 3.914489847995626*^9}, {3.914489936093977*^9, 
   3.914489941420371*^9}, {3.914490014937002*^9, 3.914490015542788*^9}, {
   3.91449064987461*^9, 3.914490652869628*^9}, {3.914494421940939*^9, 
   3.9144944261263447`*^9}, 3.914496130673046*^9, 3.914496411941279*^9, {
   3.914499663961868*^9, 3.914499682660397*^9}, {3.914499912936803*^9, 
   3.914499913096026*^9}, {3.914504131232987*^9, 3.914504146548413*^9}, 
   3.914559095029936*^9, 3.91455922010439*^9, {3.9146443168305387`*^9, 
   3.9146443432625427`*^9}},
 CellLabel->"In[34]:=",ExpressionUUID->"4391997c-a84f-487d-a4a7-cdaba46faaad"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "FCFAConvert", "sumOverWarn", 
    "\"You are omitting SumOver objects that may represent a nontrivial \
summation. This may lead to a loss of overall factors multiplying some of \
your diagrams. Please make sure that this is really what you want.\"", 2, 34, 
    4, 24942862437547767877, "Local", "FeynCalc`FCFAConvert"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.9146443488551188`*^9, 3.914644873864724*^9, 
  3.914649711721369*^9},
 CellLabel->
  "During evaluation of \
In[34]:=",ExpressionUUID->"e2146fe6-03f0-401f-8809-b4bab3d58f6a"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"Mtri", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"SparseArray", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"SelectNotFree2", "[", 
         RowBox[{"#", ",", 
          RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}]}], "]"}], "&"}], "/@", 
       RowBox[{"Mtri", "[", "0", "]"}]}], "]"}], "[", "\"\<NonzeroValues\>\"",
      "]"}], " ", "/.", " ", "QSimplifyRules"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Mtri", "[", "2", "]"}], " ", "=", " ", 
   RowBox[{"TraceLoopAmp", " ", "/@", " ", 
    RowBox[{"Mtri", "[", "1", "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Mtri", "[", "3", "]"}], " ", "=", " ", 
   RowBox[{"EvalPVLoopAmp", " ", "/@", " ", 
    RowBox[{"Mtri", "[", "2", "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Mtri", "[", "4", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"FeynAmpDenominatorExplicit", " ", "/@", " ", 
      RowBox[{
       RowBox[{"SparseArray", "[", 
        RowBox[{"Mtri", "[", "3", "]"}], "]"}], "[", "\"\<NonzeroValues\>\"", 
       "]"}]}], ")"}], "/.", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"Power", "[", 
        RowBox[{
         RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], ",", "2"}], "]"}], "->", 
       "DZ"}], ",", " ", 
      RowBox[{
       RowBox[{"Power", "[", 
        RowBox[{
         RowBox[{"MSf", "[", 
          RowBox[{"a_", ",", "t_", ",", "g_"}], "]"}], ",", "2"}], "]"}], "->", 
       RowBox[{"DSf", "[", 
        RowBox[{"a", ",", "t", ",", "g"}], "]"}]}]}], "}"}]}]}], 
  ";"}], "\n", 
 RowBox[{"StringJoin", "[", "\n", "\t", 
  RowBox[{"\"\<Found \>\"", ",", "\n", "\t", 
   RowBox[{"ToString", "[", 
    RowBox[{"Length", "[", 
     RowBox[{"Mtri", "[", "4", "]"}], "]"}], "]"}], ",", "\n", "\t", 
   "\"\< contributing diagrams (\>\"", ",", "\n", "\t", 
   RowBox[{"ToString", "[", 
    RowBox[{
     RowBox[{"Length", "[", 
      RowBox[{"Mtri", "[", "0", "]"}], "]"}], "-", 
     RowBox[{"Length", "[", 
      RowBox[{"Mtri", "[", "4", "]"}], "]"}]}], "]"}], ",", "\n", "\t", 
   "\"\< diagrams dropped).\>\""}], "\n", "]"}], "\n", 
 RowBox[{"StringJoin", "[", 
  RowBox[{"\"\<Kept diagrams \>\"", ",", " ", 
   RowBox[{"ToString", "[", 
    RowBox[{
     RowBox[{"SparseArray", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"SelectNotFree2", "[", 
         RowBox[{"#", ",", 
          RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}]}], "]"}], "&"}], "/@", 
       RowBox[{"Mtri", "[", "0", "]"}]}], "]"}], "[", 
     "\"\<NonzeroPositions\>\"", "]"}], "]"}]}], "]"}]}], "Code",
 CellChangeTimes->{{3.914489504511401*^9, 3.914489598765117*^9}, {
   3.914489687934328*^9, 3.9144896912104597`*^9}, {3.914490432359128*^9, 
   3.914490447366793*^9}, {3.914490580191163*^9, 3.914490585227544*^9}, {
   3.914491083801668*^9, 3.914491109380851*^9}, {3.914491212483996*^9, 
   3.914491295727489*^9}, {3.914491334637637*^9, 3.914491334826242*^9}, {
   3.914491514698633*^9, 3.914491516644075*^9}, {3.914493686583534*^9, 
   3.9144937030282*^9}, {3.914494204230205*^9, 3.914494289058423*^9}, {
   3.9144979103595867`*^9, 3.9144980692389727`*^9}, {3.91449810513466*^9, 
   3.914498149124861*^9}, {3.914498231435085*^9, 3.9144982320410748`*^9}, {
   3.9144991281016293`*^9, 3.914499181868813*^9}, {3.914499218488447*^9, 
   3.914499221907454*^9}, {3.9145003244249077`*^9, 3.9145003310107*^9}, {
   3.914506103214202*^9, 3.9145061212812366`*^9}, {3.914509527502829*^9, 
   3.91450959519084*^9}, 3.914509660784101*^9, {3.914509912913641*^9, 
   3.914509914630639*^9}, {3.914559220107552*^9, 3.914559220122491*^9}},
 CellLabel->"In[35]:=",ExpressionUUID->"6839c5f6-745f-4eb3-b3ea-2ade6763fe1e"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Mtri", "[", "4", "]"}], "[", 
  RowBox[{"[", "1", "]"}], "]"}]], "Code",
 CellChangeTimes->{{3.914650015486301*^9, 3.914650038912033*^9}},
 CellLabel->"In[45]:=",ExpressionUUID->"b2c9cc9b-399e-451c-825a-9ffb3f90399c"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", 
    FractionBox["1", 
     RowBox[{"144", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubscriptBox["\[CapitalDelta]", 
         FormBox[
          InterpretationBox[
           RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
           SequenceForm["Col", 1],
           Editable->False],
          TraditionalForm]]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         FormBox[
          InterpretationBox[
           RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
           SequenceForm["Neu", 2],
           Editable->False],
          TraditionalForm], "2"]}], ")"}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}]]}], 
   SubscriptBox["C", "F"], " ", 
   SubsuperscriptBox["g", "s", "2"], " ", 
   SubsuperscriptBox["g", "W", "2"], " ", 
   SubscriptBox["\[Delta]", 
    RowBox[{
     FormBox[
      FormBox["Col1",
       TraditionalForm],
      TraditionalForm], 
     FormBox[
      FormBox["Col2",
       TraditionalForm],
      TraditionalForm]}]], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"6", " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "R"], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          FormBox[
           SubscriptBox["p", "i"],
           TraditionalForm],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "1"}],
             SequenceForm["Neu", 1],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          FormBox[
           SubscriptBox["k", "i"],
           TraditionalForm],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], "+", 
     RowBox[{"6", " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "L"], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          FormBox[
           SubscriptBox["p", "i"],
           TraditionalForm],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "1"}],
             SequenceForm["Neu", 1],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          FormBox[
           SubscriptBox["k", "i"],
           TraditionalForm],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], "-", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
               SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          FormBox[
           SubscriptBox["p", "i"],
           TraditionalForm],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "1"}],
             SequenceForm["Neu", 1],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          FormBox[
           SubscriptBox["k", "i"],
           TraditionalForm],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
          SequenceForm["Col", 1],
          Editable->False],
         TraditionalForm], ",", "1"}]]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
               SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          FormBox[
           SubscriptBox["p", "i"],
           TraditionalForm],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "1"}],
             SequenceForm["Neu", 1],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          FormBox[
           SubscriptBox["k", "i"],
           TraditionalForm],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "5"}],
          SequenceForm["Sfe", 5],
          Editable->False],
         TraditionalForm], ",", "1"}]]}]}], ")"}], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"6", " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "L"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubsuperscriptBox["m", 
       OverscriptBox["g", "~"], "3"]}], "+", 
     RowBox[{"6", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{"SqrtEGl"},
         "Conjugate"], ")"}], "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "R"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubsuperscriptBox["m", 
       OverscriptBox["g", "~"], "3"]}], "-", 
     RowBox[{
      SuperscriptBox["SqrtEGl", "2"], " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
               SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
          SequenceForm["Col", 1],
          Editable->False],
         TraditionalForm], ",", "1"}]], " ", 
      SubsuperscriptBox["m", 
       OverscriptBox["g", "~"], "3"]}], "+", 
     RowBox[{
      SuperscriptBox["SqrtEGl", "2"], " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "2"}], 
               SequenceForm["Neu", 2], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "6"}],
          SequenceForm["Sfe", 6],
          Editable->False],
         TraditionalForm], ",", "1"}]], " ", 
      SubsuperscriptBox["m", 
       OverscriptBox["g", "~"], "3"]}], "-", 
     RowBox[{"6", " ", "SqrtEGl", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{"SqrtEGl"},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "R"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubsuperscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubsuperscriptBox["m", 
       OverscriptBox["g", "~"], "2"]}], "-", 
     RowBox[{"6", " ", "SqrtEGl", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{"SqrtEGl"},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "L"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubsuperscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubsuperscriptBox["m", 
       OverscriptBox["g", "~"], "2"]}], "+", 
     RowBox[{"SqrtEGl", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{"SqrtEGl"},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
               SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubsuperscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
          SequenceForm["Col", 1],
          Editable->False],
         TraditionalForm], ",", "1"}]], " ", 
      SubsuperscriptBox["m", 
       OverscriptBox["g", "~"], "2"]}], "-", 
     RowBox[{"SqrtEGl", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{"SqrtEGl"},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "2"}], 
               SequenceForm["Neu", 2], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubsuperscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "6"}],
          SequenceForm["Sfe", 6],
          Editable->False],
         TraditionalForm], ",", "1"}]], " ", 
      SubsuperscriptBox["m", 
       OverscriptBox["g", "~"], "2"]}], "+", 
     RowBox[{"6", " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "L"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubsuperscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm], "3"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "+", 
     RowBox[{"6", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{"SqrtEGl"},
         "Conjugate"], ")"}], "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "R"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubsuperscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm], "3"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "-", 
     RowBox[{"6", " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"B\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"t", ",", "0", ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"]}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "L"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "+", 
     RowBox[{"6", " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"B\"\>", "\<\"0\"\>"], "(", 
          RowBox[{
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", "0", ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]]}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "L"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "-", 
     RowBox[{"6", " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", "t", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "L"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "-", 
     RowBox[{"6", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"B\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"t", ",", "0", ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"]}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{"SqrtEGl"},
         "Conjugate"], ")"}], "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "R"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "+", 
     RowBox[{"6", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"B\"\>", "\<\"0\"\>"], "(", 
          RowBox[{
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", "0", ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]]}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{"SqrtEGl"},
         "Conjugate"], ")"}], "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "R"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "-", 
     RowBox[{"6", " ", "t", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{"SqrtEGl"},
         "Conjugate"], ")"}], "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "R"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "-", 
     RowBox[{"6", " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "L"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["\[CapitalDelta]", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
         SequenceForm["Col", 1],
         Editable->False],
        TraditionalForm]], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "-", 
     RowBox[{"6", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{"SqrtEGl"},
         "Conjugate"], ")"}], "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "R"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["\[CapitalDelta]", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
         SequenceForm["Col", 1],
         Editable->False],
        TraditionalForm]], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "-", 
     RowBox[{
      SuperscriptBox["SqrtEGl", "2"], " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
               SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubsuperscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm], "3"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
          SequenceForm["Col", 1],
          Editable->False],
         TraditionalForm], ",", "1"}]], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "+", 
     RowBox[{
      SuperscriptBox["SqrtEGl", "2"], " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"B\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"t", ",", "0", ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"]}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
               SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
          SequenceForm["Col", 1],
          Editable->False],
         TraditionalForm], ",", "1"}]], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "-", 
     RowBox[{
      SuperscriptBox["SqrtEGl", "2"], " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"B\"\>", "\<\"0\"\>"], "(", 
          RowBox[{
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", "0", ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]]}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
               SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
          SequenceForm["Col", 1],
          Editable->False],
         TraditionalForm], ",", "1"}]], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "+", 
     RowBox[{
      SuperscriptBox["SqrtEGl", "2"], " ", "t", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
               SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
          SequenceForm["Col", 1],
          Editable->False],
         TraditionalForm], ",", "1"}]], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "+", 
     RowBox[{
      SuperscriptBox["SqrtEGl", "2"], " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
               SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["\[CapitalDelta]", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
         SequenceForm["Col", 1],
         Editable->False],
        TraditionalForm]], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
          SequenceForm["Col", 1],
          Editable->False],
         TraditionalForm], ",", "1"}]], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "+", 
     RowBox[{
      SuperscriptBox["SqrtEGl", "2"], " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "2"}], 
               SequenceForm["Neu", 2], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubsuperscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm], "3"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "6"}],
          SequenceForm["Sfe", 6],
          Editable->False],
         TraditionalForm], ",", "1"}]], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "-", 
     RowBox[{
      SuperscriptBox["SqrtEGl", "2"], " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"B\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"t", ",", "0", ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"]}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "2"}], 
               SequenceForm["Neu", 2], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "6"}],
          SequenceForm["Sfe", 6],
          Editable->False],
         TraditionalForm], ",", "1"}]], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "+", 
     RowBox[{
      SuperscriptBox["SqrtEGl", "2"], " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"B\"\>", "\<\"0\"\>"], "(", 
          RowBox[{
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", "0", ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]]}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "2"}], 
               SequenceForm["Neu", 2], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "6"}],
          SequenceForm["Sfe", 6],
          Editable->False],
         TraditionalForm], ",", "1"}]], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "-", 
     RowBox[{
      SuperscriptBox["SqrtEGl", "2"], " ", "t", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "2"}], 
               SequenceForm["Neu", 2], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "6"}],
          SequenceForm["Sfe", 6],
          Editable->False],
         TraditionalForm], ",", "1"}]], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "-", 
     RowBox[{
      SuperscriptBox["SqrtEGl", "2"], " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "2"}], 
               SequenceForm["Neu", 2], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["\[CapitalDelta]", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
         SequenceForm["Col", 1],
         Editable->False],
        TraditionalForm]], " ", 
      SubscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "6"}],
          SequenceForm["Sfe", 6],
          Editable->False],
         TraditionalForm], ",", "1"}]], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]]}], "-", 
     RowBox[{"6", " ", "SqrtEGl", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"B\"\>", "\<\"0\"\>"], "(", 
          RowBox[{
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", "0", ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]]}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{"SqrtEGl"},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "R"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubsuperscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], "-", 
     RowBox[{"6", " ", "SqrtEGl", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"B\"\>", "\<\"0\"\>"], "(", 
          RowBox[{
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", "0", ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]]}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{"SqrtEGl"},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "L"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubsuperscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], "+", 
     RowBox[{"6", " ", "SqrtEGl", " ", "t", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"B\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"t", ",", "0", ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"]}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{"SqrtEGl"},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "R"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], "+", 
     RowBox[{"6", " ", "SqrtEGl", " ", "t", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"B\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"t", ",", "0", ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"]}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{"SqrtEGl"},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "L"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], "+", 
     RowBox[{"6", " ", "SqrtEGl", " ", "t", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{"SqrtEGl"},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "R"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["\[CapitalDelta]", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
         SequenceForm["Col", 1],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], "+", 
     RowBox[{"6", " ", "SqrtEGl", " ", "t", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{"SqrtEGl"},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["C", 
           RowBox[{"q", 
             SubscriptBox[
              OverscriptBox["q", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Col\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Col", 1], Editable -> False], TraditionalForm]], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], 
              FormBox[
               InterpretationBox[
                RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
                SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
              "0"]}], "L"], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["\[CapitalDelta]", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
         SequenceForm["Col", 1],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], "+", 
     RowBox[{"SqrtEGl", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"B\"\>", "\<\"0\"\>"], "(", 
          RowBox[{
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", "0", ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]]}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{"SqrtEGl"},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
               SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubsuperscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
          SequenceForm["Col", 1],
          Editable->False],
         TraditionalForm], ",", "1"}]]}], "-", 
     RowBox[{"SqrtEGl", " ", "t", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"B\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"t", ",", "0", ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"]}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{"SqrtEGl"},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
               SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
          SequenceForm["Col", 1],
          Editable->False],
         TraditionalForm], ",", "1"}]]}], "-", 
     RowBox[{"SqrtEGl", " ", "t", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{"SqrtEGl"},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "1"}], 
               SequenceForm["Neu", 1], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["\[CapitalDelta]", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
         SequenceForm["Col", 1],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
          SequenceForm["Col", 1],
          Editable->False],
         TraditionalForm], ",", "1"}]]}], "-", 
     RowBox[{"SqrtEGl", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"B\"\>", "\<\"0\"\>"], "(", 
          RowBox[{
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", "0", ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]]}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{"SqrtEGl"},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "2"}], 
               SequenceForm["Neu", 2], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubsuperscriptBox["m", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Neu", 2],
         Editable->False],
        TraditionalForm], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "6"}],
          SequenceForm["Sfe", 6],
          Editable->False],
         TraditionalForm], ",", "1"}]]}], "+", 
     RowBox[{"SqrtEGl", " ", "t", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"B\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"t", ",", "0", ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"]}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{"SqrtEGl"},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "2"}], 
               SequenceForm["Neu", 2], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "6"}],
          SequenceForm["Sfe", 6],
          Editable->False],
         TraditionalForm], ",", "1"}]]}], "+", 
     RowBox[{"SqrtEGl", " ", "t", " ", 
      FormBox[
       TagBox[
        FormBox[
         RowBox[{
          SubscriptBox["\<\"C\"\>", "\<\"0\"\>"], "(", 
          RowBox[{"0", ",", "t", ",", 
           SubsuperscriptBox["m", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
              SequenceForm["Neu", 2],
              Editable->False],
             TraditionalForm], "2"], ",", 
           SubscriptBox["\[CapitalDelta]", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
              SequenceForm["Col", 1],
              Editable->False],
             TraditionalForm]], ",", 
           SubsuperscriptBox["m", 
            OverscriptBox["g", "~"], "2"], ",", "0"}], ")"}],
         TraditionalForm],
        HoldForm],
       TraditionalForm], " ", 
      TemplateBox[{"SqrtEGl"},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["N", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Neu\"", "\[InvisibleSpace]", "2"}], 
               SequenceForm["Neu", 2], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
               SequenceForm["Sfe", 5], Editable -> False], TraditionalForm], 
             ",", "1"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "6"}], 
               SequenceForm["Sfe", 6], Editable -> False], TraditionalForm], 
             ",", "2"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["k", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], ".", 
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          RowBox[{"-", 
           FormBox[
            SubscriptBox["p", "j"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Neu\"\>", "\[InvisibleSpace]", "2"}],
             SequenceForm["Neu", 2],
             Editable->False],
            TraditionalForm]],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      SubscriptBox["\[CapitalDelta]", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
         SequenceForm["Col", 1],
         Editable->False],
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
      SubscriptBox[
       OverscriptBox["Q", "~"], 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "6"}],
          SequenceForm["Sfe", 6],
          Editable->False],
         TraditionalForm], ",", "1"}]]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.914559711479454*^9, 3.914642335501688*^9, 
  3.914644005022048*^9, 3.914644059921831*^9, 3.9146443241187162`*^9, 
  3.914644593569942*^9, 3.9146451192379923`*^9, 3.9146499706037397`*^9, 
  3.9146500402284737`*^9},
 CellLabel->"Out[45]=",ExpressionUUID->"5013bcbb-6f4f-4d79-9043-ac861ee08e00"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Squaring amplitudes", "Section",
 CellChangeTimes->{{3.914498265026353*^9, 
  3.9144982692865543`*^9}},ExpressionUUID->"5c9e78ca-a404-4924-944c-\
bc2ca7ce7488"],

Cell["Some text.", "Text",
 CellChangeTimes->{{3.914498274162462*^9, 
  3.914498276827838*^9}},ExpressionUUID->"38ca45e2-7bd8-43b2-b84c-\
01cc954115a6"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"Ms", "[", "0", "]"}], ",", 
     RowBox[{"Mt", "[", "0", "]"}], ",", 
     RowBox[{"Mu", "[", "0", "]"}], ",", 
     RowBox[{"MsC", "[", "0", "]"}], ",", 
     RowBox[{"MtC", "[", "0", "]"}], ",", 
     RowBox[{"MuC", "[", "0", "]"}]}], "}"}], " ", "=", " ", 
   RowBox[{"ToExpression", " ", "/@", " ", 
    RowBox[{"Import", "[", 
     RowBox[{"FileNameJoin", "[", 
      RowBox[{"{", 
       RowBox[{"LOResultsDir", ",", " ", "\"\<amps.m\>\""}], "}"}], "]"}], 
     "]"}]}]}], ";"}]], "Code",
 CellChangeTimes->{{3.914498278228628*^9, 3.914498361932822*^9}, {
   3.914498404020145*^9, 3.914498441417313*^9}, 3.914498578656883*^9, {
   3.914498967989517*^9, 3.91449896908809*^9}, {3.9145059377464337`*^9, 
   3.914505939495121*^9}},
 CellLabel->"In[41]:=",ExpressionUUID->"7abb9bf4-d86c-40e5-9a8d-f9ed02a2565e"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"Isse", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"SquareAmplitudes", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{"MsC", "[", "0", "]"}]}], "]"}], " ", "&"}], "/@", " ", 
    RowBox[{"Mtri", "[", "4", "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Isse", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"Isse", "[", "0", "]"}], "/.", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"q2_", "-", "DZ"}], "->", 
       FractionBox["1", 
        RowBox[{"Den", "[", 
         RowBox[{"q2", ",", "DZ"}], "]"}]]}], ",", " ", 
      RowBox[{
       RowBox[{"q2_", "-", 
        RowBox[{"DSf", "[", "args__", "]"}]}], "->", 
       FractionBox["1", 
        RowBox[{"Den", "[", 
         RowBox[{"q2", ",", 
          RowBox[{"DSf", "[", "args", "]"}]}], "]"}]]}], ",", 
      RowBox[{
       RowBox[{"q2_", "-", 
        RowBox[{"DZ", "\[Conjugate]"}]}], "->", 
       FractionBox["1", 
        RowBox[{"Den", "[", 
         RowBox[{"q2", ",", 
          RowBox[{"DZ", "\[Conjugate]"}]}], "]"}]]}], ",", " ", 
      RowBox[{
       RowBox[{"q2_", "-", 
        RowBox[{
         RowBox[{"DSf", "[", "args__", "]"}], "\[Conjugate]"}]}], "->", 
       FractionBox["1", 
        RowBox[{"Den", "[", 
         RowBox[{"q2", ",", 
          RowBox[{
           RowBox[{"DSf", "[", "args", "]"}], "\[Conjugate]"}]}], "]"}]]}]}], 
     "}"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Isse", "[", "2", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"Simplify", "[", 
      RowBox[{"SelectFree2", "[", 
       RowBox[{
        RowBox[{"Expand", "[", "#", "]"}], ",", 
        RowBox[{"DiracTrace", "[", "__", "]"}]}], "]"}], "]"}], "&"}], " ", "/@",
     " ", 
    RowBox[{"Isse", "[", "1", "]"}]}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.914498463753605*^9, 3.914498518284213*^9}, 
   3.914499084883146*^9, {3.914506516689118*^9, 3.914506582081693*^9}, {
   3.914506623255123*^9, 3.914506637878801*^9}, {3.914507708693386*^9, 
   3.914507790618374*^9}, {3.914507830827784*^9, 3.914507841060621*^9}, {
   3.914508041963653*^9, 3.9145080436978207`*^9}, 3.914559220123995*^9, {
   3.9146448154393463`*^9, 3.914644823142105*^9}},
 CellLabel->"In[42]:=",ExpressionUUID->"71be93d0-851a-466b-a4c7-b3d3a61b064e"],

Cell[BoxData[
 FormBox["$Aborted", TraditionalForm]], "Output",
 CellChangeTimes->{3.9146500061314373`*^9},
 CellLabel->"Out[42]=",ExpressionUUID->"0c40d423-869a-4790-b54f-37cc8c8764cd"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"CommonPrefactor", " ", "=", "  ", 
   FractionBox[
    RowBox[{
     RowBox[{"Power", "[", 
      RowBox[{
       RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}], ",", "2"}], "]"}], " ", 
     RowBox[{"Power", "[", 
      RowBox[{
       RowBox[{"SMP", "[", "\"\<g_W\>\"", "]"}], ",", "4"}], "]"}], 
     RowBox[{"FeynCalc`IndexDelta", "[", 
      RowBox[{"a", ",", " ", "b"}], "]"}]}], 
    RowBox[{"4", 
     RowBox[{"Power", "[", 
      RowBox[{"\[Pi]", ",", "2"}], "]"}]}]]}], ";"}], "\n", 
 RowBox[{"CollectDenPaVe", "[", "\n", "\t", 
  RowBox[{
   RowBox[{
    RowBox[{"Isse", "[", "2", "]"}], "[", 
    RowBox[{"[", "1", "]"}], "]"}], ",", "\n", "\t", 
   RowBox[{"FinalFactoring", " ", "->", " ", 
    RowBox[{"Function", "[", 
     RowBox[{"expr", ",", " ", 
      RowBox[{"Collect", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"expr", "/.", 
          RowBox[{"D", "->", 
           RowBox[{"4", "-", 
            RowBox[{"2", "*", "Epsilon"}]}]}]}], ")"}], ",", " ", "Epsilon", 
        ",", " ", 
        RowBox[{
         RowBox[{"Isolate", "[", 
          RowBox[{"CollectKinematicTerms", "[", "#", "]"}], "]"}], "&"}]}], 
       "]"}]}], "]"}]}], ",", "\n", "\t", 
   RowBox[{"Prefactor", " ", "->", " ", "CommonPrefactor"}]}], "\n", 
  "]"}]}], "Code",
 CellChangeTimes->{{3.914505804951215*^9, 3.914505848831153*^9}, {
   3.914505885944089*^9, 3.914505923422196*^9}, {3.914506168164168*^9, 
   3.914506169126748*^9}, {3.914506199557565*^9, 3.914506254184025*^9}, {
   3.914507027951576*^9, 3.914507031294219*^9}, {3.914507504907999*^9, 
   3.914507599424424*^9}, 3.9145080774872704`*^9, {3.914512957966975*^9, 
   3.914512971632606*^9}, {3.914513003366933*^9, 3.914513005704996*^9}, {
   3.914513048455275*^9, 3.914513056895249*^9}, {3.914513096266434*^9, 
   3.914513159575137*^9}, {3.914513378820584*^9, 3.914513383246305*^9}, {
   3.914513694917289*^9, 3.9145137284157457`*^9}, {3.914513911234384*^9, 
   3.914513932402589*^9}, {3.91451408898554*^9, 3.914514136512342*^9}, 
   3.914514207980824*^9, {3.914514550944419*^9, 3.914514577979319*^9}, {
   3.91451740816338*^9, 3.914517467511404*^9}, {3.91451785631252*^9, 
   3.914517874448793*^9}, {3.9145179091470013`*^9, 3.9145180026040154`*^9}, {
   3.914518036281019*^9, 3.914518038250924*^9}, 3.9145535038618526`*^9, {
   3.914554470286075*^9, 3.9145545520021076`*^9}, 3.914554620959883*^9, 
   3.914554824064612*^9, 3.9145557676983356`*^9, {3.914644733286923*^9, 
   3.914644748254488*^9}},
 CellLabel->
  "In[104]:=",ExpressionUUID->"be69b1d5-fad8-4d65-8f73-43e20dae31b3"],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "9455", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["g", "s", "2"], " ", 
    SubsuperscriptBox["g", "W", "4"], " ", 
    SubscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       InterpretationBox[
        RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
        SequenceForm["Col", 1],
        Editable->False],
       TraditionalForm], 
      FormBox[
       InterpretationBox[
        RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "2"}],
        SequenceForm["Col", 2],
        Editable->False],
       TraditionalForm]}]], " ", 
    FractionBox["1", 
     RowBox[{"s", "-", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
       "Conjugate"]}]]}], 
   SuperscriptBox["\[Pi]", "2"]], TraditionalForm]], "Output",
 CellChangeTimes->{3.914642335747449*^9, 3.9146440053278418`*^9, 
  3.914644060187307*^9, 3.91464475359301*^9},
 CellLabel->
  "Out[105]=",ExpressionUUID->"4c3f8c6d-752e-4603-b8ac-2328bc067f96"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FRH", "[", 
  RowBox[{"KK", "[", "9455", "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.914644767154437*^9, 3.9146447717436934`*^9}},
 CellLabel->
  "In[106]:=",ExpressionUUID->"9b05bccb-371b-4a93-b654-07f4ceeef0d8"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SubsuperscriptBox["g", "s", "2"], " ", 
     SubsuperscriptBox["g", "W", "2"], " ", 
     SubscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "1"}],
         SequenceForm["Col", 1],
         Editable->False],
        TraditionalForm], 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Col\"\>", "\[InvisibleSpace]", "2"}],
         SequenceForm["Col", 2],
         Editable->False],
        TraditionalForm]}]]}]], 
   RowBox[{
    SuperscriptBox["\[Pi]", "2"], " ", "\<\"NonzeroValues\"\>", " ", 
    SubscriptBox["\[Delta]", 
     RowBox[{
      RowBox[{"FeynCalc`Index", "(", 
       RowBox[{"Colour", ",", "1"}], ")"}], 
      RowBox[{"FeynCalc`Index", "(", 
       RowBox[{"Colour", ",", "2"}], ")"}]}]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SubsuperscriptBox["C", "qqZ", "L"], " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          FormBox["\<\"\[CurlyPhi]\"\>",
           TraditionalForm], 
          FormBox["\<\"(\"\>",
           TraditionalForm], 
          FormBox[
           SubscriptBox[
            FormBox[
             SubscriptBox["k", "i"],
             TraditionalForm], 
            FormBox[
             RowBox[{"4", "-", 
              RowBox[{"2", " ", 
               TagBox["\[CurlyEpsilon]",
                TraditionalForm]}]}],
             TraditionalForm]],
           TraditionalForm], 
          FormBox["\<\")\"\>",
           TraditionalForm]}], ")"}], ".", 
        SuperscriptBox[
         SubscriptBox["\[Gamma]", 
          FormBox[
           RowBox[{"4", "-", 
            RowBox[{"2", " ", 
             TagBox["\[CurlyEpsilon]",
              TraditionalForm]}]}],
           TraditionalForm]], 
         FormBox[
          FormBox["\[Rho]",
           TraditionalForm],
          TraditionalForm]], ".", 
        SuperscriptBox[
         OverscriptBox["\[Gamma]", "_"], 
         FormBox["7",
          TraditionalForm]], ".", 
        RowBox[{"(", 
         RowBox[{
          FormBox["\<\"\[CurlyPhi]\"\>",
           TraditionalForm], 
          FormBox["\<\"(\"\>",
           TraditionalForm], 
          FormBox[
           RowBox[{"-", 
            SubscriptBox[
             FormBox[
              SubscriptBox["k", "j"],
              TraditionalForm], 
             FormBox[
              RowBox[{"4", "-", 
               RowBox[{"2", " ", 
                TagBox["\[CurlyEpsilon]",
                 TraditionalForm]}]}],
              TraditionalForm]]}],
           TraditionalForm], 
          FormBox["\<\")\"\>",
           TraditionalForm]}], ")"}]}]}], "+", 
      RowBox[{
       SubsuperscriptBox["C", "qqZ", "R"], " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          FormBox["\<\"\[CurlyPhi]\"\>",
           TraditionalForm], 
          FormBox["\<\"(\"\>",
           TraditionalForm], 
          FormBox[
           SubscriptBox[
            FormBox[
             SubscriptBox["k", "i"],
             TraditionalForm], 
            FormBox[
             RowBox[{"4", "-", 
              RowBox[{"2", " ", 
               TagBox["\[CurlyEpsilon]",
                TraditionalForm]}]}],
             TraditionalForm]],
           TraditionalForm], 
          FormBox["\<\")\"\>",
           TraditionalForm]}], ")"}], ".", 
        SuperscriptBox[
         SubscriptBox["\[Gamma]", 
          FormBox[
           RowBox[{"4", "-", 
            RowBox[{"2", " ", 
             TagBox["\[CurlyEpsilon]",
              TraditionalForm]}]}],
           TraditionalForm]], 
         FormBox[
          FormBox["\[Rho]",
           TraditionalForm],
          TraditionalForm]], ".", 
        SuperscriptBox[
         OverscriptBox["\[Gamma]", "_"], 
         FormBox["6",
          TraditionalForm]], ".", 
        RowBox[{"(", 
         RowBox[{
          FormBox["\<\"\[CurlyPhi]\"\>",
           TraditionalForm], 
          FormBox["\<\"(\"\>",
           TraditionalForm], 
          FormBox[
           RowBox[{"-", 
            SubscriptBox[
             FormBox[
              SubscriptBox["k", "j"],
              TraditionalForm], 
             FormBox[
              RowBox[{"4", "-", 
               RowBox[{"2", " ", 
                TagBox["\[CurlyEpsilon]",
                 TraditionalForm]}]}],
              TraditionalForm]]}],
           TraditionalForm], 
          FormBox["\<\")\"\>",
           TraditionalForm]}], ")"}]}]}]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["O", 
            RowBox[{
              RowBox[{"FeynCalc`Index", "(", 
                RowBox[{"Neutralino", ",", "1"}], ")"}], 
              RowBox[{"FeynCalc`Index", "(", 
                RowBox[{"Neutralino", ",", "2"}], ")"}]}], 
            RowBox[{"\[Prime]\[Prime]", "R"}]], ")"}]},
        "Conjugate"], " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          FormBox["\<\"\[CurlyPhi]\"\>",
           TraditionalForm], 
          FormBox["\<\"(\"\>",
           TraditionalForm], 
          FormBox[
           RowBox[{"-", 
            SubscriptBox[
             FormBox[
              SubscriptBox["p", "i"],
              TraditionalForm], 
             FormBox[
              RowBox[{"4", "-", 
               RowBox[{"2", " ", 
                TagBox["\[CurlyEpsilon]",
                 TraditionalForm]}]}],
              TraditionalForm]]}],
           TraditionalForm], 
          FormBox["\<\",\"\>",
           TraditionalForm], 
          FormBox[
           SubscriptBox["m", 
            RowBox[{"FeynCalc`Index", "(", 
             RowBox[{"Neutralino", ",", "1"}], ")"}]],
           TraditionalForm], 
          FormBox["\<\")\"\>",
           TraditionalForm]}], ")"}], ".", 
        SuperscriptBox[
         SubscriptBox["\[Gamma]", 
          FormBox[
           RowBox[{"4", "-", 
            RowBox[{"2", " ", 
             TagBox["\[CurlyEpsilon]",
              TraditionalForm]}]}],
           TraditionalForm]], 
         FormBox[
          FormBox["\[Rho]",
           TraditionalForm],
          TraditionalForm]], ".", 
        SuperscriptBox[
         OverscriptBox["\[Gamma]", "_"], 
         FormBox["7",
          TraditionalForm]], ".", 
        RowBox[{"(", 
         RowBox[{
          FormBox["\<\"\[CurlyPhi]\"\>",
           TraditionalForm], 
          FormBox["\<\"(\"\>",
           TraditionalForm], 
          FormBox[
           SubscriptBox[
            FormBox[
             SubscriptBox["p", "j"],
             TraditionalForm], 
            FormBox[
             RowBox[{"4", "-", 
              RowBox[{"2", " ", 
               TagBox["\[CurlyEpsilon]",
                TraditionalForm]}]}],
             TraditionalForm]],
           TraditionalForm], 
          FormBox["\<\",\"\>",
           TraditionalForm], 
          FormBox[
           SubscriptBox["m", 
            RowBox[{"FeynCalc`Index", "(", 
             RowBox[{"Neutralino", ",", "2"}], ")"}]],
           TraditionalForm], 
          FormBox["\<\")\"\>",
           TraditionalForm]}], ")"}]}]}], "-", 
      RowBox[{
       SubsuperscriptBox["O", 
        RowBox[{
         RowBox[{"FeynCalc`Index", "(", 
          RowBox[{"Neutralino", ",", "1"}], ")"}], 
         RowBox[{"FeynCalc`Index", "(", 
          RowBox[{"Neutralino", ",", "2"}], ")"}]}], 
        RowBox[{"\[Prime]\[Prime]", "R"}]], " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          FormBox["\<\"\[CurlyPhi]\"\>",
           TraditionalForm], 
          FormBox["\<\"(\"\>",
           TraditionalForm], 
          FormBox[
           RowBox[{"-", 
            SubscriptBox[
             FormBox[
              SubscriptBox["p", "i"],
              TraditionalForm], 
             FormBox[
              RowBox[{"4", "-", 
               RowBox[{"2", " ", 
                TagBox["\[CurlyEpsilon]",
                 TraditionalForm]}]}],
              TraditionalForm]]}],
           TraditionalForm], 
          FormBox["\<\",\"\>",
           TraditionalForm], 
          FormBox[
           SubscriptBox["m", 
            RowBox[{"FeynCalc`Index", "(", 
             RowBox[{"Neutralino", ",", "1"}], ")"}]],
           TraditionalForm], 
          FormBox["\<\")\"\>",
           TraditionalForm]}], ")"}], ".", 
        SuperscriptBox[
         SubscriptBox["\[Gamma]", 
          FormBox[
           RowBox[{"4", "-", 
            RowBox[{"2", " ", 
             TagBox["\[CurlyEpsilon]",
              TraditionalForm]}]}],
           TraditionalForm]], 
         FormBox[
          FormBox["\[Rho]",
           TraditionalForm],
          TraditionalForm]], ".", 
        SuperscriptBox[
         OverscriptBox["\[Gamma]", "_"], 
         FormBox["6",
          TraditionalForm]], ".", 
        RowBox[{"(", 
         RowBox[{
          FormBox["\<\"\[CurlyPhi]\"\>",
           TraditionalForm], 
          FormBox["\<\"(\"\>",
           TraditionalForm], 
          FormBox[
           SubscriptBox[
            FormBox[
             SubscriptBox["p", "j"],
             TraditionalForm], 
            FormBox[
             RowBox[{"4", "-", 
              RowBox[{"2", " ", 
               TagBox["\[CurlyEpsilon]",
                TraditionalForm]}]}],
             TraditionalForm]],
           TraditionalForm], 
          FormBox["\<\",\"\>",
           TraditionalForm], 
          FormBox[
           SubscriptBox["m", 
            RowBox[{"FeynCalc`Index", "(", 
             RowBox[{"Neutralino", ",", "2"}], ")"}]],
           TraditionalForm], 
          FormBox["\<\")\"\>",
           TraditionalForm]}], ")"}]}]}]}], ")"}]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.914644772409548*^9},
 CellLabel->
  "Out[106]=",ExpressionUUID->"598faf40-3e5a-41a2-990d-b231b4ce3dd2"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1383, 765},
WindowMargins->{{-2.25, Automatic}, {Automatic, -22.5}},
FrontEndVersion->"14.0 for Linux x86 (64-bit) (December 12, 2023)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"a1922b26-c00e-4213-9cbc-1db0887b734e"
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
Cell[580, 22, 250, 4, 98, "Title",ExpressionUUID->"d1f23885-569f-49f9-bb3d-b41e8d0938ea"],
Cell[CellGroupData[{
Cell[855, 30, 161, 3, 67, "Section",ExpressionUUID->"9d569646-c354-4d67-b2ce-0e1c84264cc5"],
Cell[1019, 35, 312, 7, 35, "Text",ExpressionUUID->"68144451-ff4b-4629-addd-851c23da2f68"],
Cell[CellGroupData[{
Cell[1356, 46, 1483, 39, 305, "Code",ExpressionUUID->"76fec7da-9481-436e-b721-a33a61426046"],
Cell[CellGroupData[{
Cell[2864, 89, 2819, 72, 30, "Print",ExpressionUUID->"3f5b74aa-d43e-4058-a691-8b09ce2e247d"],
Cell[5686, 163, 2000, 53, 30, "Print",ExpressionUUID->"728ec48b-6368-45f0-8a84-8b1dd8f09c22"],
Cell[7689, 218, 535, 11, 26, "Print",ExpressionUUID->"ac76dd12-2cc6-4384-b95b-0c83576be9e5"],
Cell[8227, 231, 580, 13, 26, "Print",ExpressionUUID->"2e2c2719-9e94-461b-98a6-a4a8a3296209"],
Cell[8810, 246, 2187, 60, 30, "Print",ExpressionUUID->"3e5440f4-00c5-464b-9b78-fb6be5100da1"],
Cell[11000, 308, 475, 10, 26, "Print",ExpressionUUID->"a342db52-e0df-464d-b368-a8f3158277d7"],
Cell[11478, 320, 511, 11, 26, "Print",ExpressionUUID->"5e74e839-d87e-43b2-bcf0-34c55e4d27ef"],
Cell[11992, 333, 366, 7, 24, "Print",ExpressionUUID->"27d532c4-d983-4342-a755-b88a17dc1776"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[12407, 346, 631, 15, 110, "Code",ExpressionUUID->"6b7d363f-1233-45c8-ae6c-ac17b9697a63"],
Cell[13041, 363, 903, 18, 28, "Message",ExpressionUUID->"c343c158-980c-4287-ac81-a518b9f00748"],
Cell[13947, 383, 918, 18, 28, "Message",ExpressionUUID->"5043e96f-55b4-411c-9e57-51556539739b"],
Cell[14868, 403, 895, 18, 28, "Message",ExpressionUUID->"f8d9d1d4-ceeb-4350-9292-bd5ea888668d"]
}, Open  ]],
Cell[15778, 424, 844, 19, 74, "Code",ExpressionUUID->"23931d7f-ad44-4610-8d4c-c7c6b790e291"],
Cell[16625, 445, 280, 6, 35, "Text",ExpressionUUID->"2c3dcbb5-cb15-499f-91c9-0fa555aa3481"],
Cell[16908, 453, 713, 17, 72, "Code",ExpressionUUID->"ec1ec681-02a6-4f75-ae0b-93e701f20953"]
}, Open  ]],
Cell[CellGroupData[{
Cell[17658, 475, 187, 3, 67, "Section",ExpressionUUID->"de1cf370-826a-4fec-94c7-8bd3b439fec8"],
Cell[17848, 480, 152, 3, 35, "Text",ExpressionUUID->"f9dd814d-eaea-4893-9062-06a16e5dfd0a"],
Cell[18003, 485, 5537, 136, 764, "Code",ExpressionUUID->"7aa5f023-b882-4a7b-b7f2-4dc439a8d775"],
Cell[23543, 623, 2125, 58, 326, "Code",ExpressionUUID->"425ab9c2-8ccf-4c51-a29c-f2a0b75c97bd"],
Cell[CellGroupData[{
Cell[25693, 685, 2305, 52, 154, "Code",ExpressionUUID->"8bc98a4c-f87d-4446-9a5d-3d964d4e8f14"],
Cell[CellGroupData[{
Cell[28023, 741, 58457, 1315, 264, "Print",ExpressionUUID->"d448e068-1dfd-4a13-9b97-bf6520eddd64"],
Cell[86483, 2058, 59390, 1330, 264, "Print",ExpressionUUID->"f584becd-3f54-490d-afe7-4d29d6f2c2c8"],
Cell[145876, 3390, 54267, 1227, 264, "Print",ExpressionUUID->"78e11a7b-459a-43a3-8b96-4747e573c6a2"],
Cell[200146, 4619, 51618, 1182, 264, "Print",ExpressionUUID->"687f51d7-7932-4f51-80b6-ff30b4ef80e8"],
Cell[251767, 5803, 51967, 1180, 264, "Print",ExpressionUUID->"f4c10e66-7e93-4c37-beef-53c950db9503"],
Cell[303737, 6985, 55190, 1249, 264, "Print",ExpressionUUID->"b794eec0-9522-43ad-b203-3c6eb5dfa0a6"],
Cell[358930, 8236, 30362, 680, 264, "Print",ExpressionUUID->"8ed83cc0-56bd-46c1-a1af-03da979397cb"]
}, Open  ]]
}, Open  ]],
Cell[389319, 8920, 1906, 45, 154, "Code",ExpressionUUID->"09a82225-0c8f-4dfe-8d39-af2f28976bbf"],
Cell[391228, 8967, 160, 3, 35, "Text",ExpressionUUID->"239dabcc-702d-4ccf-a9e3-a4b4ef367fac"],
Cell[391391, 8972, 1001, 23, 165, "Code",ExpressionUUID->"75ce592a-f6e6-4082-8f2b-d6cd47f61df7"],
Cell[CellGroupData[{
Cell[392417, 8999, 1962, 39, 278, "Code",ExpressionUUID->"4391997c-a84f-487d-a4a7-cdaba46faaad"],
Cell[394382, 9040, 622, 13, 44, "Message",ExpressionUUID->"e2146fe6-03f0-401f-8809-b4bab3d58f6a"]
}, Open  ]],
Cell[395019, 9056, 3712, 88, 267, "Code",ExpressionUUID->"6839c5f6-745f-4eb3-b3ea-2ade6763fe1e"],
Cell[CellGroupData[{
Cell[398756, 9148, 252, 5, 51, "Code",ExpressionUUID->"b2c9cc9b-399e-451c-825a-9ffb3f90399c"],
Cell[399011, 9155, 167492, 5176, 959, "Output",ExpressionUUID->"5013bcbb-6f4f-4d79-9043-ac861ee08e00"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[566552, 14337, 166, 3, 67, "Section",ExpressionUUID->"5c9e78ca-a404-4924-944c-bc2ca7ce7488"],
Cell[566721, 14342, 152, 3, 35, "Text",ExpressionUUID->"38ca45e2-7bd8-43b2-b84c-01cc954115a6"],
Cell[566876, 14347, 891, 21, 53, "Code",ExpressionUUID->"7abb9bf4-d86c-40e5-9a8d-f9ed02a2565e"],
Cell[CellGroupData[{
Cell[567792, 14372, 2333, 64, 111, "Code",ExpressionUUID->"71be93d0-851a-466b-a4c7-b3d3a61b064e"],
Cell[570128, 14438, 186, 3, 32, "Output",ExpressionUUID->"0c40d423-869a-4790-b54f-37cc8c8764cd"]
}, Open  ]],
Cell[CellGroupData[{
Cell[570351, 14446, 2590, 56, 177, "Code",ExpressionUUID->"be69b1d5-fad8-4d65-8f73-43e20dae31b3"],
Cell[572944, 14504, 1060, 33, 59, "Output",ExpressionUUID->"4c3f8c6d-752e-4603-b8ac-2328bc067f96"]
}, Open  ]],
Cell[CellGroupData[{
Cell[574041, 14542, 239, 5, 29, "Input",ExpressionUUID->"9b05bccb-371b-4a93-b654-07f4ceeef0d8"],
Cell[574283, 14549, 9925, 319, 118, "Output",ExpressionUUID->"598faf40-3e5a-41a2-990d-b231b4ce3dd2"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

