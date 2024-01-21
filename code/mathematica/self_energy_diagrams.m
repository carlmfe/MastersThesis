(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 14.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    112695,       2987]
NotebookOptionsPosition[    106997,       2889]
NotebookOutlinePosition[    107398,       2905]
CellTagsIndexPosition[    107355,       2902]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Self-energy contribution to partonic neutralino pair production\
\>", "Title",
 CellChangeTimes->{{3.914568281727769*^9, 3.9145682960598583`*^9}, {
  3.914568375411086*^9, 
  3.914568381838224*^9}},ExpressionUUID->"6ed265d2-bf75-499b-939e-\
b38606ee57c8"],

Cell["\<\
Renormalisation of wave functions in partonic neutralino pair production to \
NLO.\
\>", "Text",
 CellChangeTimes->{{3.914568309872407*^9, 3.91456834370366*^9}, {
  3.9145684170049963`*^9, 
  3.914568418728154*^9}},ExpressionUUID->"b6e04ede-9349-47f5-81c1-\
12a6ab1ad69f"],

Cell[CellGroupData[{

Cell["Initialisation", "Section",
 CellChangeTimes->{{3.9144763179811068`*^9, 
  3.914476339787057*^9}},ExpressionUUID->"71dc81fc-87e4-4083-8208-\
de3a134a8225"],

Cell["\<\
Load FeynCalc and FeynArts. Furthermore, this notebook makes use of three \
packages found in the \[OpenCurlyDoubleQuote]include\[CloseCurlyDoubleQuote] \
folder.\
\>", "Text",
 CellChangeTimes->{{3.914476486107745*^9, 
  3.914476566436034*^9}},ExpressionUUID->"1ced22e6-0008-4974-a063-\
20d9ccf3e3c9"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
  "description", " ", "=", " ", 
   "\"\<Self-energy contribution to cross section of neutralino pair \
production at parton level.\>\""}], ";"}], "\n", 
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
   RowBox[{"9", ",", "3", ",", "1"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{
  3.91447635123787*^9, {3.914476624408684*^9, 3.9144766387867937`*^9}, 
   3.914478375354082*^9, 3.914485345161674*^9, {3.914485624539702*^9, 
   3.914485650913145*^9}, {3.914568598787737*^9, 3.91456860521911*^9}},
 CellLabel->"In[1]:=",ExpressionUUID->"f768582f-208b-4368-8c00-048b2134443a"],

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
 CellChangeTimes->{3.914559435410506*^9, 3.914569505162786*^9, 
  3.914570046632012*^9, 3.914570421617712*^9, 3.914570669637253*^9, 
  3.914575077100466*^9, 3.914575342204976*^9, 3.914576296581914*^9, 
  3.914576548576517*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"eec66c18-008a-4846-87ac-81fde2674ffd"],

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
 CellChangeTimes->{3.914559435410506*^9, 3.914569505162786*^9, 
  3.914570046632012*^9, 3.914570421617712*^9, 3.914570669637253*^9, 
  3.914575077100466*^9, 3.914575342204976*^9, 3.914576296581914*^9, 
  3.9145765485799093`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"4969fd57-de0f-49b7-b46c-47d966a88edc"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynCalc in your research, please evaluate \
FeynCalcHowToCite[] to learn how to cite this software.\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.914559435410506*^9, 3.914569505162786*^9, 
  3.914570046632012*^9, 3.914570421617712*^9, 3.914570669637253*^9, 
  3.914575077100466*^9, 3.914575342204976*^9, 3.914576296581914*^9, 
  3.914576548580763*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"a53c0d01-4e62-4c02-9a80-5af252147677"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"Please keep in mind that the proper academic attribution of \
our work is crucial to ensure the future development of this package!\"\>", 
   "Text",
   StripOnInput->False,
   FontSlant->Italic], TraditionalForm]], "Print",
 CellChangeTimes->{3.914559435410506*^9, 3.914569505162786*^9, 
  3.914570046632012*^9, 3.914570421617712*^9, 3.914570669637253*^9, 
  3.914575077100466*^9, 3.914575342204976*^9, 3.914576296581914*^9, 
  3.914576548581593*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"6f45c114-cff1-40c9-886f-0485f6520c02"],

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
 CellChangeTimes->{3.914559435410506*^9, 3.914569505162786*^9, 
  3.914570046632012*^9, 3.914570421617712*^9, 3.914570669637253*^9, 
  3.914575077100466*^9, 3.914575342204976*^9, 3.914576296581914*^9, 
  3.9145765486495943`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"23bf6e05-3611-43fe-84c4-a8c3b8c47f6b"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynArts in your research, please cite\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.914559435410506*^9, 3.914569505162786*^9, 
  3.914570046632012*^9, 3.914570421617712*^9, 3.914570669637253*^9, 
  3.914575077100466*^9, 3.914575342204976*^9, 3.914576296581914*^9, 
  3.914576548650621*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"5c948e4c-d55e-474e-98b6-f01e5c801a6a"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\" \[Bullet] T. Hahn, Comput. Phys. Commun., 140, 418-431, \
2001, arXiv:hep-ph/0012260\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.914559435410506*^9, 3.914569505162786*^9, 
  3.914570046632012*^9, 3.914570421617712*^9, 3.914570669637253*^9, 
  3.914575077100466*^9, 3.914575342204976*^9, 3.914576296581914*^9, 
  3.914576548651311*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"0fc7b373-829b-4e5f-b193-3bb26b3a89ca"]
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
 CellLabel->"In[8]:=",ExpressionUUID->"c09a340c-f42d-4ecf-91c4-86797bb611e6"],

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
or be shadowed by other definitions.\"", 2, 10, 1, 24942383066030697641, 
    "Local", "FeynCalc`Index"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.914559436271882*^9, 3.914569505760824*^9, 
  3.914570047348214*^9, 3.914570422270108*^9, 3.9145706702829437`*^9, 
  3.914575077712751*^9, 3.9145753428668547`*^9, 3.914576297286044*^9, 
  3.914576549223592*^9},
 CellLabel->
  "During evaluation of \
In[8]:=",ExpressionUUID->"68c22608-5c57-48cb-8b17-42ac177f0305"],

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
or be shadowed by other definitions.\"", 2, 10, 2, 24942383066030697641, 
    "Local", "FeynCalc`IndexDelta"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.914559436271882*^9, 3.914569505760824*^9, 
  3.914570047348214*^9, 3.914570422270108*^9, 3.9145706702829437`*^9, 
  3.914575077712751*^9, 3.9145753428668547`*^9, 3.914576297286044*^9, 
  3.914576549271823*^9},
 CellLabel->
  "During evaluation of \
In[8]:=",ExpressionUUID->"81c2c2ac-8fae-4308-8167-5df10c926182"],

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
TraditionalForm]\\) may shadow or be shadowed by other definitions.\"", 2, 11,
     3, 24942383066030697641, "Local", "CalcTools`CT"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.914559436271882*^9, 3.914569505760824*^9, 
  3.914570047348214*^9, 3.914570422270108*^9, 3.9145706702829437`*^9, 
  3.914575077712751*^9, 3.9145753428668547`*^9, 3.914576297286044*^9, 
  3.914576549445306*^9},
 CellLabel->
  "During evaluation of \
In[8]:=",ExpressionUUID->"15481c0c-6e93-454f-a3b3-e0861cba6d18"]
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
 CellLabel->"In[12]:=",ExpressionUUID->"c27ce459-574d-4b02-af7e-05e95659f54a"],

