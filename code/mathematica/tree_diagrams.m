(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 14.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    291443,       8078]
NotebookOptionsPosition[    282780,       7943]
NotebookOutlinePosition[    283181,       7959]
CellTagsIndexPosition[    283138,       7956]
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
 RowBox[{
  RowBox[{"FAPatch", "[", 
   RowBox[{"PatchModelsOnly", "->", "True"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{
  3.91447635123787*^9, {3.914476624408684*^9, 3.9144766387867937`*^9}, 
   3.914478375354082*^9, 3.914485345161674*^9, {3.914485624539702*^9, 
   3.914485650913145*^9}, {3.914645459925461*^9, 3.914645460086473*^9}},
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
 CellChangeTimes->{
  3.914498555860693*^9, 3.914498779206311*^9, 3.91455839365649*^9, 
   3.9146454949355097`*^9, 3.914648667469473*^9, 3.9146487722757998`*^9, 
   3.914648858043035*^9, 3.914648888808666*^9, 3.914649194867984*^9, {
   3.914649355453681*^9, 3.914649384228929*^9}, {3.914649421114738*^9, 
   3.914649449169422*^9}, 3.914746631763858*^9, 3.914747074038803*^9, 
   3.914747454922596*^9, 3.914747587530426*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"be25250b-df91-42f4-ac42-671021e507c3"],

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
  3.914498555860693*^9, 3.914498779206311*^9, 3.91455839365649*^9, 
   3.9146454949355097`*^9, 3.914648667469473*^9, 3.9146487722757998`*^9, 
   3.914648858043035*^9, 3.914648888808666*^9, 3.914649194867984*^9, {
   3.914649355453681*^9, 3.914649384228929*^9}, {3.914649421114738*^9, 
   3.914649449169422*^9}, 3.914746631763858*^9, 3.914747074038803*^9, 
   3.914747454922596*^9, 3.914747587535097*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"cd854c1b-434c-4f3b-bfd7-f178051d53b4"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynCalc in your research, please evaluate \
FeynCalcHowToCite[] to learn how to cite this software.\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{
  3.914498555860693*^9, 3.914498779206311*^9, 3.91455839365649*^9, 
   3.9146454949355097`*^9, 3.914648667469473*^9, 3.9146487722757998`*^9, 
   3.914648858043035*^9, 3.914648888808666*^9, 3.914649194867984*^9, {
   3.914649355453681*^9, 3.914649384228929*^9}, {3.914649421114738*^9, 
   3.914649449169422*^9}, 3.914746631763858*^9, 3.914747074038803*^9, 
   3.914747454922596*^9, 3.9147475875366697`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"6fdfc9fd-5363-49ec-8ae5-bff60d071012"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"Please keep in mind that the proper academic attribution of \
our work is crucial to ensure the future development of this package!\"\>", 
   "Text",
   StripOnInput->False,
   FontSlant->Italic], TraditionalForm]], "Print",
 CellChangeTimes->{
  3.914498555860693*^9, 3.914498779206311*^9, 3.91455839365649*^9, 
   3.9146454949355097`*^9, 3.914648667469473*^9, 3.9146487722757998`*^9, 
   3.914648858043035*^9, 3.914648888808666*^9, 3.914649194867984*^9, {
   3.914649355453681*^9, 3.914649384228929*^9}, {3.914649421114738*^9, 
   3.914649449169422*^9}, 3.914746631763858*^9, 3.914747074038803*^9, 
   3.914747454922596*^9, 3.914747587538197*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"a382ed8e-4de9-4270-984d-6468f5b1e9b1"],

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
  3.914498555860693*^9, 3.914498779206311*^9, 3.91455839365649*^9, 
   3.9146454949355097`*^9, 3.914648667469473*^9, 3.9146487722757998`*^9, 
   3.914648858043035*^9, 3.914648888808666*^9, 3.914649194867984*^9, {
   3.914649355453681*^9, 3.914649384228929*^9}, {3.914649421114738*^9, 
   3.914649449169422*^9}, 3.914746631763858*^9, 3.914747074038803*^9, 
   3.914747454922596*^9, 3.914747587720737*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"49626044-f69f-4f40-aeca-9b421389aa6a"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynArts in your research, please cite\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{
  3.914498555860693*^9, 3.914498779206311*^9, 3.91455839365649*^9, 
   3.9146454949355097`*^9, 3.914648667469473*^9, 3.9146487722757998`*^9, 
   3.914648858043035*^9, 3.914648888808666*^9, 3.914649194867984*^9, {
   3.914649355453681*^9, 3.914649384228929*^9}, {3.914649421114738*^9, 
   3.914649449169422*^9}, 3.914746631763858*^9, 3.914747074038803*^9, 
   3.914747454922596*^9, 3.914747587722548*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"777fa876-49ae-4667-a556-8ba50d0dc711"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\" \[Bullet] T. Hahn, Comput. Phys. Commun., 140, 418-431, \
2001, arXiv:hep-ph/0012260\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{
  3.914498555860693*^9, 3.914498779206311*^9, 3.91455839365649*^9, 
   3.9146454949355097`*^9, 3.914648667469473*^9, 3.9146487722757998`*^9, 
   3.914648858043035*^9, 3.914648888808666*^9, 3.914649194867984*^9, {
   3.914649355453681*^9, 3.914649384228929*^9}, {3.914649421114738*^9, 
   3.914649449169422*^9}, 3.914746631763858*^9, 3.914747074038803*^9, 
   3.914747454922596*^9, 3.9147475877240868`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"5902615e-19a3-42bd-90e8-662f6092e7ad"],

Cell["Successfully patched FeynArts.", "Print",
 CellChangeTimes->{
  3.914498555860693*^9, 3.914498779206311*^9, 3.91455839365649*^9, 
   3.9146454949355097`*^9, 3.914648667469473*^9, 3.9146487722757998`*^9, 
   3.914648858043035*^9, 3.914648888808666*^9, 3.914649194867984*^9, {
   3.914649355453681*^9, 3.914649384228929*^9}, {3.914649421114738*^9, 
   3.914649449169422*^9}, 3.914746631763858*^9, 3.914747074038803*^9, 
   3.914747454922596*^9, 3.914747587886881*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"61e45770-aef2-4a14-9545-0a817c7f03d2"]
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
or be shadowed by other definitions.\"", 2, 11, 1, 24943503992975575165, 
    "Local", "FeynCalc`Index"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.914649356281275*^9, 3.914649422030838*^9, 
  3.914746632585495*^9, 3.9147470748893633`*^9, 3.9147474557912273`*^9, 
  3.914747588472167*^9},
 CellLabel->
  "During evaluation of \
In[9]:=",ExpressionUUID->"19590211-b994-4780-8ee6-e4b828c3d2d1"],

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
or be shadowed by other definitions.\"", 2, 11, 2, 24943503992975575165, 
    "Local", "FeynCalc`IndexDelta"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.914649356281275*^9, 3.914649422030838*^9, 
  3.914746632585495*^9, 3.9147470748893633`*^9, 3.9147474557912273`*^9, 
  3.914747588570681*^9},
 CellLabel->
  "During evaluation of \
In[9]:=",ExpressionUUID->"d3b85fcd-2f62-4a64-81a0-9c2f17ad7447"],

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
     3, 24943503992975575165, "Local", "CalcTools`CT"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.914649356281275*^9, 3.914649422030838*^9, 
  3.914746632585495*^9, 3.9147470748893633`*^9, 3.9147474557912273`*^9, 
  3.9147475886782637`*^9},
 CellLabel->
  "During evaluation of \
In[9]:=",ExpressionUUID->"6fb9a21b-5a93-48f8-b601-9d4a63614686"]
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
  3.914476809872698*^9, {3.914645528516932*^9, 3.9146455483679953`*^9}, {
   3.9146488212301197`*^9, 3.914648837653592*^9}, {3.9146491334379883`*^9, 
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
 CellChangeTimes->{{3.914478753744731*^9, 3.914478767565071*^9}, {
   3.914479046893564*^9, 3.914479060360236*^9}, 3.9144823523657007`*^9, {
   3.91448448681479*^9, 3.914484511932325*^9}, {3.914484692111766*^9, 
   3.914484717513994*^9}, 3.914485419236744*^9, 3.914485685966173*^9, 
   3.914498789979301*^9, 3.914558405006936*^9, 3.914645505978258*^9, 
   3.9146486783235817`*^9, 3.914648784040556*^9, 3.914648899777529*^9, 
   3.914649207098235*^9, 3.914649366494019*^9, 3.91464943209479*^9, 
   3.914746642606845*^9, 3.914747095902493*^9, 3.914747465784618*^9, 
   3.914747598465447*^9},
 CellLabel->
  "During evaluation of \
In[14]:=",ExpressionUUID->"10ee1a61-81ce-456e-baf5-133cc345abb3"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"M0", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"FCFAConvert", "[", "\[IndentingNewLine]", "\t", 
      RowBox[{
       RowBox[{"CreateFeynAmp", "[", "treeDiagrams", "]"}], ",", " ", 
       "\[IndentingNewLine]", "\t", 
       RowBox[{"IncomingMomenta", "->", 
        RowBox[{"{", 
         RowBox[{"ki", ",", "kj"}], "}"}]}], ",", " ", 
       RowBox[{"OutgoingMomenta", "->", 
        RowBox[{"{", 
         RowBox[{"pi", ",", "pj"}], "}"}]}], ",", "\[IndentingNewLine]", "\t", 
       RowBox[{"ChangeDimension", "->", "D"}], ",", "\[IndentingNewLine]", 
       "\t", 
       RowBox[{"UndoChiralSplittings", "->", "True"}], ",", 
       "\[IndentingNewLine]", "\t", 
       RowBox[{"List", "->", "True"}], ",", "\[IndentingNewLine]", "\t", 
       RowBox[{"SMP", "->", "True"}], ",", "\[IndentingNewLine]", "\t", 
       RowBox[{"DropSumOver", "->", "True"}], ",", "\[IndentingNewLine]", 
       "\t", 
       RowBox[{"LorentzIndexNames", "->", 
        RowBox[{"{", 
         RowBox[{"\[Mu]", ",", "\[Nu]"}], "}"}]}]}], "\[IndentingNewLine]", 
      "]"}], "/.", "AmpSimplifyRules"}], "/.", 
    RowBox[{"{", 
     RowBox[{"IndexDelta", "->", "FeynCalc`IndexDelta"}], "}"}]}]}], 
  ";"}]], "Code",
 CellChangeTimes->{{3.914476857258984*^9, 3.9144768622636633`*^9}, 
   3.9144777990256243`*^9, 3.914478757914375*^9, {3.914482167437733*^9, 
   3.914482189235042*^9}, {3.914483193508616*^9, 3.914483216979*^9}},
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
 "Save results in \[OpenCurlyDoubleQuote]results/LO/amps.txt\
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
  3.914484891715801*^9}, {3.914498943451861*^9, 
  3.914498949188916*^9}},ExpressionUUID->"ad4451d8-dd8b-43c5-875a-\
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
 CellChangeTimes->{{3.914478760210597*^9, 3.914478773009644*^9}, {
   3.914479053103871*^9, 3.914479065733947*^9}, 3.914482357941148*^9, {
   3.91448449290193*^9, 3.914484518009025*^9}, {3.9144846981059647`*^9, 
   3.9144847235766077`*^9}, 3.914485449653908*^9, 3.9144856915838184`*^9, 
   3.914498795539008*^9, 3.914558412094398*^9, 3.9146455150073433`*^9, 
   3.914648686579914*^9, 3.914648793699481*^9, 3.914648907117113*^9, 
   3.914649266167843*^9, 3.914649372231409*^9, 3.914649437659721*^9, 
   3.914746648458725*^9, 3.914747101468267*^9, 3.9147474712860317`*^9, 
   3.914747604238474*^9},
 CellLabel->"Out[47]=",ExpressionUUID->"344318fa-7532-4a42-a516-12dd615be79f"]
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
  3.9144824896031504`*^9}},ExpressionUUID->"9857bd9e-f705-4970-8451-\
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
     RowBox[{"Q", "(", "1584", ")"}],
     HoldForm], " ", "s", " ", 
    SubscriptBox["m", "i"], " ", 
    SubscriptBox["m", "j"]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"Q", "(", "1594", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"t", " ", "u"}], "-", 
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"Q", "(", "1589", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{"t", "-", 
      SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{"t", "-", 
      SubsuperscriptBox["m", "j", "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"Q", "(", "1591", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{"u", "-", 
      SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{"u", "-", 
      SubsuperscriptBox["m", "j", "2"]}], ")"}]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.914482500233591*^9, {3.914484493152771*^9, 3.91448451809126*^9}, {
   3.9144846984305353`*^9, 3.914484723629249*^9}, 3.914485454393323*^9, 
   3.914485691756336*^9, 3.914498795813009*^9, 3.914558412415923*^9, 
   3.9146455194621763`*^9, 3.914648691257464*^9, 3.9146487992548523`*^9, 
   3.914648908934621*^9, 3.914649296644641*^9, 3.914649372500475*^9, 
   3.91464943783464*^9, 3.9147466487124157`*^9, 3.9147471016491547`*^9, 
   3.914747471473137*^9, 3.9147476044210997`*^9},
 CellLabel->"Out[50]=",ExpressionUUID->"be1bb05d-46e4-41a9-a678-82e6b2e188bb"]
}, Open  ]],