Cell["\<\
Set options to keep scaleless loop integrals and set Mandelstam parameters.\
\>", "Text",
 CellChangeTimes->{{3.9144859680417147`*^9, 3.9144860494356194`*^9}, {
  3.9145555260703487`*^9, 
  3.914555540476664*^9}},ExpressionUUID->"e5a0135f-7b78-4ce1-8c26-\
ab2e014a94cb"],

Cell[CellGroupData[{

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
  ";"}], "\n", 
 RowBox[{
  RowBox[{"FAPatch", "[", 
   RowBox[{"PatchModelsOnly", "->", "True"}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{{3.914486052870377*^9, 3.914486060635487*^9}, {
   3.914555545090164*^9, 3.914555646515908*^9}, 3.9145593213127117`*^9, {
   3.914568620361013*^9, 3.914568621089509*^9}},
 CellLabel->"In[14]:=",ExpressionUUID->"7b818ea2-6646-4c5e-875d-9558add8f116"],

Cell["Successfully patched FeynArts.", "Print",
 CellChangeTimes->{3.914569515788727*^9, 3.9145700574187613`*^9, 
  3.9145704322281*^9, 3.914570680283092*^9, 3.9145750876655617`*^9, 
  3.914575352809062*^9, 3.914576307417729*^9, 3.914576559248646*^9},
 CellLabel->
  "During evaluation of \
In[14]:=",ExpressionUUID->"f718611e-cb4a-4d31-9641-e3edcfc01fbd"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Generate Feynman diagrams", "Section",
 CellChangeTimes->{{3.9145684651122313`*^9, 
  3.914568471533506*^9}},ExpressionUUID->"68d0844d-6266-4689-85b5-\
bdbd19865d1e"],

Cell["Some text", "Text",
 CellChangeTimes->{{3.914568476746871*^9, 
  3.914568477771171*^9}},ExpressionUUID->"50360045-3565-4530-bddf-\
f6188de982be"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"ExcludedParticles", " ", "=", " ", 
   RowBox[{"{", "\n", "\t", 
    RowBox[{
     RowBox[{"V", "[", "1", "]"}], ",", " ", 
     RowBox[{"(*", "photon", "*)"}], "\n", "\t", 
     RowBox[{"V", "[", "2", "]"}], ",", " ", 
     RowBox[{"(*", 
      RowBox[{"Z", " ", "boson"}], "*)"}], "\n", "\t", 
     RowBox[{"V", "[", "3", "]"}], ",", " ", 
     RowBox[{"(*", 
      RowBox[{"W", " ", "boson"}], "*)"}], "\n", "\t", 
     RowBox[{"F", "[", "11", "]"}], ",", " ", 
     RowBox[{"(*", "neutralinos", "*)"}], "\n", "\t", 
     RowBox[{"F", "[", "12", "]"}], ",", " ", 
     RowBox[{"(*", "charginos", "*)"}], "\n", "\t", 
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
     RowBox[{"ExcludeParticles", "->", "ExcludedParticles"}]}], "\n", "}"}]}],
   ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"parametersCT", " ", "=", " ", 
    RowBox[{"{", "\n", "\t", 
     RowBox[{
      RowBox[{"InsertionLevel", "->", 
       RowBox[{"{", "Classes", "}"}]}], ",", "\n", "\t", 
      RowBox[{"Model", "->", "SMQCD"}], ",", "\n", "\t", 
      RowBox[{"Restrictions", "->", 
       RowBox[{"{", 
        RowBox[{"NoLightFHCoupling", ",", " ", "NoElectronHCoupling"}], 
        "}"}]}], ",", "\n", "\t", 
      RowBox[{"ExcludeParticles", "->", "ExcludedParticles"}]}], "\n", 
     "}"}]}], ";"}], "\n"}], "\n", 
 RowBox[{
  RowBox[{"SETopology", " ", "=", " ", 
   RowBox[{"CreateTopologies", "[", 
    RowBox[{"1", ",", " ", 
     RowBox[{"1", "->", "1"}], ",", " ", 
     RowBox[{"ExcludeTopologies", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{
       "Tadpoles", ",", " ", "WFCorrections", ",", " ", "WFCorrectionCTs"}], 
       "}"}]}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"SETopologyCT", " ", "=", " ", 
    RowBox[{"CreateCTTopologies", "[", 
     RowBox[{"1", ",", " ", 
      RowBox[{"1", "->", "1"}], ",", " ", 
      RowBox[{"ExcludeTopologies", " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{
        "Tadpoles", ",", " ", "WFCorrections", ",", " ", "WFCorrectionCTs"}], 
        "}"}]}]}], "]"}]}], ";"}], "\n"}], "\n", 
 RowBox[{
  RowBox[{"TriTopology", " ", "=", " ", 
   RowBox[{"CreateTopologies", "[", 
    RowBox[{"1", ",", " ", 
     RowBox[{"2", "->", "1"}], ",", " ", 
     RowBox[{"ExcludeTopologies", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{
       "Tadpoles", ",", " ", "WFCorrections", ",", " ", "WFCorrectionCTs", 
        ",", " ", "SelfEnergies"}], "}"}]}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"TriTopologyCT", " ", "=", " ", 
   RowBox[{"CreateCTTopologies", "[", 
    RowBox[{"1", ",", " ", 
     RowBox[{"2", "->", "1"}], ",", " ", 
     RowBox[{"ExcludeTopologies", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{
       "Tadpoles", ",", " ", "WFCorrections", ",", " ", "WFCorrectionCTs", 
        ",", " ", "SelfEnergyCTs"}], "}"}]}]}], "]"}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.9145684924332113`*^9, 3.914568494913054*^9}, {
   3.914568642463129*^9, 3.914568642909423*^9}, {3.9145688644007473`*^9, 
   3.9145690692971354`*^9}, {3.9145699988452053`*^9, 3.914570021756263*^9}, {
   3.914570071044614*^9, 3.9145700726115713`*^9}, {3.914570204070307*^9, 
   3.9145702673895807`*^9}, 3.914570313751828*^9, {3.914570458620463*^9, 
   3.9145704883026247`*^9}, 3.9145705940659*^9, {3.914570740006629*^9, 
   3.914570770291655*^9}, {3.914570876565374*^9, 3.914570876766418*^9}, {
   3.9145710815144053`*^9, 3.9145711007225246`*^9}, {3.9145736862936487`*^9, 
   3.914573689321589*^9}, {3.914574765763133*^9, 3.91457476589296*^9}},
 CellLabel->"In[17]:=",ExpressionUUID->"86e63125-c621-4e47-9582-81b20677c7be"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"diagQuarkSE", " ", "=", " ", 
   RowBox[{"InsertFields", "[", 
    RowBox[{"SETopology", ",", " ", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"F", "[", 
        RowBox[{"3", ",", " ", 
         RowBox[{"{", "1", "}"}]}], "]"}], "}"}], " ", "->", 
      RowBox[{"{", 
       RowBox[{"F", "[", 
        RowBox[{"3", ",", " ", 
         RowBox[{"{", "1", "}"}]}], "]"}], "}"}]}], ",", " ", 
     RowBox[{"Sequence", "@@", "parameters"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"diagQuarkSECT", " ", "=", " ", 
    RowBox[{"InsertFields", "[", 
     RowBox[{"SETopologyCT", ",", " ", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"F", "[", 
         RowBox[{"3", ",", " ", 
          RowBox[{"{", "1", "}"}]}], "]"}], "}"}], " ", "->", 
       RowBox[{"{", 
        RowBox[{"F", "[", 
         RowBox[{"3", ",", " ", 
          RowBox[{"{", "1", "}"}]}], "]"}], "}"}]}], ",", " ", 
      RowBox[{"Sequence", "@@", "parametersCT"}]}], "]"}]}], ";"}], 
  "\n"}], "\n", 
 RowBox[{
  RowBox[{"diagQuarkZVertex", " ", "=", " ", 
   RowBox[{"InsertFields", "[", 
    RowBox[{"TriTopology", ",", " ", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"F", "[", 
         RowBox[{"3", ",", " ", 
          RowBox[{"{", 
           RowBox[{"g", ",", " ", "a"}], "}"}]}], "]"}], ",", " ", 
        RowBox[{"-", 
         RowBox[{"F", "[", 
          RowBox[{"3", ",", " ", 
           RowBox[{"{", 
            RowBox[{"g", ",", " ", "b"}], "}"}]}], "]"}]}]}], "}"}], " ", "->", 
      RowBox[{"{", 
       RowBox[{"V", "[", "2", "]"}], "}"}]}], ",", " ", 
     RowBox[{"Sequence", "@@", "parameters"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"diagQuarkZVertexCT", " ", "=", " ", 
    RowBox[{"InsertFields", "[", 
     RowBox[{"TriTopologyCT", ",", " ", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"F", "[", 
          RowBox[{"3", ",", " ", 
           RowBox[{"{", 
            RowBox[{"g", ",", " ", "a"}], "}"}]}], "]"}], ",", " ", 
         RowBox[{"-", 
          RowBox[{"F", "[", 
           RowBox[{"3", ",", " ", 
            RowBox[{"{", 
             RowBox[{"g", ",", " ", "b"}], "}"}]}], "]"}]}]}], "}"}], " ", "->", 
       RowBox[{"{", 
        RowBox[{"V", "[", "2", "]"}], "}"}]}], ",", " ", 
      RowBox[{"Sequence", "@@", "parametersCT"}]}], "]"}]}], ";"}], 
  "\n"}], "\n", 
 RowBox[{
  RowBox[{"(*", "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"{", 
      RowBox[{"diagSquarkSE", ",", " ", "diagSquarkSECT"}], "}"}], " ", "=", 
     " ", 
     RowBox[{
      RowBox[{
       RowBox[{"InsertFields", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"S", "[", 
            RowBox[{"13", ",", " ", 
             RowBox[{"{", 
              RowBox[{"A", ",", " ", "g", ",", " ", "a"}], "}"}]}], "]"}], 
           "}"}], " ", "->", 
          RowBox[{"{", 
           RowBox[{"S", "[", 
            RowBox[{"13", ",", " ", 
             RowBox[{"{", 
              RowBox[{"A", ",", " ", "g", ",", " ", "a"}], "}"}]}], "]"}], 
           "}"}]}], ",", " ", 
         RowBox[{"Sequence", "@@", "parameters"}]}], "]"}], " ", "&"}], "/@", 
      " ", 
      RowBox[{"{", 
       RowBox[{"SETopology", ",", " ", "SETopologyCT"}], "}"}]}]}], ";", "\n", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"diagQuarkZVertex", ",", " ", "diagQuarkZVertexCT"}], "}"}], 
     " ", "=", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"InsertFields", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"F", "[", 
             RowBox[{"3", ",", " ", 
              RowBox[{"{", 
               RowBox[{"g", ",", " ", "a"}], "}"}]}], "]"}], ",", " ", 
            RowBox[{"-", 
             RowBox[{"F", "[", 
              RowBox[{"3", ",", " ", 
               RowBox[{"{", 
                RowBox[{"g", ",", " ", "b"}], "}"}]}], "]"}]}]}], "}"}], " ", 
          "->", 
          RowBox[{"{", 
           RowBox[{"V", "[", "2", "]"}], "}"}]}], ",", " ", 
         RowBox[{"Sequence", "@@", "parameters"}]}], "]"}], " ", "&"}], "/@", 
      " ", 
      RowBox[{"{", 
       RowBox[{"TriTopology", ",", " ", "TriTopologyCT"}], "}"}]}]}], ";", 
    "\n", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "diagQuarkSquarkNeutralinoVertex", ",", " ", 
       "diagQuarkSquarkNeutralinoVertexCT"}], "}"}], " ", "=", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"InsertFields", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"F", "[", 
             RowBox[{"3", ",", " ", 
              RowBox[{"{", 
               RowBox[{"g", ",", " ", "a"}], "}"}]}], "]"}], ",", " ", 
            RowBox[{"-", 
             RowBox[{"S", "[", 
              RowBox[{"13", ",", " ", 
               RowBox[{"{", 
                RowBox[{"A", ",", " ", "g", ",", " ", "b"}], "}"}]}], 
              "]"}]}]}], "}"}], " ", "->", 
          RowBox[{"{", 
           RowBox[{"F", "[", 
            RowBox[{"11", ",", " ", 
             RowBox[{"{", "i", "}"}]}], "]"}], "}"}]}], ",", " ", 
         RowBox[{"Sequence", "@@", "parameters"}]}], "]"}], " ", "&"}], "/@", 
      " ", 
      RowBox[{"{", 
       RowBox[{"TriTopology", ",", " ", "TriTopologyCT"}], "}"}]}]}], ";"}], 
   "*)"}]}]}], "Code",
 CellChangeTimes->{{3.914569073596332*^9, 3.914569213768972*^9}, {
   3.914569244715921*^9, 3.914569310972849*^9}, {3.914569627060421*^9, 
   3.9145696330635967`*^9}, {3.914569694935647*^9, 3.91456981936388*^9}, 
   3.914569884777668*^9, {3.9145699578789263`*^9, 3.914569966802619*^9}, {
   3.9145702919889097`*^9, 3.9145702951852913`*^9}, {3.914573723617063*^9, 
   3.914573750457364*^9}, {3.9145738287839737`*^9, 3.9145738791689863`*^9}, {
   3.91457391725805*^9, 3.914573919264976*^9}, {3.914573976485293*^9, 
   3.9145739962197447`*^9}, 3.914574065575392*^9, {3.914574247867198*^9, 
   3.9145743243085823`*^9}, {3.914574515685052*^9, 3.91457475065086*^9}, {
   3.914574811039002*^9, 3.914574814504587*^9}, {3.91457644256563*^9, 
   3.9145764700672817`*^9}},
 CellLabel->"In[25]:=",ExpressionUUID->"6430845d-dd98-413d-9ff1-f0b6e5eb4bba"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"diag1", "[", "0", "]"}], " ", "=", " ", 
    RowBox[{
     RowBox[{"diagQuarkSE", "[", 
      RowBox[{"[", "0", "]"}], "]"}], "[", 
     RowBox[{
      RowBox[{"Sequence", "@@", "diagQuarkSE"}], ",", " ", 
      RowBox[{"Sequence", "@@", "diagQuarkSECT"}]}], "]"}]}], ";"}], "\n", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{"diag2", "[", "0", "]"}], " ", "=", " ", 
     RowBox[{
      RowBox[{"diagSquarkSE", "[", 
       RowBox[{"[", "0", "]"}], "]"}], "[", 
      RowBox[{
       RowBox[{"Sequence", "@@", "diagSquarkSE"}], ",", " ", 
       RowBox[{"Sequence", "@@", "diagSquarkSECT"}]}], "]"}]}], ";"}], 
   "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"diag3", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"diagQuarkZVertex", "[", 
     RowBox[{"[", "0", "]"}], "]"}], "[", 
    RowBox[{
     RowBox[{"Sequence", "@@", "diagQuarkZVertex"}], ",", " ", 
     RowBox[{"Sequence", "@@", "diagQuarkZVertexCT"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{"diag4", "[", "0", "]"}], " ", "=", " ", 
     RowBox[{
      RowBox[{"diagQuarkSquarkNeutralinoVertex", "[", 
       RowBox[{"[", "0", "]"}], "]"}], "[", 
      RowBox[{
       RowBox[{"Sequence", "@@", "diagQuarkSquarkNeutralinoVertex"}], ",", 
       " ", 
       RowBox[{"Sequence", "@@", "diagQuarkSquarkNeutralinoVertexCT"}]}], 
      "]"}]}], ";"}], "*)"}]}]}], "Code",
 CellChangeTimes->{{3.914569350187468*^9, 3.914569442147262*^9}, {
  3.914569545577696*^9, 3.914569554251041*^9}, {3.914569594335634*^9, 
  3.9145696072473516`*^9}, {3.914569829023497*^9, 3.914569908780387*^9}, {
  3.914574832833165*^9, 3.9145748385312033`*^9}},
 CellLabel->"In[29]:=",ExpressionUUID->"f633392b-8a16-43bf-bbbc-0babf081b3d4"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Paint", "[", 
   RowBox[{
    RowBox[{"diag1", "[", "0", "]"}], ",", " ", 
    RowBox[{"ColumnsXRows", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{"3", ",", " ", "1"}], "}"}]}], ",", " ", 
    RowBox[{"Numbering", " ", "->", " ", "Simple"}], ",", " ", 
    RowBox[{"ImageSize", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{"512", ",", " ", "256"}], "}"}]}]}], "]"}], ";"}]], "Code",
 CellChangeTimes->{{3.914569444855236*^9, 3.9145694867210913`*^9}, {
  3.9145695652637167`*^9, 3.9145695817723103`*^9}, {3.914569915448278*^9, 
  3.914569915539567*^9}, {3.9145700908733807`*^9, 3.914570113243594*^9}, {
  3.914570164037834*^9, 3.9145701774886827`*^9}, {3.9145703207510147`*^9, 
  3.91457040540646*^9}, {3.914574844473716*^9, 3.914574865843965*^9}},
 CellLabel->"In[31]:=",ExpressionUUID->"bfc21cdb-a808-4fb6-9737-542ec93ca509"],

Cell[BoxData[
 FormBox[
  GraphicsBox[{InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-6.701306176637445*^-13, 10.}, {6.00000000000067, 10.}}], 
         PolygonBox[{{3.6, 10.}, {2.4, 9.6}, {2.4, 10.4}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {3., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000000668`, 10.}, {13.999999999999329`, 10.}}], 
         PolygonBox[{{17.6, 10.}, {16.4, 10.4}, {16.4, 9.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {17., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         CircleBox[{10., 10.899999999999999`}, 
          4.1, {-2.9202782112420023`, -0.2213144423477913}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {10., 6.1048}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
           2.9202782112420023`}]}, 
         PolygonBox[{{10.6, 13.2}, {9.4, 13.6}, {9.4, 12.799999999999999`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "u"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
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
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-6.701306176637445*^-13, 10.}, {6.00000000000067, 10.}}], 
         PolygonBox[{{3.6, 10.}, {2.4, 9.6}, {2.4, 10.4}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {3., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000000668`, 10.}, {13.999999999999329`, 10.}}], 
         PolygonBox[{{17.6, 10.}, {16.4, 10.4}, {16.4, 9.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {17., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         CircleBox[{10., 10.899999999999999`}, 
          4.1, {-2.9202782112420023`, -0.2213144423477913}], 
         PolygonBox[{{10.6, 6.8}, {9.4, 6.3999999999999995`}, {9.4, 7.2}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9lwk8VHsbxy1JWmiTaZhhzMyZcw43S5RK/JJU3IgWJVuizZJL0Y5uaaEY
LbeSJW1yK1f1VrY2aZGicEkkbZa3lJtUUt5z7/2/Zz6f+ZzPnP+cc57z/J/n
9/s+koBVHkFqKioqz7jv38d/P6ZQ/ecoQ9eEhoGuRqa48eH6YOdpMrTO8RSU
WZpi9G+FtglKGXIOqZ+ptzaF8Zf2nenNMtRvS/9aQ5vCdvkLz1oLOaYl3Ppz
9GBTjJFbes3dLMcPjW2ems0mMBqeY+BbIsdbJd33/LQJUps+ddz8LoeJfXV0
8goTyOwWrjQ2ofBzVF2pj9QE4XrLrcTOFHbpxqw6Xs/i11ht1WAvCg5qpyNT
Ulg8p+qP3fSmsOjl4K1fZ7HQ+rz6bpEHhXEZ5zutdVjYzLp954AdBY+T45KY
OgaZR8obPxpTWDshtNIxh0HqlQ0T09UoFOlsX3MgnsGfu1cWuj2Xg+1UzqwP
ZaDtukG2/aocES5Lt8X5M/BabXk+JEMOyr476rwvg0sJI57f3iqHV3KtOZYz
2BpZavRjlRy5viOD0zYy0AijBKYBcmSqGbY+PMygyGblR3NvOeiZkoOLbzB4
O+HGpLu+XD6CJxYv62CwL+tN2IGVclRmderGGLLwccnVZGPlENaa6ja7s1BM
7Jr3jnv+mx9+WZu2sAjStBMNLJNjW2R9gtE5FiEB4oKpP+SoW+zoePQRi+pL
YUUVkygEG8ZM0m/n1oW6+ePiKJjMK+hjP7HozbHqdSqncFhgWch0sqAPyqON
hAqcDK9Z69vIIjs/5qP3MgUqrFo69QtYnKRzv7n/oUC2ob1ryQ4WSovYGYGd
CpRotMzOdmFxPDvV3V9BY9WAZr0nGiwK9s3VK3OjMXbtI/9HBQwii8qb9VbQ
mNcvYbM8jMFC8/ChlRE0Ap02HbCUMrA77fFieyiNxEm/9DY10AjJdLx424vG
+KVzLdal0ThHn5DV2NKIyOq/KmspjZf7gsziRtGIcVebEjiBRvouh8qmdgVS
A6yznbjz+VrC2uHFCkSmxS6O+K5A/aGEOXrJCrQONJhQ0aHA06S3QzKWKvDY
om+bgLvumTzWrNtBAc0dZ2e84taTl/fM+UQpoPddS5LWq4D2W22fvhEK+AaP
T4gYTqPpkaaN1iAuXz0enY5mNDpuffDMHqzAOofaqr3uNOzGPPSQjlZA7Kzz
R2Q0DZuLzstizBXI3NyvMimdhr9/wNh4DwXkWc1eE2/RuLpErfT6ZgVCEo3H
J7ym8SPjpenyiwqYU+LLiX00nk1fbO32lwJTonqiInUY1AwWdN4fR8NSPWhY
43AG1OyuQ6djaGgF31mgM4BBWUe9qkkZjSmViR/MOv4+n+MrHcHAMcveNLiU
xuNDMY8pTwZXe69VqCbRGEf3ZT5MYdCxR8nazKKxuWxGu2YJg05V++dydS7v
949u9H/NIMvzYXwwF5dJjmu74xcGzksV++sCFahMmF8p/8bAapOar45AgZn7
1/rEcHUdUpc2zPoRBSfLIvZWFQNbDe+OKykUwg5bplmcZfDAZdANG18KWaNG
qv62iYEwLKNnixWFZHf1ZsEM7r2GbPLK06VwsnXzxC/ce7ecDI+do0rBdsgp
NqCOxoKxTpKMbjnCnPouzTxO478DLLWPdMnxtTr4Z5coGo1FjYGOPXLM1Zx0
9eBsGl5nnLbv609hn0pe7lsrGiMyHzjsElD47mpYulVGIz6snRplxvWFT6fY
2IjGMYfDVf1mUjgXNYzWoWn0HF8U3xJIQfB67H2aq8eQ7u1W6lxf+YX1t2xd
RGOQecOEn1MpGIxSbVsRz+Vt1rXwiDwKJ5Sj9cILaDRUPW79cZ2LP8850q+b
RuXG+qtxdyi0GRxym2DDINwvWav8JqdL1daZf+eDvTR3vRl3fUXZhqA8bj8u
B2X7FyopnI0MTQ7VZPF+aJ4ylItndt7cYTumsSg2WvbnLJaL9+i9g3fXsxij
abw25LUc4sDu09OOs9jhbR95/aAc/iOSvHKusRiq3+nUMl0Oe8017RH3WXjf
/2j8sFuGc/O8jXTvsLBcydbOPi3D2+OGQ4dc4O5n2zK0MUAG3WyPI+XJLH4b
d26dgpKhui+zVxnAot+RAbG9XVI8O5AsGGPC6chIF22LSikWtnsEl75jkDAr
/XTeZSl6A/LY/dz+P+5dl3s6R4qPG82mlHC6yxxZGJZ/SoouneiDkywYDGpv
qzE/K0XDgtw9h3pobDXxs5qWL0WIMme8sJzG+oTyjRPLpPBy807ae4rGkDLL
qA3PpLgZuvhy6B4aHyiTPRlcPFX+UEmLo6HzpPoX/0Ey/vdH6wc7t0pk/P/j
V4/9tdRaxt9vQ3Xm/QInGf+8Lt1RbIWHDI0kntolJ5VOC2T4ROL9ST1+9vx5
nI+S91l9fvF81xkyfCfv6/nfi50Pzbj7k3x8W/I5Rp2Lp4nka9k99/i6J1LU
kHxWlgjeG6dJMYrk+8H+Gjp3vpTfj2NWgxsttKT8fr17pZ0vuGLM72f0seuJ
9suM+f2u/NK4fa/QGCJSD1OaDjLnayQ4Q+pF571rWEqqhK+nmYc9MxzDuHVS
bzUzf99W6Srh6zEpc1X32MkSFJJ6HfOrfMpmGwlaST1LTX/SU7WXYBKp9z3n
kbSbu/4Y6YeuCuntC4ESvl/2aq2937tZwvdTv0XH1wm4eP7fb97FQabfLkn4
flyv1H3SVinh+/Wdn2XxmhYJ388n5uSvDf4q4ftdOtU4tVDDGPOIHoz8/KBz
ySBjXi9Olec/89cyRjjRE8HCpJgzPySYTPTmyV9bTri2S5BN9OiV0l9j030J
lESvLC922d05KuH17GbPsWHTQyW83qUoAjrKxkgwnejhvS3fj35oMcIMopcX
D9WtVKQa8Xq6KNti3T4XI7BEb/V74+wvfjXk9djoRUNOUpAhNhK9ju0f69/b
LIYV0fPVhbGnmDViVBK9X+/3RpwpFaMf8YO3zC+uze9FuE384shX68Zp9SIY
Ez+JGTFo+OhmER4Tvzl6oUT5RkWMp8SP6JYCZZuVGL3Ery4V2jonRItRTPys
RO2z3/ObYvgQv7sV3JwhGGaI8cQPtTe4L6jzNsRk4peXBnqJoo4a8n7qxCjb
hE8Neb9tU+t+FqBuxPtxT7THZf1hRkghfv3TQ5X1LbpGaCJ+Lvj08rY5t95I
/D4xICZ9t5oRGggP3J64PzeiyhAFhBd+eH/bNH63ITIITwgK/5IUWhriFeGN
xLGeaUNKxcglPPJih0gTTmKEEl4ZE6lRdThfBBCecfvcpvYfqYjnnRQdHzuf
XQaIIDwkfD+5claXPq4QXorqsvDNXa6PLMJTOdfjlqzrEGIP4S3fAxYGdxOE
OEZ47Lx4nvbUaUKcILz24GHqzjMiIeSE53LmJajk6ArxjfAee0N15z0TIVYS
HpxjGx1d7C3EI8KLXwQurVePceuEJyeqobDfNyECCG9WuZ+smeytDznh0aUF
BtWqN/SxiPCqKZ2wzVxqgL2EZ/8ILa6w3WTA825Jzw2zgDIDFBMePuFQy5T2
F6E/4WXXptnpMWYijmv/5emLcSOGpzqIeN7WXzH2U6+diOfxHFFDiItMxPN6
/PPOkVV/GaCO8PyQ3XK/qN8NeN6ffyGl+YybAbLIPJB447DBvmZ9fl6YOuHN
58GB+hhI5om1384KntYL+XmjtVpVctlZyM8jQSPcVjvmj0YYmVey4jyHNpmO
hoTMM7KGc6p2ZwQ4ROYdla5PszsnCyAi89DqtiiP8hY9mJJ5aWbXzcFzz+lh
PJmnzpZ/OeW8Tw+GZN4yW+BeEXxYD7pkHtNPnN6+5Joeisi89u88J0DfPx8p
/gfGw7lz
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
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
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-1.1173284519827575`*^-12, 9.999999999996362}, {
          9.999999999996676, 9.999999999996362}}], 
         PolygonBox[{{5.6, 10.}, {4.4, 9.6}, {4.4, 10.4}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {5., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.00000000000112, 10.000000000003638`}, {
          10.000000000003325`, 10.000000000003638`}}], 
         PolygonBox[{{15.6, 10.}, {14.4, 10.4}, {14.4, 9.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {15., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], 
          {Thickness[0.015], LineBox[{{9.5, 9.5}, {10.5, 10.5}}], 
           LineBox[{{9.5, 10.5}, {10.5, 9.5}}]}}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["3",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->15.63927272727273],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            15.63927272727273]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bc/0.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bc/0.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 0}, {0, 0}, {22, 22}], InsetBox[
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
       TagBox["u",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->23.458909090909092`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       23.458909090909092`]& ], {37.5, 25.960000000000004}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]]},
   AspectRatio->0.43333333333333335`,
   ImageSize->{512, 256},
   PlotRange->{{0, 66}, {0, 28.6}}], TraditionalForm]], "Print",
 CellChangeTimes->{{3.9145748619896803`*^9, 3.914574871011011*^9}, 
   3.9145750887841*^9, 3.914575354238408*^9, 3.914576308554035*^9, 
   3.914576475437044*^9, 3.914576560377235*^9},
 CellLabel->
  "During evaluation of \
In[31]:=",ExpressionUUID->"7222dbac-b900-487e-8b65-64663ec696ad"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Paint", "[", 
   RowBox[{
    RowBox[{"diag2", "[", "0", "]"}], ",", " ", 
    RowBox[{"ColumnsXRows", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{"5", ",", " ", "2"}], "}"}]}], ",", " ", 
    RowBox[{"Numbering", " ", "->", " ", "Simple"}], ",", " ", 
    RowBox[{"ImageSize", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{"512", ",", " ", "256"}], "}"}]}]}], "]"}], ";"}]], "Code",
 CellChangeTimes->{{3.914574846367072*^9, 3.914574851172804*^9}},
 CellLabel->"In[32]:=",ExpressionUUID->"49647fd4-1c06-4e9f-b447-c893ba307761"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Paint", "[", 
   RowBox[{
    RowBox[{"diag3", "[", "0", "]"}], ",", " ", 
    RowBox[{"ColumnsXRows", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{"3", ",", " ", "1"}], "}"}]}], ",", " ", 
    RowBox[{"Numbering", " ", "->", " ", "Simple"}], ",", " ", 
    RowBox[{"ImageSize", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{"512", ",", " ", "256"}], "}"}]}]}], "]"}], ";"}]], "Code",
 CellChangeTimes->{{3.91457485261722*^9, 3.91457487927361*^9}},
 CellLabel->"In[33]:=",ExpressionUUID->"362d2f96-9292-414c-bac4-400c7c9a3a66"],

Cell[BoxData[
 FormBox[
  GraphicsBox[{InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{4.547473508864641*^-13, 14.999999999996362`}, {
          6.999999999998636, 13.999999999996362`}}], 
         PolygonBox[{{4.0939696961967, 14.415147186257615`}, {
          2.8494617613083766`, 14.188873016277919`}, {2.962598846298224, 
          14.980832611206852`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "g"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {3.7192031021678296, 15.429621715174807}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{9.094947017729282*^-13, 5.}, {6.9999999999990905`, 
          5.999999999996362}}], 
         PolygonBox[{{2.9060303038033, 5.415147186257614}, {4.150538238691624,
           5.1888730162779195`}, {4.037401153701776, 5.980832611206853}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "g"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {3.71920310216783, 4.570378284825192}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJxF1HlIFFEcB/DntkYHSYeVSynle5lgx868FaWsfkl0bKukGVqSYbljSYeS
XZrrkbRdmpStTmpWlhhmRevCpoJil+YYKZWV2UXZWnRHaWLbsz+eAzPDhxlm
3vu93/dN37gj3KhCCAWzc/Cud2UX5Afo/0HA0nitR0eZ80aQg48w1DyRzFsk
5sAX+q6rGEIDLNUlMvPZjhr9SQxjvn2IblOYl+/qG30AwyKLY68azQLkcKvv
zcAAxsTJAZS5Ijk1JAfDcGtU2BaJuaEl9UI5hqglKfoimdnXvNfrHoaOupt+
rQpzYMJ32w8MW9X9nk4nc576o9WLQFbs4yUCnQ3oq6MucCkBe+mw2k0Ss0M5
3mwkUH8497hFZl71K6Z9H4HH+ne3mhVm3wkPx2QQEPqywgaczE98tXf3EEhx
H+ct0DmANpc0f44lcLq9bKpRYq44qfwFAlddThFZZu7dF2H1IOCt3unVqjBr
y13PfMIwoiPtB0JzASUGJZ27heHZ98X5Oso8Vm/YdJ49v6z+Ey8xa/U5t49g
+LnyjU+RzGx3rd3F6uOiqyL3FeaKYlqajcFoiMtESAso6sT8ZguGt+aqHlnD
vLy/6m01hjtpJIJSZkdmg7kTQ36wf5NiYM6T3cOGE1gx8bpekpinHXgmaQmc
GxnQ5Uxn/jq+eNgaAuMqPUyyzHyt3Y4SCSwNeu5Lrcy9bq9CTQRMrbhDUYbc
tvZ9ptQ99D70N3kjJPDvFX4Jsckagf8vpPFeAKUCH89Uc2elYhD4eAf2h0+S
JIHPJ81eZHKmC3y+rxMufSqUBV6P9y9yt4pWgder68qASlEEXs/k0S9txm6B
1ztGs/ig0ynw9XiQdSdR1oh8vUZl27ZRKvL1PDXlSlKrQeTrfTHl9/Z4SeT9
sOLQwkiXDJH3y54NOZ5Fssj7SdUQaNdZRd5vrv4m7/uKyPtR9TR/fXy3yPs1
16xKQojyft7t45Ugayjvd9ubxnUipTwPMZWrI1sMlOcluH1ZcpxEeZ4abxy9
OZBOed6ij40KL5Apz+O8nuoZgpXyvGYXGoJaFMrzXFA286ixm/K8LxjcFJCO
7wf/ALSJmww=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {16.75, 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{7., 13.999999999996009`}, {7., 5.99999999999511}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {6.3048, 10.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{7.000000000001819, 13.999999999996362`}, {
           13.499999999998181`, 10.}}]}, 
         PolygonBox[{{10.760994990022727`, 11.6855415446014}, {
          9.529366039711539, 11.973795128716784`}, {9.948643980243007, 
          12.655121782080418`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "g", "v"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {10.45755100977972, 12.715270390892044}, 
          ImageScaled[{0, 0}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{7.000000000003638, 6.}, {13.500000000003638`, 10.}}]}, 
         PolygonBox[{{9.739005009977273, 7.685541544601399}, {
          10.970633960288461`, 7.973795128716783}, {10.551356019756993`, 
          8.655121782080418}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "g", "w"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {10.45755100977972, 7.2847296091079565}, 
          ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{7., 14.}], PointBox[{7., 6.}], 
          PointBox[{13.5, 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["1",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->15.63927272727273],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            15.63927272727273]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"adbe/cf/dedfef.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "adbe/cf/dedfef.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{4.547473508864641*^-13, 14.999999999996362`}, {
          6.999999999998636, 13.999999999996362`}}], 
         PolygonBox[{{4.0939696961967, 14.415147186257615`}, {
          2.8494617613083766`, 14.188873016277919`}, {2.962598846298224, 
          14.980832611206852`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "g"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {3.7192031021678296, 15.429621715174807}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{9.094947017729282*^-13, 5.}, {6.9999999999990905`, 
          5.999999999996362}}], 
         PolygonBox[{{2.9060303038033, 5.415147186257614}, {4.150538238691624,
           5.1888730162779195`}, {4.037401153701776, 5.980832611206853}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "g"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {3.71920310216783, 4.570378284825192}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJxF1HlIFFEcB/DntkYHSYeVSynle5lgx868FaWsfkl0bKukGVqSYbljSYeS
XZrrkbRdmpStTmpWlhhmRevCpoJil+YYKZWV2UXZWnRHaWLbsz+eAzPDhxlm
3vu93/dN37gj3KhCCAWzc/Cud2UX5Afo/0HA0nitR0eZ80aQg48w1DyRzFsk
5sAX+q6rGEIDLNUlMvPZjhr9SQxjvn2IblOYl+/qG30AwyKLY68azQLkcKvv
zcAAxsTJAZS5Ijk1JAfDcGtU2BaJuaEl9UI5hqglKfoimdnXvNfrHoaOupt+
rQpzYMJ32w8MW9X9nk4nc576o9WLQFbs4yUCnQ3oq6MucCkBe+mw2k0Ss0M5
3mwkUH8497hFZl71K6Z9H4HH+ne3mhVm3wkPx2QQEPqywgaczE98tXf3EEhx
H+ct0DmANpc0f44lcLq9bKpRYq44qfwFAlddThFZZu7dF2H1IOCt3unVqjBr
y13PfMIwoiPtB0JzASUGJZ27heHZ98X5Oso8Vm/YdJ49v6z+Ey8xa/U5t49g
+LnyjU+RzGx3rd3F6uOiqyL3FeaKYlqajcFoiMtESAso6sT8ZguGt+aqHlnD
vLy/6m01hjtpJIJSZkdmg7kTQ36wf5NiYM6T3cOGE1gx8bpekpinHXgmaQmc
GxnQ5Uxn/jq+eNgaAuMqPUyyzHyt3Y4SCSwNeu5Lrcy9bq9CTQRMrbhDUYbc
tvZ9ptQ99D70N3kjJPDvFX4Jsckagf8vpPFeAKUCH89Uc2elYhD4eAf2h0+S
JIHPJ81eZHKmC3y+rxMufSqUBV6P9y9yt4pWgder68qASlEEXs/k0S9txm6B
1ztGs/ig0ynw9XiQdSdR1oh8vUZl27ZRKvL1PDXlSlKrQeTrfTHl9/Z4SeT9
sOLQwkiXDJH3y54NOZ5Fssj7SdUQaNdZRd5vrv4m7/uKyPtR9TR/fXy3yPs1
16xKQojyft7t45Ugayjvd9ubxnUipTwPMZWrI1sMlOcluH1ZcpxEeZ4abxy9
OZBOed6ij40KL5Apz+O8nuoZgpXyvGYXGoJaFMrzXFA286ixm/K8LxjcFJCO
7wf/ALSJmww=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {16.75, 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[CompressedData["
1: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
FifppGbEf/Z/jpOM/i2CPwDHyugD
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {6.0548, 10.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{7.000000000001819, 13.999999999996362`}, {
          13.499999999998181`, 10.}}], 
         PolygonBox[{{10.760994990022727`, 11.6855415446014}, {
          9.529366039711539, 11.973795128716784`}, {9.948643980243007, 
          12.655121782080418`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "g"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {10.45755100977972, 12.715270390892044}, 
          ImageScaled[{0, 0}]], 
         LineBox[{{7.000000000003638, 6.}, {13.500000000003638`, 10.}}], 
         PolygonBox[{{9.739005009977273, 7.685541544601399}, {
          10.970633960288461`, 7.973795128716783}, {10.551356019756993`, 
          8.655121782080418}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "g"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {10.45755100977972, 7.2847296091079565}, 
          ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{7., 14.}], PointBox[{7., 6.}], 
          PointBox[{13.5, 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["2",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->15.63927272727273],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            15.63927272727273]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"adbe/cf/dedfef.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "adbe/cf/dedfef.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[{{0., 15.}, {9.000000000001819, 10.}}], 
         PolygonBox[{{5.024494365672923, 12.208614241292821`}, {
          3.7812484618556246`, 12.441722848258564`}, {4.16976280679853, 
          13.141048669155794`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "g"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {4.35205345667312, 11.749856222011616}, 
          ImageScaled[{1, 1}]], 
         LineBox[{{-1.8189894035458565`*^-12, 5.}, {8.999999999996362, 10.}}],
          PolygonBox[{{3.975505634327077, 7.208614241292821}, {
          5.218751538144375, 7.441722848258563}, {4.83023719320147, 
          8.141048669155794}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "g"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {4.64794654332688, 6.7498562220116165}, 
          ImageScaled[{0, 1}]], LineBox[CompressedData["
1:eJw9lQlMFFccxmex1qoUW7zY6OrS9yjLscfME7rG6w9CoGExIB6ooLuwDEJV
1Ip3BS8Q0XpsiQyyiNWKpCoq1LYqBAngwYhLWkREbT2KlFpvjSjd7aNp3iST
yS+T3Xnve9/3/b2TMqanuHEcl0HvvqfA9V2fwH8PDkPt1vaFwYTytvYRthYE
t/wTwxeJlJ++0q4tR5C1onTyQYnyRwl7AnciCOmpGdsqUy4945WTjSD0YWvH
AA4B53U9D7YimDvE9PV4QrkrMOXHIgSzGnZlpot9vCTGWY3gUctnfxZJlFfH
fBzRjcA4ckh0k0xZc1HIU2LY+uFzt14XZaNl/YxwDPFbNiRqCabfX7nzVCqG
Lf1SChaIlLOPcs/XYRgx8HzdXomyuuJsXBaGtrfKjkaZsjEKWZZhuLM0t+qd
izJ3JEAxA4Mp87g7T3yA2z3oxbgADBXtnjZRpHzy92E7ehGgsPaX+yXKMVPL
k5oRzBbCuxwyZc2T1H5lCA68WRncn/sUOIfZT85HsLzAvc5IKB81VyynekQG
3Mv7QqSs8TVuzqH7zagus0uUP9Bl+dsR8M7wqGsyZbU1d/oFBA/KdKc5zpeu
Nz3U4zECaHaMEQjl0qi0cBWGsCmHmpNFyo6fR+VFYljwd/ezAokyN9v0Mg1D
zpb67y7JlL0eW3vWY9joGfrsnYuyuny0gupxI6KjQU80wEVqOuozMBjlJ25W
kbJj6uz4WAyvc46tK5QoL7zjfdcXw8zoOKcsU/5pU2//HgS9zdXzFJwfcIVp
p/2aEGgaehcHEcqRFbE7DiO4GeyjShP73qerl21HMLjlpKVYohwvvJdK9Zh4
c1LYNZny026znIvA9v39mwrOH7g3/JwDB6hfTh0LG0coq/Hz0noENZqBh0WR
ssEe0/iM6jPMXylJlI25B7vUGGrG+1c3yZR3f1O1PwrDquSaEqeLstflQR6L
MFgSbtXyJID6a5Xjl68wbLMsHZUi9vE55cYNGN7X37MXSpRrWxKcizEYHv0m
yDLl+Ill+dMwtD+qqne5KDuuqpZjDBG5ySGEBFL/jV275BWC6JordlGkfEP3
R9dFBBOSYtskiXKXJXP4twiCL7a9kGXKl5QNo/LQ/znTUj9sH5tM9WgyatwJ
0bL3jfYTGlHUst9XhQQlSZKW/f/Z1cU1sqxl3/cdGjWB43RsfY6h6quE6Nj6
3zpUSamiju1vTcmuB0WSju2/9BCa0izrmD7bi0MsCk7P9AttbA0dR/RMX9Vf
rZ2iqGf6T217PU+S9Ox8yqbFnWuS9ez8lswY7eN06dn53ve8m1ioNLDzX7fP
9xpPDMwfNuviZU0mA/PPIrvi8xTRwPy1yct7uivLwPw3a871bEkyMH/mnPer
I5UG5t/GMducV2UD8/fwBE/Vwk4D83/t6/kD3Die5aO0TnV8v5Jn+YnNGzQg
iPAsX/PNJ7yaTTzLX51931NR5Fk+PY51HXFl8Sy/XVzi3EKJZ/keHOkdyFfy
LP+J3R4Trsg864eIH3pKkjt51h+nNtdb/3HxrF9axdv5+5QC658nibb+AhFY
P/nZVp6RTQLrr7nh5WtSRYH1256I8z5u2QLrvwK3L/cWSwLrx8x3B0uCKwXW
n5M3RAc5ZIH166/VEJvWKbD+ndyT41RwhPWzdcXqOUVKwvp78EhrvkAI6/eZ
KmPDFRNh/R/3pt2YLBI2H8zuwz17swibH+bN6qUFEmHz5UJDhVlfSdj82Zse
e/uyTNh8Uk+yNVk7CZtfD119F2Hz7V8cvKCL
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->19.54909090909091],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            19.54909090909091]& ], {14.5, 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], 
          {Thickness[0.015], LineBox[{{8.5, 9.5}, {9.5, 10.5}}], 
           LineBox[{{8.5, 10.5}, {9.5, 9.5}}]}}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["3",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->15.63927272727273],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            15.63927272727273]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"adbd/cd/0.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "adbd/cd/0.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 0}, {0, 0}, {22, 22}], InsetBox[
     TagBox[
      StyleBox[
       TagBox[
        SubscriptBox["u", "g"],
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->23.458909090909092`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       23.458909090909092`]& ], {26.25, 25.960000000000004}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox[
        SubscriptBox["u", "g"],
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->23.458909090909092`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       23.458909090909092`]& ], {30.75, 25.960000000000004}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox["\[RightArrow]",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->23.458909090909092`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       23.458909090909092`]& ], {35.25, 25.960000000000004}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox["Z",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->23.458909090909092`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       23.458909090909092`]& ], {39.75, 25.960000000000004}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]]},
   AspectRatio->0.43333333333333335`,
   ImageSize->{512, 256},
   PlotRange->{{0, 66}, {0, 28.6}}], TraditionalForm]], "Print",
 CellChangeTimes->{{3.914574876781699*^9, 3.914574879728177*^9}, 
   3.9145750888453913`*^9, 3.914575354321808*^9, 3.914576308628619*^9, 
   3.914576560446754*^9},
 CellLabel->
  "During evaluation of \
In[33]:=",ExpressionUUID->"32ee1b0a-dfd4-4879-8f9a-e60c962d7cbe"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Paint", "[", 
   RowBox[{
    RowBox[{"diag4", "[", "0", "]"}], ",", " ", 
    RowBox[{"ColumnsXRows", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{"2", ",", " ", "1"}], "}"}]}], ",", " ", 
    RowBox[{"Numbering", " ", "->", " ", "Simple"}], ",", " ", 
    RowBox[{"ImageSize", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{"512", ",", " ", "256"}], "}"}]}]}], "]"}], ";"}]], "Code",
 CellChangeTimes->{3.914574858337884*^9},
 CellLabel->"In[34]:=",ExpressionUUID->"32414df4-8bf0-42dd-8f92-43b424c9e7f7"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Obtain the amplitudes", "Section",
 CellChangeTimes->{{3.9145749146702127`*^9, 
  3.914574919955998*^9}},ExpressionUUID->"31906d6a-5de6-4240-9209-\
aeea9f556a12"],

Cell["Some text.", "Text",
 CellChangeTimes->{{3.9145749282223167`*^9, 
  3.914574929643838*^9}},ExpressionUUID->"c10a10ba-bf40-4daa-957e-\
960bd700d3ff"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampQuarkSE", "[", "0", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{"FCFAConvert", "[", "\n", "\t", 
    RowBox[{
     RowBox[{"CreateFeynAmp", "[", 
      RowBox[{"diagQuarkSE", ",", " ", 
       RowBox[{"Truncated", " ", "->", " ", "True"}]}], "]"}], ",", "\n", 
     "\t", 
     RowBox[{"IncomingMomenta", " ", "->", " ", 
      RowBox[{"{", "p", "}"}]}], ",", "\n", "\t", 
     RowBox[{"OutgoingMomenta", " ", "->", " ", 
      RowBox[{"{", "p", "}"}]}], ",", "\n", "\t", 
     RowBox[{"LorentzIndexNames", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{"\[Mu]", ",", " ", "\[Nu]"}], "}"}]}], ",", "\n", "\t", 
     RowBox[{"DropSumOver", " ", "->", " ", "True"}], ",", "\n", "\t", 
     RowBox[{"LoopMomenta", " ", "->", " ", 
      RowBox[{"{", "q", "}"}]}], ",", "\n", "\t", 
     RowBox[{"UndoChiralSplittings", " ", "->", " ", "True"}], ",", "\n", 
     "\t", 
     RowBox[{"ChangeDimension", " ", "->", " ", "D"}], ",", "\n", "\t", 
     RowBox[{"List", " ", "->", " ", "False"}], ",", "\n", "\t", 
     RowBox[{"SMP", " ", "->", " ", "True"}], ",", "\n", "\t", 
     RowBox[{"FinalSubstitutions", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Zm", "->", 
         RowBox[{"SMP", "[", "\"\<Z_m\>\"", "]"}]}], ",", " ", 
        RowBox[{"Zpsi", "->", 
         RowBox[{"SMP", "[", "\"\<Z_psi\>\"", "]"}]}], ",", "\n", "\t", 
        RowBox[{
         RowBox[{"SMP", "[", "\"\<m_u\>\"", "]"}], "->", "0"}]}], "}"}]}]}], 
    "\n", "]"}], " ", "+", " ", 
   RowBox[{"FCFAConvert", "[", "\n", "\t", 
    RowBox[{
     RowBox[{"CreateFeynAmp", "[", 
      RowBox[{"diagQuarkSECT", ",", " ", 
       RowBox[{"Truncated", " ", "->", " ", "True"}]}], "]"}], ",", "\n", 
     "\t", 
     RowBox[{"IncomingMomenta", " ", "->", " ", 
      RowBox[{"{", "p", "}"}]}], ",", "\n", "\t", 
     RowBox[{"OutgoingMomenta", " ", "->", " ", 
      RowBox[{"{", "p", "}"}]}], ",", "\n", "\t", 
     RowBox[{"LorentzIndexNames", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{"\[Mu]", ",", " ", "\[Nu]"}], "}"}]}], ",", "\n", "\t", 
     RowBox[{"DropSumOver", " ", "->", " ", "True"}], ",", "\n", "\t", 
     RowBox[{"LoopMomenta", " ", "->", " ", 
      RowBox[{"{", "q", "}"}]}], ",", "\n", "\t", 
     RowBox[{"UndoChiralSplittings", " ", "->", " ", "True"}], ",", "\n", 
     "\t", 
     RowBox[{"ChangeDimension", " ", "->", " ", "D"}], ",", "\n", "\t", 
     RowBox[{"List", " ", "->", " ", "False"}], ",", "\n", "\t", 
     RowBox[{"SMP", " ", "->", " ", "True"}], ",", "\n", "\t", 
     RowBox[{"FinalSubstitutions", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"dMf1", "[", "__", "]"}], "->", 
         RowBox[{"SMP", "[", "\"\<Z_m\>\"", "]"}]}], ",", " ", 
        RowBox[{
         RowBox[{"dZfL1", "[", "__", "]"}], "->", 
         RowBox[{"SMP", "[", "\"\<Z_psi\>\"", "]"}]}], ",", "\n", "\t", 
        RowBox[{
         RowBox[{"dZfR1", "[", "__", "]"}], "->", 
         RowBox[{"SMP", "[", "\"\<Z_psi\>\"", "]"}]}], ",", " ", 
        RowBox[{
         RowBox[{"SMP", "[", "\"\<m_u\>\"", "]"}], "->", "0"}]}], "}"}]}]}], 
    "\n", "]"}]}]}]], "Code",
 CellChangeTimes->{{3.9145749323950787`*^9, 3.9145750642106*^9}, {
   3.914575114114571*^9, 3.914575140895885*^9}, {3.9145752139330482`*^9, 
   3.9145752309563723`*^9}, 3.9145752957831707`*^9, {3.914575403525599*^9, 
   3.914575408291696*^9}, {3.914575627947624*^9, 3.914575639390836*^9}, {
   3.9145763894920387`*^9, 3.9145764238332357`*^9}, {3.914576914638637*^9, 
   3.914576993535039*^9}},
 CellLabel->"In[53]:=",ExpressionUUID->"6a53bd45-a3ce-4cb3-ac6b-7451c467ae24"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FormBox[
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"\[ImaginaryI]", " ", 
          SqrtBox["2"], " ", 
          SuperscriptBox[
           OverscriptBox["\[Gamma]", "_"], 
           FormBox["7",
            TraditionalForm]], " ", 
          TemplateBox[{"SqrtEGl"},
           "Conjugate"], " ", 
          SubscriptBox["g", "s"], " ", 
          SubsuperscriptBox["T", 
           RowBox[{
            FormBox[
             FormBox["Col2",
              TraditionalForm],
             TraditionalForm], 
            FormBox[
             FormBox["Col3",
              TraditionalForm],
             TraditionalForm]}], 
           FormBox[
            FormBox["Glu3",
             TraditionalForm],
            TraditionalForm]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox[
               OverscriptBox["Q", "~"], 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], ",", "2"}]], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{"\[ImaginaryI]", " ", 
          SqrtBox["2"], " ", "SqrtEGl", " ", 
          SuperscriptBox[
           OverscriptBox["\[Gamma]", "_"], 
           FormBox["6",
            TraditionalForm]], " ", 
          SubscriptBox["g", "s"], " ", 
          SubsuperscriptBox["T", 
           RowBox[{
            FormBox[
             FormBox["Col2",
              TraditionalForm],
             TraditionalForm], 
            FormBox[
             FormBox["Col3",
              TraditionalForm],
             TraditionalForm]}], 
           FormBox[
            FormBox["Glu3",
             TraditionalForm],
            TraditionalForm]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox[
               OverscriptBox["Q", "~"], 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], ",", "1"}]], ")"}]},
           "Conjugate"]}]}], ")"}], ".", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["m", 
          OverscriptBox["g", "~"]], "+", 
         RowBox[{"\[Gamma]", "\[CenterDot]", 
          FormBox[
           FormBox["q",
            TraditionalForm],
           TraditionalForm]}]}], ")"}], ".", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"\[ImaginaryI]", " ", 
          SqrtBox["2"], " ", "SqrtEGl", " ", 
          SuperscriptBox[
           OverscriptBox["\[Gamma]", "_"], 
           FormBox["6",
            TraditionalForm]], " ", 
          SubscriptBox["g", "s"], " ", 
          SubsuperscriptBox["T", 
           RowBox[{
            FormBox[
             FormBox["Col3",
              TraditionalForm],
             TraditionalForm], 
            FormBox[
             FormBox["Col1",
              TraditionalForm],
             TraditionalForm]}], 
           FormBox[
            FormBox["Glu3",
             TraditionalForm],
            TraditionalForm]], " ", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], ",", "2"}]]}], "-", 
         RowBox[{"\[ImaginaryI]", " ", 
          SqrtBox["2"], " ", 
          SuperscriptBox[
           OverscriptBox["\[Gamma]", "_"], 
           FormBox["7",
            TraditionalForm]], " ", 
          TemplateBox[{"SqrtEGl"},
           "Conjugate"], " ", 
          SubscriptBox["g", "s"], " ", 
          SubsuperscriptBox["T", 
           RowBox[{
            FormBox[
             FormBox["Col3",
              TraditionalForm],
             TraditionalForm], 
            FormBox[
             FormBox["Col1",
              TraditionalForm],
             TraditionalForm]}], 
           FormBox[
            FormBox["Glu3",
             TraditionalForm],
            TraditionalForm]], " ", 
          SubscriptBox[
           OverscriptBox["Q", "~"], 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], ",", "1"}]]}]}], ")"}]}]}], 
     RowBox[{"16", " ", 
      SuperscriptBox["\[Pi]", "4"], " ", 
      RowBox[{
       RowBox[{"(", 
        InterpretationBox[
         RowBox[{
          SuperscriptBox[
           FormBox[
            FormBox["q",
             TraditionalForm],
            TraditionalForm], "2"], "\[InvisibleSpace]", "\<\"-\"\>", 
          "\[InvisibleSpace]", 
          SubsuperscriptBox["m", 
           OverscriptBox["g", "~"], "2"]}],
         SequenceForm[
          FeynCalc`Pair[
           FeynCalc`Momentum[$CellContext`q, D], 
           FeynCalc`Momentum[$CellContext`q, D]], "-", TreeLevel`MGl^2],
         Editable->False], ")"}], ".", 
       RowBox[{"(", 
        InterpretationBox[
         RowBox[{
          SuperscriptBox[
           RowBox[{
            FormBox["\<\"(\"\>",
             TraditionalForm], 
            FormBox[
             FormBox[
              RowBox[{
               FormBox["q",
                TraditionalForm], "-", 
               FormBox["p",
                TraditionalForm]}],
              TraditionalForm],
             TraditionalForm], 
            FormBox["\<\")\"\>",
             TraditionalForm]}], "2"], "\[InvisibleSpace]", "\<\"-\"\>", 
          "\[InvisibleSpace]", 
          SubsuperscriptBox["m", 
           SubscriptBox[
            OverscriptBox["q", "~"], 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm]], "2"]}],
         SequenceForm[
          FeynCalc`Pair[
           FeynCalc`Momentum[-$CellContext`p + $CellContext`q, D], 
           FeynCalc`Momentum[-$CellContext`p + $CellContext`q, D]], "-", 
          TreeLevel`MSf[
            FeynArts`Index[TreeLevel`Sfermion, 3], 3, 1]^2],
         Editable->False], ")"}]}]}]],
    TraditionalForm], "-", 
   RowBox[{"\[ImaginaryI]", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"\[ImaginaryI]", " ", 
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
         RowBox[{"-", 
          FractionBox[
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["Z", "\[Psi]"], ")"}]},
            "Conjugate"], "2"]}], "-", 
         FractionBox[
          SubscriptBox["Z", "\[Psi]"], "2"]}], ")"}], " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"-", 
          RowBox[{"(", 
           RowBox[{"\[Gamma]", "\[CenterDot]", 
            FormBox[
             FormBox["p",
              TraditionalForm],
             TraditionalForm]}], ")"}]}], ")"}], ".", 
        SuperscriptBox[
         OverscriptBox["\[Gamma]", "_"], 
         FormBox["7",
          TraditionalForm]]}]}], "+", 
      RowBox[{"\[ImaginaryI]", " ", 
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
         FractionBox[
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["Z", "\[Psi]"], ")"}]},
           "Conjugate"], "2"], "+", 
         FractionBox[
          SubscriptBox["Z", "\[Psi]"], "2"]}], ")"}], " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"\[Gamma]", "\[CenterDot]", 
          FormBox[
           FormBox["p",
            TraditionalForm],
           TraditionalForm]}], ")"}], ".", 
        SuperscriptBox[
         OverscriptBox["\[Gamma]", "_"], 
         FormBox["6",
          TraditionalForm]]}]}], "-", 
      RowBox[{"\[ImaginaryI]", " ", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], " ", 
       SubscriptBox["Z", "m"], " ", 
       SubscriptBox["\[Delta]", 
        RowBox[{
         FormBox[
          FormBox["Col1",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Col2",
           TraditionalForm],
          TraditionalForm]}]]}], "-", 
      RowBox[{"\[ImaginaryI]", " ", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], " ", 
       SubscriptBox["Z", "m"], " ", 
       SubscriptBox["\[Delta]", 
        RowBox[{
         FormBox[
          FormBox["Col1",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Col2",
           TraditionalForm],
          TraditionalForm]}]]}]}], ")"}]}], "-", 
   FormBox[
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", 
      SuperscriptBox["g", 
       RowBox[{
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm], 
        FormBox[
         FormBox["\[Nu]",
          TraditionalForm],
         TraditionalForm]}]], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "\[ImaginaryI]"}], " ", 
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Nu]",
            TraditionalForm],
           TraditionalForm]], " ", 
         SubscriptBox["g", "s"], " ", 
         SubsuperscriptBox["T", 
          RowBox[{
           FormBox[
            FormBox["Col2",
             TraditionalForm],
            TraditionalForm], 
           FormBox[
            FormBox["Col3",
             TraditionalForm],
            TraditionalForm]}], 
          FormBox[
           FormBox["Glu3",
            TraditionalForm],
           TraditionalForm]]}], ")"}], ".", 
       RowBox[{"(", 
        RowBox[{"\[Gamma]", "\[CenterDot]", 
         FormBox[
          FormBox["q",
           TraditionalForm],
          TraditionalForm]}], ")"}], ".", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "\[ImaginaryI]"}], " ", 
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], " ", 
         SubscriptBox["g", "s"], " ", 
         SubsuperscriptBox["T", 
          RowBox[{
           FormBox[
            FormBox["Col3",
             TraditionalForm],
            TraditionalForm], 
           FormBox[
            FormBox["Col1",
             TraditionalForm],
            TraditionalForm]}], 
          FormBox[
           FormBox["Glu3",
            TraditionalForm],
           TraditionalForm]]}], ")"}]}]}], 
     RowBox[{"16", " ", 
      SuperscriptBox["\[Pi]", "4"], " ", 
      RowBox[{
       InterpretationBox[
        SuperscriptBox[
         FormBox[
          FormBox["q",
           TraditionalForm],
          TraditionalForm], "2"],
        SequenceForm[
         FeynCalc`Pair[
          FeynCalc`Momentum[$CellContext`q, D], 
          FeynCalc`Momentum[$CellContext`q, D]]],
        Editable->False], ".", 
       InterpretationBox[
        SuperscriptBox[
         RowBox[{
          FormBox["\<\"(\"\>",
           TraditionalForm], 
          FormBox[
           FormBox[
            RowBox[{
             FormBox["q",
              TraditionalForm], "-", 
             FormBox["p",
              TraditionalForm]}],
            TraditionalForm],
           TraditionalForm], 
          FormBox["\<\")\"\>",
           TraditionalForm]}], "2"],
        SequenceForm[
         FeynCalc`Pair[
          FeynCalc`Momentum[-$CellContext`p + $CellContext`q, D], 
          FeynCalc`Momentum[-$CellContext`p + $CellContext`q, D]]],
        Editable->False]}]}]],
    TraditionalForm]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.914575052920919*^9, {3.914575089031087*^9, 3.9145750893814297`*^9}, 
   3.914575141640571*^9, 3.9145752379762583`*^9, 3.914575296647696*^9, 
   3.914575354462061*^9, {3.914575404137352*^9, 3.91457540875249*^9}, 
   3.9145756423206053`*^9, 3.914576308840642*^9, 3.9145764273142138`*^9, 
   3.914576479502083*^9, 3.914576560660631*^9, {3.914576985017625*^9, 
   3.9145769948184834`*^9}},
 CellLabel->"Out[53]=",ExpressionUUID->"9fc02a8d-1a2a-4a13-afd0-74b08e761092"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Calculate the amplitudes", "Section",
 CellChangeTimes->{{3.914575668950384*^9, 
  3.914575675283248*^9}},ExpressionUUID->"a75b00ae-7f3a-42c5-9ea8-\
228a5a55557a"],

Cell[CellGroupData[{

Cell["Quark self-energy", "Subsection",
 CellChangeTimes->{{3.914575682808432*^9, 
  3.9145756875731153`*^9}},ExpressionUUID->"5fb3249a-2a16-4578-8abb-\
4407375a385c"],

Cell["Some text", "Text",
 CellChangeTimes->{{3.914575689930893*^9, 
  3.914575693724884*^9}},ExpressionUUID->"fdebe3dc-fda7-4880-ba4b-\
d10189a5cb1c"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"ampQuarkSE", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"ampQuarkSE", "[", "0", "]"}], "//", 
       RowBox[{
        RowBox[{"SelectFree2", "[", 
         RowBox[{"#", ",", " ", "SqrtEGl"}], "]"}], "&"}]}], "//", 
      "SUNSimplify"}], "//", "DiracSimplify"}], "//", "\n", "\t", 
    RowBox[{
     RowBox[{"TID", "[", 
      RowBox[{"#", ",", "l", ",", 
       RowBox[{"UsePaVeBasis", "->", "True"}], ",", 
       RowBox[{"ToPaVe", "->", "True"}]}], "]"}], "&"}]}]}], ";"}]], "Code",
 CellChangeTimes->{{3.914575695650922*^9, 3.914575751381132*^9}, 
   3.914576311078836*^9, {3.914576498433462*^9, 3.914576521614826*^9}, {
   3.914576699501038*^9, 3.9145767286649857`*^9}, {3.914577005384384*^9, 
   3.914577015314972*^9}},
 CellLabel->"In[55]:=",ExpressionUUID->"4dcc74a2-e6cc-47d2-9c5f-f7e955d1c8d1"],

Cell["Discard all the finite pieces of the 1-loop amplitude.", "Text",
 CellChangeTimes->{{3.914575760905298*^9, 
  3.914575773152245*^9}},ExpressionUUID->"07a229b4-97b9-4501-ae63-\
3860530369b7"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"ampQuarkSEDiv", "[", "0", "]"}], "=", 
   RowBox[{
    RowBox[{"ampQuarkSE", "[", "1", "]"}], "//", 
    RowBox[{
     RowBox[{"PaVeUVPart", "[", 
      RowBox[{"#", ",", 
       RowBox[{"Prefactor", "->", 
        RowBox[{"1", "/", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"2", "Pi"}], ")"}], "^", "D"}]}]}]}], "]"}], "&"}]}]}], 
  ";"}]], "Code",
 CellChangeTimes->{{3.914575774640349*^9, 3.914575814619986*^9}, 
   3.9145763206515303`*^9},
 CellLabel->"In[56]:=",ExpressionUUID->"fdf30683-fdbc-4649-8751-412388ff38e5"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampQuarkSEDiv", "[", "1", "]"}], "=", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"FCReplaceD", "[", 
       RowBox[{
        RowBox[{"ampQuarkSEDiv", "[", "0", "]"}], ",", 
        RowBox[{"D", "->", 
         RowBox[{"4", "-", 
          RowBox[{"2", "Epsilon"}]}]}]}], "]"}], "//", "\n", "\t", 
      RowBox[{
       RowBox[{"Series", "[", 
        RowBox[{"#", ",", 
         RowBox[{"{", 
          RowBox[{"Epsilon", ",", "0", ",", "0"}], "}"}]}], "]"}], "&"}]}], "//",
      "Normal"}], "//", "FCHideEpsilon"}], "//", "Simplify"}]}]], "Code",
 CellChangeTimes->{{3.914575819158785*^9, 3.9145758830227823`*^9}, 
   3.91457632775228*^9, {3.914576588185513*^9, 3.9145765924940367`*^9}, {
   3.9145766284047728`*^9, 3.9145766285410337`*^9}},
 CellLabel->"In[57]:=",ExpressionUUID->"5ada759b-cf95-4642-b2b6-5cf7337a3f67"],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["C", "A"], "-", 
      RowBox[{"2", " ", 
       SubscriptBox["C", "F"]}]}], ")"}], " ", 
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
      RowBox[{"8", " ", 
       SuperscriptBox["\[Pi]", "4"], " ", 
       SubscriptBox["C", "A"], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubscriptBox["Z", "\[Psi]"], ")"}]},
        "Conjugate"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{"\[Gamma]", "\[CenterDot]", 
            FormBox[
             FormBox["p",
              TraditionalForm],
             TraditionalForm]}], ")"}], ".", 
          SuperscriptBox[
           OverscriptBox["\[Gamma]", "_"], 
           FormBox["6",
            TraditionalForm]]}], "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"\[Gamma]", "\[CenterDot]", 
            FormBox[
             FormBox["p",
              TraditionalForm],
             TraditionalForm]}], ")"}], ".", 
          SuperscriptBox[
           OverscriptBox["\[Gamma]", "_"], 
           FormBox["7",
            TraditionalForm]]}]}], ")"}]}], "+", 
      RowBox[{"8", " ", 
       SuperscriptBox["\[Pi]", "4"], " ", 
       SubscriptBox["C", "A"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubscriptBox["Z", "\[Psi]"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{"\[Gamma]", "\[CenterDot]", 
               FormBox[
                FormBox["p",
                 TraditionalForm],
                TraditionalForm]}], ")"}], ".", 
             SuperscriptBox[
              OverscriptBox["\[Gamma]", "_"], 
              FormBox["6",
               TraditionalForm]]}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"\[Gamma]", "\[CenterDot]", 
               FormBox[
                FormBox["p",
                 TraditionalForm],
                TraditionalForm]}], ")"}], ".", 
             SuperscriptBox[
              OverscriptBox["\[Gamma]", "_"], 
              FormBox["7",
               TraditionalForm]]}]}], ")"}]}], "-", 
         RowBox[{"2", " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox[
             OverscriptBox["\[Gamma]", "_"], 
             FormBox["6",
              TraditionalForm]], "+", 
            SuperscriptBox[
             OverscriptBox["\[Gamma]", "_"], 
             FormBox["7",
              TraditionalForm]]}], ")"}], " ", 
          SubscriptBox["Z", "m"]}]}], ")"}]}], "+", 
      FormBox[
       RowBox[{"-", 
        FractionBox[
         RowBox[{"\[ImaginaryI]", " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
          SubsuperscriptBox["g", "s", "2"], " ", 
          RowBox[{"\[Gamma]", "\[CenterDot]", 
           FormBox[
            FormBox["q",
             TraditionalForm],
            TraditionalForm]}]}], 
         RowBox[{
          InterpretationBox[
           SuperscriptBox[
            FormBox[
             FormBox["q",
              TraditionalForm],
             TraditionalForm], "2"],
           SequenceForm[
            FeynCalc`Pair[
             FeynCalc`Momentum[$CellContext`q, D], 
             FeynCalc`Momentum[$CellContext`q, D]]],
           Editable->False], ".", 
          InterpretationBox[
           SuperscriptBox[
            RowBox[{
             FormBox["\<\"(\"\>",
              TraditionalForm], 
             FormBox[
              FormBox[
               RowBox[{
                FormBox["p",
                 TraditionalForm], "-", 
                FormBox["q",
                 TraditionalForm]}],
               TraditionalForm],
              TraditionalForm], 
             FormBox["\<\")\"\>",
              TraditionalForm]}], "2"],
           SequenceForm[
            FeynCalc`Pair[
             FeynCalc`Momentum[$CellContext`p - $CellContext`q, D], 
             FeynCalc`Momentum[$CellContext`p - $CellContext`q, D]]],
           Editable->False]}]]}],
       TraditionalForm]}], ")"}]}], 
   RowBox[{"16", " ", 
    SuperscriptBox["\[Pi]", "4"]}]], TraditionalForm]], "Output",
 CellChangeTimes->{3.9145763089487762`*^9, 3.9145765248936872`*^9, 
  3.9145765608221827`*^9, 3.9145765928772707`*^9, 3.914576628788353*^9, 
  3.914577023806427*^9},
 CellLabel->"Out[57]=",ExpressionUUID->"e44e2a80-6953-408f-958a-137549b78cf2"]
}, Open  ]],

Cell[BoxData[" "], "Input",
 CellChangeTimes->{
  3.914576650670397*^9},ExpressionUUID->"d5f6d84d-7437-4cbf-b006-\
e8573054a1d0"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampQuarkSEDiv", "[", "2", "]"}], "=", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"ampQuarkSEDiv", "[", "1", "]"}], "//", 
       RowBox[{
        RowBox[{"ReplaceRepeated", "[", 
         RowBox[{"#", ",", 
          RowBox[{"{", "\n", "\t", 
           RowBox[{
            RowBox[{
             RowBox[{"SMP", "[", "\"\<Z_m\>\"", "]"}], "->", 
             RowBox[{"1", "+", 
              RowBox[{"alpha", " ", 
               RowBox[{"SMP", "[", "\"\<d_m\>\"", "]"}]}]}]}], ",", "\n", 
            "\t", 
            RowBox[{
             RowBox[{"SMP", "[", "\"\<Z_psi\>\"", "]"}], "->", 
             RowBox[{"1", "+", 
              RowBox[{"alpha", " ", 
               RowBox[{"SMP", "[", "\"\<d_psi\>\"", "]"}]}]}]}]}], "}"}]}], 
         "]"}], "&"}]}], "//", 
      RowBox[{
       RowBox[{"Series", "[", 
        RowBox[{"#", ",", 
         RowBox[{"{", 
          RowBox[{"alpha", ",", "0", ",", "1"}], "}"}]}], "]"}], "&"}]}], "//",
      "\n", "\t", "Normal"}], "//", 
    RowBox[{
     RowBox[{"ReplaceAll", "[", 
      RowBox[{"#", ",", 
       RowBox[{"alpha", "->", "1"}]}], "]"}], "&"}]}], "//", 
   RowBox[{
    RowBox[{"SelectNotFree2", "[", 
     RowBox[{"#", ",", 
      RowBox[{"SMP", "[", "\"\<Delta\>\"", "]"}], ",", 
      RowBox[{"SMP", "[", "\"\<d_m\>\"", "]"}], ",", "\n", "\t", 
      RowBox[{"SMP", "[", "\"\<d_psi\>\"", "]"}]}], "]"}], "&"}]}]}]], "Code",\

 CellChangeTimes->{{3.91457588791752*^9, 3.914576033332181*^9}, 
   3.914576339848319*^9},
 CellLabel->"In[58]:=",ExpressionUUID->"b54e4ebe-9448-42c1-962a-2a87d322a1b5"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    FractionBox["1", "2"], " ", 
    SubscriptBox["C", "A"], " ", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["C", "A"], "-", 
      RowBox[{"2", " ", 
       SubscriptBox["C", "F"]}]}], ")"}], " ", 
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
    TemplateBox[{
      RowBox[{"(", 
        SubscriptBox["\[Delta]", "\[Psi]"], ")"}]},
     "Conjugate"], " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}], ")"}], ".", 
     SuperscriptBox[
      OverscriptBox["\[Gamma]", "_"], 
      FormBox["6",
       TraditionalForm]]}]}], "+", 
   RowBox[{
    FractionBox["1", "2"], " ", 
    SubscriptBox["C", "A"], " ", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["C", "A"], "-", 
      RowBox[{"2", " ", 
       SubscriptBox["C", "F"]}]}], ")"}], " ", 
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
    TemplateBox[{
      RowBox[{"(", 
        SubscriptBox["\[Delta]", "\[Psi]"], ")"}]},
     "Conjugate"], " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}], ")"}], ".", 
     SuperscriptBox[
      OverscriptBox["\[Gamma]", "_"], 
      FormBox["7",
       TraditionalForm]]}]}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], "+", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], ")"}], " ", 
    SubscriptBox["C", "A"], " ", 
    SubscriptBox["\[Delta]", "m"], " ", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["C", "A"], "-", 
      RowBox[{"2", " ", 
       SubscriptBox["C", "F"]}]}], ")"}], " ", 
    SubscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Col1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Col2",
        TraditionalForm],
       TraditionalForm]}]]}], "+", 
   RowBox[{
    FractionBox["1", "2"], " ", 
    SubscriptBox["C", "A"], " ", 
    SubscriptBox["\[Delta]", "\[Psi]"], " ", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["C", "A"], "-", 
      RowBox[{"2", " ", 
       SubscriptBox["C", "F"]}]}], ")"}], " ", 
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
      RowBox[{
       RowBox[{"(", 
        RowBox[{"\[Gamma]", "\[CenterDot]", 
         FormBox[
          FormBox["p",
           TraditionalForm],
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]]}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"\[Gamma]", "\[CenterDot]", 
         FormBox[
          FormBox["p",
           TraditionalForm],
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}]}], ")"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.9145763090009327`*^9, {3.9145765269715157`*^9, 3.914576560864656*^9}, 
   3.9145770288746777`*^9},
 CellLabel->"Out[58]=",ExpressionUUID->"1fee1718-c5f4-43d2-ba6d-43893d7809be"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampQuarkSEDiv", "[", "3", "]"}], "=", 
  RowBox[{
   RowBox[{
    RowBox[{"ampQuarkSEDiv", "[", "2", "]"}], "//", "SUNSimplify"}], "//", 
   "\n", "\t", 
   RowBox[{
    RowBox[{"Collect2", "[", 
     RowBox[{"#", ",", "DiracGamma", ",", 
      RowBox[{"Factoring", "->", "Simplify"}]}], "]"}], "&"}]}]}]], "Code",
 CellChangeTimes->{{3.914576042299127*^9, 3.914576080351676*^9}, 
   3.914576346662568*^9, {3.914576688256481*^9, 3.914576691129487*^9}, {
   3.914577036467249*^9, 3.914577036597219*^9}},
 CellLabel->"In[60]:=",ExpressionUUID->"6de71fd3-b077-4544-a30d-61cb2e5ee74f"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    FractionBox["1", "2"], " ", 
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
    TemplateBox[{
      RowBox[{"(", 
        SubscriptBox["\[Delta]", "\[Psi]"], ")"}]},
     "Conjugate"], " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}], ")"}], ".", 
     SuperscriptBox[
      OverscriptBox["\[Gamma]", "_"], 
      FormBox["6",
       TraditionalForm]]}]}], "+", 
   RowBox[{
    FractionBox["1", "2"], " ", 
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
    TemplateBox[{
      RowBox[{"(", 
        SubscriptBox["\[Delta]", "\[Psi]"], ")"}]},
     "Conjugate"], " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}], ")"}], ".", 
     SuperscriptBox[
      OverscriptBox["\[Gamma]", "_"], 
      FormBox["7",
       TraditionalForm]]}]}], "-", 
   RowBox[{
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["6",
      TraditionalForm]], " ", 
    SubscriptBox["\[Delta]", "m"], " ", 
    SubscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Col1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Col2",
        TraditionalForm],
       TraditionalForm]}]]}], "-", 
   RowBox[{
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["7",
      TraditionalForm]], " ", 
    SubscriptBox["\[Delta]", "m"], " ", 
    SubscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Col1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Col2",
        TraditionalForm],
       TraditionalForm]}]]}], "+", 
   RowBox[{
    FractionBox["1", "2"], " ", 
    SubscriptBox["\[Delta]", "\[Psi]"], " ", 
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
    RowBox[{
     RowBox[{"(", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}], ")"}], ".", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], "+", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}], ")"}]}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.9145763090463963`*^9, {3.9145765330782537`*^9, 3.914576560911056*^9}, {
   3.914577032230495*^9, 3.914577037330236*^9}},
 CellLabel->"Out[60]=",ExpressionUUID->"9f6393f0-3b03-424f-bbef-6d6a5e43bb6c"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"sol", "[", "1", "]"}], "=", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"Solve", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"ampQuarkSEDiv", "[", "3", "]"}], "==", "0"}], ",", 
         RowBox[{"SMP", "[", "\"\<d_psi\>\"", "]"}]}], "]"}], "//", "\n", 
       "\t", "Flatten"}], "//", 
      RowBox[{
       RowBox[{"ReplaceAll", "[", 
        RowBox[{"#", ",", 
         RowBox[{
          RowBox[{"Rule", "[", 
           RowBox[{"a_", ",", "b_"}], "]"}], ":>", 
          RowBox[{"Rule", "[", 
           RowBox[{"a", ",", 
            RowBox[{"SUNSimplify", "[", "b", "]"}]}], "]"}]}]}], "]"}], 
       "&"}]}], "//", "\n", "\t", 
     RowBox[{
      RowBox[{"ReplaceAll", "[", 
       RowBox[{"#", ",", 
        RowBox[{
         RowBox[{
          RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}], "^", "2"}], "->", 
         RowBox[{"4", "Pi", " ", 
          RowBox[{"SMP", "[", "\"\<alpha_s\>\"", "]"}]}]}]}], "]"}], 
      "&"}]}]}], ";"}], "\n"}], "\n", 
 RowBox[{"solMS1", "=", 
  RowBox[{
   RowBox[{"sol", "[", "1", "]"}], "/.", 
   RowBox[{"{", "\n", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{"SMP", "[", "\"\<d_psi\>\"", "]"}], "->", 
      RowBox[{"SMP", "[", "\"\<d_psi^MS\>\"", "]"}]}], ",", 
     RowBox[{
      RowBox[{"SMP", "[", "\"\<Delta\>\"", "]"}], "->", 
      RowBox[{"1", "/", "Epsilon"}]}]}], "\n", "}"}]}]}], "\n", 
 RowBox[{"solMSbar1", "=", 
  RowBox[{
   RowBox[{"sol", "[", "1", "]"}], "/.", 
   RowBox[{"{", "\n", "\t", 
    RowBox[{
     RowBox[{"SMP", "[", "\"\<d_psi\>\"", "]"}], "->", 
     RowBox[{"SMP", "[", "\"\<d_psi^MSbar\>\"", "]"}]}], "\n", 
    "}"}]}]}]}], "Code",
 CellChangeTimes->{{3.914576085071594*^9, 3.914576271429175*^9}, 
   3.914576362715526*^9},
 CellLabel->"In[61]:=",ExpressionUUID->"cada339f-0f42-455e-bcff-a191a7599925"],