Cell["\<\
Calculate the total differential cross section and save to \
\[OpenCurlyDoubleQuote]results/LO/dxsec.txt\[CloseCurlyDoubleQuote]\
\>", "Text",
 CellChangeTimes->{{3.9144825090944147`*^9, 
  3.91448258283004*^9}},ExpressionUUID->"6fead36b-cfbc-43d7-a66f-\
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
  RowBox[{"DiffXSec", " ", "=", " ", 
   RowBox[{
    RowBox[{
     FractionBox["CommonPrefactor", 
      RowBox[{"64", " ", 
       SuperscriptBox[
        SubscriptBox["N", "C"], "2"], "\[Pi]", " ", 
       SuperscriptBox["s", "2"]}]], 
     RowBox[{"IdenticalPartFactor", "[", 
      RowBox[{"i", ",", "j"}], "]"}], 
     RowBox[{"Itot", "[", "1", "]"}]}], "/.", 
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
      RowBox[{"ResultsDir", ",", " ", "\"\<dxsec.txt\>\""}], "}"}], "]"}], 
    ",", " ", 
    RowBox[{
     RowBox[{"FullForm", "[", "DiffXSec", "]"}], "//", "ToString"}]}], "]"}], 
  ";"}]}], "Code",
 CellChangeTimes->{{3.914482658148389*^9, 3.914482716911396*^9}, {
   3.914483052358073*^9, 3.914483054964551*^9}, {3.9144832098075*^9, 
   3.914483217020318*^9}, {3.914484261058823*^9, 3.914484289117308*^9}, {
   3.914484407817083*^9, 3.914484425117964*^9}, {3.914484848879524*^9, 
   3.91448486664678*^9}, 3.914649051885324*^9},
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
             RowBox[{"L", 
              OverscriptBox["R", "_"]}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"L", 
                   OverscriptBox["R", "_"]}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "B", 
             RowBox[{"R", 
              OverscriptBox["L", "_"]}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", 
                   OverscriptBox["L", "_"]}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "B", 
             RowBox[{"L", 
              OverscriptBox["L", "_"]}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"L", 
                   OverscriptBox["L", "_"]}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "B", 
             RowBox[{"R", 
              OverscriptBox["R", "_"]}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", 
                   OverscriptBox["R", "_"]}]], ")"}]},
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
                 RowBox[{"L", 
                   OverscriptBox["L", "_"]}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Z", "s", "R"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", 
                   OverscriptBox["R", "_"]}]], ")"}]},
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
             RowBox[{"L", 
              OverscriptBox["L", "_"]}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", 
              OverscriptBox["R", "_"]}]], " ", 
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
             RowBox[{"L", 
              OverscriptBox["R", "_"]}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"L", 
                   OverscriptBox["R", "_"]}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", 
              OverscriptBox["L", "_"]}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"R", 
                   OverscriptBox["L", "_"]}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"L", 
              OverscriptBox["L", "_"]}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"L", 
                   OverscriptBox["L", "_"]}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", 
              OverscriptBox["R", "_"]}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"R", 
                   OverscriptBox["R", "_"]}]], ")"}]},
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
             RowBox[{"L", 
              OverscriptBox["L", "_"]}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", 
              OverscriptBox["R", "_"]}]], " ", 
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
                 RowBox[{"L", 
                   OverscriptBox["L", "_"]}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Z", "s", "R"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", 
                   OverscriptBox["R", "_"]}]], ")"}]},
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
                  RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], ")"}]},
              "Conjugate"]}], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"L", 
                   OverscriptBox["L", "_"]}]], ")"}]},
             "Conjugate"]}], "-", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", 
                   OverscriptBox["R", "_"]}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"R", 
                   OverscriptBox["R", "_"]}]], ")"}]},
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
              RowBox[{"L", 
               OverscriptBox["L", "_"]}]], " ", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"L", 
               OverscriptBox["L", "_"]}]]}]}], "-", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", 
              OverscriptBox["R", "_"]}]], " ", 
            SubsuperscriptBox["Q", "B", 
             RowBox[{"R", 
              OverscriptBox["R", "_"]}]]}]}], ")"}]}], "+", 
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
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"], " ", 
            RowBox[{"(", 
             RowBox[{"-", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], ")"}]},
               "Conjugate"]}], ")"}]}], "-", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "R"], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", 
                   OverscriptBox["R", "_"]}]], ")"}]},
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
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"], " ", 
            RowBox[{"(", 
             RowBox[{"-", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], ")"}]},
               "Conjugate"]}], ")"}]}], "-", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "R"], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", 
                   OverscriptBox["R", "_"]}]], ")"}]},
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
            SubsuperscriptBox["Z", "s", "L"], " ", 
            RowBox[{"(", 
             RowBox[{"-", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", 
                OverscriptBox["L", "_"]}]]}], ")"}]}], "-", 
           RowBox[{
            SubsuperscriptBox["Z", "s", "R"], " ", 
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", 
              OverscriptBox["R", "_"]}]]}]}], ")"}]}], "+", 
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
            SubsuperscriptBox["Z", "s", "L"], " ", 
            RowBox[{"(", 
             RowBox[{"-", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", 
                OverscriptBox["L", "_"]}]]}], ")"}]}], "-", 
           RowBox[{
            SubsuperscriptBox["Z", "s", "R"], " ", 
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", 
              OverscriptBox["R", "_"]}]]}]}], ")"}]}], "+", 
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
                 RowBox[{"R", 
                   OverscriptBox["L", "_"]}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"L", 
                   OverscriptBox["R", "_"]}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"L", 
                   OverscriptBox["R", "_"]}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "B", 
                 RowBox[{"R", 
                   OverscriptBox["L", "_"]}]], ")"}]},
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
             RowBox[{"R", 
              OverscriptBox["L", "_"]}]], " ", 
            SubsuperscriptBox["Q", "B", 
             RowBox[{"L", 
              OverscriptBox["R", "_"]}]]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"L", 
              OverscriptBox["R", "_"]}]], " ", 
            SubsuperscriptBox["Q", "B", 
             RowBox[{"R", 
              OverscriptBox["L", "_"]}]]}]}], ")"}]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.914649076546008*^9, 3.9146492997374496`*^9, 
  3.914649372625085*^9, 3.914649438029952*^9, 3.9147466488339148`*^9, 
  3.9147471018532248`*^9, 3.9147474717013483`*^9, 3.9147476046457872`*^9},
 CellLabel->"Out[52]=",ExpressionUUID->"aea08898-2227-43d6-9d3e-55c56de876b1"]
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
 CellLabel->"In[54]:=",ExpressionUUID->"397c4165-053c-4434-b0b3-1dc17d856bb6"],

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

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"ItotIntegrals", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{"ToTIntegrals", "[", 
    RowBox[{"Itot", "[", "2", "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"ItotIntegrals", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{"ReduceTIntegrals", "[", 
    RowBox[{"ItotIntegrals", "[", "0", "]"}], "]"}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.914483257605521*^9, 3.914483273965103*^9}, {
  3.914484854920312*^9, 3.9144848666512833`*^9}, {3.91464906239988*^9, 
  3.914649065848443*^9}},
 CellLabel->"In[55]:=",ExpressionUUID->"bf9d0b1a-94a4-4976-8666-fab9971a81ed"],

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
   RowBox[{"tIntegral", "[", "args__", "]"}], ",", " ", 
   RowBox[{"Factoring", " ", "->", " ", "GetKinematicCoefficients"}]}], 
  "]"}]], "Code",
 CellChangeTimes->{{3.914483284713757*^9, 3.914483290896813*^9}, {
  3.914558444408209*^9, 3.914558453002076*^9}},
 CellLabel->"In[57]:=",ExpressionUUID->"c3aa978d-ccf6-4348-9406-9146fd7afbd9"],

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
            RowBox[{"L", 
              OverscriptBox["L", "_"]}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"L", 
         OverscriptBox["L", "_"]}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", 
              OverscriptBox["R", "_"]}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"L", 
         OverscriptBox["R", "_"]}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", 
              OverscriptBox["L", "_"]}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"R", 
         OverscriptBox["L", "_"]}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", 
              OverscriptBox["R", "_"]}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"R", 
         OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
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
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
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
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}]}]}], ")"}], " ", 
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
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
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
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}]}], "+", 
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
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}]}]}], ")"}], " ", 
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
        RowBox[{"L", 
         OverscriptBox["L", "_"]}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Z", "s", "R"], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "A", 
        RowBox[{"R", 
         OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
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
        RowBox[{"L", 
         OverscriptBox["L", "_"]}]]}], "-", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Z", "s", "R"], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "A", 
        RowBox[{"R", 
         OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
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
           RowBox[{"R", 
            OverscriptBox["L", "_"]}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", 
            OverscriptBox["L", "_"]}]]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "j", "2"]}], "+", 
      RowBox[{"s", " ", 
       SubscriptBox["m", "i"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
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
               RowBox[{"R", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["L", "_"]}]], ")"}]},
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
               RowBox[{"L", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
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
               RowBox[{"L", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["L", "_"]}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
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
                RowBox[{"L", 
                  OverscriptBox["L", "_"]}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", "B", 
                RowBox[{"L", 
                  OverscriptBox["L", "_"]}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["L", "_"]}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}]}]}], ")"}], " ", 
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
            RowBox[{"R", 
             OverscriptBox["L", "_"]}]]}], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]]}], "-", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", 
            OverscriptBox["L", "_"]}]]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"]}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", 
             OverscriptBox["L", "_"]}]]}], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]]}], "-", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", 
            OverscriptBox["L", "_"]}]]}]}], ")"}]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["L", "_"]}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", 
            OverscriptBox["L", "_"]}]]}]}], ")"}]}]}], ")"}], " ", 
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
                RowBox[{"L", 
                  OverscriptBox["L", "_"]}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
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
                RowBox[{"L", 
                  OverscriptBox["L", "_"]}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}]}]}], ")"}], " ", 
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
                RowBox[{"R", 
                  OverscriptBox["L", "_"]}]], ")"}]},
            "Conjugate"]}], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["L", "_"]}]], ")"}]},
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
                RowBox[{"R", 
                  OverscriptBox["L", "_"]}]], ")"}]},
            "Conjugate"]}], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "j", "2"]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["L", "_"]}]], ")"}]},
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
                RowBox[{"L", 
                  OverscriptBox["L", "_"]}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
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
                RowBox[{"L", 
                  OverscriptBox["L", "_"]}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "+", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"L", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["R", "_"]}]]}], "+", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["L", "_"]}]]}], "+", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "B", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}]}]}], ")"}], " ", 
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
        RowBox[{"R", 
         OverscriptBox["L", "_"]}]], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"L", 
         OverscriptBox["R", "_"]}]]}], "+", 
      RowBox[{
       SubsuperscriptBox["Q", "A", 
        RowBox[{"L", 
         OverscriptBox["R", "_"]}]], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"R", 
         OverscriptBox["L", "_"]}]]}]}], ")"}], " ", 
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
            RowBox[{"L", 
              OverscriptBox["L", "_"]}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"L", 
         OverscriptBox["L", "_"]}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", 
              OverscriptBox["R", "_"]}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"L", 
         OverscriptBox["R", "_"]}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", 
              OverscriptBox["L", "_"]}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"R", 
         OverscriptBox["L", "_"]}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", 
              OverscriptBox["R", "_"]}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "B", 
        RowBox[{"R", 
         OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
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
            RowBox[{"R", 
              OverscriptBox["L", "_"]}]], ")"}]},
        "Conjugate"], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "B", 
            RowBox[{"L", 
              OverscriptBox["R", "_"]}]], ")"}]},
        "Conjugate"]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", 
              OverscriptBox["R", "_"]}]], ")"}]},
        "Conjugate"], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "B", 
            RowBox[{"R", 
              OverscriptBox["L", "_"]}]], ")"}]},
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
            RowBox[{"L", 
              OverscriptBox["L", "_"]}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "A", 
        RowBox[{"L", 
         OverscriptBox["L", "_"]}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "B", 
            RowBox[{"L", 
              OverscriptBox["R", "_"]}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "A", 
        RowBox[{"L", 
         OverscriptBox["R", "_"]}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "B", 
            RowBox[{"R", 
              OverscriptBox["L", "_"]}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "A", 
        RowBox[{"R", 
         OverscriptBox["L", "_"]}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "B", 
            RowBox[{"R", 
              OverscriptBox["R", "_"]}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", "A", 
        RowBox[{"R", 
         OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
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
             RowBox[{"L", 
               OverscriptBox["L", "_"]}]], ")"}]},
         "Conjugate"]}], " ", 
       SubsuperscriptBox["Z", "s", "L"]}], "-", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", 
              OverscriptBox["R", "_"]}]], ")"}]},
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
            RowBox[{"L", 
              OverscriptBox["L", "_"]}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Z", "s", "L"]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", 
              OverscriptBox["R", "_"]}]], ")"}]},
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
                RowBox[{"L", 
                  OverscriptBox["L", "_"]}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
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
                RowBox[{"L", 
                  OverscriptBox["L", "_"]}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
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
               RowBox[{"L", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
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
               RowBox[{"L", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "-", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
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
               RowBox[{"L", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
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
                RowBox[{"L", 
                  OverscriptBox["L", "_"]}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
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
               RowBox[{"L", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
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
               RowBox[{"L", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
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
               RowBox[{"L", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
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
                RowBox[{"L", 
                  OverscriptBox["L", "_"]}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
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
               RowBox[{"L", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
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
                RowBox[{"L", 
                  OverscriptBox["L", "_"]}]], ")"}]},
            "Conjugate"]}], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
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
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "j", "2"]}], "+", 
      RowBox[{"s", " ", 
       SubscriptBox["m", "i"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", 
             OverscriptBox["L", "_"]}]]}], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "-", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]], " ", 
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
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
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
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}], " ", "s"}], "+", 
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
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]], " ", 
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
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]]}]}], ")"}]}]}], ")"}]}], "+", 
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
 CellChangeTimes->{{3.914484493720383*^9, 3.914484518556458*^9}, {
   3.914484698990847*^9, 3.9144847237971687`*^9}, 3.91448547241474*^9, 
   3.914485692314289*^9, 3.914498796332947*^9, 3.914558413132754*^9, 
   3.914558455269787*^9, 3.9146455214302073`*^9, 3.914648692905779*^9, 
   3.914648801132287*^9, 3.914648910109209*^9, 3.914649310596814*^9, 
   3.914649373158991*^9, 3.9146494385606327`*^9, 3.91474664934448*^9, 
   3.914747102413485*^9, 3.9147474722174473`*^9, 3.9147476051935787`*^9},
 CellLabel->"Out[57]=",ExpressionUUID->"9e7b122a-ae75-44b7-9e59-72f48a88f163"]
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
      RowBox[{"QtuC", "[", "args1__", "]"}], 
      RowBox[{"QtuC", "[", "args2__", "]"}]}], ",", "\[IndentingNewLine]", 
     "\t", 
     RowBox[{
      RowBox[{"QtuC", "[", "args1__", "]"}], 
      RowBox[{
       RowBox[{"QtuC", "[", "args2__", "]"}], "\[Conjugate]"}]}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"QtuC", "[", "args1__", "]"}], "\[Conjugate]"}], 
      RowBox[{
       RowBox[{"QtuC", "[", "args2__", "]"}], "\[Conjugate]"}]}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"Zs", "[", "arg_", "]"}], 
      RowBox[{"QtuC", "[", "args__", "]"}]}], ",", "\[IndentingNewLine]", 
     "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"Zs", "[", "arg_", "]"}], "\[Conjugate]"}], 
      RowBox[{"QtuC", "[", "args__", "]"}]}], ",", "\[IndentingNewLine]", 
     "\t", 
     RowBox[{
      RowBox[{"Zs", "[", "arg_", "]"}], 
      RowBox[{
       RowBox[{"QtuC", "[", "args__", "]"}], "\[Conjugate]"}]}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"Zs", "[", "arg_", "]"}], "\[Conjugate]"}], 
      RowBox[{
       RowBox[{"QtuC", "[", "args__", "]"}], "\[Conjugate]"}]}]}], 
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
    RowBox[{"KK", "[", "arg_", "]"}]}], "\[IndentingNewLine]", 
   "]"}]}]}], "Code",
 CellChangeTimes->{{3.914483523956205*^9, 3.914483524421638*^9}, {
  3.914484854923531*^9, 3.9144848666552887`*^9}, {3.91448495271669*^9, 
  3.9144849853990383`*^9}},
 CellLabel->"In[58]:=",ExpressionUUID->"97bd251d-7201-44a6-91ee-7d1671fc69a9"],

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
  RowBox[{"ItotIntegrals", "[", "2", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{"Collect", "[", "\[IndentingNewLine]", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{"Collect2", "[", "\[IndentingNewLine]", "\t\t", 
       RowBox[{
        RowBox[{"FreeTIntegrals", "[", 
         RowBox[{"ItotIntegrals", "[", "0", "]"}], "]"}], ",", 
        "\[IndentingNewLine]", "\t\t", "t1", ",", "\[IndentingNewLine]", 
        "\t\t", "Simplify"}], "\[IndentingNewLine]", "\t", "]"}], "/.", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         SuperscriptBox["t1", "3"], "->", 
         RowBox[{
          SubsuperscriptBox["\[CapitalDelta]", "t", "\[Prime]\[Prime]"], "+", 
          
          SuperscriptBox["t0", "3"]}]}], ",", 
        RowBox[{
         SuperscriptBox["t1", "2"], "->", 
         RowBox[{
          SubsuperscriptBox["\[CapitalDelta]", "t", "\[Prime]"], "+", 
          SuperscriptBox["t0", "2"]}]}], ",", 
        RowBox[{
         SuperscriptBox["t1", "1"], "->", 
         RowBox[{
          SubscriptBox["\[CapitalDelta]", "t"], "+", "t0"}]}]}], "}"}]}], ",",
      "\[IndentingNewLine]", "\t", 
     RowBox[{"{", 
      RowBox[{
       SubscriptBox["\[CapitalDelta]", "t"], ",", 
       SubsuperscriptBox["\[CapitalDelta]", "t", "\[Prime]"], ",", 
       SubsuperscriptBox["\[CapitalDelta]", "t", "\[Prime]\[Prime]"], ",", 
       RowBox[{"Log", "[", "arg_", "]"}]}], "}"}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"Isolate", "[", 
        RowBox[{"#1", "//", "CollectEffCharges"}], "]"}], "&"}], ")"}]}], 
    "\[IndentingNewLine]", "]"}], "/.", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[CapitalDelta]", "t"], "->", 
      RowBox[{"t1", "-", "t0"}]}], ",", 
     RowBox[{
      SubsuperscriptBox["\[CapitalDelta]", "t", "\[Prime]"], "->", 
      RowBox[{
       SuperscriptBox["t1", "2"], "-", 
       SuperscriptBox["t0", "2"]}]}], ",", 
     RowBox[{
      SubsuperscriptBox["\[CapitalDelta]", "t", "\[Prime]\[Prime]"], "->", 
      RowBox[{
       SuperscriptBox["t1", "3"], "-", 
       SuperscriptBox["t0", "3"]}]}]}], "}"}]}]}]], "Code",
 CellChangeTimes->{{3.914483543976324*^9, 3.914483576762061*^9}, {
  3.914484854926929*^9, 3.914484866657395*^9}, {3.914484992758549*^9, 
  3.914484992979399*^9}},
 CellLabel->"In[60]:=",ExpressionUUID->"9185987c-c286-49a9-8e2c-abd135038383"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1744", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{"t1", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
        "Conjugate"]}], 
      RowBox[{"t0", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
        "Conjugate"]}]], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1698", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{"t1", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
        "Conjugate"]}], 
      RowBox[{"t0", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
        "Conjugate"]}]], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1719", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{"t1", "-", 
       SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], 
      RowBox[{"t0", "-", 
       SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}]], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1734", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{"t1", "-", 
       SubsuperscriptBox["\[CapitalDelta]", "A", "u"]}], 
      RowBox[{"t0", "-", 
       SubsuperscriptBox["\[CapitalDelta]", "A", "u"]}]], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1704", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{"t1", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
        "Conjugate"]}], 
      RowBox[{"t0", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
        "Conjugate"]}]], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1728", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{"t1", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
        "Conjugate"]}], 
      RowBox[{"t0", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["\[CapitalDelta]", "B", "u"], ")"}]},
        "Conjugate"]}]], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1749", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{"t1", "-", 
       SubsuperscriptBox["\[CapitalDelta]", "B", "u"]}], 
      RowBox[{"t0", "-", 
       SubsuperscriptBox["\[CapitalDelta]", "B", "u"]}]], ")"}]}], "+", 
   RowBox[{
    FractionBox["2", "3"], " ", 
    TagBox[
     RowBox[{"KK", "(", "1692", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox["t1", "3"], "-", 
      SuperscriptBox["t0", "3"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1691", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox["t1", "2"], "-", 
      SuperscriptBox["t0", "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1685", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{"t1", "-", "t0"}], ")"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.914484493980513*^9, 3.914484518911396*^9}, {
   3.914484699291248*^9, 3.914484724035016*^9}, 3.914485480433793*^9, 
   3.914485692541217*^9, 3.914498796556451*^9, 3.914558413476152*^9, 
   3.914645532189476*^9, 3.914648703536459*^9, 3.914648813316677*^9, 
   3.91464891262226*^9, 3.91464931727169*^9, 3.914649373425015*^9, 
   3.914649438822652*^9, 3.914746649620411*^9, 3.914747102721616*^9, 
   3.9147474725346403`*^9, 3.9147476055261087`*^9},
 CellLabel->"Out[60]=",ExpressionUUID->"cf63f535-c1a1-4d0e-a640-82a955043c42"]
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
     RowBox[{"Log", "[", 
      FractionBox[
       RowBox[{"t1", "-", 
        RowBox[{"tMass", "[", 
         RowBox[{"B", ",", "args__"}], "]"}]}], 
       RowBox[{"t0", "-", 
        RowBox[{"tMass", "[", 
         RowBox[{"B", ",", "args__"}], "]"}]}]], "]"}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{"Log", "[", 
      FractionBox[
       RowBox[{"t1", "-", 
        RowBox[{
         RowBox[{"tMass", "[", 
          RowBox[{"B", ",", "args__"}], "]"}], "\[Conjugate]"}]}], 
       RowBox[{"t0", "-", 
        RowBox[{
         RowBox[{"tMass", "[", 
          RowBox[{"B", ",", "args__"}], "]"}], "\[Conjugate]"}]}]], "]"}], 
     ",", "\[IndentingNewLine]", "\t", 
     RowBox[{"Log", "[", 
      FractionBox[
       RowBox[{"t1", "-", 
        RowBox[{
         RowBox[{"uMass", "[", 
          RowBox[{"B", ",", "args__"}], "]"}], "\[Conjugate]"}]}], 
       RowBox[{"t0", "-", 
        RowBox[{
         RowBox[{"uMass", "[", 
          RowBox[{"B", ",", "args__"}], "]"}], "\[Conjugate]"}]}]], "]"}], 
     ",", "\[IndentingNewLine]", "\t", 
     RowBox[{"Log", "[", 
      FractionBox[
       RowBox[{"t1", "-", 
        RowBox[{"uMass", "[", 
         RowBox[{"B", ",", "args__"}], "]"}]}], 
       RowBox[{"t0", "-", 
        RowBox[{"uMass", "[", 
         RowBox[{"B", ",", "args__"}], "]"}]}]], "]"}]}], 
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
     RowBox[{
      RowBox[{"t1", "-", "t0"}], ",", 
      RowBox[{
       RowBox[{"t1", "^", "2"}], "-", 
       RowBox[{"t0", "^", "2"}]}], ",", 
      RowBox[{
       RowBox[{"t1", "^", "3"}], "-", 
       RowBox[{"t0", "^", "3"}]}], ",", 
      RowBox[{"Log", "[", "arg_", "]"}]}], "}"}], ",", "\[IndentingNewLine]", 
    "\t", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"Isolate", "[", 
       RowBox[{"CollectEffCharges", "[", "#1", "]"}], "]"}], "&"}], ")"}]}], 
   "\[IndentingNewLine]", "]"}]}]}], "Code",
 CellChangeTimes->{{3.91448371611512*^9, 3.914483722539014*^9}, {
  3.914484854928886*^9, 3.91448486666013*^9}, {3.914484999523102*^9, 
  3.91448503414028*^9}},
 CellLabel->"In[61]:=",ExpressionUUID->"84fccf6c-3854-43dd-a418-82c19a1daeb5"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1752", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{"t1", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
        "Conjugate"]}], 
      RowBox[{"t0", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
        "Conjugate"]}]], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1759", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{"t1", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
        "Conjugate"]}], 
      RowBox[{"t0", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
        "Conjugate"]}]], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1719", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{"t1", "-", 
       SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], 
      RowBox[{"t0", "-", 
       SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}]], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1765", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{"t1", "-", 
       SubsuperscriptBox["\[CapitalDelta]", "A", "u"]}], 
      RowBox[{"t0", "-", 
       SubsuperscriptBox["\[CapitalDelta]", "A", "u"]}]], ")"}]}], "+", 
   RowBox[{
    FractionBox["2", "3"], " ", 
    TagBox[
     RowBox[{"KK", "(", "1692", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox["t1", "3"], "-", 
      SuperscriptBox["t0", "3"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1691", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox["t1", "2"], "-", 
      SuperscriptBox["t0", "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1685", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{"t1", "-", "t0"}], ")"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.914484494124779*^9, 3.914484519043518*^9}, {
   3.914484699460179*^9, 3.914484724184517*^9}, 3.914485483968416*^9, 
   3.9144856926636267`*^9, 3.91449879668112*^9, 3.914558413637429*^9, 
   3.91464553573523*^9, 3.9146487075408792`*^9, 3.9146488175236073`*^9, 
   3.9146489129965057`*^9, 3.914649320588759*^9, 3.914649373594419*^9, 
   3.914649438958949*^9, 3.9147466498345823`*^9, 3.914747102960116*^9, 
   3.91474747276615*^9, 3.91474760576022*^9},
 CellLabel->"Out[62]=",ExpressionUUID->"0788aaea-a782-4886-80f8-fcc61354011c"]
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
      RowBox[{
       RowBox[{"Collect", "[", "\[IndentingNewLine]", "\t\t", 
        RowBox[{
         RowBox[{"ItotIntegrals", "[", "3", "]"}], ",", "\[IndentingNewLine]",
          "\t\t", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"t1", "-", "t0"}], ",", 
           RowBox[{
            RowBox[{"t1", "^", "2"}], "-", 
            RowBox[{"t0", "^", "2"}]}], ",", 
           RowBox[{
            RowBox[{"t1", "^", "3"}], "-", 
            RowBox[{"t0", "^", "3"}]}], ",", 
           RowBox[{"Log", "[", "arg_", "]"}]}], "}"}], ",", 
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
         RowBox[{"Log", "[", "arg_", "]"}], "->", 
         RowBox[{"Log", "[", 
          RowBox[{"arg", "\[Conjugate]"}], "]"}]}], "}"}]}], "/.", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"Den", "[", 
          RowBox[{"p_", ",", "m_"}], "]"}], "\[Conjugate]"}], "->", 
        RowBox[{"Den", "[", 
         RowBox[{
          RowBox[{"p", "\[Conjugate]"}], ",", 
          RowBox[{"m", "\[Conjugate]"}]}], "]"}]}], "}"}]}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{"Assumptions", "->", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"t1", "\[Element]", "Reals"}], ",", 
        RowBox[{"t0", "\[Element]", "Reals"}], ",", 
        RowBox[{
         RowBox[{"MNeu", "[", "i_", "]"}], "\[Element]", "PositiveReals"}], 
        ",", 
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
      RowBox[{
       RowBox[{"t1", "-", "t0"}], ",", 
       RowBox[{
        RowBox[{"t1", "^", "2"}], "-", 
        RowBox[{"t0", "^", "2"}]}], ",", 
       RowBox[{
        RowBox[{"t1", "^", "3"}], "-", 
        RowBox[{"t0", "^", "3"}]}], ",", 
       RowBox[{"Log", "[", "arg_", "]"}]}], "}"}], ",", "\[IndentingNewLine]",
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
     RowBox[{"ItotIntegrals", "[", "3", "]"}], "]"}], ",", "\n", "\t", 
    RowBox[{"FRH", "[", 
     RowBox[{"ItotIntegralsC", "[", "1", "]"}], "]"}], ",", "\n", "\t", 
    RowBox[{"Text", "->", 
     RowBox[{"{", 
      RowBox[{
      "\"\<\\tResult is analytically real:\>\"", ",", "\"\<CORRECT.\>\"", 
       ",", "\"\<WRONG!\>\""}], "}"}]}], ",", 
    RowBox[{"Interrupt", "->", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Hold", "[", 
        RowBox[{"Quit", "[", "1", "]"}], "]"}], ",", "Automatic"}], "}"}]}]}],
    "\n", "]"}], ";"}]}], "Code",
 CellChangeTimes->{{3.9144838213496*^9, 3.914483885654633*^9}, {
  3.91448485493497*^9, 3.914484866666297*^9}, {3.914485039896947*^9, 
  3.914485043477662*^9}},
 CellLabel->"In[63]:=",ExpressionUUID->"a9c2b922-9999-415d-a638-4a936907ff55"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1752", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{"t1", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
        "Conjugate"]}], 
      RowBox[{"t0", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
        "Conjugate"]}]], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1759", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{"t1", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
        "Conjugate"]}], 
      RowBox[{"t0", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
        "Conjugate"]}]], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1719", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{"t1", "-", 
       SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], 
      RowBox[{"t0", "-", 
       SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}]], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1768", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{"t1", "-", 
       SubsuperscriptBox["\[CapitalDelta]", "A", "u"]}], 
      RowBox[{"t0", "-", 
       SubsuperscriptBox["\[CapitalDelta]", "A", "u"]}]], ")"}]}], "+", 
   RowBox[{
    FractionBox["2", "3"], " ", 
    TagBox[
     RowBox[{"KK", "(", "1692", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox["t1", "3"], "-", 
      SuperscriptBox["t0", "3"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1691", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox["t1", "2"], "-", 
      SuperscriptBox["t0", "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1685", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{"t1", "-", "t0"}], ")"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.914484494300458*^9, 3.914484519180289*^9}, {
   3.914484699606091*^9, 3.9144847243248568`*^9}, 3.914485486999487*^9, 
   3.914485692801999*^9, 3.914498796856138*^9, 3.914558413815362*^9, 
   3.914645535941214*^9, 3.91464870777057*^9, 3.914648817718239*^9, 
   3.914648913088944*^9, 3.914649324032831*^9, 3.914649373742021*^9, 
   3.914649439142467*^9, 3.914746649974533*^9, 3.9147471031153193`*^9, 
   3.914747472909813*^9, 3.9147476059059153`*^9},
 CellLabel->"Out[64]=",ExpressionUUID->"6968c060-f8a7-480b-8cc4-06f92ddea1a3"],

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
 CellChangeTimes->{{3.914484494324115*^9, 3.914484519244812*^9}, {
   3.914484699620557*^9, 3.914484724340644*^9}, 3.914485487028287*^9, 
   3.914485692816408*^9, 3.9144987968724203`*^9, 3.914558413833693*^9, 
   3.914645539133397*^9, 3.914648711356987*^9, 3.914648821038769*^9, 
   3.9146489188480473`*^9, 3.914649324062846*^9, 3.914649373756585*^9, 
   3.9146494391567183`*^9, 3.9147466500354967`*^9, 3.9147471031900454`*^9, 
   3.914747473002653*^9, 3.914747605990926*^9},
 CellLabel->
  "During evaluation of \
In[63]:=",ExpressionUUID->"5b031c1e-8920-4e64-8c0a-4ecf6c25fea1"]
}, Open  ]],

Cell["\<\
Now if the full, integrated squared amplitude is real, we can replace the \
complex log-terms with their real parts.\
\>", "Text",
 CellChangeTimes->{{3.914483893642917*^9, 
  3.914483927793371*^9}},ExpressionUUID->"d7b1fe24-c08d-4517-9539-\
93e5f5eeb6b9"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ItotIntegrals", "[", "4", "]"}], " ", "=", " ", 
  RowBox[{"ReplaceRepeated", "[", "\n", "\t", 
   RowBox[{
    RowBox[{"ItotIntegrals", "[", "3", "]"}], ",", "\n", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{"coeff_", "*", 
       RowBox[{"Log", "[", 
        FractionBox[
         RowBox[{"t1", "-", "a_"}], 
         RowBox[{"t0", "-", "a_"}]], "]"}]}], "+", 
      RowBox[{"coeffc_", "*", 
       RowBox[{"Log", "[", 
        FractionBox[
         RowBox[{"t1", "-", 
          RowBox[{"a_", "\[Conjugate]"}]}], 
         RowBox[{"t0", "-", 
          RowBox[{"a_", "\[Conjugate]"}]}]], "]"}]}]}], "->", 
     RowBox[{"2", 
      RowBox[{"Re", "[", 
       RowBox[{"coeff", "*", 
        RowBox[{"Log", "[", 
         FractionBox[
          RowBox[{"t1", "-", "a"}], 
          RowBox[{"t0", "-", "a"}]], "]"}]}], "]"}]}]}]}], "\n", 
   "]"}]}]], "Code",
 CellChangeTimes->{{3.914483933326947*^9, 3.914483985607267*^9}, {
  3.9144840339212027`*^9, 3.9144841391520357`*^9}, {3.914484854938463*^9, 
  3.914484866668542*^9}, {3.914485049311189*^9, 3.914485049713643*^9}},
 CellLabel->"In[66]:=",ExpressionUUID->"a8cd05b4-5749-429f-8a09-09100b2d1a24"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"2", " ", 
    RowBox[{"Re", "(", 
     RowBox[{
      TagBox[
       RowBox[{"KK", "(", "1719", ")"}],
       HoldForm], " ", 
      RowBox[{"log", "(", 
       FractionBox[
        RowBox[{"t1", "-", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], 
        RowBox[{"t0", "-", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}]], ")"}]}], ")"}]}], 
   "+", 
   RowBox[{"2", " ", 
    RowBox[{"Re", "(", 
     RowBox[{
      TagBox[
       RowBox[{"KK", "(", "1765", ")"}],
       HoldForm], " ", 
      RowBox[{"log", "(", 
       FractionBox[
        RowBox[{"t1", "-", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "u"]}], 
        RowBox[{"t0", "-", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "u"]}]], ")"}]}], ")"}]}], 
   "+", 
   RowBox[{
    FractionBox["2", "3"], " ", 
    TagBox[
     RowBox[{"KK", "(", "1692", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox["t1", "3"], "-", 
      SuperscriptBox["t0", "3"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1691", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox["t1", "2"], "-", 
      SuperscriptBox["t0", "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1685", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{"t1", "-", "t0"}], ")"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.914484494360888*^9, 3.914484519331463*^9}, {
   3.9144846996484423`*^9, 3.914484724368809*^9}, 3.914485490735549*^9, 
   3.914485692866278*^9, 3.914498796904716*^9, 3.91455841387717*^9, 
   3.914645539194703*^9, 3.914648711419799*^9, 3.914648821102644*^9, 
   3.914648918907728*^9, 3.914649373788991*^9, 3.914649439197041*^9, 
   3.914746650095997*^9, 3.914747103281004*^9, 3.914747473099317*^9, 
   3.914747606090808*^9},
 CellLabel->"Out[66]=",ExpressionUUID->"dfe9357d-d0c4-4a61-892a-688582b3dd88"]
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
  RowBox[{"DeltaSubs", " ", "=", " ", 
   RowBox[{"{", "\n", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{"tMass", "[", 
       RowBox[{"a_", ",", "args__"}], "]"}], "->", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"MSf", "[", 
         RowBox[{"a", ",", "args"}], "]"}], "2"], "-", 
       RowBox[{"\[ImaginaryI]", "*", 
        SubscriptBox["\[CapitalGamma]", "a"], 
        RowBox[{"MSf", "[", 
         RowBox[{"a", ",", "args"}], "]"}]}]}]}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{"uMass", "[", 
       RowBox[{"a_", ",", "args__"}], "]"}], "->", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"MNeu", "[", "i", "]"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "j", "]"}], "2"], "-", "s", "-", 
       SuperscriptBox[
        RowBox[{"MSf", "[", 
         RowBox[{"a", ",", "args"}], "]"}], "2"], "+", 
       RowBox[{"\[ImaginaryI]", "*", 
        SubscriptBox["\[CapitalGamma]", "a"], 
        RowBox[{"MSf", "[", 
         RowBox[{"a", ",", "args"}], "]"}]}]}]}], ",", "\n", "\t", 
     RowBox[{"DZ", "->", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], "2"], "-", 
       RowBox[{"\[ImaginaryI]", "*", 
        SubscriptBox["\[CapitalGamma]", "Z"], 
        RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}]}]}]}]}], "\n", "}"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"DeltaAssumptions", " ", "=", " ", 
    RowBox[{"{", "\n", "\t", 
     RowBox[{
      RowBox[{
       RowBox[{"MNeu", "[", "i_", "]"}], " ", "\[Element]", " ", 
       "PositiveReals"}], ",", "\n", "\t", 
      RowBox[{
       RowBox[{"MSf", "[", "args__", "]"}], " ", "\[Element]", " ", 
       "PositiveReals"}], ",", "\n", "\t", 
      RowBox[{
       RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], " ", "\[Element]", " ", 
       "PositiveReals"}], ",", "\n", "\t", 
      RowBox[{
       SubscriptBox["\[CapitalGamma]", "a_"], " ", "\[Element]", " ", 
       "PositiveReals"}], ",", "\n", "\t", 
      RowBox[{"s", " ", "\[Element]", " ", "PositiveReals"}]}], "\n", "}"}]}],
    ";"}], "\n"}], "\[IndentingNewLine]", 
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
       RowBox[{
        RowBox[{"t1", "-", "t0"}], ",", 
        RowBox[{
         RowBox[{"t1", "^", "2"}], "-", 
         RowBox[{"t0", "^", "2"}]}], ",", 
        RowBox[{
         RowBox[{"t1", "^", "3"}], "-", 
         RowBox[{"t0", "^", "3"}]}], ",", 
        RowBox[{"Log", "[", "arg_", "]"}]}], "}"}], ",", 
      "\[IndentingNewLine]", "\t", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"Simplify", "[", 
         RowBox[{
          RowBox[{"#1", "/.", "DeltaSubs"}], ",", 
          RowBox[{"Assumptions", "->", "DeltaAssumptions"}]}], "]"}], "&"}], 
       ")"}]}], "\[IndentingNewLine]", "]"}], "/.", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Den", "[", 
       RowBox[{"s_", ",", "m_"}], "]"}], "->", 
      RowBox[{"1", "/", 
       RowBox[{"(", 
        RowBox[{"s", "-", "m"}], ")"}]}]}], "}"}]}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.914484155179902*^9, 3.914484177250572*^9}, {
  3.9144848549436407`*^9, 3.914484866677045*^9}, {3.914485055021299*^9, 
  3.914485112529511*^9}},
 CellLabel->"In[67]:=",ExpressionUUID->"cf05098a-c654-4851-9767-0d7f27e0f162"],

Cell["\<\
Now  we  can  compute  the  total  cross  section  and write it to \
\[OpenCurlyDoubleQuote]reuslts/LO/xsec.txt\[CloseCurlyDoubleQuote]\
\>", "Text",
 CellChangeTimes->{{3.914484188373827*^9, 
  3.914484217035375*^9}},ExpressionUUID->"6477fda9-da4f-4eed-bd85-\
8b91789df1b9"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"TotXSec", " ", "=", " ", 
   RowBox[{"Simplify", "[", 
    RowBox[{
     RowBox[{"(", 
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
            SubscriptBox["\[Alpha]", "W"]}], "]"}]}]}], "}"}]}], ")"}], "*", 
     RowBox[{"ItotIntegrals", "[", "5", "]"}]}], "]"}]}], "\n"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"FileNameJoin", "[", 
     RowBox[{"{", 
      RowBox[{"ResultsDir", ",", " ", "\"\<xsec.txt\>\""}], "}"}], "]"}], ",",
     " ", 
    RowBox[{
     RowBox[{"FullForm", "[", "TotXSec", "]"}], "//", "ToString"}]}], "]"}], 
  ";"}]}], "Code",
 CellChangeTimes->{{3.914484227260388*^9, 3.914484241040538*^9}, {
   3.914484371319018*^9, 3.9144844019547167`*^9}, {3.914484543561909*^9, 
   3.914484544324559*^9}, 3.914484657861101*^9, {3.914484854948985*^9, 
   3.914484871848958*^9}, {3.914485115336622*^9, 3.914485115716895*^9}, 
   3.91451026857612*^9},
 CellLabel->"In[70]:=",ExpressionUUID->"cc067aff-7f1b-4d41-9980-5e2652cb2b8b"],

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
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["t0", "3"], "-", 
          SuperscriptBox["t1", "3"]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "L"]},
            "Abs"], "2"], "+", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "R"]},
            "Abs"], "2"]}], ")"}]}], 
       RowBox[{"3", " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["m", "Z", "4"], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["\[CapitalGamma]", "Z", "2"], "-", 
             RowBox[{"2", " ", "s"}]}], ")"}], " ", 
           SubsuperscriptBox["m", "Z", "2"]}], "+", 
          SuperscriptBox["s", "2"]}], ")"}]}]]}], "+", 
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"Re", "(", 
         RowBox[{
          RowBox[{"log", "(", 
           FractionBox[
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"]}], "+", 
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["\[CapitalGamma]", "A"], " ", 
              SubscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"]]}], "+", "t1"}], 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"]}], "+", 
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["\[CapitalGamma]", "A"], " ", 
              SubscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"]]}], "+", "t0"}]], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            FractionBox[
             RowBox[{"s", " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "B", 
                    RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"R", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "B", 
                    RowBox[{"R", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"]}]}], ")"}], " ", 
              SubscriptBox["m", "i"], " ", 
              SubscriptBox["m", "j"]}], 
             RowBox[{
              RowBox[{"-", 
               SubsuperscriptBox["m", "i", "2"]}], "-", 
              SubsuperscriptBox["m", "j", "2"], "+", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"], "+", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "B"], "2"], "+", "s", "-", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"]], " ", 
               SubscriptBox["\[CapitalGamma]", "A"]}], "+", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "B"]], " ", 
               SubscriptBox["\[CapitalGamma]", "B"]}]}]], "-", 
            FractionBox[
             RowBox[{"s", " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Z", "s", "L"], ")"}]},
                  "Conjugate"]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"R", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Z", "s", "R"], ")"}]},
                  "Conjugate"]}]}], ")"}], " ", 
              SubscriptBox["m", "i"], " ", 
              SubscriptBox["m", "j"]}], 
             RowBox[{"s", "-", 
              RowBox[{
               SubscriptBox["m", "Z"], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["m", "Z"], "+", 
                 RowBox[{"\[ImaginaryI]", " ", 
                  SubscriptBox["\[CapitalGamma]", "Z"]}]}], ")"}]}]}]], "+", 
            FractionBox[
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                SubsuperscriptBox["m", "i", "2"], "-", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
               ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                SubsuperscriptBox["m", "j", "2"], "-", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
               ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Z", "s", "L"]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"R", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], 
             RowBox[{"s", "-", 
              RowBox[{
               SubscriptBox["m", "Z"], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["m", "Z"], "+", 
                 RowBox[{"\[ImaginaryI]", " ", 
                  SubscriptBox["\[CapitalGamma]", "Z"]}]}], ")"}]}]}]], "-", 
            FractionBox[
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "B", 
                  RowBox[{"L", 
                   OverscriptBox["L", "_"]}]]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"L", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "B", 
                  RowBox[{"L", 
                   OverscriptBox["R", "_"]}]]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"R", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "B", 
                  RowBox[{"R", 
                   OverscriptBox["L", "_"]}]]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"R", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "B", 
                  RowBox[{"R", 
                   OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                SubsuperscriptBox["m", "i", "2"], "-", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
               ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}], "-", 
                SubsuperscriptBox["m", "j", "2"]}], ")"}]}], 
             RowBox[{
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"], "-", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["\[CapitalGamma]", "A"], " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"]]}], "-", 
              RowBox[{
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "B"]], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "B"]], "+", 
                 RowBox[{"\[ImaginaryI]", " ", 
                  SubscriptBox["\[CapitalGamma]", "B"]}]}], ")"}]}]}]], "+", 
            FractionBox[
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"R", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "B", 
                    RowBox[{"L", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"L", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "B", 
                    RowBox[{"R", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"]}]}], ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   SubsuperscriptBox["m", "j", "2"], "-", 
                   SubsuperscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"], "2"], "+", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}], " ", 
                 SubsuperscriptBox["m", "i", "2"]}], "+", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"-", 
                    SubsuperscriptBox["m", "j", "2"]}], "+", 
                   SubsuperscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"], "2"], "+", "s", "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
               ")"}]}], 
             RowBox[{
              RowBox[{"-", 
               SubsuperscriptBox["m", "i", "2"]}], "-", 
              SubsuperscriptBox["m", "j", "2"], "+", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"], "+", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "B"], "2"], "+", "s", "-", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"]], " ", 
               SubscriptBox["\[CapitalGamma]", "A"]}], "+", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "B"]], " ", 
               SubscriptBox["\[CapitalGamma]", "B"]}]}]]}], ")"}]}], ")"}], 
        "+", 
        RowBox[{"Re", "(", 
         RowBox[{
          RowBox[{"log", "(", 
           FractionBox[
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "i", "2"]}], "-", 
             SubsuperscriptBox["m", "j", "2"], "+", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], "+", "s", "+", "t1", "-", 
             
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"]], " ", 
              SubscriptBox["\[CapitalGamma]", "A"]}]}], 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "i", "2"]}], "-", 
             SubsuperscriptBox["m", "j", "2"], "+", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], "+", "s", "+", "t0", "-", 
             
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"]], " ", 
              SubscriptBox["\[CapitalGamma]", "A"]}]}]], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             FractionBox[
              RowBox[{"s", " ", 
               SubscriptBox["m", "i"], " ", 
               SubscriptBox["m", "j"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], " ", 
                  SubsuperscriptBox["Q", "B", 
                   RowBox[{"L", 
                    OverscriptBox["L", "_"]}]]}], "+", 
                 RowBox[{
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"R", 
                    OverscriptBox["R", "_"]}]], " ", 
                  SubsuperscriptBox["Q", "B", 
                   RowBox[{"R", 
                    OverscriptBox["R", "_"]}]]}]}], ")"}]}], 
              RowBox[{
               RowBox[{"-", 
                SubsuperscriptBox["m", "i", "2"]}], "-", 
               SubsuperscriptBox["m", "j", "2"], "+", 
               SubsuperscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"], "2"], "+", 
               SubsuperscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "B"], "2"], "+", "s", "-", 
               RowBox[{"\[ImaginaryI]", " ", 
                SubscriptBox["m", 
                 SubscriptBox[
                  OverscriptBox["q", "~"], "A"]], " ", 
                SubscriptBox["\[CapitalGamma]", "A"]}], "+", 
               RowBox[{"\[ImaginaryI]", " ", 
                SubscriptBox["m", 
                 SubscriptBox[
                  OverscriptBox["q", "~"], "B"]], " ", 
                SubscriptBox["\[CapitalGamma]", "B"]}]}]]}], "+", 
            FractionBox[
             RowBox[{"s", " ", 
              SubscriptBox["m", "i"], " ", 
              SubscriptBox["m", "j"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", 
                   OverscriptBox["L", "_"]}]], " ", 
                 SubsuperscriptBox["Z", "s", "L"]}], "+", 
                RowBox[{
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"R", 
                   OverscriptBox["R", "_"]}]], " ", 
                 SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], 
             RowBox[{"s", "-", 
              RowBox[{
               SubscriptBox["m", "Z"], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["m", "Z"], "+", 
                 RowBox[{"\[ImaginaryI]", " ", 
                  SubscriptBox["\[CapitalGamma]", "Z"]}]}], ")"}]}]}]], "+", 
            FractionBox[
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "B", 
                    RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", 
                   OverscriptBox["L", "_"]}]]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "B", 
                    RowBox[{"L", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", 
                   OverscriptBox["R", "_"]}]]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "B", 
                    RowBox[{"R", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"R", 
                   OverscriptBox["L", "_"]}]]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "B", 
                    RowBox[{"R", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"R", 
                   OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                SubsuperscriptBox["m", "j", "2"], "-", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
               ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}], "-", 
                SubsuperscriptBox["m", "i", "2"]}], ")"}]}], 
             RowBox[{
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"], "-", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["\[CapitalGamma]", "A"], " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"]]}], "-", 
              RowBox[{
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "B"]], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "B"]], "+", 
                 RowBox[{"\[ImaginaryI]", " ", 
                  SubscriptBox["\[CapitalGamma]", "B"]}]}], ")"}]}]}]], "-", 
            FractionBox[
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"R", 
                   OverscriptBox["L", "_"]}]], " ", 
                 SubsuperscriptBox["Q", "B", 
                  RowBox[{"L", 
                   OverscriptBox["R", "_"]}]]}], "+", 
                RowBox[{
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", 
                   OverscriptBox["R", "_"]}]], " ", 
                 SubsuperscriptBox["Q", "B", 
                  RowBox[{"R", 
                   OverscriptBox["L", "_"]}]]}]}], ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   SubsuperscriptBox["m", "j", "2"], "-", 
                   SubsuperscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"], "2"], "+", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}], " ", 
                 SubsuperscriptBox["m", "i", "2"]}], "+", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"-", 
                    SubsuperscriptBox["m", "j", "2"]}], "+", 
                   SubsuperscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"], "2"], "+", "s", "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
               ")"}]}], 
             RowBox[{
              RowBox[{"-", 
               SubsuperscriptBox["m", "i", "2"]}], "-", 
              SubsuperscriptBox["m", "j", "2"], "+", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"], "+", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "B"], "2"], "+", "s", "-", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"]], " ", 
               SubscriptBox["\[CapitalGamma]", "A"]}], "+", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "B"]], " ", 
               SubscriptBox["\[CapitalGamma]", "B"]}]}]], "+", 
            FractionBox[
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Z", "s", "L"], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", 
                   OverscriptBox["L", "_"]}]]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Z", "s", "R"], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"R", 
                   OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                SubsuperscriptBox["m", "j", "2"], "-", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
               ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}], "-", 
                SubsuperscriptBox["m", "i", "2"]}], ")"}]}], 
             RowBox[{"s", "-", 
              RowBox[{
               SubscriptBox["m", "Z"], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["m", "Z"], "+", 
                 RowBox[{"\[ImaginaryI]", " ", 
                  SubscriptBox["\[CapitalGamma]", "Z"]}]}], ")"}]}]}]]}], 
           ")"}]}], ")"}]}], ")"}]}], "-", 
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["t0", "2"], "-", 
         SuperscriptBox["t1", "2"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             SubsuperscriptBox["m", "i", "2"]}], "-", 
            SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}], " ", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "L"]},
            "Abs"], "2"]}], "+", 
         RowBox[{
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "R"]},
            "Abs"], "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             SubsuperscriptBox["m", "i", "2"]}], "-", 
            SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}], "-", 
         RowBox[{"\[ImaginaryI]", " ", 
          SubscriptBox["m", "Z"], " ", 
          SubscriptBox["\[CapitalGamma]", "Z"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Z", "s", "L"], ")"}]},
              "Conjugate"], " ", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", 
               OverscriptBox["L", "_"]}]]}], "+", 
            RowBox[{
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Z", "s", "R"], ")"}]},
              "Conjugate"], " ", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"R", 
               OverscriptBox["R", "_"]}]]}], "-", 
            RowBox[{
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], ")"}]},
              "Conjugate"], " ", 
             SubsuperscriptBox["Z", "s", "L"]}], "-", 
            RowBox[{
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"R", 
                    OverscriptBox["R", "_"]}]], ")"}]},
              "Conjugate"], " ", 
             SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}]}], ")"}]}], 
      RowBox[{
       SubsuperscriptBox["m", "Z", "4"], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["\[CapitalGamma]", "Z", "2"], "-", 
          RowBox[{"2", " ", "s"}]}], ")"}], " ", 
        SubsuperscriptBox["m", "Z", "2"]}], "+", 
       SuperscriptBox["s", "2"]}]], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"t1", "-", "t0"}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"R", 
                OverscriptBox["L", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"L", 
                OverscriptBox["R", "_"]}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"L", 
           OverscriptBox["R", "_"]}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"L", 
                OverscriptBox["R", "_"]}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", 
                OverscriptBox["R", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"R", 
                OverscriptBox["L", "_"]}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"L", 
                OverscriptBox["L", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "A", 
          RowBox[{"L", 
           OverscriptBox["L", "_"]}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"R", 
                OverscriptBox["L", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", 
           OverscriptBox["L", "_"]}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"R", 
                OverscriptBox["R", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", 
           OverscriptBox["R", "_"]}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", 
                OverscriptBox["L", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"L", 
           OverscriptBox["L", "_"]}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", 
                OverscriptBox["R", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"L", 
           OverscriptBox["R", "_"]}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", 
           OverscriptBox["L", "_"]}]], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"L", 
           OverscriptBox["R", "_"]}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"R", 
                OverscriptBox["L", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"R", 
           OverscriptBox["L", "_"]}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"L", 
           OverscriptBox["R", "_"]}]], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"R", 
           OverscriptBox["L", "_"]}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"R", 
                OverscriptBox["R", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"R", 
           OverscriptBox["R", "_"]}]]}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Q", "A", 
             RowBox[{"L", 
              OverscriptBox["L", "_"]}]]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "R"], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", 
              OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           FractionBox[
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], "-", 
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["\[CapitalGamma]", "A"], " ", 
              SubscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"]]}], "-", "s"}], 
            RowBox[{"s", "-", 
             RowBox[{
              SubscriptBox["m", "Z"], " ", 
              RowBox[{"(", 
               RowBox[{
                SubscriptBox["m", "Z"], "+", 
                RowBox[{"\[ImaginaryI]", " ", 
                 SubscriptBox["\[CapitalGamma]", "Z"]}]}], ")"}]}]}]], "-", 
           FractionBox[
            RowBox[{
             SubsuperscriptBox["m", "i", "2"], "+", 
             SubsuperscriptBox["m", "j", "2"], "-", 
             RowBox[{
              SubscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"]], " ", 
              RowBox[{"(", 
               RowBox[{
                SubscriptBox["m", 
                 SubscriptBox[
                  OverscriptBox["q", "~"], "A"]], "+", 
                RowBox[{"\[ImaginaryI]", " ", 
                 SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "Z", "2"]}], "+", 
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["\[CapitalGamma]", "Z"], " ", 
              SubscriptBox["m", "Z"]}], "+", "s"}]]}], ")"}]}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           FractionBox[
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], "+", 
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["\[CapitalGamma]", "A"], " ", 
              SubscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"]]}], "-", "s"}], 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "Z", "2"]}], "+", 
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["\[CapitalGamma]", "Z"], " ", 
              SubscriptBox["m", "Z"]}], "+", "s"}]], "-", 
           FractionBox[
            RowBox[{
             SubsuperscriptBox["m", "i", "2"], "+", 
             SubsuperscriptBox["m", "j", "2"], "-", 
             RowBox[{
              SubscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"]], " ", 
              RowBox[{"(", 
               RowBox[{
                SubscriptBox["m", 
                 SubscriptBox[
                  OverscriptBox["q", "~"], "A"]], "-", 
                RowBox[{"\[ImaginaryI]", " ", 
                 SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
            RowBox[{"s", "-", 
             RowBox[{
              SubscriptBox["m", "Z"], " ", 
              RowBox[{"(", 
               RowBox[{
                SubscriptBox["m", "Z"], "+", 
                RowBox[{"\[ImaginaryI]", " ", 
                 SubscriptBox["\[CapitalGamma]", "Z"]}]}], ")"}]}]}]]}], 
          ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"L", 
                   OverscriptBox["L", "_"]}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Z", "s", "L"]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", 
                   OverscriptBox["R", "_"]}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], "+", 
        FractionBox[
         RowBox[{
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"s", " ", 
              RowBox[{"(", 
               RowBox[{"s", "-", 
                SubsuperscriptBox["m", "j", "2"]}], ")"}]}], "-", 
             RowBox[{
              SubsuperscriptBox["m", "i", "2"], " ", 
              RowBox[{"(", 
               RowBox[{"s", "-", 
                RowBox[{"2", " ", 
                 SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}]}], ")"}], " ", 
           
           SuperscriptBox[
            TemplateBox[{
              SubsuperscriptBox["Z", "s", "L"]},
             "Abs"], "2"]}], "+", 
          RowBox[{
           SuperscriptBox[
            TemplateBox[{
              SubsuperscriptBox["Z", "s", "R"]},
             "Abs"], "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"s", " ", 
              RowBox[{"(", 
               RowBox[{"s", "-", 
                SubsuperscriptBox["m", "j", "2"]}], ")"}]}], "-", 
             RowBox[{
              SubsuperscriptBox["m", "i", "2"], " ", 
              RowBox[{"(", 
               RowBox[{"s", "-", 
                RowBox[{"2", " ", 
                 SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}]}], ")"}]}], 
          "-", 
          RowBox[{"s", " ", 
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
               SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}]}]}], 
         RowBox[{
          SubsuperscriptBox["m", "Z", "4"], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["\[CapitalGamma]", "Z", "2"], "-", 
             RowBox[{"2", " ", "s"}]}], ")"}], " ", 
           SubsuperscriptBox["m", "Z", "2"]}], "+", 
          SuperscriptBox["s", "2"]}]]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.914746660137521*^9, 3.914747113314426*^9, 
  3.914747482901773*^9, 3.914747616073457*^9},
 CellLabel->"Out[70]=",ExpressionUUID->"568b4ab6-8153-4e1f-93cc-56ce8449272e"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"TotXSec", " ", "//.", " ", 
  RowBox[{
   RowBox[{"QtuC", "[", "__", "]"}], " ", "->", " ", "0"}]}]], "Code",
 CellChangeTimes->{{3.914746521037242*^9, 3.9147465803835382`*^9}, {
  3.914746751972983*^9, 3.914746863375669*^9}, {3.91474733691922*^9, 
  3.914747340243932*^9}},
 CellLabel->"In[72]:=",ExpressionUUID->"119efc26-3621-4842-a9da-e214aeb673c1"],

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
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{"t1", "-", "t0"}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           SuperscriptBox[
            TemplateBox[{
              SubsuperscriptBox["Z", "s", "L"]},
             "Abs"], "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"s", " ", 
              RowBox[{"(", 
               RowBox[{"s", "-", 
                SubsuperscriptBox["m", "j", "2"]}], ")"}]}], "-", 
             RowBox[{
              SubsuperscriptBox["m", "i", "2"], " ", 
              RowBox[{"(", 
               RowBox[{"s", "-", 
                RowBox[{"2", " ", 
                 SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}]}], ")"}]}], 
          "+", 
          RowBox[{
           SuperscriptBox[
            TemplateBox[{
              SubsuperscriptBox["Z", "s", "R"]},
             "Abs"], "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"s", " ", 
              RowBox[{"(", 
               RowBox[{"s", "-", 
                SubsuperscriptBox["m", "j", "2"]}], ")"}]}], "-", 
             RowBox[{
              SubsuperscriptBox["m", "i", "2"], " ", 
              RowBox[{"(", 
               RowBox[{"s", "-", 
                RowBox[{"2", " ", 
                 SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}]}], ")"}]}], 
          "-", 
          RowBox[{"s", " ", 
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
               SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}]}]}], 
         ")"}]}], 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["m", "Z", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           SubsuperscriptBox["\[CapitalGamma]", "Z", "2"], "-", 
           RowBox[{"2", " ", "s"}]}], ")"}]}], "+", 
        SubsuperscriptBox["m", "Z", "4"], "+", 
        SuperscriptBox["s", "2"]}]], "-", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["t0", "2"], "-", 
          SuperscriptBox["t1", "2"]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           SuperscriptBox[
            TemplateBox[{
              SubsuperscriptBox["Z", "s", "L"]},
             "Abs"], "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "i", "2"]}], "-", 
             SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}], "+", 
          RowBox[{
           SuperscriptBox[
            TemplateBox[{
              SubsuperscriptBox["Z", "s", "R"]},
             "Abs"], "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "i", "2"]}], "-", 
             SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}]}], ")"}]}], 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["m", "Z", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           SubsuperscriptBox["\[CapitalGamma]", "Z", "2"], "-", 
           RowBox[{"2", " ", "s"}]}], ")"}]}], "+", 
        SubsuperscriptBox["m", "Z", "4"], "+", 
        SuperscriptBox["s", "2"]}]], "-", 
      FractionBox[
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["t0", "3"], "-", 
          SuperscriptBox["t1", "3"]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "L"]},
            "Abs"], "2"], "+", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "R"]},
            "Abs"], "2"]}], ")"}]}], 
       RowBox[{"3", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           SubsuperscriptBox["m", "Z", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["\[CapitalGamma]", "Z", "2"], "-", 
             RowBox[{"2", " ", "s"}]}], ")"}]}], "+", 
          SubsuperscriptBox["m", "Z", "4"], "+", 
          SuperscriptBox["s", "2"]}], ")"}]}]]}], ")"}]}], 
   RowBox[{
    SuperscriptBox["s", "2"], " ", 
    SubscriptBox["N", "C"]}]], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.91474711347139*^9, {3.9147474830782623`*^9, 3.914747483473358*^9}, 
   3.914747616276977*^9},
 CellLabel->"Out[72]=",ExpressionUUID->"3f827692-3202-4f1d-b02f-66a8c6354a64"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"TotXSec", " ", "//.", " ", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"Zs", "[", "_", "]"}], " ", "->", " ", "0"}], "}"}]}]], "Code",
 CellChangeTimes->{{3.914746873197792*^9, 3.9147468939449778`*^9}},
 CellLabel->"In[73]:=",ExpressionUUID->"0bc5fa96-2082-46ed-95ec-6a841ef74b66"],

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
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{"t1", "-", "t0"}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"R", 
                OverscriptBox["L", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"L", 
                OverscriptBox["R", "_"]}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"L", 
           OverscriptBox["R", "_"]}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"L", 
                OverscriptBox["R", "_"]}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", 
                OverscriptBox["R", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"R", 
                OverscriptBox["L", "_"]}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"L", 
                OverscriptBox["L", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "A", 
          RowBox[{"L", 
           OverscriptBox["L", "_"]}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"R", 
                OverscriptBox["L", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", 
           OverscriptBox["L", "_"]}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "B", 
              RowBox[{"R", 
                OverscriptBox["R", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", 
           OverscriptBox["R", "_"]}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", 
                OverscriptBox["L", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"L", 
           OverscriptBox["L", "_"]}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", 
                OverscriptBox["R", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"L", 
           OverscriptBox["R", "_"]}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", 
           OverscriptBox["L", "_"]}]], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"L", 
           OverscriptBox["R", "_"]}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"R", 
                OverscriptBox["L", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"R", 
           OverscriptBox["L", "_"]}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"L", 
           OverscriptBox["R", "_"]}]], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"R", 
           OverscriptBox["L", "_"]}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"R", 
                OverscriptBox["R", "_"]}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"R", 
           OverscriptBox["R", "_"]}]]}]}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"Re", "(", 
         RowBox[{
          RowBox[{"log", "(", 
           FractionBox[
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"]}], "+", 
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["\[CapitalGamma]", "A"], " ", 
              SubscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"]]}], "+", "t1"}], 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"]}], "+", 
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["\[CapitalGamma]", "A"], " ", 
              SubscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"]]}], "+", "t0"}]], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            FractionBox[
             RowBox[{"s", " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "B", 
                    RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"R", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "B", 
                    RowBox[{"R", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"]}]}], ")"}], " ", 
              SubscriptBox["m", "i"], " ", 
              SubscriptBox["m", "j"]}], 
             RowBox[{
              RowBox[{"-", 
               SubsuperscriptBox["m", "i", "2"]}], "-", 
              SubsuperscriptBox["m", "j", "2"], "+", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"], "+", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "B"], "2"], "+", "s", "-", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"]], " ", 
               SubscriptBox["\[CapitalGamma]", "A"]}], "+", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "B"]], " ", 
               SubscriptBox["\[CapitalGamma]", "B"]}]}]], "-", 
            FractionBox[
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "B", 
                  RowBox[{"L", 
                   OverscriptBox["L", "_"]}]]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"L", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "B", 
                  RowBox[{"L", 
                   OverscriptBox["R", "_"]}]]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"R", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "B", 
                  RowBox[{"R", 
                   OverscriptBox["L", "_"]}]]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"R", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "B", 
                  RowBox[{"R", 
                   OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                SubsuperscriptBox["m", "i", "2"], "-", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
               ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}], "-", 
                SubsuperscriptBox["m", "j", "2"]}], ")"}]}], 
             RowBox[{
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"], "-", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["\[CapitalGamma]", "A"], " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"]]}], "-", 
              RowBox[{
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "B"]], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "B"]], "+", 
                 RowBox[{"\[ImaginaryI]", " ", 
                  SubscriptBox["\[CapitalGamma]", "B"]}]}], ")"}]}]}]], "+", 
            FractionBox[
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"R", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "B", 
                    RowBox[{"L", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"L", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "B", 
                    RowBox[{"R", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"]}]}], ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   SubsuperscriptBox["m", "j", "2"], "-", 
                   SubsuperscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"], "2"], "+", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}], " ", 
                 SubsuperscriptBox["m", "i", "2"]}], "+", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"-", 
                    SubsuperscriptBox["m", "j", "2"]}], "+", 
                   SubsuperscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"], "2"], "+", "s", "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
               ")"}]}], 
             RowBox[{
              RowBox[{"-", 
               SubsuperscriptBox["m", "i", "2"]}], "-", 
              SubsuperscriptBox["m", "j", "2"], "+", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"], "+", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "B"], "2"], "+", "s", "-", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"]], " ", 
               SubscriptBox["\[CapitalGamma]", "A"]}], "+", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "B"]], " ", 
               SubscriptBox["\[CapitalGamma]", "B"]}]}]]}], ")"}]}], ")"}], 
        "+", 
        RowBox[{"Re", "(", 
         RowBox[{
          RowBox[{"log", "(", 
           FractionBox[
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "i", "2"]}], "-", 
             SubsuperscriptBox["m", "j", "2"], "+", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], "+", "s", "+", "t1", "-", 
             
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"]], " ", 
              SubscriptBox["\[CapitalGamma]", "A"]}]}], 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "i", "2"]}], "-", 
             SubsuperscriptBox["m", "j", "2"], "+", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], "+", "s", "+", "t0", "-", 
             
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"]], " ", 
              SubscriptBox["\[CapitalGamma]", "A"]}]}]], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             FractionBox[
              RowBox[{"s", " ", 
               SubscriptBox["m", "i"], " ", 
               SubscriptBox["m", "j"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], " ", 
                  SubsuperscriptBox["Q", "B", 
                   RowBox[{"L", 
                    OverscriptBox["L", "_"]}]]}], "+", 
                 RowBox[{
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"R", 
                    OverscriptBox["R", "_"]}]], " ", 
                  SubsuperscriptBox["Q", "B", 
                   RowBox[{"R", 
                    OverscriptBox["R", "_"]}]]}]}], ")"}]}], 
              RowBox[{
               RowBox[{"-", 
                SubsuperscriptBox["m", "i", "2"]}], "-", 
               SubsuperscriptBox["m", "j", "2"], "+", 
               SubsuperscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"], "2"], "+", 
               SubsuperscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "B"], "2"], "+", "s", "-", 
               RowBox[{"\[ImaginaryI]", " ", 
                SubscriptBox["m", 
                 SubscriptBox[
                  OverscriptBox["q", "~"], "A"]], " ", 
                SubscriptBox["\[CapitalGamma]", "A"]}], "+", 
               RowBox[{"\[ImaginaryI]", " ", 
                SubscriptBox["m", 
                 SubscriptBox[
                  OverscriptBox["q", "~"], "B"]], " ", 
                SubscriptBox["\[CapitalGamma]", "B"]}]}]]}], "+", 
            FractionBox[
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "B", 
                    RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", 
                   OverscriptBox["L", "_"]}]]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "B", 
                    RowBox[{"L", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", 
                   OverscriptBox["R", "_"]}]]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "B", 
                    RowBox[{"R", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"R", 
                   OverscriptBox["L", "_"]}]]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "B", 
                    RowBox[{"R", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"], " ", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"R", 
                   OverscriptBox["R", "_"]}]]}]}], ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                SubsuperscriptBox["m", "j", "2"], "-", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
               ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}], "-", 
                SubsuperscriptBox["m", "i", "2"]}], ")"}]}], 
             RowBox[{
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"], "-", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["\[CapitalGamma]", "A"], " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"]]}], "-", 
              RowBox[{
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "B"]], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "B"]], "+", 
                 RowBox[{"\[ImaginaryI]", " ", 
                  SubscriptBox["\[CapitalGamma]", "B"]}]}], ")"}]}]}]], "-", 
            FractionBox[
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"R", 
                   OverscriptBox["L", "_"]}]], " ", 
                 SubsuperscriptBox["Q", "B", 
                  RowBox[{"L", 
                   OverscriptBox["R", "_"]}]]}], "+", 
                RowBox[{
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", 
                   OverscriptBox["R", "_"]}]], " ", 
                 SubsuperscriptBox["Q", "B", 
                  RowBox[{"R", 
                   OverscriptBox["L", "_"]}]]}]}], ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   SubsuperscriptBox["m", "j", "2"], "-", 
                   SubsuperscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"], "2"], "+", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}], " ", 
                 SubsuperscriptBox["m", "i", "2"]}], "+", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"-", 
                    SubsuperscriptBox["m", "j", "2"]}], "+", 
                   SubsuperscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"], "2"], "+", "s", "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
               ")"}]}], 
             RowBox[{
              RowBox[{"-", 
               SubsuperscriptBox["m", "i", "2"]}], "-", 
              SubsuperscriptBox["m", "j", "2"], "+", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"], "+", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "B"], "2"], "+", "s", "-", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"]], " ", 
               SubscriptBox["\[CapitalGamma]", "A"]}], "+", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "B"]], " ", 
               SubscriptBox["\[CapitalGamma]", "B"]}]}]]}], ")"}]}], ")"}]}], 
       ")"}]}]}], ")"}], " ", 
   SubsuperscriptBox["\[Alpha]", "W", "2"]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.914747113570547*^9, 3.914747483180838*^9, 
  3.914747565618868*^9, 3.914747616381263*^9},
 CellLabel->"Out[73]=",ExpressionUUID->"e584b809-1a4e-4174-8918-a0809d46ce02"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"TotXSec", " ", "//.", " ", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"Zs", "[", "arg1_", "]"}], 
      RowBox[{"Zs", "[", "arg2_", "]"}]}], " ", "->", " ", "0"}], ",", " ", 
    RowBox[{
     RowBox[{"Abs", "[", 
      RowBox[{"Zs", "[", "arg1_", "]"}], "]"}], " ", "->", " ", "0"}], ",", 
    " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"Zs", "[", "arg1_", "]"}], "\[Conjugate]"}], 
      RowBox[{
       RowBox[{"Zs", "[", "arg2_", "]"}], "\[Conjugate]"}]}], " ", "->", " ", 
     "0"}], ",", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"QtuC", "[", "args1__", "]"}], 
      RowBox[{"QtuC", "[", "args2__", "]"}]}], " ", "->", " ", "0"}], ",", 
    " ", 
    RowBox[{
     RowBox[{
      RowBox[{"QtuC", "[", "args1__", "]"}], 
      RowBox[{
       RowBox[{"QtuC", "[", "args2__", "]"}], "\[Conjugate]"}]}], " ", "->", 
     " ", "0"}], ",", " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"QtuC", "[", "args1__", "]"}], "\[Conjugate]"}], 
      RowBox[{
       RowBox[{"QtuC", "[", "args2__", "]"}], "\[Conjugate]"}]}], " ", "->", 
     " ", "0"}]}], "}"}]}]], "Code",
 CellChangeTimes->{{3.914746916474818*^9, 3.9147469939103394`*^9}, {
  3.914747150386434*^9, 3.914747296680312*^9}, {3.91474734559478*^9, 
  3.914747404170086*^9}},
 CellLabel->"In[75]:=",ExpressionUUID->"32a9a206-aabb-41a4-9652-02a7dc12aae2"],

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
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"Re", "(", 
         RowBox[{
          RowBox[{"log", "(", 
           FractionBox[
            RowBox[{
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["\[CapitalGamma]", "A"], " ", 
              SubscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"]]}], "-", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], "+", "t1"}], 
            RowBox[{
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["\[CapitalGamma]", "A"], " ", 
              SubscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"]]}], "-", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], "+", "t0"}]], ")"}], " ", 
          
          RowBox[{"(", 
           RowBox[{
            FractionBox[
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                SubsuperscriptBox["m", "i", "2"], "-", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
               ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                SubsuperscriptBox["m", "j", "2"], "-", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
               ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SubsuperscriptBox["Z", "s", "L"], " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"]}], "+", 
                RowBox[{
                 SubsuperscriptBox["Z", "s", "R"], " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"R", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"]}]}], ")"}]}], 
             RowBox[{"s", "-", 
              RowBox[{
               SubscriptBox["m", "Z"], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["m", "Z"], "+", 
                 RowBox[{"\[ImaginaryI]", " ", 
                  SubscriptBox["\[CapitalGamma]", "Z"]}]}], ")"}]}]}]], "-", 
            FractionBox[
             RowBox[{"s", " ", 
              SubscriptBox["m", "i"], " ", 
              SubscriptBox["m", "j"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Z", "s", "L"], ")"}]},
                  "Conjugate"], " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"L", 
                    OverscriptBox["L", "_"]}]], ")"}]},
                  "Conjugate"]}], "+", 
                RowBox[{
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Z", "s", "R"], ")"}]},
                  "Conjugate"], " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Q", "A", 
                    RowBox[{"R", 
                    OverscriptBox["R", "_"]}]], ")"}]},
                  "Conjugate"]}]}], ")"}]}], 
             RowBox[{"s", "-", 
              RowBox[{
               SubscriptBox["m", "Z"], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["m", "Z"], "+", 
                 RowBox[{"\[ImaginaryI]", " ", 
                  SubscriptBox["\[CapitalGamma]", "Z"]}]}], ")"}]}]}]]}], 
           ")"}]}], ")"}], "+", 
        RowBox[{"Re", "(", 
         RowBox[{
          RowBox[{"log", "(", 
           FractionBox[
            RowBox[{
             RowBox[{"-", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["\[CapitalGamma]", "A"], " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"]]}]}], "+", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], "-", 
             SubsuperscriptBox["m", "i", "2"], "-", 
             SubsuperscriptBox["m", "j", "2"], "+", "s", "+", "t1"}], 
            RowBox[{
             RowBox[{"-", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["\[CapitalGamma]", "A"], " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"]]}]}], "+", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], "-", 
             SubsuperscriptBox["m", "i", "2"], "-", 
             SubsuperscriptBox["m", "j", "2"], "+", "s", "+", "t0"}]], ")"}], 
          " ", 
          RowBox[{"(", 
           RowBox[{
            FractionBox[
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", 
                 SubsuperscriptBox["m", "i", "2"]}], "+", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
               ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                SubsuperscriptBox["m", "j", "2"], "-", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], " ", 
                 RowBox[{"(", 
                  RowBox[{
                   SubscriptBox["m", 
                    SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], "-", 
                   RowBox[{"\[ImaginaryI]", " ", 
                    SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], 
               ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", 
                   OverscriptBox["L", "_"]}]], " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Z", "s", "L"], ")"}]},
                  "Conjugate"]}], "+", 
                RowBox[{
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"R", 
                   OverscriptBox["R", "_"]}]], " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Z", "s", "R"], ")"}]},
                  "Conjugate"]}]}], ")"}]}], 
             RowBox[{"s", "-", 
              RowBox[{
               SubscriptBox["m", "Z"], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["m", "Z"], "+", 
                 RowBox[{"\[ImaginaryI]", " ", 
                  SubscriptBox["\[CapitalGamma]", "Z"]}]}], ")"}]}]}]], "+", 
            FractionBox[
             RowBox[{"s", " ", 
              SubscriptBox["m", "i"], " ", 
              SubscriptBox["m", "j"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SubsuperscriptBox["Z", "s", "L"], " ", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"L", 
                   OverscriptBox["L", "_"]}]]}], "+", 
                RowBox[{
                 SubsuperscriptBox["Z", "s", "R"], " ", 
                 SubsuperscriptBox["Q", "A", 
                  RowBox[{"R", 
                   OverscriptBox["R", "_"]}]]}]}], ")"}]}], 
             RowBox[{"s", "-", 
              RowBox[{
               SubscriptBox["m", "Z"], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["m", "Z"], "+", 
                 RowBox[{"\[ImaginaryI]", " ", 
                  SubscriptBox["\[CapitalGamma]", "Z"]}]}], ")"}]}]}]]}], 
           ")"}]}], ")"}]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"t1", "-", "t0"}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"L", 
              OverscriptBox["L", "_"]}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", 
              OverscriptBox["R", "_"]}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "R"], ")"}]},
             "Conjugate"]}]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           FractionBox[
            RowBox[{
             RowBox[{"-", 
              RowBox[{"\[ImaginaryI]", " ", 
               SubscriptBox["\[CapitalGamma]", "A"], " ", 
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"]]}]}], "+", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], "-", "s"}], 
            RowBox[{"s", "-", 
             RowBox[{
              SubscriptBox["m", "Z"], " ", 
              RowBox[{"(", 
               RowBox[{
                SubscriptBox["m", "Z"], "+", 
                RowBox[{"\[ImaginaryI]", " ", 
                 SubscriptBox["\[CapitalGamma]", "Z"]}]}], ")"}]}]}]], "-", 
           FractionBox[
            RowBox[{
             RowBox[{"-", 
              RowBox[{
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"]], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], "+", 
                 RowBox[{"\[ImaginaryI]", " ", 
                  SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], "+", 
             SubsuperscriptBox["m", "i", "2"], "+", 
             SubsuperscriptBox["m", "j", "2"]}], 
            RowBox[{
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["m", "Z"], " ", 
              SubscriptBox["\[CapitalGamma]", "Z"]}], "-", 
             SubsuperscriptBox["m", "Z", "2"], "+", "s"}]]}], ")"}]}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Z", "s", "L"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"L", 
                   OverscriptBox["L", "_"]}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Z", "s", "R"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", "A", 
                 RowBox[{"R", 
                   OverscriptBox["R", "_"]}]], ")"}]},
             "Conjugate"]}]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           FractionBox[
            RowBox[{
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["\[CapitalGamma]", "A"], " ", 
              SubscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"]]}], "+", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], "-", "s"}], 
            RowBox[{
             RowBox[{"\[ImaginaryI]", " ", 
              SubscriptBox["m", "Z"], " ", 
              SubscriptBox["\[CapitalGamma]", "Z"]}], "-", 
             SubsuperscriptBox["m", "Z", "2"], "+", "s"}]], "-", 
           FractionBox[
            RowBox[{
             RowBox[{"-", 
              RowBox[{
               SubscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"]], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["m", 
                  SubscriptBox[
                   OverscriptBox["q", "~"], "A"]], "-", 
                 RowBox[{"\[ImaginaryI]", " ", 
                  SubscriptBox["\[CapitalGamma]", "A"]}]}], ")"}]}]}], "+", 
             SubsuperscriptBox["m", "i", "2"], "+", 
             SubsuperscriptBox["m", "j", "2"]}], 
            RowBox[{"s", "-", 
             RowBox[{
              SubscriptBox["m", "Z"], " ", 
              RowBox[{"(", 
               RowBox[{
                SubscriptBox["m", "Z"], "+", 
                RowBox[{"\[ImaginaryI]", " ", 
                 SubscriptBox["\[CapitalGamma]", "Z"]}]}], ")"}]}]}]]}], 
          ")"}]}], "-", 
        FractionBox[
         RowBox[{"s", " ", 
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
              SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}]}], 
         RowBox[{
          RowBox[{
           SubsuperscriptBox["m", "Z", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["\[CapitalGamma]", "Z", "2"], "-", 
             RowBox[{"2", " ", "s"}]}], ")"}]}], "+", 
          SubsuperscriptBox["m", "Z", "4"], "+", 
          SuperscriptBox["s", "2"]}]]}], ")"}]}], "+", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", 
       SubscriptBox["m", "Z"], " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["t0", "2"], "-", 
         SuperscriptBox["t1", "2"]}], ")"}], " ", 
       SubscriptBox["\[CapitalGamma]", "Z"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", 
            OverscriptBox["L", "_"]}]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{
          SubsuperscriptBox["Z", "s", "L"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"L", 
                 OverscriptBox["L", "_"]}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", 
            OverscriptBox["R", "_"]}]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{
          SubsuperscriptBox["Z", "s", "R"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", "A", 
               RowBox[{"R", 
                 OverscriptBox["R", "_"]}]], ")"}]},
           "Conjugate"]}]}], ")"}]}], 
      RowBox[{
       RowBox[{
        SubsuperscriptBox["m", "Z", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["\[CapitalGamma]", "Z", "2"], "-", 
          RowBox[{"2", " ", "s"}]}], ")"}]}], "+", 
       SubsuperscriptBox["m", "Z", "4"], "+", 
       SuperscriptBox["s", "2"]}]]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.914558426937297*^9, 3.9146493841218157`*^9, 3.914649449069109*^9, {
   3.914746660248324*^9, 3.9147466603685513`*^9}, {3.9147467686031637`*^9, 
   3.9147467998270063`*^9}, {3.91474684541415*^9, 3.9147468639465027`*^9}, 
   3.914746895376388*^9, 3.914746995801865*^9, {3.9147471136770067`*^9, 
   3.91474711383814*^9}, 3.914747266064084*^9, 3.914747297738628*^9, {
   3.914747392578787*^9, 3.914747405415844*^9}, 3.914747483298264*^9, {
   3.914747616495186*^9, 3.9147476167287207`*^9}},
 CellLabel->"Out[75]=",ExpressionUUID->"73b08fb4-8a8a-4ac8-8210-5833bccfa3de"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1383, 765},
WindowMargins->{{-2.25, Automatic}, {Automatic, -22.5}},
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
Cell[580, 22, 692, 22, 104, "Title",ExpressionUUID->"3113a770-5abe-44cf-abcb-7ce35a303d51"],
Cell[CellGroupData[{
Cell[1297, 48, 161, 3, 67, "Section",ExpressionUUID->"623a1251-67d0-47eb-8946-d965d9acab62"],
Cell[1461, 53, 312, 7, 35, "Text",ExpressionUUID->"c9b6c74b-bed6-40d7-93a2-94b88f4a1423"],
Cell[CellGroupData[{
Cell[1798, 64, 1457, 38, 305, "Code",ExpressionUUID->"8f3aec24-40f5-4cbe-be7d-b10e746f9f39"],
Cell[CellGroupData[{
Cell[3280, 106, 3028, 75, 30, "Print",ExpressionUUID->"be25250b-df91-42f4-ac42-671021e507c3"],
Cell[6311, 183, 2211, 56, 30, "Print",ExpressionUUID->"cd854c1b-434c-4f3b-bfd7-f178051d53b4"],
Cell[8525, 241, 748, 14, 26, "Print",ExpressionUUID->"6fdfc9fd-5363-49ec-8ae5-bff60d071012"],
Cell[9276, 257, 792, 16, 26, "Print",ExpressionUUID->"a382ed8e-4de9-4270-984d-6468f5b1e9b1"],
Cell[10071, 275, 2396, 63, 30, "Print",ExpressionUUID->"49626044-f69f-4f40-aeca-9b421389aa6a"],
Cell[12470, 340, 684, 13, 26, "Print",ExpressionUUID->"777fa876-49ae-4667-a556-8ba50d0dc711"],
Cell[13157, 355, 722, 14, 26, "Print",ExpressionUUID->"5902615e-19a3-42bd-90e8-662f6092e7ad"],
Cell[13882, 371, 575, 10, 24, "Print",ExpressionUUID->"61e45770-aef2-4a14-9545-0a817c7f03d2"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[14506, 387, 631, 15, 110, "Code",ExpressionUUID->"cc6ff964-d048-45bc-be5a-ea7e51f04364"],
Cell[15140, 404, 883, 18, 28, "Message",ExpressionUUID->"19590211-b994-4780-8ee6-e4b828c3d2d1"],
Cell[16026, 424, 898, 18, 28, "Message",ExpressionUUID->"d3b85fcd-2f62-4a64-81a0-9c2f17ad7447"],
Cell[16927, 444, 877, 18, 28, "Message",ExpressionUUID->"6fb9a21b-5a93-48f8-b601-9d4a63614686"]
}, Open  ]],
Cell[17819, 465, 486, 10, 53, "Code",ExpressionUUID->"aea92a0e-64bf-4b68-917a-d10ba669d15b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[18342, 480, 263, 5, 67, "Section",ExpressionUUID->"1c0417f8-1640-4d22-b557-b0b5f20add28"],
Cell[18608, 487, 201, 4, 35, "Text",ExpressionUUID->"4186d4a3-bada-4c67-8571-a260e389a999"],
Cell[CellGroupData[{
Cell[18834, 495, 2627, 65, 213, "Code",ExpressionUUID->"cc16bb95-c627-4203-b579-2002f02b5044"],
Cell[21464, 562, 15636, 368, 264, "Print",ExpressionUUID->"10ee1a61-81ce-456e-baf5-133cc345abb3"]
}, Open  ]],
Cell[37115, 933, 1567, 34, 225, "Code",ExpressionUUID->"f495b4e2-7d04-4f0e-81e0-efbc9664e28e"],
Cell[38685, 969, 1544, 41, 127, "Code",ExpressionUUID->"10140aeb-b31b-4b2d-b756-899697c815c6"],
Cell[40232, 1012, 632, 16, 35, "Text",ExpressionUUID->"41d39d94-ff21-4cc2-bd87-c1bdcf6657c6"],
Cell[40867, 1030, 3242, 99, 165, "Code",ExpressionUUID->"36440b80-fc3f-4d7b-8c26-ddfba8b0a672"],
Cell[44112, 1131, 1141, 24, 99, "Text",ExpressionUUID->"ad4451d8-dd8b-43c5-875a-e647cd0c3590"],
Cell[45256, 1157, 1408, 28, 53, "Code",ExpressionUUID->"f02d3fee-ced5-4933-85ed-21304906c288"]
}, Open  ]],
Cell[CellGroupData[{
Cell[46701, 1190, 166, 3, 67, "Section",ExpressionUUID->"db7b6bd3-aba9-4133-abee-dd24733cb04e"],
Cell[46870, 1195, 156, 3, 35, "Text",ExpressionUUID->"71d22fcc-faba-4d9d-8e9e-15214f0a349e"],
Cell[47029, 1200, 2711, 81, 146, "Code",ExpressionUUID->"4fd47e62-1465-4ae8-a527-695c73775065"],
Cell[49743, 1283, 232, 8, 35, "Text",ExpressionUUID->"eed70a53-a9f9-4d6e-8657-7c9bb7fd69d5"],
Cell[49978, 1293, 1617, 46, 146, "Code",ExpressionUUID->"295fa500-9c88-4314-9ced-4708b80f6228"],
Cell[51598, 1341, 327, 7, 35, "Text",ExpressionUUID->"a16dff32-b1de-40fa-b9f0-571a2c1c4ea9"],
Cell[51928, 1350, 2219, 61, 165, "Code",ExpressionUUID->"49386eef-cb3a-49d4-8239-c6b69a372a74"],
Cell[54150, 1413, 589, 16, 35, "Text",ExpressionUUID->"0e0afdb3-dece-41cb-a644-0edb6fe016f4"],
Cell[CellGroupData[{
Cell[54764, 1433, 2178, 61, 133, "Code",ExpressionUUID->"3f2bc887-6a25-44af-844f-f468f45193db"],
Cell[56945, 1496, 3105, 87, 50, "Output",ExpressionUUID->"344318fa-7532-4a42-a516-12dd615be79f"]
}, Open  ]],
Cell[60065, 1586, 249, 4, 35, "Text",ExpressionUUID->"4fd79281-2702-49b2-96b8-cbb432fb13de"],
Cell[60317, 1592, 3408, 90, 228, "Code",ExpressionUUID->"213691d6-4bdd-4d4f-8a41-03c7acde6dac"],
Cell[63728, 1684, 263, 6, 35, "Text",ExpressionUUID->"9857bd9e-f705-4970-8451-41d0c5407f3f"],
Cell[CellGroupData[{
Cell[64016, 1694, 1540, 44, 133, "Code",ExpressionUUID->"c5ea0e72-1190-4ac8-9c32-2f35ebbff4ab"],
Cell[65559, 1740, 1641, 48, 35, "Output",ExpressionUUID->"be1bb05d-46e4-41a9-a678-82e6b2e188bb"]
}, Open  ]],
Cell[67215, 1791, 279, 6, 35, "Text",ExpressionUUID->"6fead36b-cfbc-43d7-a66f-84c0c29ae693"],
Cell[CellGroupData[{
Cell[67519, 1801, 2192, 62, 134, "Code",ExpressionUUID->"023e21e7-f598-4047-a226-039e1e3bfc04"],
Cell[69714, 1865, 19347, 560, 261, "Output",ExpressionUUID->"aea08898-2227-43d6-9d3e-55c56de876b1"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[89110, 2431, 168, 3, 67, "Section",ExpressionUUID->"e6d77a07-eeec-44aa-b43b-b09b4f430ce9"],
Cell[89281, 2436, 152, 3, 35, "Text",ExpressionUUID->"41d62fbb-5fd7-4921-bfda-aadc1a46ba8f"],
Cell[89436, 2441, 689, 18, 58, "Text",ExpressionUUID->"4a29c216-215b-42ef-936a-10919eb7f1ef"],
Cell[90128, 2461, 2331, 60, 133, "Code",ExpressionUUID->"397c4165-053c-4434-b0b3-1dc17d856bb6"],
Cell[92462, 2523, 1675, 31, 31, "Text",ExpressionUUID->"9c701713-f89c-44f4-827a-c3d01beef026"],
Cell[94140, 2556, 641, 14, 70, "Code",ExpressionUUID->"bf9d0b1a-94a4-4976-8666-fab9971a81ed"],
Cell[94784, 2572, 236, 6, 35, "Text",ExpressionUUID->"1a15edf9-d50e-4ae1-a315-7b64b062e5b1"],
Cell[CellGroupData[{
Cell[95045, 2582, 449, 9, 53, "Code",ExpressionUUID->"c3aa978d-ccf6-4348-9406-9146fd7afbd9"],
Cell[95497, 2593, 59710, 1867, 586, "Output",ExpressionUUID->"9e7b122a-ae75-44b7-9e59-72f48a88f163"]
}, Open  ]],
Cell[155222, 4463, 270, 6, 35, "Text",ExpressionUUID->"510361ee-7e50-409f-b90d-f01514a1fa9c"],
Cell[155495, 4471, 2937, 76, 410, "Code",ExpressionUUID->"97bd251d-7201-44a6-91ee-7d1671fc69a9"],
Cell[158435, 4549, 482, 12, 35, "Text",ExpressionUUID->"83473601-3d23-489f-8cce-22a9e8635e72"],
Cell[CellGroupData[{
Cell[158942, 4565, 2416, 61, 209, "Code",ExpressionUUID->"9185987c-c286-49a9-8e2c-abd135038383"],
Cell[161361, 4628, 4002, 127, 101, "Output",ExpressionUUID->"cf63f535-c1a1-4d0e-a640-82a955043c42"]
}, Open  ]],
Cell[165378, 4758, 264, 6, 35, "Text",ExpressionUUID->"68798862-a218-4240-be60-22ac4c755df7"],
Cell[CellGroupData[{
Cell[165667, 4768, 3133, 89, 335, "Code",ExpressionUUID->"84fccf6c-3854-43dd-a418-82c19a1daeb5"],
Cell[168803, 4859, 2761, 85, 55, "Output",ExpressionUUID->"0788aaea-a782-4886-80f8-fcc61354011c"]
}, Open  ]],
Cell[171579, 4947, 312, 7, 35, "Text",ExpressionUUID->"0ab35704-1865-4dd1-8623-0a67881b741f"],
Cell[CellGroupData[{
Cell[171916, 4958, 4222, 112, 397, "Code",ExpressionUUID->"a9c2b922-9999-415d-a638-4a936907ff55"],
Cell[176141, 5072, 2760, 85, 55, "Output",ExpressionUUID->"6968c060-f8a7-480b-8cc4-06f92ddea1a3"],
Cell[178904, 5159, 1407, 35, 28, "Print",ExpressionUUID->"5b031c1e-8920-4e64-8c0a-4ecf6c25fea1"]
}, Open  ]],
Cell[180326, 5197, 266, 6, 35, "Text",ExpressionUUID->"d7b1fe24-c08d-4517-9539-93e5f5eeb6b9"],
Cell[CellGroupData[{
Cell[180617, 5207, 1190, 31, 142, "Code",ExpressionUUID->"a8cd05b4-5749-429f-8a09-09100b2d1a24"],
Cell[181810, 5240, 1958, 59, 54, "Output",ExpressionUUID->"dfe9357d-d0c4-4a61-892a-688582b3dd88"]
}, Open  ]],
Cell[183783, 5302, 256, 6, 35, "Text",ExpressionUUID->"ba5d2886-298c-4fc5-a754-5f912ec2aaef"],
Cell[184042, 5310, 3539, 95, 382, "Code",ExpressionUUID->"cf05098a-c654-4851-9767-0d7f27e0f162"],
Cell[187584, 5407, 285, 6, 35, "Text",ExpressionUUID->"6477fda9-da4f-4eed-bd85-8b91789df1b9"],
Cell[CellGroupData[{
Cell[187894, 5417, 1654, 43, 116, "Code",ExpressionUUID->"cc067aff-7f1b-4d41-9980-5e2652cb2b8b"],
Cell[189551, 5462, 42587, 1120, 664, "Output",ExpressionUUID->"568b4ab6-8153-4e1f-93cc-56ce8449272e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[232175, 6587, 377, 7, 51, "Code",ExpressionUUID->"119efc26-3621-4842-a9da-e214aeb673c1"],
Cell[232555, 6596, 5399, 158, 75, "Output",ExpressionUUID->"3f827692-3202-4f1d-b02f-66a8c6354a64"]
}, Open  ]],
Cell[CellGroupData[{
Cell[237991, 6759, 302, 6, 53, "Code",ExpressionUUID->"0bc5fa96-2082-46ed-95ec-6a841ef74b66"],
Cell[238296, 6767, 25143, 651, 347, "Output",ExpressionUUID->"e584b809-1a4e-4174-8918-a0809d46ce02"]
}, Open  ]],
Cell[CellGroupData[{
Cell[263476, 7423, 1405, 40, 53, "Code",ExpressionUUID->"32a9a206-aabb-41a4-9652-02a7dc12aae2"],
Cell[264884, 7465, 17856, 473, 265, "Output",ExpressionUUID->"73b08fb4-8a8a-4ac8-8210-5833bccfa3de"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