Cell[BoxData[
 FormBox[
  RowBox[{"{", "}"}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.914576034694969*^9, {3.9145763090940657`*^9, 3.9145763092454042`*^9}, {
   3.914576533922845*^9, 3.914576561088736*^9}},
 CellLabel->"Out[45]=",ExpressionUUID->"58cd0272-74d5-4a7e-803f-7640c8281d70"],

Cell[BoxData[
 FormBox[
  RowBox[{"{", "}"}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.914576034694969*^9, {3.9145763090940657`*^9, 3.9145763092454042`*^9}, {
   3.914576533922845*^9, 3.914576561089583*^9}},
 CellLabel->"Out[46]=",ExpressionUUID->"4cca502f-da0e-4d86-83e1-fa0a1bdac8e3"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1383, 765},
WindowMargins->{{-2.25, Automatic}, {Automatic, -22.5}},
FrontEndVersion->"14.0 for Linux x86 (64-bit) (December 12, 2023)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"652657c7-60f5-4bae-9b84-ba29c6686c6f"
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
Cell[580, 22, 265, 6, 98, "Title",ExpressionUUID->"6ed265d2-bf75-499b-939e-b38606ee57c8"],
Cell[848, 30, 282, 7, 35, "Text",ExpressionUUID->"b6e04ede-9349-47f5-81c1-12a6ab1ad69f"],
Cell[CellGroupData[{
Cell[1155, 41, 161, 3, 67, "Section",ExpressionUUID->"71dc81fc-87e4-4083-8208-de3a134a8225"],
Cell[1319, 46, 312, 7, 35, "Text",ExpressionUUID->"1ced22e6-0008-4974-a063-20d9ccf3e3c9"],
Cell[CellGroupData[{
Cell[1656, 57, 1366, 35, 287, "Code",ExpressionUUID->"f768582f-208b-4368-8c00-048b2134443a"],
Cell[CellGroupData[{
Cell[3047, 96, 2831, 72, 30, "Print",ExpressionUUID->"eec66c18-008a-4846-87ac-81fde2674ffd"],
Cell[5881, 170, 2016, 53, 30, "Print",ExpressionUUID->"4969fd57-de0f-49b7-b46c-47d966a88edc"],
Cell[7900, 225, 549, 11, 26, "Print",ExpressionUUID->"a53c0d01-4e62-4c02-9a80-5af252147677"],
Cell[8452, 238, 595, 13, 26, "Print",ExpressionUUID->"6f45c114-cff1-40c9-886f-0485f6520c02"],
Cell[9050, 253, 2201, 60, 30, "Print",ExpressionUUID->"23bf6e05-3611-43fe-84c4-a8c3b8c47f6b"],
Cell[11254, 315, 487, 10, 26, "Print",ExpressionUUID->"5c948e4c-d55e-474e-98b6-f01e5c801a6a"],
Cell[11744, 327, 523, 11, 26, "Print",ExpressionUUID->"0fc7b373-829b-4e5f-b193-3bb26b3a89ca"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[12316, 344, 631, 15, 110, "Code",ExpressionUUID->"c09a340c-f42d-4ecf-91c4-86797bb611e6"],
Cell[12950, 361, 952, 19, 28, "Message",ExpressionUUID->"68c22608-5c57-48cb-8b17-42ac177f0305"],
Cell[13905, 382, 967, 19, 28, "Message",ExpressionUUID->"81c2c2ac-8fae-4308-8167-5df10c926182"],
Cell[14875, 403, 944, 19, 28, "Message",ExpressionUUID->"15481c0c-6e93-454f-a3b3-e0861cba6d18"]
}, Open  ]],
Cell[15834, 425, 844, 19, 74, "Code",ExpressionUUID->"c27ce459-574d-4b02-af7e-05e95659f54a"],
Cell[16681, 446, 280, 6, 35, "Text",ExpressionUUID->"e5a0135f-7b78-4ce1-8c26-ab2e014a94cb"],
Cell[CellGroupData[{
Cell[16986, 456, 867, 21, 91, "Code",ExpressionUUID->"7b818ea2-6646-4c5e-875d-9558add8f116"],
Cell[17856, 479, 356, 6, 24, "Print",ExpressionUUID->"f718611e-cb4a-4d31-9641-e3edcfc01fbd"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[18261, 491, 172, 3, 67, "Section",ExpressionUUID->"68d0844d-6266-4689-85b5-bdbd19865d1e"],
Cell[18436, 496, 151, 3, 35, "Text",ExpressionUUID->"50360045-3565-4530-bddf-f6188de982be"],
Cell[18590, 501, 7098, 171, 926, "Code",ExpressionUUID->"86e63125-c621-4e47-9582-81b20677c7be"],
Cell[25691, 674, 6244, 169, 236, "Code",ExpressionUUID->"6430845d-dd98-413d-9ff1-f0b6e5eb4bba"],
Cell[31938, 845, 1811, 48, 115, "Code",ExpressionUUID->"f633392b-8a16-43bf-bbbc-0babf081b3d4"],
Cell[CellGroupData[{
Cell[33774, 897, 872, 17, 53, "Code",ExpressionUUID->"bfc21cdb-a808-4fb6-9737-542ec93ca509"],
Cell[34649, 916, 13292, 299, 264, "Print",ExpressionUUID->"7222dbac-b900-487e-8b65-64663ec696ad"]
}, Open  ]],
Cell[47956, 1218, 573, 13, 53, "Code",ExpressionUUID->"49647fd4-1c06-4e9f-b447-c893ba307761"],
Cell[CellGroupData[{
Cell[48554, 1235, 571, 13, 53, "Code",ExpressionUUID->"362d2f96-9292-414c-bac4-400c7c9a3a66"],
Cell[49128, 1250, 20257, 447, 264, "Print",ExpressionUUID->"32ee1b0a-dfd4-4879-8f9a-e60c962d7cbe"]
}, Open  ]],
Cell[69400, 1700, 549, 13, 53, "Code",ExpressionUUID->"32414df4-8bf0-42dd-8f92-43b424c9e7f7"]
}, Open  ]],
Cell[CellGroupData[{
Cell[69986, 1718, 168, 3, 67, "Section",ExpressionUUID->"31906d6a-5de6-4240-9209-aeea9f556a12"],
Cell[70157, 1723, 154, 3, 35, "Text",ExpressionUUID->"c10a10ba-bf40-4daa-957e-960bd700d3ff"],
Cell[CellGroupData[{
Cell[70336, 1730, 3640, 77, 565, "Code",ExpressionUUID->"6a53bd45-a3ce-4cb3-ac6b-7451c467ae24"],
Cell[73979, 1809, 12946, 412, 120, "Output",ExpressionUUID->"9fc02a8d-1a2a-4a13-afd0-74b08e761092"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[86974, 2227, 169, 3, 67, "Section",ExpressionUUID->"a75b00ae-7f3a-42c5-9ea8-228a5a55557a"],
Cell[CellGroupData[{
Cell[87168, 2234, 167, 3, 54, "Subsection",ExpressionUUID->"5fb3249a-2a16-4578-8abb-4407375a385c"],
Cell[87338, 2239, 151, 3, 35, "Text",ExpressionUUID->"fdebe3dc-fda7-4880-ba4b-d10189a5cb1c"],
Cell[87492, 2244, 910, 22, 72, "Code",ExpressionUUID->"4dcc74a2-e6cc-47d2-9c5f-f7e955d1c8d1"],
Cell[88405, 2268, 196, 3, 35, "Text",ExpressionUUID->"07a229b4-97b9-4501-ae63-3860530369b7"],
Cell[88604, 2273, 589, 17, 51, "Code",ExpressionUUID->"fdf30683-fdbc-4649-8751-412388ff38e5"],
Cell[CellGroupData[{
Cell[89218, 2294, 879, 22, 70, "Code",ExpressionUUID->"5ada759b-cf95-4642-b2b6-5cf7337a3f67"],
Cell[90100, 2318, 4747, 147, 74, "Output",ExpressionUUID->"e44e2a80-6953-408f-958a-137549b78cf2"]
}, Open  ]],
Cell[94862, 2468, 129, 3, 29, "Input",ExpressionUUID->"d5f6d84d-7437-4cbf-b006-e8573054a1d0"],
Cell[CellGroupData[{
Cell[95016, 2475, 1635, 45, 131, "Code",ExpressionUUID->"b54e4ebe-9448-42c1-962a-2a87d322a1b5"],
Cell[96654, 2522, 3889, 143, 48, "Output",ExpressionUUID->"1fee1718-c5f4-43d2-ba6d-43893d7809be"]
}, Open  ]],
Cell[CellGroupData[{
Cell[100580, 2670, 616, 14, 70, "Code",ExpressionUUID->"6de71fd3-b077-4544-a30d-61cb2e5ee74f"],
Cell[101199, 2686, 3233, 122, 48, "Output",ExpressionUUID->"9f6393f0-3b03-424f-bbef-6d6a5e43bb6c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[104469, 2813, 1874, 54, 224, "Code",ExpressionUUID->"cada339f-0f42-455e-bcff-a191a7599925"],
Cell[106346, 2869, 298, 6, 32, "Output",ExpressionUUID->"58cd0272-74d5-4a7e-803f-7640c8281d70"],
Cell[106647, 2877, 298, 6, 32, "Output",ExpressionUUID->"4cca502f-da0e-4d86-83e1-fa0a1bdac8e3"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

