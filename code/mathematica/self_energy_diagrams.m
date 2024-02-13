(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 14.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    979888,      27441]
NotebookOptionsPosition[    963316,      27168]
NotebookOutlinePosition[    963748,      27185]
CellTagsIndexPosition[    963705,      27182]
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
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmVkYGDQBOK7Srk/c7XeOnabqj4pAtKFllfUi4G0z5HNYSA6IWVL
KYhmMV88pxRIa/Uf2wuiueYLmZYB6StFk0JANGvsatUcnbeOCy5Up4FohU6V
+SA6KMz9ZS6QPs7SuDcfSL9kCJ9eAKSfvd3iVwmkc17+awfRCe6CudVA+k7z
UYdJQHrbbzvBqUA6kSM95zmQZqoP7XkPpHfc7J8Poo+Itbom67511DViPZ0K
pFeYJq5PA9LlX+84pAPpBJGgxSD6hc3CPRlAeuG3d6u59ID6cjMFLIF0j9tM
HTB9xms7iO6Y33ccRE9fw3oFRBdk+a61AtIcjBzbQDSr6cOvIPqHiplROZDe
tU5+F4g+8rLxG4gGAG2Zmu4=
  "],
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"5cabeed1-50f5-469c-a44d-c88b00324fba"],

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
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmVkYGDQBOK7Srk/c7XeOnabqj4pAtKFllfUi4G0z5HNYSA6IWVL
KYhmMV88pxRIa/Uf2wuiueYLmZYB6StFk0JANGvsatUcnbeOCy5Up4FohU6V
+SA6KMz9ZS6QPs7SuDcfSL9kCJ9eAKSfvd3iVwmkc17+awfRCe6CudVA+k7z
UYdJQHrbbzvBqUA6kSM95zmQZqoP7XkPpHfc7J8Poo+Itbom67511DViPZ0K
pFeYJq5PA9LlX+84pAPpBJGgxSD6hc3CPRlAeuG3d6u59ID6cjMFLIF0j9tM
HTB9xms7iO6Y33ccRE9fw3oFRBdk+a61AtIcjBzbQDSr6cOvIPqHiplROZDe
tU5+F4iuFW76BqIBZY2Z0g==
  "],
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"5de10987-b708-46fa-a6d3-de7261a6ed1e"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynCalc in your research, please evaluate \
FeynCalcHowToCite[] to learn how to cite this software.\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmVkYGDQBOK7Srk/c7XeOnabqj4pAtKFllfUi4G0z5HNYSA6IWVL
KYhmMV88pxRIa/Uf2wuiueYLmZYB6StFk0JANGvsatUcnbeOCy5Up4FohU6V
+SA6KMz9ZS6QPs7SuDcfSL9kCJ9eAKSfvd3iVwmkc17+awfRCe6CudVA+k7z
UYdJQHrbbzvBqUA6kSM95zmQZqoP7XkPpHfc7J8Poo+Itbom67511DViPZ0K
pFeYJq5PA9LlX+84pAPpBJGgxSD6hc3CPRlAeuG3d6u59ID6cjMFLIF0j9tM
HTB9xms7iO6Y33ccRE9fw3oFRBdk+a61AtIcjBzbQDSr6cOvIPqHiplROZDe
tU5+F4jml276BqIBYlWZbA==
  "],
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"80551233-42eb-4cbe-8c12-419797586a32"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"Please keep in mind that the proper academic attribution of \
our work is crucial to ensure the future development of this package!\"\>", 
   "Text",
   StripOnInput->False,
   FontSlant->Italic], TraditionalForm]], "Print",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmVkYGDQBOK7Srk/c7XeOnabqj4pAtKFllfUi4G0z5HNYSA6IWVL
KYhmMV88pxRIa/Uf2wuiueYLmZYB6StFk0JANGvsatUcnbeOCy5Up4FohU6V
+SA6KMz9ZS6QPs7SuDcfSL9kCJ9eAKSfvd3iVwmkc17+awfRCe6CudVA+k7z
UYdJQHrbbzvBqUA6kSM95zmQZqoP7XkPpHfc7J8Poo+Itbom67511DViPZ0K
pFeYJq5PA9LlX+84pAPpBJGgxSD6hc3CPRlAeuG3d6u59ID6cjMFLIF0j9tM
HTB9xms7iO6Y33ccRE9fw3oFRBdk+a61AtIcjBzbQDSr6cOvIPqHiplROZDe
tU5+F4hOUmj6BqIBZRCZxA==
  "],
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"b4ca6048-fff9-40f3-90a3-3d26fc731020"],

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
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmVkYGDQBOK7Srk/c7XeOnabqj4pAtKFllfUi4G0z5HNYSA6IWVL
KYhmMV88pxRIa/Uf2wuiueYLmZYB6StFk0JANGvsatUcnbeOCy5Up4FohU6V
+SA6KMz9ZS6QPs7SuDcfSL9kCJ9eAKSfvd3iVwmkc17+awfRCe6CudVA+k7z
UYdJQHrbbzvBqUA6kSM95zmQZqoP7XkPpHfc7J8Poo+Itbom67511DViPZ0K
pFeYJq5PA9LlX+84pAPpBJGgxSD6hc3CPRlAeuG3d6u59ID6cjMFLIF0j9tM
HTB9xms7iO6Y33ccRE9fw3oFRBdk+a61AtIcjBzbQDSr6cOvIPqHiplROZDe
tU5+F4hOEWv7BqIBZPKZwA==
  "],
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"fefbea2c-7dd1-4dfd-820d-0a1935e1c10b"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynArts in your research, please cite\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmVkYGDQBOK7Srk/c7XeOnabqj4pAtKFllfUi4G0z5HNYSA6IWVL
KYhmMV88pxRIa/Uf2wuiueYLmZYB6StFk0JANGvsatUcnbeOCy5Up4FohU6V
+SA6KMz9ZS6QPs7SuDcfSL9kCJ9eAKSfvd3iVwmkc17+awfRCe6CudVA+k7z
UYdJQHrbbzvBqUA6kSM95zmQZqoP7XkPpHfc7J8Poo+Itbom67511DViPZ0K
pFeYJq5PA9LlX+84pAPpBJGgxSD6hc3CPRlAeuG3d6u59ID6cjMFLIF0j9tM
HTB9xms7iO6Y33ccRE9fw3oFRBdk+a61AtIcjBzbQDSr6cOvIPqHiplROZDe
tU5+F4hmk2v7BqIBYjqZag==
  "],
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"7853bb3f-41fb-4bd9-94d3-98d8bd319f97"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\" \[Bullet] T. Hahn, Comput. Phys. Commun., 140, 418-431, \
2001, arXiv:hep-ph/0012260\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmVkYGDQBOK7Srk/c7XeOnabqj4pAtKFllfUi4G0z5HNYSA6IWVL
KYhmMV88pxRIa/Uf2wuiueYLmZYB6StFk0JANGvsatUcnbeOCy5Up4FohU6V
+SA6KMz9ZS6QPs7SuDcfSL9kCJ9eAKSfvd3iVwmkc17+awfRCe6CudVA+k7z
UYdJQHrbbzvBqUA6kSM95zmQZqoP7XkPpHfc7J8Poo+Itbom67511DViPZ0K
pFeYJq5PA9LlX+84pAPpBJGgxSD6hc3CPRlAeuG3d6u59ID6cjMFLIF0j9tM
HTB9xms7iO6Y33ccRE9fw3oFRBdk+a61AtIcjBzbQDSr6cOvIPqHiplROZDe
tU5+F4iuV2r7BqIBZh6Z5w==
  "],
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"1fcbbd8e-9a3f-4f83-be51-b98cf98783ce"]
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
or be shadowed by other definitions.\"", 2, 10, 1, 33591135623197961147, 
    "Local", "FeynCalc`Index"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.9156312221919622`*^9, 3.91563168051626*^9, 
  3.915635561164706*^9, 3.915682310754768*^9, 3.915688074625296*^9, 
  3.915856740461741*^9, 3.9158733798093777`*^9, 3.915873533834179*^9, 
  3.916110381445515*^9, 3.916115545583301*^9, 3.916117372421195*^9, 
  3.916118536284676*^9, 3.9161193238615313`*^9, 3.916121574259588*^9, 
  3.9164532164973707`*^9, 3.916548227790758*^9, 3.916548453783848*^9, 
  3.916549563315715*^9, 3.916549693557581*^9, 3.916549793733183*^9, 
  3.9165515312866287`*^9, 3.9165516012584457`*^9, 3.916552111483387*^9, 
  3.916675474210676*^9, 3.916676561509243*^9, 3.916677045066383*^9},
 CellLabel->
  "During evaluation of \
In[8]:=",ExpressionUUID->"e8bb9d38-37d1-4e35-881b-983098cee361"],

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
or be shadowed by other definitions.\"", 2, 10, 2, 33591135623197961147, 
    "Local", "FeynCalc`IndexDelta"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.9156312221919622`*^9, 3.91563168051626*^9, 
  3.915635561164706*^9, 3.915682310754768*^9, 3.915688074625296*^9, 
  3.915856740461741*^9, 3.9158733798093777`*^9, 3.915873533834179*^9, 
  3.916110381445515*^9, 3.916115545583301*^9, 3.916117372421195*^9, 
  3.916118536284676*^9, 3.9161193238615313`*^9, 3.916121574259588*^9, 
  3.9164532164973707`*^9, 3.916548227790758*^9, 3.916548453783848*^9, 
  3.916549563315715*^9, 3.916549693557581*^9, 3.916549793733183*^9, 
  3.9165515312866287`*^9, 3.9165516012584457`*^9, 3.916552111483387*^9, 
  3.916675474210676*^9, 3.916676561509243*^9, 3.916677045092978*^9},
 CellLabel->
  "During evaluation of \
In[8]:=",ExpressionUUID->"badb0826-436c-4c05-8fc7-15630435ad9c"]
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
 CellChangeTimes->{3.916453216706965*^9, 3.9165482279855137`*^9, 
  3.916548453973549*^9, 3.916549563508849*^9, 3.9165496938466253`*^9, 
  3.9165497940159388`*^9, 3.9165515314769983`*^9, 3.91655160145117*^9, 
  3.916552111674403*^9, 3.916675474403824*^9, 3.916676561749351*^9, 
  3.91667704525844*^9},
 CellLabel->
  "During evaluation of \
In[14]:=",ExpressionUUID->"c1f196cf-13e7-4b08-9a78-113b0991c269"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Generate Feynman diagrams", "Section",
 CellChangeTimes->{{3.914568465112231*^9, 
  3.914568471533506*^9}},ExpressionUUID->"ad9314ec-9090-42ad-90cf-\
1336cf856b8c"],

Cell["Some text", "Text",
 CellChangeTimes->{{3.914568476746871*^9, 
  3.914568477771171*^9}},ExpressionUUID->"c0da3a43-24af-4893-a041-\
b85d8dfa2346"],

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
  RowBox[{
   RowBox[{"SETopology", "[", "order_", "]"}], " ", ":=", " ", 
   RowBox[{"CreateTopologies", "[", 
    RowBox[{"order", ",", " ", 
     RowBox[{"1", "->", "1"}], ",", " ", 
     RowBox[{"ExcludeTopologies", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{
       "Tadpoles", ",", " ", "WFCorrections", ",", " ", "WFCorrectionCTs"}], 
       "}"}]}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"SETopologyCT", "[", "order_", "]"}], " ", ":=", " ", 
    RowBox[{"CreateCTTopologies", "[", 
     RowBox[{"order", ",", " ", 
      RowBox[{"1", "->", "1"}], ",", " ", 
      RowBox[{"ExcludeTopologies", " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{
        "Tadpoles", ",", " ", "WFCorrections", ",", " ", "WFCorrectionCTs"}], 
        "}"}]}]}], "]"}]}], ";"}], "\n"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"TriTopology", "[", "order_", "]"}], " ", ":=", " ", 
   RowBox[{"CreateTopologies", "[", 
    RowBox[{"order", ",", " ", 
     RowBox[{"2", "->", "1"}], ",", " ", 
     RowBox[{"ExcludeTopologies", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{
       "Tadpoles", ",", " ", "WFCorrections", ",", " ", "WFCorrectionCTs", 
        ",", " ", "SelfEnergies"}], "}"}]}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"TriTopologyCT", "[", "order_", "]"}], " ", ":=", " ", 
   RowBox[{"CreateCTTopologies", "[", 
    RowBox[{"order", ",", " ", 
     RowBox[{"2", "->", "1"}], ",", " ", 
     RowBox[{"ExcludeTopologies", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{
       "Tadpoles", ",", " ", "WFCorrections", ",", " ", "WFCorrectionCTs", 
        ",", " ", "SelfEnergyCTs"}], "}"}]}]}], "]"}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.914568492433211*^9, 3.914568494913054*^9}, {
   3.914568642463129*^9, 3.914568642909423*^9}, {3.914568864400747*^9, 
   3.9145690692971354`*^9}, {3.914569998845205*^9, 3.914570021756263*^9}, {
   3.914570071044614*^9, 3.914570072611572*^9}, {3.914570204070307*^9, 
   3.914570267389581*^9}, 3.914570313751828*^9, {3.914570458620463*^9, 
   3.9145704883026247`*^9}, 3.9145705940659*^9, {3.914570740006629*^9, 
   3.914570770291655*^9}, {3.914570876565374*^9, 3.914570876766418*^9}, {
   3.9145710815144053`*^9, 3.9145711007225246`*^9}, {3.914573686293648*^9, 
   3.914573689321589*^9}, {3.914574765763133*^9, 3.91457476589296*^9}, {
   3.915873232488988*^9, 3.9158732694824944`*^9}, {3.915873478753337*^9, 
   3.9158734880670233`*^9}},
 CellLabel->"In[17]:=",ExpressionUUID->"aadf60cb-ef0c-401f-99fd-ac472fac82f5"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"diagQuarkSE", "[", "order_", "]"}], " ", ":=", " ", 
   RowBox[{"InsertFields", "[", 
    RowBox[{
     RowBox[{"SETopology", "[", "order", "]"}], ",", " ", 
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
   RowBox[{
    RowBox[{"diagQuarkSECT", "[", "order_", "]"}], " ", ":=", " ", 
    RowBox[{"InsertFields", "[", 
     RowBox[{
      RowBox[{"SETopologyCT", "[", "order", "]"}], ",", " ", 
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
  RowBox[{
   RowBox[{"diagQuarkZVertex", "[", "order_", "]"}], " ", ":=", " ", 
   RowBox[{"InsertFields", "[", 
    RowBox[{
     RowBox[{"TriTopology", "[", "order", "]"}], ",", " ", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"F", "[", 
         RowBox[{"3", ",", " ", 
          RowBox[{"{", "1", "}"}]}], "]"}], ",", " ", 
        RowBox[{"-", 
         RowBox[{"F", "[", 
          RowBox[{"3", ",", " ", 
           RowBox[{"{", "1", "}"}]}], "]"}]}]}], "}"}], " ", "->", 
      RowBox[{"{", 
       RowBox[{"V", "[", "2", "]"}], "}"}]}], ",", " ", 
     RowBox[{"Sequence", "@@", "parameters"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"diagQuarkZVertexCT", "[", "order_", "]"}], " ", ":=", " ", 
    RowBox[{"InsertFields", "[", 
     RowBox[{
      RowBox[{"TriTopologyCT", "[", "order", "]"}], ",", " ", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"F", "[", 
          RowBox[{"3", ",", " ", 
           RowBox[{"{", "1", "}"}]}], "]"}], ",", " ", 
         RowBox[{"-", 
          RowBox[{"F", "[", 
           RowBox[{"3", ",", " ", 
            RowBox[{"{", "1", "}"}]}], "]"}]}]}], "}"}], " ", "->", 
       RowBox[{"{", 
        RowBox[{"V", "[", "2", "]"}], "}"}]}], ",", " ", 
      RowBox[{"Sequence", "@@", "parametersCT"}]}], "]"}]}], ";"}], 
  "\n"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"diagZSE", "[", "order_", "]"}], " ", ":=", " ", 
   RowBox[{"InsertFields", "[", 
    RowBox[{
     RowBox[{"SETopology", "[", "order", "]"}], ",", " ", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"V", "[", "2", "]"}], "}"}], " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{"V", "[", "2", "]"}], "}"}]}], ",", " ", 
     RowBox[{"Sequence", "@@", "parameters"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"diagZSECT", "[", "order_", "]"}], " ", ":=", " ", 
    RowBox[{"InsertFields", "[", 
     RowBox[{
      RowBox[{"SETopologyCT", "[", "order", "]"}], ",", " ", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"V", "[", "2", "]"}], "}"}], " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{"V", "[", "2", "]"}], "}"}]}], ",", " ", 
      RowBox[{"Sequence", "@@", "parametersCT"}]}], "]"}]}], ";"}], 
  "\n"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"diagGlSE", "[", "order_", "]"}], " ", ":=", " ", 
   RowBox[{"InsertFields", "[", 
    RowBox[{
     RowBox[{"SETopology", "[", "order", "]"}], ",", " ", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"V", "[", "5", "]"}], "}"}], " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{"V", "[", "5", "]"}], "}"}]}], ",", " ", 
     RowBox[{"Sequence", "@@", "parameters"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"diagGlSECT", "[", "order_", "]"}], " ", ":=", " ", 
    RowBox[{"InsertFields", "[", 
     RowBox[{
      RowBox[{"SETopologyCT", "[", "order", "]"}], ",", " ", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"V", "[", "5", "]"}], "}"}], " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{"V", "[", "5", "]"}], "}"}]}], ",", " ", 
      RowBox[{"Sequence", "@@", "parametersCT"}]}], "]"}]}], ";"}], 
  "\n"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"diagGluinoSE", "[", "order_", "]"}], " ", ":=", " ", 
    RowBox[{"InsertFields", "[", 
     RowBox[{
      RowBox[{"SETopology", "[", "order", "]"}], ",", " ", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"F", "[", "15", "]"}], "}"}], " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{"F", "[", "15", "]"}], "}"}]}], ",", " ", 
      RowBox[{"Sequence", "@@", "parameters"}]}], "]"}]}], ";"}], "\n", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{"diagGluinoSECT", "[", "order_", "]"}], " ", ":=", " ", 
     RowBox[{"InsertFields", "[", 
      RowBox[{
       RowBox[{"SETopologyCT", "[", "order", "]"}], ",", " ", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"V", "[", "5", "]"}], "}"}], " ", "->", " ", 
        RowBox[{"{", 
         RowBox[{"V", "[", "5", "]"}], "}"}]}], ",", " ", 
       RowBox[{"Sequence", "@@", "parametersCT"}]}], "]"}]}], ";"}], "*)"}], 
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
   3.914569633063595*^9}, {3.914569694935647*^9, 3.91456981936388*^9}, 
   3.914569884777668*^9, {3.914569957878927*^9, 3.914569966802619*^9}, {
   3.9145702919889097`*^9, 3.9145702951852913`*^9}, {3.914573723617063*^9, 
   3.914573750457364*^9}, {3.914573828783974*^9, 3.9145738791689863`*^9}, {
   3.91457391725805*^9, 3.914573919264976*^9}, {3.914573976485293*^9, 
   3.914573996219744*^9}, 3.914574065575392*^9, {3.914574247867198*^9, 
   3.9145743243085823`*^9}, {3.914574515685052*^9, 3.91457475065086*^9}, {
   3.914574811039002*^9, 3.914574814504587*^9}, {3.91457644256563*^9, 
   3.91457647006728*^9}, {3.915608263712864*^9, 3.915608274083364*^9}, {
   3.915628797366892*^9, 3.915628900136197*^9}, {3.915873279463747*^9, 
   3.91587330280555*^9}, {3.915873467061159*^9, 3.91587350502133*^9}, {
   3.916549080764658*^9, 3.9165491107644663`*^9}, {3.916549238940208*^9, 
   3.9165492931387672`*^9}, {3.916549678540944*^9, 3.9165496807149277`*^9}, {
   3.916550288345952*^9, 3.9165503681417303`*^9}},
 CellLabel->"In[25]:=",ExpressionUUID->"554cadc9-7de1-40ed-855d-c78d8033e1f0"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"diag1", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"diagQuarkSE", "[", "1", "]"}], "[", 
     RowBox[{"[", "0", "]"}], "]"}], "[", 
    RowBox[{
     RowBox[{"Sequence", "@@", 
      RowBox[{"diagQuarkSE", "[", "1", "]"}]}], ",", " ", 
     RowBox[{"Sequence", "@@", 
      RowBox[{"diagQuarkSECT", "[", "1", "]"}]}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"diag2", "[", "0", "]"}], " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"diagZSE", "[", "1", "]"}], "[", 
      RowBox[{"[", "0", "]"}], "]"}], "[", 
     RowBox[{
      RowBox[{"Sequence", "@@", 
       RowBox[{"diagZSE", "[", "1", "]"}]}], ",", " ", 
      RowBox[{"Sequence", "@@", 
       RowBox[{"diagZSECT", "[", "1", "]"}]}]}], "]"}]}], ";"}], "\n", 
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
   RowBox[{
    RowBox[{"diag3", "[", "0", "]"}], " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"diagQuarkZVertex", "[", "1", "]"}], "[", 
      RowBox[{"[", "0", "]"}], "]"}], "[", 
     RowBox[{
      RowBox[{"Sequence", "@@", 
       RowBox[{"diagQuarkZVertex", "[", "1", "]"}]}], ",", " ", 
      RowBox[{"Sequence", "@@", 
       RowBox[{"diagQuarkZVertexCT", "[", "1", "]"}]}]}], "]"}]}], ";"}], 
  "\n", 
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
      "]"}]}], ";"}], "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"diag4", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"diagGlSE", "[", "1", "]"}], "[", 
     RowBox[{"[", "0", "]"}], "]"}], "[", 
    RowBox[{
     RowBox[{"Sequence", "@@", 
      RowBox[{"diagGlSE", "[", "1", "]"}]}], ",", " ", 
     RowBox[{"Sequence", "@@", 
      RowBox[{"diagGlSECT", "[", "1", "]"}]}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"diag5", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"diagGluinoSE", "[", "1", "]"}], "[", 
     RowBox[{"[", "0", "]"}], "]"}], "[", 
    RowBox[{"Sequence", "@@", 
     RowBox[{"diagGluinoSE", "[", "1", "]"}]}], "]"}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.914569350187468*^9, 3.914569442147262*^9}, {
  3.914569545577696*^9, 3.914569554251041*^9}, {3.914569594335634*^9, 
  3.9145696072473516`*^9}, {3.914569829023497*^9, 3.914569908780387*^9}, {
  3.914574832833165*^9, 3.914574838531204*^9}, {3.9156290048506947`*^9, 
  3.915629025849493*^9}, {3.915873310804772*^9, 3.915873339731573*^9}, {
  3.9165490611395884`*^9, 3.916549075591597*^9}, {3.916549303090063*^9, 
  3.9165493084479094`*^9}, {3.916549666866727*^9, 3.916549673422661*^9}, {
  3.916550378618258*^9, 3.916550409729391*^9}},
 CellLabel->"In[34]:=",ExpressionUUID->"eb374868-bb1c-49c6-a42d-5ec84eadfd3c"],

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
  3.9145695652637167`*^9, 3.914569581772311*^9}, {3.914569915448278*^9, 
  3.914569915539567*^9}, {3.9145700908733807`*^9, 3.914570113243594*^9}, {
  3.914570164037834*^9, 3.9145701774886827`*^9}, {3.914570320751015*^9, 
  3.91457040540646*^9}, {3.914574844473716*^9, 3.914574865843965*^9}},
 CellLabel->"In[39]:=",ExpressionUUID->"e8bef7fa-dedb-4990-be3b-21d13eca2d16"],

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
1: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
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
 CellChangeTimes->{3.915873538695175*^9, 3.916110386294306*^9, 
  3.916115550404728*^9, 3.9161173771184587`*^9, 3.916118541076413*^9, 
  3.916119328608059*^9, 3.916121578841161*^9, 3.916453218044687*^9, 
  3.916548229178749*^9, 3.916548455199189*^9, 3.916549565055317*^9, 
  3.916549695363439*^9, 3.91654979551991*^9, 3.916551533111717*^9, 
  3.916551603125299*^9, 3.916552113295632*^9, 3.916675476026433*^9, 
  3.916676563439596*^9, 3.9166770469517508`*^9},
 CellLabel->
  "During evaluation of \
In[39]:=",ExpressionUUID->"538c34d0-49ad-477c-9fff-058b7729223a"]
}, Open  ]],

Cell[CellGroupData[{

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
 CellLabel->"In[40]:=",ExpressionUUID->"78426748-8332-46ba-95d3-2bac398d524b"],

Cell[BoxData[
 FormBox[
  GraphicsBox[{InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1:eJxFlQtMFEcYx4enKNWegB6KD3DHR0SxsqcejbgfD83VFgOtVUoFy2sVAhZz
Vk+gaBXQHFgPgSt7V+qpNaBGEagBH0UConBsBWpVfHKttj0RX/hEqdsh6U43
2Ux+mZ3dne/7///jl/Dlx8mOCKFkcg+N1a8kcjGA/hvPth73sopDPDov2h+D
T2q6sUQgbKmsMkRhOJBqbVnNE470D2XWYRi4Giz6s4QVnEPV1xh2asfVv5Km
kPlch9gcDIePPMg6LxI+3vOpdwaGLl/NkxKBsObuTsNyDE2RK28n8oRtWUbX
ORgqQir+CWQJPw5f1+uEIau839URETb0HFjezUBs/726TtEPkNuBgLRqBjZt
/v3GDwLhL859ZS1mYHbD1qg0nnDjpnGPtzGwJurayCCW8IyHD69vZSBBb5ng
gghbAurbdpH16w+Wd4q+gOwb61WVDOgLn541C4RnnHUZJHWQvFec5nnCttiJ
518yMO3ZhLa5LGHDg8LtDAZju9/7r6XJ5HvBk9w+xOB9yt5QJAxxf0pFCgZW
lx81kyXcnRfRlIXh2JEwqVmcBEjXpFdtwdCrC6uJ4wm3GkylWgwaLT//tTQR
kLrXbXEMBqSsCjEKhL1v3YH5GH4r+jMnkCUcKU5vd8eQdPVt2UVxAiBkum3v
YWBF9oXFqfwQNwdY6xgYvJC5zAURNuRHzS5jwBLxQelewQfQ2m0OHbkMJF8J
UwaxhC1pnw9sYcC+xdLbJY4n+3cpWqRn4IZnR1AqTzi6b++a/QwcblItdESE
O41KoYWBF6XVs03COLJeU3roEQNsyowlgSzh6KVn9vqQfhvn1VhFb1KPuBZN
OIa2087fJvKE1dO6Lydh2GO79cegpARUua84fTOG2iBzhVEgDEcNFlKf+KWt
ze+xhO0dytqNGG4+6/BqF8cCql/4Se1qDAdrV2xI5gmr58Z+Foxhd+bpBkka
AyhDePKTJ4YYc2O3IBAui8ip+ZuBkyu317Is4dYxPvkNDEQ2z1v2i+hF9JPl
NqqcgYLc5BM8Txj6lnM7GND1DfnCkzyf6XWM1OfBGtNSQfCk85Yx1upA1pOu
n/9N9kei6EHfPymKm87zHvT78XHhIQh50P/7VX2owCSMpv/vdXfOfRU7mu5P
uX/Bwg5RQfffUpMUncIraH1iX/lNdEIKWr9V8S/uqNl3aX0X5ZaYU/lRtP56
1yqtWRhJ+9Of9/2P7eI7tH/6WcYdbyR32l91dXyhP+tO+6+oaZi5ih9B9TFt
lq5rlzCc6scyNv1yo+hG9fVSMyLxuTSM6i/clrHBnx1G9ent5HgxgXel+tWc
UDmaBReqb9v2fdmXRGeq/9X9gcXuyJn6w71RZw5lnah/8mJ0DjrekfpLb+9f
dURw+N9/wQHbboqI+vNcyJkCd4Sof/c0KevW82852d/2e8umWsVBTva/PiIR
TWHfcHI+uHZf8sgSBjg5P8S4N+OvSi85OV/03aqiBfwLTs6fjY0D2nLxGSfn
k3PZU9/h7FNOzq8rnVWQKTzh5HxTFF429EiPODn/FEf1UzvFPk7Ox7KV+vFN
wj1Ozs+MU9n3j/N/cXK++h7CIWXsHU7OX7X/2pwNyMbJ+WzbHarLN13j5Pz2
1VYvGaa6xMn57vudJem6qY2T839rg7HiuekkJ58PaOiq1P4snx//AqEejy8=

          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {5., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw91X9QFGUYB/DlHNNI/EUaKGNH7yoIere774GIYQ+Yo6NoJI5cCojgLaDW
aYiiZpyFDP5C8ectGeKlJwmhAxapE57YOAgLnkSJZjEKHJRMWokKo3e9TDPP
H3c7n9nb23ef93m+G5hqXmLScBxnYp/BY9ww9sXxwA3//xgz472HYXTQf209
00qg68jBzLUyc0pCnLmSQPKRsMhShfl86w/3iggMC66jrSrzY4c77jMCOXtd
84Zxk9n5bW7bDgLLlo7Nm0mZ47Rnu/cTENprRq6Vmb+fuNlcTmD2ubLA4wqz
Ni+z30lgea1R06Qyj75cNO4FgfxUn/6XHub12sTyIB6+8hk/X0+nAPc88dah
xTzsyp/Er5KZS2ftDlvHQ2t0buUhhRkKXKO281BcOeWf6ypz25gxk3N5KMle
2THgYU65NS/8Y3Z94fJUPQ0Czm/XvMYEHjZljYDVMnMbDAxhddB0f/2uojBr
bQ9mDufh19c6wptV5vVjsz65RyB8wqMHGi6Y3a/u/rMLBJ7Y9mhn0EH7HDUe
JdB97e3ba2Tm4K1VUXkEQkKSuRKFuSAqu9FCYM+c3+1OlTnCbFqzl0DidbVT
w00Frn7cs0unCVg2BrcbKHPPWwFXbhAYP2OfQ5aZz9M2wxMCiw9bqq0KMycH
vqHl4ZfogN8a1EFH3Qqbz9Z/vM740sO8fktlSzoPwgcrwgQaApx1u1vYxkPz
68kb02TmlEOnXrHwMMJxzvuYwtw28NHVbB58N/l1NKjMZb4p1iQeyku67rs9
zEJmjxzJw9CwoD8kGsqur1mzbDQP6Y0P78kyc9m3c1I6CVgNXfZihRlORtZc
JhBgexnRrDLX3wkK+YJAzaiiQi9uGnDG5HUH8wkEpUkVBsrsWGJeyerjvDux
JF1m9hN6YncRODjUml2sMM+/VhFbSkBnb53bpDLXN9vsdQQuxti0HDcduAPy
yIW9BOKrTvhSypxRtWORHw/80tlTZJk54s/OLdE8GCd1GRWFuTTv2d+pPFyO
WnRaVZkdvuWOHB5+fHVwLnTs9zsfvs/q461WLadUh+fFvglnZFmH15uuXL2j
KDr8/w0JKb2qqsP7O51J7R6PDtd3LC30kkT1uP6nPhm7TbIen69P17nKqujx
+UvsTfGNqh7r0zLEvMHt0WP9fqY7Oqz+AtY3x7yvQqIC1l//5u4iNVbA/Ykx
r9sjywLunznSZz9nEXB/79zIKixWBNz/2qllWw3VAvbHtgHn3GZVwP6ZlrSk
K90lYH/d/64k3osTsf+ed2woKvYXsT+/vPKOnVIR+zch8+IJNVbE/s67ufaA
SRax/y+cVPa5c0WcD0/3gYpjiojzc/6J0yNUizhfj2yrDjeoIs7fgohL5tUu
EeezfnNBodsj4vze/ryw0+ov4XynjilPolTC+Q9u7G9vipUwHyx1LYszZAnz
w3dBXKHGImG+5FT15h9XJMyf/jRHcHi1hPlkuf74w5uqhPn1r6ZvRYZLwnwr
jd8yxIujmH/Wsz99qvhTzMc534Q+EinF/Jw+4VROQyzFfK25+zQqTaaYv/ba
EYkvcinm89W+Sa4jCsX8NkR2PdBXU8z3ltrwhQ0qxfyPyTR6m1wU3w+zvAbn
w4Dvj/8AJKlyeQ==
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {15., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 12.75}, 2.75, {-1.5707963267948966`, 
           4.71238898038469}]}, 
         PolygonBox[{{10.6, 15.5}, {9.4, 15.9}, {9.4, 15.1}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "k", "u"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 16.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["1",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.383563636363636],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.383563636363636]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bc/cc.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bc/cc.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 22}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1:eJxFlQtMFEcYx4enKNWegB6KD3DHR0SxsqcejbgfD83VFgOtVUoFy2sVAhZz
Vk+gaBXQHFgPgSt7V+qpNaBGEagBH0UConBsBWpVfHKttj0RX/hEqdsh6U43
2Ux+mZ3dne/7///jl/Dlx8mOCKFkcg+N1a8kcjGA/hvPth73sopDPDov2h+D
T2q6sUQgbKmsMkRhOJBqbVnNE470D2XWYRi4Giz6s4QVnEPV1xh2asfVv5Km
kPlch9gcDIePPMg6LxI+3vOpdwaGLl/NkxKBsObuTsNyDE2RK28n8oRtWUbX
ORgqQir+CWQJPw5f1+uEIau839URETb0HFjezUBs/726TtEPkNuBgLRqBjZt
/v3GDwLhL859ZS1mYHbD1qg0nnDjpnGPtzGwJurayCCW8IyHD69vZSBBb5ng
gghbAurbdpH16w+Wd4q+gOwb61WVDOgLn541C4RnnHUZJHWQvFec5nnCttiJ
518yMO3ZhLa5LGHDg8LtDAZju9/7r6XJ5HvBk9w+xOB9yt5QJAxxf0pFCgZW
lx81kyXcnRfRlIXh2JEwqVmcBEjXpFdtwdCrC6uJ4wm3GkylWgwaLT//tTQR
kLrXbXEMBqSsCjEKhL1v3YH5GH4r+jMnkCUcKU5vd8eQdPVt2UVxAiBkum3v
YWBF9oXFqfwQNwdY6xgYvJC5zAURNuRHzS5jwBLxQelewQfQ2m0OHbkMJF8J
UwaxhC1pnw9sYcC+xdLbJY4n+3cpWqRn4IZnR1AqTzi6b++a/QwcblItdESE
O41KoYWBF6XVs03COLJeU3roEQNsyowlgSzh6KVn9vqQfhvn1VhFb1KPuBZN
OIa2087fJvKE1dO6Lydh2GO79cegpARUua84fTOG2iBzhVEgDEcNFlKf+KWt
ze+xhO0dytqNGG4+6/BqF8cCql/4Se1qDAdrV2xI5gmr58Z+Foxhd+bpBkka
AyhDePKTJ4YYc2O3IBAui8ip+ZuBkyu317Is4dYxPvkNDEQ2z1v2i+hF9JPl
NqqcgYLc5BM8Txj6lnM7GND1DfnCkzyf6XWM1OfBGtNSQfCk85Yx1upA1pOu
n/9N9kei6EHfPymKm87zHvT78XHhIQh50P/7VX2owCSMpv/vdXfOfRU7mu5P
uX/Bwg5RQfffUpMUncIraH1iX/lNdEIKWr9V8S/uqNl3aX0X5ZaYU/lRtP56
1yqtWRhJ+9Of9/2P7eI7tH/6WcYdbyR32l91dXyhP+tO+6+oaZi5ih9B9TFt
lq5rlzCc6scyNv1yo+hG9fVSMyLxuTSM6i/clrHBnx1G9ent5HgxgXel+tWc
UDmaBReqb9v2fdmXRGeq/9X9gcXuyJn6w71RZw5lnah/8mJ0DjrekfpLb+9f
dURw+N9/wQHbboqI+vNcyJkCd4Sof/c0KevW82852d/2e8umWsVBTva/PiIR
TWHfcHI+uHZf8sgSBjg5P8S4N+OvSi85OV/03aqiBfwLTs6fjY0D2nLxGSfn
k3PZU9/h7FNOzq8rnVWQKTzh5HxTFF429EiPODn/FEf1UzvFPk7Ox7KV+vFN
wj1Ozs+MU9n3j/N/cXK++h7CIWXsHU7OX7X/2pwNyMbJ+WzbHarLN13j5Pz2
1VYvGaa6xMn57vudJem6qY2T839rg7HiuekkJ58PaOiq1P4snx//AqEejy8=

          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {5., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw91X9QFGUYB/DlHNNI/EUaKGNH7yoIere774GIYQ+Yo6NoJI5cCojgLaDW
aYiiZpyFDP5C8ectGeKlJwmhAxapE57YOAgLnkSJZjEKHJRMWokKo3e9TDPP
H3c7n9nb23ef93m+G5hqXmLScBxnYp/BY9ww9sXxwA3//xgz472HYXTQf209
00qg68jBzLUyc0pCnLmSQPKRsMhShfl86w/3iggMC66jrSrzY4c77jMCOXtd
84Zxk9n5bW7bDgLLlo7Nm0mZ47Rnu/cTENprRq6Vmb+fuNlcTmD2ubLA4wqz
Ni+z30lgea1R06Qyj75cNO4FgfxUn/6XHub12sTyIB6+8hk/X0+nAPc88dah
xTzsyp/Er5KZS2ftDlvHQ2t0buUhhRkKXKO281BcOeWf6ypz25gxk3N5KMle
2THgYU65NS/8Y3Z94fJUPQ0Czm/XvMYEHjZljYDVMnMbDAxhddB0f/2uojBr
bQ9mDufh19c6wptV5vVjsz65RyB8wqMHGi6Y3a/u/rMLBJ7Y9mhn0EH7HDUe
JdB97e3ba2Tm4K1VUXkEQkKSuRKFuSAqu9FCYM+c3+1OlTnCbFqzl0DidbVT
w00Frn7cs0unCVg2BrcbKHPPWwFXbhAYP2OfQ5aZz9M2wxMCiw9bqq0KMycH
vqHl4ZfogN8a1EFH3Qqbz9Z/vM740sO8fktlSzoPwgcrwgQaApx1u1vYxkPz
68kb02TmlEOnXrHwMMJxzvuYwtw28NHVbB58N/l1NKjMZb4p1iQeyku67rs9
zEJmjxzJw9CwoD8kGsqur1mzbDQP6Y0P78kyc9m3c1I6CVgNXfZihRlORtZc
JhBgexnRrDLX3wkK+YJAzaiiQi9uGnDG5HUH8wkEpUkVBsrsWGJeyerjvDux
JF1m9hN6YncRODjUml2sMM+/VhFbSkBnb53bpDLXN9vsdQQuxti0HDcduAPy
yIW9BOKrTvhSypxRtWORHw/80tlTZJk54s/OLdE8GCd1GRWFuTTv2d+pPFyO
WnRaVZkdvuWOHB5+fHVwLnTs9zsfvs/q461WLadUh+fFvglnZFmH15uuXL2j
KDr8/w0JKb2qqsP7O51J7R6PDtd3LC30kkT1uP6nPhm7TbIen69P17nKqujx
+UvsTfGNqh7r0zLEvMHt0WP9fqY7Oqz+AtY3x7yvQqIC1l//5u4iNVbA/Ykx
r9sjywLunznSZz9nEXB/79zIKixWBNz/2qllWw3VAvbHtgHn3GZVwP6ZlrSk
K90lYH/d/64k3osTsf+ed2woKvYXsT+/vPKOnVIR+zch8+IJNVbE/s67ufaA
SRax/y+cVPa5c0WcD0/3gYpjiojzc/6J0yNUizhfj2yrDjeoIs7fgohL5tUu
EeezfnNBodsj4vze/ryw0+ov4XynjilPolTC+Q9u7G9vipUwHyx1LYszZAnz
w3dBXKHGImG+5FT15h9XJMyf/jRHcHi1hPlkuf74w5uqhPn1r6ZvRYZLwnwr
jd8yxIujmH/Wsz99qvhTzMc534Q+EinF/Jw+4VROQyzFfK25+zQqTaaYv/ba
EYkvcinm89W+Sa4jCsX8NkR2PdBXU8z3ltrwhQ0qxfyPyTR6m1wU3w+zvAbn
w4Dvj/8AJKlyeQ==
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {15., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 12.75}, 2.75, {-1.5707963267948966`, 
           4.71238898038469}]}, 
         PolygonBox[{{10.6, 15.5}, {9.4, 15.9}, {9.4, 15.1}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "k", "u"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 16.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["2",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.383563636363636],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.383563636363636]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bc/cc.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bc/cc.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1:eJw9k3tMjWEcx58u6igHJTriD2fvs3JZF561ZTqeH3PGwkpmyyWL6T2VyCVT
h5wjUyob00XvQR25jNgwjVgtTXLpbcilw5Ydx/2QVKTUOp7M877b+7777N37
PL/ne9FuzIhPdkcI6dg98u4ZeSANoH8XBt2gbXaZFAhIFePXEYrBsvD0uFDC
OGGuvmoVhrLODmeTPAmQreuD1w4Mdp/szkSRsTkyRG/C0H3fNKnfNRHQj7Ad
lj0Y9vmrdcUS44hsOGDAUJtbqQknjMtnFFfrMRyLWru8RQ4AlISijgRhiHg7
32gQGUfNczq/CnDxp7DYAzE+evNUV4MACfvzt1VIE9h+9U8zTwrwKKfgcRRh
bH3/KSJPAIeaJLbJ/oD6HQ6NWQCr+/OIzSLjJ17tg4UCLDzibfRAIxyUYjgn
wKLSw7tPSH5snllDthYBNngWphPC2DwlKHJAgKrrQ6Ut8ni2/xnNrhAMhWe7
tJtExnGrfDPjMDzZZVr5xzUO0LS6moatGIYbISmUMDaPrluxD4MqplO/QRwL
yP6pSJODoWTv8J1SSc307byk24zBp8eQ80geAyglNnraUgx5DdoQl8uXzWeM
9dRiIOeLsglhbJ9p298jgOQcs9Qg+gC6kLq9+Z4Aff1jiy3SaECfQ/V3rQLk
S8bUVlnF9Ev5s/GQ8N9XxrWQ6zAJkCUeLJtDvJXvk8O605NFL+V/cWJvTbk0
Slm/dXVmnix7KvsXGN7YEPJU5utTl+dGEg9l/rQDbjRNdFfO593hf7tCclPO
7za/obJNRoo+4YXmy6MQUvR7uWVBVoY4TLm+5Sb1hafyEOX6G7+3L59DBin3
53t1q/aYNEC5fwF+jsAe12/K/c35dSV6pdhHuf9ZD0jRDfkn5fl4oXrdOJX0
Up6fxiUOXZ7UTXm+atfYmz+4uijPn7lPFdYkf6M8n1fbg0vPSV8oz2+002Ne
vviR8nwHpB8PFMk7yvNfs859GUV2yvuB4jOmay2vKO+PNVgbf408o7xfVy+3
+663PKS8f1b/5oKdlluU9/OfvSWGet7fvy+8egk=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {3., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9k21IU1EYx6+ZNT+U9mJMTVLvDUel7t4zIy3rcZOyGlTTpMKX1HY1qJQy
06ycUn7QTI3S3ZEaFCLmy8gsGZaWoaZXp/YmSctKt/ygfZFSyq2jxDlwOPw4
nHOe8/z/f7/kdI12GUVR4XguroV2Bx5bgVoaDCQVrLMp0Dag5lpn/EdoeJwQ
nH2ax1zXbYqvp0HhWl5UJWCWuXvNl9BQdlnlOixi1vWNmnQ0rNzYOetMBQLl
PlyivU7Dy6ycpO0I81BhxxU9DQ92Gy+k8ZjTPpw5aqLhaYrmuEHAfN/RkzFJ
Q1rpuFIUMfe+9vBYz8Ajl3NxdgfmjKhkd2AgZk97jxwF4feUQcUpDHhF7NSn
8JhPekvNOQyszuGHKwTMEh8fWx4Dzfa7qX0iZvm8bPlFBhJ2/FXaHYs8Wak/
wUB8a2gkh4JxPe+cAxQMmBdM+3kes25ism8FA0G1TiEGAXNGnK1olAZToOTn
gIjZWD9b3EzD3jVlrRQlB2pcdRDKaei0/Y42eGLW/VI15dPQEav8iBBmX2mm
rYCGs/LxfQNqzHNrY17doeGFU7SR5zHrjV1fntDg1uvtTekwy28Y/1hoCC0e
LBOExfPvA66tYqAhuXoDasF8rOJWaBgDX32rG0URs3TEtCsR198wpOGtmHsr
XaouMf91ZYGK6rjqo2OAjQ5uFDxZsh/+KUmDEEvOR1clTYlqltzfncmm8zxL
3ndDExOOPJbUF2FvOCQILKn/tnlTG9fCkv8lPnwuE0WW/B+kkgatlSX9Mc2k
H3A4WNI//6lcieDJkf6ukOVNcogj/Zfm+4+Jao7oc2Tz9888zxH9Ziz5FkrH
EX3rqBDRIHBE/+wudaWihSP+OJ/4DQ2KHPFP5pjfvVQrR/y1ZaF3mKIQ8Z+6
rdQieCLiT+Wb2LccQsS/TeMB3f1qRPxdE6kyn+IR8b/XdI2LPQ+RfLQpE3Ir
BUTyo819Fsa2IJKv2sM/VP0iIvmbDs26qbUiks/2JX0VJL//AGIUedc=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {17., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         CircleBox[{10., 10.899999999999999`}, 
          4.1, {-2.9202782112420023`, -0.2213144423477913}], 
         PolygonBox[{{9.4, 6.8}, {10.6, 6.3999999999999995`}, {10.6, 7.2}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "k"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
          2.9202782112420023`}], 
         PolygonBox[{{10.6, 13.2}, {9.4, 13.6}, {9.4, 12.799999999999999`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "k"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["3",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.383563636363636],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.383563636363636]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1:eJw9k3tMjWEcx58u6igHJTriD2fvs3JZF561ZTqeH3PGwkpmyyWL6T2VyCVT
h5wjUyob00XvQR25jNgwjVgtTXLpbcilw5Ydx/2QVKTUOp7M877b+7777N37
PL/ne9FuzIhPdkcI6dg98u4ZeSANoH8XBt2gbXaZFAhIFePXEYrBsvD0uFDC
OGGuvmoVhrLODmeTPAmQreuD1w4Mdp/szkSRsTkyRG/C0H3fNKnfNRHQj7Ad
lj0Y9vmrdcUS44hsOGDAUJtbqQknjMtnFFfrMRyLWru8RQ4AlISijgRhiHg7
32gQGUfNczq/CnDxp7DYAzE+evNUV4MACfvzt1VIE9h+9U8zTwrwKKfgcRRh
bH3/KSJPAIeaJLbJ/oD6HQ6NWQCr+/OIzSLjJ17tg4UCLDzibfRAIxyUYjgn
wKLSw7tPSH5snllDthYBNngWphPC2DwlKHJAgKrrQ6Ut8ni2/xnNrhAMhWe7
tJtExnGrfDPjMDzZZVr5xzUO0LS6moatGIYbISmUMDaPrluxD4MqplO/QRwL
yP6pSJODoWTv8J1SSc307byk24zBp8eQ80geAyglNnraUgx5DdoQl8uXzWeM
9dRiIOeLsglhbJ9p298jgOQcs9Qg+gC6kLq9+Z4Aff1jiy3SaECfQ/V3rQLk
S8bUVlnF9Ev5s/GQ8N9XxrWQ6zAJkCUeLJtDvJXvk8O605NFL+V/cWJvTbk0
Slm/dXVmnix7KvsXGN7YEPJU5utTl+dGEg9l/rQDbjRNdFfO593hf7tCclPO
7za/obJNRoo+4YXmy6MQUvR7uWVBVoY4TLm+5Sb1hafyEOX6G7+3L59DBin3
53t1q/aYNEC5fwF+jsAe12/K/c35dSV6pdhHuf9ZD0jRDfkn5fl4oXrdOJX0
Up6fxiUOXZ7UTXm+atfYmz+4uijPn7lPFdYkf6M8n1fbg0vPSV8oz2+002Ne
vviR8nwHpB8PFMk7yvNfs859GUV2yvuB4jOmay2vKO+PNVgbf408o7xfVy+3
+663PKS8f1b/5oKdlluU9/OfvSWGet7fvy+8egk=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {3., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9k21IU1EYx6+ZNT+U9mJMTVLvDUel7t4zIy3rcZOyGlTTpMKX1HY1qJQy
06ycUn7QTI3S3ZEaFCLmy8gsGZaWoaZXp/YmSctKt/ygfZFSyq2jxDlwOPw4
nHOe8/z/f7/kdI12GUVR4XguroV2Bx5bgVoaDCQVrLMp0Dag5lpn/EdoeJwQ
nH2ax1zXbYqvp0HhWl5UJWCWuXvNl9BQdlnlOixi1vWNmnQ0rNzYOetMBQLl
PlyivU7Dy6ycpO0I81BhxxU9DQ92Gy+k8ZjTPpw5aqLhaYrmuEHAfN/RkzFJ
Q1rpuFIUMfe+9vBYz8Ajl3NxdgfmjKhkd2AgZk97jxwF4feUQcUpDHhF7NSn
8JhPekvNOQyszuGHKwTMEh8fWx4Dzfa7qX0iZvm8bPlFBhJ2/FXaHYs8Wak/
wUB8a2gkh4JxPe+cAxQMmBdM+3kes25ism8FA0G1TiEGAXNGnK1olAZToOTn
gIjZWD9b3EzD3jVlrRQlB2pcdRDKaei0/Y42eGLW/VI15dPQEav8iBBmX2mm
rYCGs/LxfQNqzHNrY17doeGFU7SR5zHrjV1fntDg1uvtTekwy28Y/1hoCC0e
LBOExfPvA66tYqAhuXoDasF8rOJWaBgDX32rG0URs3TEtCsR198wpOGtmHsr
XaouMf91ZYGK6rjqo2OAjQ5uFDxZsh/+KUmDEEvOR1clTYlqltzfncmm8zxL
3ndDExOOPJbUF2FvOCQILKn/tnlTG9fCkv8lPnwuE0WW/B+kkgatlSX9Mc2k
H3A4WNI//6lcieDJkf6ukOVNcogj/Zfm+4+Jao7oc2Tz9888zxH9Ziz5FkrH
EX3rqBDRIHBE/+wudaWihSP+OJ/4DQ2KHPFP5pjfvVQrR/y1ZaF3mKIQ8Z+6
rdQieCLiT+Wb2LccQsS/TeMB3f1qRPxdE6kyn+IR8b/XdI2LPQ+RfLQpE3Ir
BUTyo819Fsa2IJKv2sM/VP0iIvmbDs26qbUiks/2JX0VJL//AGIUedc=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {17., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         CircleBox[{10., 10.899999999999999`}, 
          4.1, {-2.9202782112420023`, -0.2213144423477913}], 
         PolygonBox[{{9.4, 6.8}, {10.6, 6.3999999999999995`}, {10.6, 7.2}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "k"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
          2.9202782112420023`}], 
         PolygonBox[{{10.6, 13.2}, {9.4, 13.6}, {9.4, 12.799999999999999`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "k"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["4",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.383563636363636],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.383563636363636]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1:eJw9k3tMjWEcx58u6igHJTriD2fvs3JZF561ZTqeH3PGwkpmyyWL6T2VyCVT
h5wjUyob00XvQR25jNgwjVgtTXLpbcilw5Ydx/2QVKTUOp7M877b+7777N37
PL/ne9FuzIhPdkcI6dg98u4ZeSANoH8XBt2gbXaZFAhIFePXEYrBsvD0uFDC
OGGuvmoVhrLODmeTPAmQreuD1w4Mdp/szkSRsTkyRG/C0H3fNKnfNRHQj7Ad
lj0Y9vmrdcUS44hsOGDAUJtbqQknjMtnFFfrMRyLWru8RQ4AlISijgRhiHg7
32gQGUfNczq/CnDxp7DYAzE+evNUV4MACfvzt1VIE9h+9U8zTwrwKKfgcRRh
bH3/KSJPAIeaJLbJ/oD6HQ6NWQCr+/OIzSLjJ17tg4UCLDzibfRAIxyUYjgn
wKLSw7tPSH5snllDthYBNngWphPC2DwlKHJAgKrrQ6Ut8ni2/xnNrhAMhWe7
tJtExnGrfDPjMDzZZVr5xzUO0LS6moatGIYbISmUMDaPrluxD4MqplO/QRwL
yP6pSJODoWTv8J1SSc307byk24zBp8eQ80geAyglNnraUgx5DdoQl8uXzWeM
9dRiIOeLsglhbJ9p298jgOQcs9Qg+gC6kLq9+Z4Aff1jiy3SaECfQ/V3rQLk
S8bUVlnF9Ev5s/GQ8N9XxrWQ6zAJkCUeLJtDvJXvk8O605NFL+V/cWJvTbk0
Slm/dXVmnix7KvsXGN7YEPJU5utTl+dGEg9l/rQDbjRNdFfO593hf7tCclPO
7za/obJNRoo+4YXmy6MQUvR7uWVBVoY4TLm+5Sb1hafyEOX6G7+3L59DBin3
53t1q/aYNEC5fwF+jsAe12/K/c35dSV6pdhHuf9ZD0jRDfkn5fl4oXrdOJX0
Up6fxiUOXZ7UTXm+atfYmz+4uijPn7lPFdYkf6M8n1fbg0vPSV8oz2+002Ne
vviR8nwHpB8PFMk7yvNfs859GUV2yvuB4jOmay2vKO+PNVgbf408o7xfVy+3
+663PKS8f1b/5oKdlluU9/OfvSWGet7fvy+8egk=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {3., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9k21IU1EYx6+ZNT+U9mJMTVLvDUel7t4zIy3rcZOyGlTTpMKX1HY1qJQy
06ycUn7QTI3S3ZEaFCLmy8gsGZaWoaZXp/YmSctKt/ygfZFSyq2jxDlwOPw4
nHOe8/z/f7/kdI12GUVR4XguroV2Bx5bgVoaDCQVrLMp0Dag5lpn/EdoeJwQ
nH2ax1zXbYqvp0HhWl5UJWCWuXvNl9BQdlnlOixi1vWNmnQ0rNzYOetMBQLl
PlyivU7Dy6ycpO0I81BhxxU9DQ92Gy+k8ZjTPpw5aqLhaYrmuEHAfN/RkzFJ
Q1rpuFIUMfe+9vBYz8Ajl3NxdgfmjKhkd2AgZk97jxwF4feUQcUpDHhF7NSn
8JhPekvNOQyszuGHKwTMEh8fWx4Dzfa7qX0iZvm8bPlFBhJ2/FXaHYs8Wak/
wUB8a2gkh4JxPe+cAxQMmBdM+3kes25ism8FA0G1TiEGAXNGnK1olAZToOTn
gIjZWD9b3EzD3jVlrRQlB2pcdRDKaei0/Y42eGLW/VI15dPQEav8iBBmX2mm
rYCGs/LxfQNqzHNrY17doeGFU7SR5zHrjV1fntDg1uvtTekwy28Y/1hoCC0e
LBOExfPvA66tYqAhuXoDasF8rOJWaBgDX32rG0URs3TEtCsR198wpOGtmHsr
XaouMf91ZYGK6rjqo2OAjQ5uFDxZsh/+KUmDEEvOR1clTYlqltzfncmm8zxL
3ndDExOOPJbUF2FvOCQILKn/tnlTG9fCkv8lPnwuE0WW/B+kkgatlSX9Mc2k
H3A4WNI//6lcieDJkf6ukOVNcogj/Zfm+4+Jao7oc2Tz9888zxH9Ziz5FkrH
EX3rqBDRIHBE/+wudaWihSP+OJ/4DQ2KHPFP5pjfvVQrR/y1ZaF3mKIQ8Z+6
rdQieCLiT+Wb2LccQsS/TeMB3f1qRPxdE6kyn+IR8b/XdI2LPQ+RfLQpE3Ir
BUTyo819Fsa2IJKv2sM/VP0iIvmbDs26qbUiks/2JX0VJL//AGIUedc=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {17., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 10.899999999999999`}, 
           4.1, {-2.9202782112420023`, -0.2213144423477913}]}, 
         PolygonBox[{{9.4, 6.8}, {10.6, 6.3999999999999995`}, {10.6, 7.2}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "k", "u"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
           2.9202782112420023`}]}, 
         PolygonBox[{{10.6, 13.2}, {9.4, 13.6}, {9.4, 12.799999999999999`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "k", "v"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["5",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.383563636363636],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.383563636363636]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {88, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1:eJw9k3tMjWEcx58u6igHJTriD2fvs3JZF561ZTqeH3PGwkpmyyWL6T2VyCVT
h5wjUyob00XvQR25jNgwjVgtTXLpbcilw5Ydx/2QVKTUOp7M877b+7777N37
PL/ne9FuzIhPdkcI6dg98u4ZeSANoH8XBt2gbXaZFAhIFePXEYrBsvD0uFDC
OGGuvmoVhrLODmeTPAmQreuD1w4Mdp/szkSRsTkyRG/C0H3fNKnfNRHQj7Ad
lj0Y9vmrdcUS44hsOGDAUJtbqQknjMtnFFfrMRyLWru8RQ4AlISijgRhiHg7
32gQGUfNczq/CnDxp7DYAzE+evNUV4MACfvzt1VIE9h+9U8zTwrwKKfgcRRh
bH3/KSJPAIeaJLbJ/oD6HQ6NWQCr+/OIzSLjJ17tg4UCLDzibfRAIxyUYjgn
wKLSw7tPSH5snllDthYBNngWphPC2DwlKHJAgKrrQ6Ut8ni2/xnNrhAMhWe7
tJtExnGrfDPjMDzZZVr5xzUO0LS6moatGIYbISmUMDaPrluxD4MqplO/QRwL
yP6pSJODoWTv8J1SSc307byk24zBp8eQ80geAyglNnraUgx5DdoQl8uXzWeM
9dRiIOeLsglhbJ9p298jgOQcs9Qg+gC6kLq9+Z4Aff1jiy3SaECfQ/V3rQLk
S8bUVlnF9Ev5s/GQ8N9XxrWQ6zAJkCUeLJtDvJXvk8O605NFL+V/cWJvTbk0
Slm/dXVmnix7KvsXGN7YEPJU5utTl+dGEg9l/rQDbjRNdFfO593hf7tCclPO
7za/obJNRoo+4YXmy6MQUvR7uWVBVoY4TLm+5Sb1hafyEOX6G7+3L59DBin3
53t1q/aYNEC5fwF+jsAe12/K/c35dSV6pdhHuf9ZD0jRDfkn5fl4oXrdOJX0
Up6fxiUOXZ7UTXm+atfYmz+4uijPn7lPFdYkf6M8n1fbg0vPSV8oz2+002Ne
vviR8nwHpB8PFMk7yvNfs859GUV2yvuB4jOmay2vKO+PNVgbf408o7xfVy+3
+663PKS8f1b/5oKdlluU9/OfvSWGet7fvy+8egk=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {3., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9k21IU1EYx6+ZNT+U9mJMTVLvDUel7t4zIy3rcZOyGlTTpMKX1HY1qJQy
06ycUn7QTI3S3ZEaFCLmy8gsGZaWoaZXp/YmSctKt/ygfZFSyq2jxDlwOPw4
nHOe8/z/f7/kdI12GUVR4XguroV2Bx5bgVoaDCQVrLMp0Dag5lpn/EdoeJwQ
nH2ax1zXbYqvp0HhWl5UJWCWuXvNl9BQdlnlOixi1vWNmnQ0rNzYOetMBQLl
PlyivU7Dy6ycpO0I81BhxxU9DQ92Gy+k8ZjTPpw5aqLhaYrmuEHAfN/RkzFJ
Q1rpuFIUMfe+9vBYz8Ajl3NxdgfmjKhkd2AgZk97jxwF4feUQcUpDHhF7NSn
8JhPekvNOQyszuGHKwTMEh8fWx4Dzfa7qX0iZvm8bPlFBhJ2/FXaHYs8Wak/
wUB8a2gkh4JxPe+cAxQMmBdM+3kes25ism8FA0G1TiEGAXNGnK1olAZToOTn
gIjZWD9b3EzD3jVlrRQlB2pcdRDKaei0/Y42eGLW/VI15dPQEav8iBBmX2mm
rYCGs/LxfQNqzHNrY17doeGFU7SR5zHrjV1fntDg1uvtTekwy28Y/1hoCC0e
LBOExfPvA66tYqAhuXoDasF8rOJWaBgDX32rG0URs3TEtCsR198wpOGtmHsr
XaouMf91ZYGK6rjqo2OAjQ5uFDxZsh/+KUmDEEvOR1clTYlqltzfncmm8zxL
3ndDExOOPJbUF2FvOCQILKn/tnlTG9fCkv8lPnwuE0WW/B+kkgatlSX9Mc2k
H3A4WNI//6lcieDJkf6ukOVNcogj/Zfm+4+Jao7oc2Tz9888zxH9Ziz5FkrH
EX3rqBDRIHBE/+wudaWihSP+OJ/4DQ2KHPFP5pjfvVQrR/y1ZaF3mKIQ8Z+6
rdQieCLiT+Wb2LccQsS/TeMB3f1qRPxdE6kyn+IR8b/XdI2LPQ+RfLQpE3Ir
BUTyo819Fsa2IJKv2sM/VP0iIvmbDs26qbUiks/2JX0VJL//AGIUedc=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {17., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 10.899999999999999`}, 
           4.1, {-2.9202782112420023`, -0.2213144423477913}]}, 
         PolygonBox[{{9.4, 6.8}, {10.6, 6.3999999999999995`}, {10.6, 7.2}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "k", "u"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
           2.9202782112420023`}]}, 
         PolygonBox[{{10.6, 13.2}, {9.4, 13.6}, {9.4, 12.799999999999999`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "k", "v"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["6",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.383563636363636],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.383563636363636]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1:eJw9k3tMjWEcx58u6igHJTriD2fvs3JZF561ZTqeH3PGwkpmyyWL6T2VyCVT
h5wjUyob00XvQR25jNgwjVgtTXLpbcilw5Ydx/2QVKTUOp7M877b+7777N37
PL/ne9FuzIhPdkcI6dg98u4ZeSANoH8XBt2gbXaZFAhIFePXEYrBsvD0uFDC
OGGuvmoVhrLODmeTPAmQreuD1w4Mdp/szkSRsTkyRG/C0H3fNKnfNRHQj7Ad
lj0Y9vmrdcUS44hsOGDAUJtbqQknjMtnFFfrMRyLWru8RQ4AlISijgRhiHg7
32gQGUfNczq/CnDxp7DYAzE+evNUV4MACfvzt1VIE9h+9U8zTwrwKKfgcRRh
bH3/KSJPAIeaJLbJ/oD6HQ6NWQCr+/OIzSLjJ17tg4UCLDzibfRAIxyUYjgn
wKLSw7tPSH5snllDthYBNngWphPC2DwlKHJAgKrrQ6Ut8ni2/xnNrhAMhWe7
tJtExnGrfDPjMDzZZVr5xzUO0LS6moatGIYbISmUMDaPrluxD4MqplO/QRwL
yP6pSJODoWTv8J1SSc307byk24zBp8eQ80geAyglNnraUgx5DdoQl8uXzWeM
9dRiIOeLsglhbJ9p298jgOQcs9Qg+gC6kLq9+Z4Aff1jiy3SaECfQ/V3rQLk
S8bUVlnF9Ev5s/GQ8N9XxrWQ6zAJkCUeLJtDvJXvk8O605NFL+V/cWJvTbk0
Slm/dXVmnix7KvsXGN7YEPJU5utTl+dGEg9l/rQDbjRNdFfO593hf7tCclPO
7za/obJNRoo+4YXmy6MQUvR7uWVBVoY4TLm+5Sb1hafyEOX6G7+3L59DBin3
53t1q/aYNEC5fwF+jsAe12/K/c35dSV6pdhHuf9ZD0jRDfkn5fl4oXrdOJX0
Up6fxiUOXZ7UTXm+atfYmz+4uijPn7lPFdYkf6M8n1fbg0vPSV8oz2+002Ne
vviR8nwHpB8PFMk7yvNfs859GUV2yvuB4jOmay2vKO+PNVgbf408o7xfVy+3
+663PKS8f1b/5oKdlluU9/OfvSWGet7fvy+8egk=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {3., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9k21IU1EYx6+ZNT+U9mJMTVLvDUel7t4zIy3rcZOyGlTTpMKX1HY1qJQy
06ycUn7QTI3S3ZEaFCLmy8gsGZaWoaZXp/YmSctKt/ygfZFSyq2jxDlwOPw4
nHOe8/z/f7/kdI12GUVR4XguroV2Bx5bgVoaDCQVrLMp0Dag5lpn/EdoeJwQ
nH2ax1zXbYqvp0HhWl5UJWCWuXvNl9BQdlnlOixi1vWNmnQ0rNzYOetMBQLl
PlyivU7Dy6ycpO0I81BhxxU9DQ92Gy+k8ZjTPpw5aqLhaYrmuEHAfN/RkzFJ
Q1rpuFIUMfe+9vBYz8Ajl3NxdgfmjKhkd2AgZk97jxwF4feUQcUpDHhF7NSn
8JhPekvNOQyszuGHKwTMEh8fWx4Dzfa7qX0iZvm8bPlFBhJ2/FXaHYs8Wak/
wUB8a2gkh4JxPe+cAxQMmBdM+3kes25ism8FA0G1TiEGAXNGnK1olAZToOTn
gIjZWD9b3EzD3jVlrRQlB2pcdRDKaei0/Y42eGLW/VI15dPQEav8iBBmX2mm
rYCGs/LxfQNqzHNrY17doeGFU7SR5zHrjV1fntDg1uvtTekwy28Y/1hoCC0e
LBOExfPvA66tYqAhuXoDasF8rOJWaBgDX32rG0URs3TEtCsR198wpOGtmHsr
XaouMf91ZYGK6rjqo2OAjQ5uFDxZsh/+KUmDEEvOR1clTYlqltzfncmm8zxL
3ndDExOOPJbUF2FvOCQILKn/tnlTG9fCkv8lPnwuE0WW/B+kkgatlSX9Mc2k
H3A4WNI//6lcieDJkf6ukOVNcogj/Zfm+4+Jao7oc2Tz9888zxH9Ziz5FkrH
EX3rqBDRIHBE/+wudaWihSP+OJ/4DQ2KHPFP5pjfvVQrR/y1ZaF3mKIQ8Z+6
rdQieCLiT+Wb2LccQsS/TeMB3f1qRPxdE6kyn+IR8b/XdI2LPQ+RfLQpE3Ir
BUTyo819Fsa2IJKv2sM/VP0iIvmbDs26qbUiks/2JX0VJL//AGIUedc=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {17., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.005, 0.030000000000000002`}], 
          CircleBox[{10., 10.899999999999999`}, 
           4.1, {-2.9202782112420023`, -0.2213144423477913}]}, 
         PolygonBox[{{9.4, 6.8}, {10.6, 6.3999999999999995`}, {10.6, 7.2}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "-"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.005, 0.030000000000000002`}], 
          CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
           2.9202782112420023`}]}, 
         PolygonBox[{{10.6, 13.2}, {9.4, 13.6}, {9.4, 12.799999999999999`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "-"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["7",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.383563636363636],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.383563636363636]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1:eJw9k3tMjWEcx58u6igHJTriD2fvs3JZF561ZTqeH3PGwkpmyyWL6T2VyCVT
h5wjUyob00XvQR25jNgwjVgtTXLpbcilw5Ydx/2QVKTUOp7M877b+7777N37
PL/ne9FuzIhPdkcI6dg98u4ZeSANoH8XBt2gbXaZFAhIFePXEYrBsvD0uFDC
OGGuvmoVhrLODmeTPAmQreuD1w4Mdp/szkSRsTkyRG/C0H3fNKnfNRHQj7Ad
lj0Y9vmrdcUS44hsOGDAUJtbqQknjMtnFFfrMRyLWru8RQ4AlISijgRhiHg7
32gQGUfNczq/CnDxp7DYAzE+evNUV4MACfvzt1VIE9h+9U8zTwrwKKfgcRRh
bH3/KSJPAIeaJLbJ/oD6HQ6NWQCr+/OIzSLjJ17tg4UCLDzibfRAIxyUYjgn
wKLSw7tPSH5snllDthYBNngWphPC2DwlKHJAgKrrQ6Ut8ni2/xnNrhAMhWe7
tJtExnGrfDPjMDzZZVr5xzUO0LS6moatGIYbISmUMDaPrluxD4MqplO/QRwL
yP6pSJODoWTv8J1SSc307byk24zBp8eQ80geAyglNnraUgx5DdoQl8uXzWeM
9dRiIOeLsglhbJ9p298jgOQcs9Qg+gC6kLq9+Z4Aff1jiy3SaECfQ/V3rQLk
S8bUVlnF9Ev5s/GQ8N9XxrWQ6zAJkCUeLJtDvJXvk8O605NFL+V/cWJvTbk0
Slm/dXVmnix7KvsXGN7YEPJU5utTl+dGEg9l/rQDbjRNdFfO593hf7tCclPO
7za/obJNRoo+4YXmy6MQUvR7uWVBVoY4TLm+5Sb1hafyEOX6G7+3L59DBin3
53t1q/aYNEC5fwF+jsAe12/K/c35dSV6pdhHuf9ZD0jRDfkn5fl4oXrdOJX0
Up6fxiUOXZ7UTXm+atfYmz+4uijPn7lPFdYkf6M8n1fbg0vPSV8oz2+002Ne
vviR8nwHpB8PFMk7yvNfs859GUV2yvuB4jOmay2vKO+PNVgbf408o7xfVy+3
+663PKS8f1b/5oKdlluU9/OfvSWGet7fvy+8egk=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {3., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw9k21IU1EYx6+ZNT+U9mJMTVLvDUel7t4zIy3rcZOyGlTTpMKX1HY1qJQy
06ycUn7QTI3S3ZEaFCLmy8gsGZaWoaZXp/YmSctKt/ygfZFSyq2jxDlwOPw4
nHOe8/z/f7/kdI12GUVR4XguroV2Bx5bgVoaDCQVrLMp0Dag5lpn/EdoeJwQ
nH2ax1zXbYqvp0HhWl5UJWCWuXvNl9BQdlnlOixi1vWNmnQ0rNzYOetMBQLl
PlyivU7Dy6ycpO0I81BhxxU9DQ92Gy+k8ZjTPpw5aqLhaYrmuEHAfN/RkzFJ
Q1rpuFIUMfe+9vBYz8Ajl3NxdgfmjKhkd2AgZk97jxwF4feUQcUpDHhF7NSn
8JhPekvNOQyszuGHKwTMEh8fWx4Dzfa7qX0iZvm8bPlFBhJ2/FXaHYs8Wak/
wUB8a2gkh4JxPe+cAxQMmBdM+3kes25ism8FA0G1TiEGAXNGnK1olAZToOTn
gIjZWD9b3EzD3jVlrRQlB2pcdRDKaei0/Y42eGLW/VI15dPQEav8iBBmX2mm
rYCGs/LxfQNqzHNrY17doeGFU7SR5zHrjV1fntDg1uvtTekwy28Y/1hoCC0e
LBOExfPvA66tYqAhuXoDasF8rOJWaBgDX32rG0URs3TEtCsR198wpOGtmHsr
XaouMf91ZYGK6rjqo2OAjQ5uFDxZsh/+KUmDEEvOR1clTYlqltzfncmm8zxL
3ndDExOOPJbUF2FvOCQILKn/tnlTG9fCkv8lPnwuE0WW/B+kkgatlSX9Mc2k
H3A4WNI//6lcieDJkf6ukOVNcogj/Zfm+4+Jao7oc2Tz9888zxH9Ziz5FkrH
EX3rqBDRIHBE/+wudaWihSP+OJ/4DQ2KHPFP5pjfvVQrR/y1ZaF3mKIQ8Z+6
rdQieCLiT+Wb2LccQsS/TeMB3f1qRPxdE6kyn+IR8b/XdI2LPQ+RfLQpE3Ir
BUTyo819Fsa2IJKv2sM/VP0iIvmbDs26qbUiks/2JX0VJL//AGIUedc=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {17., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.005, 0.030000000000000002`}], 
          CircleBox[{10., 10.899999999999999`}, 
           4.1, {-2.9202782112420023`, -0.2213144423477913}]}, 
         PolygonBox[{{9.4, 6.8}, {10.6, 6.3999999999999995`}, {10.6, 7.2}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "+"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.005, 0.030000000000000002`}], 
          CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
           2.9202782112420023`}]}, 
         PolygonBox[{{10.6, 13.2}, {9.4, 13.6}, {9.4, 12.799999999999999`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "+"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["8",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.383563636363636],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.383563636363636]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1:eJxFlQtMFEcYx4enKNWegB6KD3DHR0SxsqcejbgfD83VFgOtVUoFy2sVAhZz
Vk+gaBXQHFgPgSt7V+qpNaBGEagBH0UConBsBWpVfHKttj0RX/hEqdsh6U43
2Ux+mZ3dne/7///jl/Dlx8mOCKFkcg+N1a8kcjGA/hvPth73sopDPDov2h+D
T2q6sUQgbKmsMkRhOJBqbVnNE470D2XWYRi4Giz6s4QVnEPV1xh2asfVv5Km
kPlch9gcDIePPMg6LxI+3vOpdwaGLl/NkxKBsObuTsNyDE2RK28n8oRtWUbX
ORgqQir+CWQJPw5f1+uEIau839URETb0HFjezUBs/726TtEPkNuBgLRqBjZt
/v3GDwLhL859ZS1mYHbD1qg0nnDjpnGPtzGwJurayCCW8IyHD69vZSBBb5ng
gghbAurbdpH16w+Wd4q+gOwb61WVDOgLn541C4RnnHUZJHWQvFec5nnCttiJ
518yMO3ZhLa5LGHDg8LtDAZju9/7r6XJ5HvBk9w+xOB9yt5QJAxxf0pFCgZW
lx81kyXcnRfRlIXh2JEwqVmcBEjXpFdtwdCrC6uJ4wm3GkylWgwaLT//tTQR
kLrXbXEMBqSsCjEKhL1v3YH5GH4r+jMnkCUcKU5vd8eQdPVt2UVxAiBkum3v
YWBF9oXFqfwQNwdY6xgYvJC5zAURNuRHzS5jwBLxQelewQfQ2m0OHbkMJF8J
UwaxhC1pnw9sYcC+xdLbJY4n+3cpWqRn4IZnR1AqTzi6b++a/QwcblItdESE
O41KoYWBF6XVs03COLJeU3roEQNsyowlgSzh6KVn9vqQfhvn1VhFb1KPuBZN
OIa2087fJvKE1dO6Lydh2GO79cegpARUua84fTOG2iBzhVEgDEcNFlKf+KWt
ze+xhO0dytqNGG4+6/BqF8cCql/4Se1qDAdrV2xI5gmr58Z+Foxhd+bpBkka
AyhDePKTJ4YYc2O3IBAui8ip+ZuBkyu317Is4dYxPvkNDEQ2z1v2i+hF9JPl
NqqcgYLc5BM8Txj6lnM7GND1DfnCkzyf6XWM1OfBGtNSQfCk85Yx1upA1pOu
n/9N9kei6EHfPymKm87zHvT78XHhIQh50P/7VX2owCSMpv/vdXfOfRU7mu5P
uX/Bwg5RQfffUpMUncIraH1iX/lNdEIKWr9V8S/uqNl3aX0X5ZaYU/lRtP56
1yqtWRhJ+9Of9/2P7eI7tH/6WcYdbyR32l91dXyhP+tO+6+oaZi5ih9B9TFt
lq5rlzCc6scyNv1yo+hG9fVSMyLxuTSM6i/clrHBnx1G9ent5HgxgXel+tWc
UDmaBReqb9v2fdmXRGeq/9X9gcXuyJn6w71RZw5lnah/8mJ0DjrekfpLb+9f
dURw+N9/wQHbboqI+vNcyJkCd4Sof/c0KevW82852d/2e8umWsVBTva/PiIR
TWHfcHI+uHZf8sgSBjg5P8S4N+OvSi85OV/03aqiBfwLTs6fjY0D2nLxGSfn
k3PZU9/h7FNOzq8rnVWQKTzh5HxTFF429EiPODn/FEf1UzvFPk7Ox7KV+vFN
wj1Ozs+MU9n3j/N/cXK++h7CIWXsHU7OX7X/2pwNyMbJ+WzbHarLN13j5Pz2
1VYvGaa6xMn57vudJem6qY2T839rg7HiuekkJ58PaOiq1P4snx//AqEejy8=

          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {5., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJw91X9QFGUYB/DlHNNI/EUaKGNH7yoIere774GIYQ+Yo6NoJI5cCojgLaDW
aYiiZpyFDP5C8ectGeKlJwmhAxapE57YOAgLnkSJZjEKHJRMWokKo3e9TDPP
H3c7n9nb23ef93m+G5hqXmLScBxnYp/BY9ww9sXxwA3//xgz472HYXTQf209
00qg68jBzLUyc0pCnLmSQPKRsMhShfl86w/3iggMC66jrSrzY4c77jMCOXtd
84Zxk9n5bW7bDgLLlo7Nm0mZ47Rnu/cTENprRq6Vmb+fuNlcTmD2ubLA4wqz
Ni+z30lgea1R06Qyj75cNO4FgfxUn/6XHub12sTyIB6+8hk/X0+nAPc88dah
xTzsyp/Er5KZS2ftDlvHQ2t0buUhhRkKXKO281BcOeWf6ypz25gxk3N5KMle
2THgYU65NS/8Y3Z94fJUPQ0Czm/XvMYEHjZljYDVMnMbDAxhddB0f/2uojBr
bQ9mDufh19c6wptV5vVjsz65RyB8wqMHGi6Y3a/u/rMLBJ7Y9mhn0EH7HDUe
JdB97e3ba2Tm4K1VUXkEQkKSuRKFuSAqu9FCYM+c3+1OlTnCbFqzl0DidbVT
w00Frn7cs0unCVg2BrcbKHPPWwFXbhAYP2OfQ5aZz9M2wxMCiw9bqq0KMycH
vqHl4ZfogN8a1EFH3Qqbz9Z/vM740sO8fktlSzoPwgcrwgQaApx1u1vYxkPz
68kb02TmlEOnXrHwMMJxzvuYwtw28NHVbB58N/l1NKjMZb4p1iQeyku67rs9
zEJmjxzJw9CwoD8kGsqur1mzbDQP6Y0P78kyc9m3c1I6CVgNXfZihRlORtZc
JhBgexnRrDLX3wkK+YJAzaiiQi9uGnDG5HUH8wkEpUkVBsrsWGJeyerjvDux
JF1m9hN6YncRODjUml2sMM+/VhFbSkBnb53bpDLXN9vsdQQuxti0HDcduAPy
yIW9BOKrTvhSypxRtWORHw/80tlTZJk54s/OLdE8GCd1GRWFuTTv2d+pPFyO
WnRaVZkdvuWOHB5+fHVwLnTs9zsfvs/q461WLadUh+fFvglnZFmH15uuXL2j
KDr8/w0JKb2qqsP7O51J7R6PDtd3LC30kkT1uP6nPhm7TbIen69P17nKqujx
+UvsTfGNqh7r0zLEvMHt0WP9fqY7Oqz+AtY3x7yvQqIC1l//5u4iNVbA/Ykx
r9sjywLunznSZz9nEXB/79zIKixWBNz/2qllWw3VAvbHtgHn3GZVwP6ZlrSk
K90lYH/d/64k3osTsf+ed2woKvYXsT+/vPKOnVIR+zch8+IJNVbE/s67ufaA
SRax/y+cVPa5c0WcD0/3gYpjiojzc/6J0yNUizhfj2yrDjeoIs7fgohL5tUu
EeezfnNBodsj4vze/ryw0+ov4XynjilPolTC+Q9u7G9vipUwHyx1LYszZAnz
w3dBXKHGImG+5FT15h9XJMyf/jRHcHi1hPlkuf74w5uqhPn1r6ZvRYZLwnwr
jd8yxIujmH/Wsz99qvhTzMc534Q+EinF/Jw+4VROQyzFfK25+zQqTaaYv/ba
EYkvcinm89W+Sa4jCsX8NkR2PdBXU8z3ltrwhQ0qxfyPyTR6m1wU3w+zvAbn
w4Dvj/8AJKlyeQ==
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {15., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], 
          {Thickness[0.015], LineBox[{{9.5, 9.5}, {10.5, 10.5}}], 
           LineBox[{{9.5, 10.5}, {10.5, 9.5}}]}}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["9",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.383563636363636],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.383563636363636]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bc/0.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bc/0.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 0}, {0, 0}, {22, 22}], InsetBox[
     TagBox[
      StyleBox[
       TagBox["Z",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->14.075345454545452`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       14.075345454545452`]& ], {50.5, 47.959999999999994}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox["\[RightArrow]",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->14.075345454545452`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       14.075345454545452`]& ], {55., 47.959999999999994}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox["Z",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->14.075345454545452`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       14.075345454545452`]& ], {59.5, 47.959999999999994}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]]},
   AspectRatio->0.45999999999999996`,
   ImageSize->{512, 256},
   PlotRange->{{0, 110}, {0, 50.599999999999994`}}], 
  TraditionalForm]], "Print",
 CellChangeTimes->{3.91587353884791*^9, 3.916110386456214*^9, 
  3.916115550650394*^9, 3.916117377286013*^9, 3.916118541342497*^9, 
  3.9161193288022623`*^9, 3.916121578997409*^9, 3.916453218214243*^9, 
  3.916548229229332*^9, 3.916548455244732*^9, 3.916549565104012*^9, 
  3.9165496954109507`*^9, 3.916549795568624*^9, 3.916551533155807*^9, 
  3.9165516031916323`*^9, 3.9165521133411093`*^9, 3.916675476074156*^9, 
  3.916676563498012*^9, 3.916677047002427*^9},
 CellLabel->
  "During evaluation of \
In[40]:=",ExpressionUUID->"a2f41b8c-aa8b-481c-a97e-15756ba7adc0"]
}, Open  ]],

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
 CellLabel->"In[41]:=",ExpressionUUID->"0e70bfbc-61ca-435d-b239-9c539d7c2e78"],

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
            TagBox["u",
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
            TagBox["u",
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
             SuperscriptBox[
              OverscriptBox["u", "~"], "v"],
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
             SuperscriptBox[
              OverscriptBox["u", "~"], "w"],
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
            TagBox["u",
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
            TagBox["u",
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
            TagBox["u",
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
            TagBox["u",
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
            TagBox["u",
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
            TagBox["u",
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
       TagBox["u",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->23.458909090909092`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       23.458909090909092`]& ], {26.25, 25.960000000000004}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox["u",
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
 CellChangeTimes->{3.915873538937478*^9, 3.91611038654368*^9, 
  3.916115550735954*^9, 3.91611737747501*^9, 3.916118541469939*^9, 
  3.91611932894452*^9, 3.916121579092065*^9, 3.916453218363629*^9, 
  3.916548229263524*^9, 3.91654845527748*^9, 3.916549565132395*^9, 
  3.916549695440688*^9, 3.9165497955988894`*^9, 3.916551533195569*^9, 
  3.916551603234366*^9, 3.9165521133609*^9, 3.916675476108568*^9, 
  3.9166765635546427`*^9, 3.9166770470376177`*^9},
 CellLabel->
  "During evaluation of \
In[41]:=",ExpressionUUID->"d25bd036-01b9-4d76-838b-76bb8c76818b"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Paint", "[", 
   RowBox[{
    RowBox[{"diag4", "[", "0", "]"}], ",", " ", 
    RowBox[{"ColumnsXRows", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{"6", ",", " ", "2"}], "}"}]}], ",", " ", 
    RowBox[{"Numbering", " ", "->", " ", "Simple"}], ",", " ", 
    RowBox[{"ImageSize", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{"512", ",", " ", "256"}], "}"}]}]}], "]"}], ";"}]], "Code",
 CellChangeTimes->{
  3.914574858337884*^9, {3.916549324565843*^9, 3.916549326401222*^9}},
 CellLabel->"In[42]:=",ExpressionUUID->"136d7588-1922-4c16-8805-661bb1064f6b"],

Cell[BoxData[
 FormBox[
  GraphicsBox[{InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1: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
majUoy+xlC/9vuCwlyD8nvT74/9lQRxL
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {5., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
P2bi94//ATAZ2Pc=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {15., 8.354800000000001}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 12.75}, 2.75, {-1.5707963267948966`, 
           4.71238898038469}]}, 
         PolygonBox[{{10.6, 15.5}, {9.4, 15.9}, {9.4, 15.1}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "k", "u"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 16.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["1",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->7.819636363636365],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            7.819636363636365]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bc/cc.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bc/cc.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 22}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1: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
majUoy+xlC/9vuCwlyD8nvT74/9lQRxL
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {5., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
P2bi94//ATAZ2Pc=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {15., 8.354800000000001}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 12.75}, 2.75, {-1.5707963267948966`, 
           4.71238898038469}]}, 
         PolygonBox[{{10.6, 15.5}, {9.4, 15.9}, {9.4, 15.1}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "k", "u"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 16.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["2",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->7.819636363636365],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            7.819636363636365]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bc/cc.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bc/cc.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1: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
majUoy+xlC/9vuCwlyD8nvT74/9lQRxL
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {5., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
P2bi94//ATAZ2Pc=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {15., 8.354800000000001}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 16.4452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["3",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->7.819636363636365],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            7.819636363636365]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bc/cc.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bc/cc.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1:eJw9lQk0VXkcx+973hMy0o6cyL1X2xgjKYnur5TlVLbMITWdZylERSdLspYa
yxAhyhFvLKNJY+vMyBLlVEKGFGImaiKlybNv0fx03r3vnPfu+Zx3/7//b/3+
1ricsjvKJwjiLH7nn8PzP4QKEF8/FGh0OytuuLQSCJHwQH0jCbIRoYMaMyuA
mNTTNswlwcSk9+9brsjQsd0yloT0CA+x4cPlQKSdG90XTsJ4X218LI1s4324
JZKEyQFB69mYZUAom8ylp5HQmBLLz5haCkT+57aCchKWWfflKgQi+0zs2fue
hLJ31/2WKCBLomzUtSjoL1uVKlu6BIjmp6o7XSj4eFWvQNkPueytTHAeBTFQ
3r3cFlnO4rrTAAXhptsdb5khO05qu+jQ8FuhV84qe2TNxmJjTxqYvO2dwf7I
PTPk23QaLKa1LNtuIkvWuzx5QIODOLL9wHvkKB/XsS4atiXdOx2pi/5E1V/T
6qMhpKXneJY/cn+Y69MeGi6IVug8L0MWaRQbNdJwuiQxNVaC/P3qmDM3aXC6
qKJWroLx96hlGAfR8HjO78sqHeQaUfQY0DBarZV8YgOy3MYFkQQNeQ1DohQl
5EnTkPWVFDTbr3Ko7kB7geJ3BwMoeNVjHOcePW/fTPeyAQVvirV49lrIFq82
q0+TUJn1+HZIHvofntLKqyPhWk69+gfV+XxZytWJSUhrr3YNiFgMhEqN/o/R
JBwLHtbJeKMMREeKxmwYCXkv3XjapsiGu+TXXCKBNsrNrbNdhPn/M+JsOglK
OkNHmzYpYT5GfYbvkRBaqP/ETf8bvC9a/v4nEk6VP/s8fUgR++PCRNA6CnwX
P6+ZLlmI5zNuGHhSwHh5BvsZI4efaL11G+NLz7w1OKWA+XNa6zFMQYLCsn37
PyCnGeUM6dPQ1M2Y9sjj+xLJncmTNCxSC+Ol2SFn2Y5HZNFQHHd1wroS2aP8
keIjGhLWPOgzNMH7J9+LS//BfBpvu+tQj2zRnbcb6yfJqTy31BH97e9SsO2m
YXpwqVVDJ3JCf/GmJzScSu2/622O8YkSchbk0lDvsKeTn4xcFpSRfYaGzDlf
ta1lyP2XPQONaOAHWStW3UYukuz1n6LApz/532wfZEfzud47FJxM4gdEf0H7
HpmGO3woeN32TK/gEHJgR+/4dxRU91cqdEWhf2UT5odHSQgXW+3fHYfxQJyN
Wy0JgtHpQtp3Pj/ED1E3SNCWNah23iGP+bFUyv2JlM6tHJ6H82+wfu81G+DG
fVnu/5mFQpvOeCF3PuxIcUnFaQFn32aH6RgVIMPdv3q9TtOBHD7n3xXv2Sh/
gs/5n7nDS/3wZR4X3+zFopFddjwufhEvvrfOnMflZ/df5fSsF4/LX4LHSrOk
Mh6XX6Hyx+LNNJ/L/+rzppEff+Vz9TlY+8gs30CGq9+pVyaqjx/IcPU9cs1T
rshUwNVf0hs+535bwPWHnmZNpca4gOsfn7GB0pLlQq6/dN1E9sqyQq7/miuu
XoipFXD9Gf9pIyPcL+D6N2GPjowwR4br78SAxi3pjXyu/4efKV3Xe8rj5qPz
oZPT1t8Jbn4uvfOedh+ZY9j5clPaYhHr95lh5y9LTPhqTU8x7HxWVLz42SFt
gmHnVynktYX8sTGGne8zhn4zhf4jDDv/N+sVG5w7hxhWH6oKrmTzMyQMqx+N
v/hO2scOMqy+iIgPR5IKPjGs/tTJ2wg0U5Gl+uTha6yra4TvS/Vr25a74hYT
tCfVt5GQvL2F6nifVP/WyoXYh9LDDKuPqqVCg0870T+pfmYH/ScuchplWH39
4namK88R45Hqr4z74lRF7XGG1WfHnbYnEwuRpfqtDksz7XqRpfrePrsiIr8C
War/VjnbrKs2Ikv3Q+jxxOxefbQv3R+rnZPX/9GO/kj3S0HtMY8XGuivdP80
5beMxapifNL9BFkd7noFAwy7vxLcXkdnt/Yx7H6jRipGjdpeM+z+W/dtgd6u
hy8Zdj8qr1OV41k1M+z+1DSMehfsd49h9+vX8U12r2L37/9O1A6/
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {3., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJxFlQs0VHkcxye1mpDU2kI66d67UYnuvR4ptl8be5R2dCShjUx59Fghz/KY
VY1XERZTwlCeqekhiSLkkazkUNoomrTRSRvr0cvs/+7p/PeeM+eez5n7///+
/9/j+10iPOjgqcTj8cLQj3uLpxToWQG8/x4K/DQefBiyNASe9GOpKUtBeA3w
/aIR89ueNLlS4OFxcu7yNsR39O+WB1LA1NjJdi9aCTyfY6rXoig4ppa9es2v
iC+nnjM6QsGM+Ij59ZWI/66btsebAm3Tykh6uhHwnKcv22pDQVC32sWPGxCf
4leWzaeAPME0jB9GrBEik/eSkEAGlIUXIF7FvKrOIiHO5K/ikAbEtgs/H3Uh
ofI5oRH0GPHkDc98TRLWub3YWtKDuGjmk6wOApYbtKwc6ULcxwrq0wnoM3yR
UnsXsd6MnoV7COiJ9n2qeYGL9yjLzIoAR5mVplMC4tCksyoUAbvLpY1WPhyb
evVqEwAZSS0ya8RaorPMYgKqHwQOppGIpX2CBpaApqXmJpUzEbf3ByU4EeBw
e3QkbxTdX29AWH+cgLM8G17AIGLICVapIUBZOmx6bwjxZOfkEQUBhjox9tcn
EfNvRT/aQELGtgBH6bdov1g3rYJYEpKTPCw2r+X2v9nu10KCeqGvossXccWS
+/JvKMg11l1WW4pYtM9wypyCaxfPvFcZ5fJVPmHuRoGJpp7Aep0x8F6va80L
pqC1VnnvlUTEBvv6lEQUGKb+rDjwDHHz7fFnYRRUOdu9afxuFcq/baR4DwVu
f65nCywQh6omzV5PgUb8E69UF8Si4PEf5lJwtchTKgpEfCecf/wxCR0RA4XS
OG690KMlnQRJR8AWfwn3fYqhowMJYrUTKnVSxNL87ozZJFyKjHAqz0Ps07BD
vRXlZ4Zkoj4bscYcu5nJKN+67YrSNMS7Ls2KdCdgk9HsacGxiCU2FqMWBLRV
6cudQxHz57ttJgjY393Nv+6FuELPpQrVT7g/9tQXR8Ra1NglPQJ40VbpBdaI
/RYI/jAjYN7bOp955tx5Du6YdEXxt904H7USse1x4S8JqD53ruh+MODW+6XH
NBBQoxHsZrsc8ZY5ZXHKJIwITx59QyMuqpimY0dCysXFD9WBO9+uptokEqj8
hrB4Ln6svs6shyS8FhZlv/Tl9udXnFOloH2FU/D2RC5/AbJMSwqicnmbnl7h
zqMoCfGgYK27djPbzeWn/L1rKPV1bmm0viZiEaqfPPOVeas+jf8XuSmuUwIa
r1/VWRxX5E/j/c0k2z0WJtM4fo/rGnHQBRqfz9ehz+h9DY3PbygJCNdso/H9
4F1c7o0uGt+/c51ArvyYxvlZUGC7Q9RB4/wNz7PKeNtM4/wqIur2ulTROP+3
kkIOKnHxv9YnTV9/YtNpGtePse7WLYyhcX07W0em4kJoXP8f5ca8rfto3B8f
P3nzLT1o3D8Ov0UXb9xJ4/46PHpozMqdxv0nNjgpS/SmcX8aRes4uwfTuH8F
28+4RyXQuL/V/ZeePlBA4/7P/b661aWRxvNhXVimaTFE4/mJoV1E9zQYPF/a
OeF2hasZPH+vxt5179zF4Pm0Ps/EHBYzeH6NX/vvzylm8HyHltry0poZPP/b
WHu5ywsG64NJV2OX8TiD9WMwwNI5fzqL9eWLjO+ZqcJi/bka1av4SZXF+hSo
KxYbKbP/69eBlwPEZwbrm57ERtV0mMH6F2FcoVPUy2B9bDsv0+2/z2D9dDLo
H3OsZLC+Xr5pmxJUwmD9TRpMNMvJYrA+D73RGVROY7B+T91Xf1SSzGB9J04N
h9j8zmD9r/JUW2HNrf/qD86Djfm1pQz2j+GbXlnH6hjsLw2pYcVKzxjsP4cG
8sB7isH+NLWmNjCbYLF/Pf3nsly4kcX+5qXnaiDwZ7H/2dtbTAxJWOyP7pnP
PzVVs9g/m0O0jsb3s9hfb/03vybYf/8Fn0TnVw==
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {17., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         CircleBox[{10., 10.899999999999999`}, 
          4.1, {-2.9202782112420023`, -0.2213144423477913}], 
         PolygonBox[{{9.4, 6.8}, {10.6, 6.3999999999999995`}, {10.6, 7.2}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "k"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
          2.9202782112420023`}], 
         PolygonBox[{{10.6, 13.2}, {9.4, 13.6}, {9.4, 12.799999999999999`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "k"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["4",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->7.819636363636365],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            7.819636363636365]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1:eJw9lQk0VXkcx+973hMy0o6cyL1X2xgjKYnur5TlVLbMITWdZylERSdLspYa
yxAhyhFvLKNJY+vMyBLlVEKGFGImaiKlybNv0fx03r3vnPfu+Zx3/7//b/3+
1ricsjvKJwjiLH7nn8PzP4QKEF8/FGh0OytuuLQSCJHwQH0jCbIRoYMaMyuA
mNTTNswlwcSk9+9brsjQsd0yloT0CA+x4cPlQKSdG90XTsJ4X218LI1s4324
JZKEyQFB69mYZUAom8ylp5HQmBLLz5haCkT+57aCchKWWfflKgQi+0zs2fue
hLJ31/2WKCBLomzUtSjoL1uVKlu6BIjmp6o7XSj4eFWvQNkPueytTHAeBTFQ
3r3cFlnO4rrTAAXhptsdb5khO05qu+jQ8FuhV84qe2TNxmJjTxqYvO2dwf7I
PTPk23QaLKa1LNtuIkvWuzx5QIODOLL9wHvkKB/XsS4atiXdOx2pi/5E1V/T
6qMhpKXneJY/cn+Y69MeGi6IVug8L0MWaRQbNdJwuiQxNVaC/P3qmDM3aXC6
qKJWroLx96hlGAfR8HjO78sqHeQaUfQY0DBarZV8YgOy3MYFkQQNeQ1DohQl
5EnTkPWVFDTbr3Ko7kB7geJ3BwMoeNVjHOcePW/fTPeyAQVvirV49lrIFq82
q0+TUJn1+HZIHvofntLKqyPhWk69+gfV+XxZytWJSUhrr3YNiFgMhEqN/o/R
JBwLHtbJeKMMREeKxmwYCXkv3XjapsiGu+TXXCKBNsrNrbNdhPn/M+JsOglK
OkNHmzYpYT5GfYbvkRBaqP/ETf8bvC9a/v4nEk6VP/s8fUgR++PCRNA6CnwX
P6+ZLlmI5zNuGHhSwHh5BvsZI4efaL11G+NLz7w1OKWA+XNa6zFMQYLCsn37
PyCnGeUM6dPQ1M2Y9sjj+xLJncmTNCxSC+Ol2SFn2Y5HZNFQHHd1wroS2aP8
keIjGhLWPOgzNMH7J9+LS//BfBpvu+tQj2zRnbcb6yfJqTy31BH97e9SsO2m
YXpwqVVDJ3JCf/GmJzScSu2/622O8YkSchbk0lDvsKeTn4xcFpSRfYaGzDlf
ta1lyP2XPQONaOAHWStW3UYukuz1n6LApz/532wfZEfzud47FJxM4gdEf0H7
HpmGO3woeN32TK/gEHJgR+/4dxRU91cqdEWhf2UT5odHSQgXW+3fHYfxQJyN
Wy0JgtHpQtp3Pj/ED1E3SNCWNah23iGP+bFUyv2JlM6tHJ6H82+wfu81G+DG
fVnu/5mFQpvOeCF3PuxIcUnFaQFn32aH6RgVIMPdv3q9TtOBHD7n3xXv2Sh/
gs/5n7nDS/3wZR4X3+zFopFddjwufhEvvrfOnMflZ/df5fSsF4/LX4LHSrOk
Mh6XX6Hyx+LNNJ/L/+rzppEff+Vz9TlY+8gs30CGq9+pVyaqjx/IcPU9cs1T
rshUwNVf0hs+535bwPWHnmZNpca4gOsfn7GB0pLlQq6/dN1E9sqyQq7/miuu
XoipFXD9Gf9pIyPcL+D6N2GPjowwR4br78SAxi3pjXyu/4efKV3Xe8rj5qPz
oZPT1t8Jbn4uvfOedh+ZY9j5clPaYhHr95lh5y9LTPhqTU8x7HxWVLz42SFt
gmHnVynktYX8sTGGne8zhn4zhf4jDDv/N+sVG5w7hxhWH6oKrmTzMyQMqx+N
v/hO2scOMqy+iIgPR5IKPjGs/tTJ2wg0U5Gl+uTha6yra4TvS/Vr25a74hYT
tCfVt5GQvL2F6nifVP/WyoXYh9LDDKuPqqVCg0870T+pfmYH/ScuchplWH39
4namK88R45Hqr4z74lRF7XGG1WfHnbYnEwuRpfqtDksz7XqRpfrePrsiIr8C
War/VjnbrKs2Ikv3Q+jxxOxefbQv3R+rnZPX/9GO/kj3S0HtMY8XGuivdP80
5beMxapifNL9BFkd7noFAwy7vxLcXkdnt/Yx7H6jRipGjdpeM+z+W/dtgd6u
hy8Zdj8qr1OV41k1M+z+1DSMehfsd49h9+vX8U12r2L37/9O1A6/
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {3., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJxFlQs0VHkcxye1mpDU2kI66d67UYnuvR4ptl8be5R2dCShjUx59Fghz/KY
VY1XERZTwlCeqekhiSLkkazkUNoomrTRSRvr0cvs/+7p/PeeM+eez5n7///+
/9/j+10iPOjgqcTj8cLQj3uLpxToWQG8/x4K/DQefBiyNASe9GOpKUtBeA3w
/aIR89ueNLlS4OFxcu7yNsR39O+WB1LA1NjJdi9aCTyfY6rXoig4ppa9es2v
iC+nnjM6QsGM+Ij59ZWI/66btsebAm3Tykh6uhHwnKcv22pDQVC32sWPGxCf
4leWzaeAPME0jB9GrBEik/eSkEAGlIUXIF7FvKrOIiHO5K/ikAbEtgs/H3Uh
ofI5oRH0GPHkDc98TRLWub3YWtKDuGjmk6wOApYbtKwc6ULcxwrq0wnoM3yR
UnsXsd6MnoV7COiJ9n2qeYGL9yjLzIoAR5mVplMC4tCksyoUAbvLpY1WPhyb
evVqEwAZSS0ya8RaorPMYgKqHwQOppGIpX2CBpaApqXmJpUzEbf3ByU4EeBw
e3QkbxTdX29AWH+cgLM8G17AIGLICVapIUBZOmx6bwjxZOfkEQUBhjox9tcn
EfNvRT/aQELGtgBH6bdov1g3rYJYEpKTPCw2r+X2v9nu10KCeqGvossXccWS
+/JvKMg11l1WW4pYtM9wypyCaxfPvFcZ5fJVPmHuRoGJpp7Aep0x8F6va80L
pqC1VnnvlUTEBvv6lEQUGKb+rDjwDHHz7fFnYRRUOdu9afxuFcq/baR4DwVu
f65nCywQh6omzV5PgUb8E69UF8Si4PEf5lJwtchTKgpEfCecf/wxCR0RA4XS
OG690KMlnQRJR8AWfwn3fYqhowMJYrUTKnVSxNL87ozZJFyKjHAqz0Ps07BD
vRXlZ4Zkoj4bscYcu5nJKN+67YrSNMS7Ls2KdCdgk9HsacGxiCU2FqMWBLRV
6cudQxHz57ttJgjY393Nv+6FuELPpQrVT7g/9tQXR8Ra1NglPQJ40VbpBdaI
/RYI/jAjYN7bOp955tx5Du6YdEXxt904H7USse1x4S8JqD53ruh+MODW+6XH
NBBQoxHsZrsc8ZY5ZXHKJIwITx59QyMuqpimY0dCysXFD9WBO9+uptokEqj8
hrB4Ln6svs6shyS8FhZlv/Tl9udXnFOloH2FU/D2RC5/AbJMSwqicnmbnl7h
zqMoCfGgYK27djPbzeWn/L1rKPV1bmm0viZiEaqfPPOVeas+jf8XuSmuUwIa
r1/VWRxX5E/j/c0k2z0WJtM4fo/rGnHQBRqfz9ehz+h9DY3PbygJCNdso/H9
4F1c7o0uGt+/c51ArvyYxvlZUGC7Q9RB4/wNz7PKeNtM4/wqIur2ulTROP+3
kkIOKnHxv9YnTV9/YtNpGtePse7WLYyhcX07W0em4kJoXP8f5ca8rfto3B8f
P3nzLT1o3D8Ov0UXb9xJ4/46PHpozMqdxv0nNjgpS/SmcX8aRes4uwfTuH8F
28+4RyXQuL/V/ZeePlBA4/7P/b661aWRxvNhXVimaTFE4/mJoV1E9zQYPF/a
OeF2hasZPH+vxt5179zF4Pm0Ps/EHBYzeH6NX/vvzylm8HyHltry0poZPP/b
WHu5ywsG64NJV2OX8TiD9WMwwNI5fzqL9eWLjO+ZqcJi/bka1av4SZXF+hSo
KxYbKbP/69eBlwPEZwbrm57ERtV0mMH6F2FcoVPUy2B9bDsv0+2/z2D9dDLo
H3OsZLC+Xr5pmxJUwmD9TRpMNMvJYrA+D73RGVROY7B+T91Xf1SSzGB9J04N
h9j8zmD9r/JUW2HNrf/qD86Djfm1pQz2j+GbXlnH6hjsLw2pYcVKzxjsP4cG
8sB7isH+NLWmNjCbYLF/Pf3nsly4kcX+5qXnaiDwZ7H/2dtbTAxJWOyP7pnP
PzVVs9g/m0O0jsb3s9hfb/03vybYf/8Fn0TnVw==
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {17., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         CircleBox[{10., 10.899999999999999`}, 
          4.1, {-2.9202782112420023`, -0.2213144423477913}], 
         PolygonBox[{{9.4, 6.8}, {10.6, 6.3999999999999995`}, {10.6, 7.2}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "k"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
          2.9202782112420023`}], 
         PolygonBox[{{10.6, 13.2}, {9.4, 13.6}, {9.4, 12.799999999999999`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "k"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["5",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->7.819636363636365],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            7.819636363636365]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {88, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1:eJw9lQk0VXkcx+973hMy0o6cyL1X2xgjKYnur5TlVLbMITWdZylERSdLspYa
yxAhyhFvLKNJY+vMyBLlVEKGFGImaiKlybNv0fx03r3vnPfu+Zx3/7//b/3+
1ricsjvKJwjiLH7nn8PzP4QKEF8/FGh0OytuuLQSCJHwQH0jCbIRoYMaMyuA
mNTTNswlwcSk9+9brsjQsd0yloT0CA+x4cPlQKSdG90XTsJ4X218LI1s4324
JZKEyQFB69mYZUAom8ylp5HQmBLLz5haCkT+57aCchKWWfflKgQi+0zs2fue
hLJ31/2WKCBLomzUtSjoL1uVKlu6BIjmp6o7XSj4eFWvQNkPueytTHAeBTFQ
3r3cFlnO4rrTAAXhptsdb5khO05qu+jQ8FuhV84qe2TNxmJjTxqYvO2dwf7I
PTPk23QaLKa1LNtuIkvWuzx5QIODOLL9wHvkKB/XsS4atiXdOx2pi/5E1V/T
6qMhpKXneJY/cn+Y69MeGi6IVug8L0MWaRQbNdJwuiQxNVaC/P3qmDM3aXC6
qKJWroLx96hlGAfR8HjO78sqHeQaUfQY0DBarZV8YgOy3MYFkQQNeQ1DohQl
5EnTkPWVFDTbr3Ko7kB7geJ3BwMoeNVjHOcePW/fTPeyAQVvirV49lrIFq82
q0+TUJn1+HZIHvofntLKqyPhWk69+gfV+XxZytWJSUhrr3YNiFgMhEqN/o/R
JBwLHtbJeKMMREeKxmwYCXkv3XjapsiGu+TXXCKBNsrNrbNdhPn/M+JsOglK
OkNHmzYpYT5GfYbvkRBaqP/ETf8bvC9a/v4nEk6VP/s8fUgR++PCRNA6CnwX
P6+ZLlmI5zNuGHhSwHh5BvsZI4efaL11G+NLz7w1OKWA+XNa6zFMQYLCsn37
PyCnGeUM6dPQ1M2Y9sjj+xLJncmTNCxSC+Ol2SFn2Y5HZNFQHHd1wroS2aP8
keIjGhLWPOgzNMH7J9+LS//BfBpvu+tQj2zRnbcb6yfJqTy31BH97e9SsO2m
YXpwqVVDJ3JCf/GmJzScSu2/622O8YkSchbk0lDvsKeTn4xcFpSRfYaGzDlf
ta1lyP2XPQONaOAHWStW3UYukuz1n6LApz/532wfZEfzud47FJxM4gdEf0H7
HpmGO3woeN32TK/gEHJgR+/4dxRU91cqdEWhf2UT5odHSQgXW+3fHYfxQJyN
Wy0JgtHpQtp3Pj/ED1E3SNCWNah23iGP+bFUyv2JlM6tHJ6H82+wfu81G+DG
fVnu/5mFQpvOeCF3PuxIcUnFaQFn32aH6RgVIMPdv3q9TtOBHD7n3xXv2Sh/
gs/5n7nDS/3wZR4X3+zFopFddjwufhEvvrfOnMflZ/df5fSsF4/LX4LHSrOk
Mh6XX6Hyx+LNNJ/L/+rzppEff+Vz9TlY+8gs30CGq9+pVyaqjx/IcPU9cs1T
rshUwNVf0hs+535bwPWHnmZNpca4gOsfn7GB0pLlQq6/dN1E9sqyQq7/miuu
XoipFXD9Gf9pIyPcL+D6N2GPjowwR4br78SAxi3pjXyu/4efKV3Xe8rj5qPz
oZPT1t8Jbn4uvfOedh+ZY9j5clPaYhHr95lh5y9LTPhqTU8x7HxWVLz42SFt
gmHnVynktYX8sTGGne8zhn4zhf4jDDv/N+sVG5w7hxhWH6oKrmTzMyQMqx+N
v/hO2scOMqy+iIgPR5IKPjGs/tTJ2wg0U5Gl+uTha6yra4TvS/Vr25a74hYT
tCfVt5GQvL2F6nifVP/WyoXYh9LDDKuPqqVCg0870T+pfmYH/ScuchplWH39
4namK88R45Hqr4z74lRF7XGG1WfHnbYnEwuRpfqtDksz7XqRpfrePrsiIr8C
War/VjnbrKs2Ikv3Q+jxxOxefbQv3R+rnZPX/9GO/kj3S0HtMY8XGuivdP80
5beMxapifNL9BFkd7noFAwy7vxLcXkdnt/Yx7H6jRipGjdpeM+z+W/dtgd6u
hy8Zdj8qr1OV41k1M+z+1DSMehfsd49h9+vX8U12r2L37/9O1A6/
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {3., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJxFlQs0VHkcxye1mpDU2kI66d67UYnuvR4ptl8be5R2dCShjUx59Fghz/KY
VY1XERZTwlCeqekhiSLkkazkUNoomrTRSRvr0cvs/+7p/PeeM+eez5n7///+
/9/j+10iPOjgqcTj8cLQj3uLpxToWQG8/x4K/DQefBiyNASe9GOpKUtBeA3w
/aIR89ueNLlS4OFxcu7yNsR39O+WB1LA1NjJdi9aCTyfY6rXoig4ppa9es2v
iC+nnjM6QsGM+Ij59ZWI/66btsebAm3Tykh6uhHwnKcv22pDQVC32sWPGxCf
4leWzaeAPME0jB9GrBEik/eSkEAGlIUXIF7FvKrOIiHO5K/ikAbEtgs/H3Uh
ofI5oRH0GPHkDc98TRLWub3YWtKDuGjmk6wOApYbtKwc6ULcxwrq0wnoM3yR
UnsXsd6MnoV7COiJ9n2qeYGL9yjLzIoAR5mVplMC4tCksyoUAbvLpY1WPhyb
evVqEwAZSS0ya8RaorPMYgKqHwQOppGIpX2CBpaApqXmJpUzEbf3ByU4EeBw
e3QkbxTdX29AWH+cgLM8G17AIGLICVapIUBZOmx6bwjxZOfkEQUBhjox9tcn
EfNvRT/aQELGtgBH6bdov1g3rYJYEpKTPCw2r+X2v9nu10KCeqGvossXccWS
+/JvKMg11l1WW4pYtM9wypyCaxfPvFcZ5fJVPmHuRoGJpp7Aep0x8F6va80L
pqC1VnnvlUTEBvv6lEQUGKb+rDjwDHHz7fFnYRRUOdu9afxuFcq/baR4DwVu
f65nCywQh6omzV5PgUb8E69UF8Si4PEf5lJwtchTKgpEfCecf/wxCR0RA4XS
OG690KMlnQRJR8AWfwn3fYqhowMJYrUTKnVSxNL87ozZJFyKjHAqz0Ps07BD
vRXlZ4Zkoj4bscYcu5nJKN+67YrSNMS7Ls2KdCdgk9HsacGxiCU2FqMWBLRV
6cudQxHz57ttJgjY393Nv+6FuELPpQrVT7g/9tQXR8Ra1NglPQJ40VbpBdaI
/RYI/jAjYN7bOp955tx5Du6YdEXxt904H7USse1x4S8JqD53ruh+MODW+6XH
NBBQoxHsZrsc8ZY5ZXHKJIwITx59QyMuqpimY0dCysXFD9WBO9+uptokEqj8
hrB4Ln6svs6shyS8FhZlv/Tl9udXnFOloH2FU/D2RC5/AbJMSwqicnmbnl7h
zqMoCfGgYK27djPbzeWn/L1rKPV1bmm0viZiEaqfPPOVeas+jf8XuSmuUwIa
r1/VWRxX5E/j/c0k2z0WJtM4fo/rGnHQBRqfz9ehz+h9DY3PbygJCNdso/H9
4F1c7o0uGt+/c51ArvyYxvlZUGC7Q9RB4/wNz7PKeNtM4/wqIur2ulTROP+3
kkIOKnHxv9YnTV9/YtNpGtePse7WLYyhcX07W0em4kJoXP8f5ca8rfto3B8f
P3nzLT1o3D8Ov0UXb9xJ4/46PHpozMqdxv0nNjgpS/SmcX8aRes4uwfTuH8F
28+4RyXQuL/V/ZeePlBA4/7P/b661aWRxvNhXVimaTFE4/mJoV1E9zQYPF/a
OeF2hasZPH+vxt5179zF4Pm0Ps/EHBYzeH6NX/vvzylm8HyHltry0poZPP/b
WHu5ywsG64NJV2OX8TiD9WMwwNI5fzqL9eWLjO+ZqcJi/bka1av4SZXF+hSo
KxYbKbP/69eBlwPEZwbrm57ERtV0mMH6F2FcoVPUy2B9bDsv0+2/z2D9dDLo
H3OsZLC+Xr5pmxJUwmD9TRpMNMvJYrA+D73RGVROY7B+T91Xf1SSzGB9J04N
h9j8zmD9r/JUW2HNrf/qD86Djfm1pQz2j+GbXlnH6hjsLw2pYcVKzxjsP4cG
8sB7isH+NLWmNjCbYLF/Pf3nsly4kcX+5qXnaiDwZ7H/2dtbTAxJWOyP7pnP
PzVVs9g/m0O0jsb3s9hfb/03vybYf/8Fn0TnVw==
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {17., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         CircleBox[{10., 10.899999999999999`}, 
          4.1, {-2.9202782112420023`, -0.2213144423477913}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 6.1048}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
          2.9202782112420023`}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 13.895199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["6",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->7.819636363636365],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            7.819636363636365]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {110, 22}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1:eJw9lQk0VXkcx+973hMy0o6cyL1X2xgjKYnur5TlVLbMITWdZylERSdLspYa
yxAhyhFvLKNJY+vMyBLlVEKGFGImaiKlybNv0fx03r3vnPfu+Zx3/7//b/3+
1ricsjvKJwjiLH7nn8PzP4QKEF8/FGh0OytuuLQSCJHwQH0jCbIRoYMaMyuA
mNTTNswlwcSk9+9brsjQsd0yloT0CA+x4cPlQKSdG90XTsJ4X218LI1s4324
JZKEyQFB69mYZUAom8ylp5HQmBLLz5haCkT+57aCchKWWfflKgQi+0zs2fue
hLJ31/2WKCBLomzUtSjoL1uVKlu6BIjmp6o7XSj4eFWvQNkPueytTHAeBTFQ
3r3cFlnO4rrTAAXhptsdb5khO05qu+jQ8FuhV84qe2TNxmJjTxqYvO2dwf7I
PTPk23QaLKa1LNtuIkvWuzx5QIODOLL9wHvkKB/XsS4atiXdOx2pi/5E1V/T
6qMhpKXneJY/cn+Y69MeGi6IVug8L0MWaRQbNdJwuiQxNVaC/P3qmDM3aXC6
qKJWroLx96hlGAfR8HjO78sqHeQaUfQY0DBarZV8YgOy3MYFkQQNeQ1DohQl
5EnTkPWVFDTbr3Ko7kB7geJ3BwMoeNVjHOcePW/fTPeyAQVvirV49lrIFq82
q0+TUJn1+HZIHvofntLKqyPhWk69+gfV+XxZytWJSUhrr3YNiFgMhEqN/o/R
JBwLHtbJeKMMREeKxmwYCXkv3XjapsiGu+TXXCKBNsrNrbNdhPn/M+JsOglK
OkNHmzYpYT5GfYbvkRBaqP/ETf8bvC9a/v4nEk6VP/s8fUgR++PCRNA6CnwX
P6+ZLlmI5zNuGHhSwHh5BvsZI4efaL11G+NLz7w1OKWA+XNa6zFMQYLCsn37
PyCnGeUM6dPQ1M2Y9sjj+xLJncmTNCxSC+Ol2SFn2Y5HZNFQHHd1wroS2aP8
keIjGhLWPOgzNMH7J9+LS//BfBpvu+tQj2zRnbcb6yfJqTy31BH97e9SsO2m
YXpwqVVDJ3JCf/GmJzScSu2/622O8YkSchbk0lDvsKeTn4xcFpSRfYaGzDlf
ta1lyP2XPQONaOAHWStW3UYukuz1n6LApz/532wfZEfzud47FJxM4gdEf0H7
HpmGO3woeN32TK/gEHJgR+/4dxRU91cqdEWhf2UT5odHSQgXW+3fHYfxQJyN
Wy0JgtHpQtp3Pj/ED1E3SNCWNah23iGP+bFUyv2JlM6tHJ6H82+wfu81G+DG
fVnu/5mFQpvOeCF3PuxIcUnFaQFn32aH6RgVIMPdv3q9TtOBHD7n3xXv2Sh/
gs/5n7nDS/3wZR4X3+zFopFddjwufhEvvrfOnMflZ/df5fSsF4/LX4LHSrOk
Mh6XX6Hyx+LNNJ/L/+rzppEff+Vz9TlY+8gs30CGq9+pVyaqjx/IcPU9cs1T
rshUwNVf0hs+535bwPWHnmZNpca4gOsfn7GB0pLlQq6/dN1E9sqyQq7/miuu
XoipFXD9Gf9pIyPcL+D6N2GPjowwR4br78SAxi3pjXyu/4efKV3Xe8rj5qPz
oZPT1t8Jbn4uvfOedh+ZY9j5clPaYhHr95lh5y9LTPhqTU8x7HxWVLz42SFt
gmHnVynktYX8sTGGne8zhn4zhf4jDDv/N+sVG5w7hxhWH6oKrmTzMyQMqx+N
v/hO2scOMqy+iIgPR5IKPjGs/tTJ2wg0U5Gl+uTha6yra4TvS/Vr25a74hYT
tCfVt5GQvL2F6nifVP/WyoXYh9LDDKuPqqVCg0870T+pfmYH/ScuchplWH39
4namK88R45Hqr4z74lRF7XGG1WfHnbYnEwuRpfqtDksz7XqRpfrePrsiIr8C
War/VjnbrKs2Ikv3Q+jxxOxefbQv3R+rnZPX/9GO/kj3S0HtMY8XGuivdP80
5beMxapifNL9BFkd7noFAwy7vxLcXkdnt/Yx7H6jRipGjdpeM+z+W/dtgd6u
hy8Zdj8qr1OV41k1M+z+1DSMehfsd49h9+vX8U12r2L37/9O1A6/
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {3., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJxFlQs0VHkcxye1mpDU2kI66d67UYnuvR4ptl8be5R2dCShjUx59Fghz/KY
VY1XERZTwlCeqekhiSLkkazkUNoomrTRSRvr0cvs/+7p/PeeM+eez5n7///+
/9/j+10iPOjgqcTj8cLQj3uLpxToWQG8/x4K/DQefBiyNASe9GOpKUtBeA3w
/aIR89ueNLlS4OFxcu7yNsR39O+WB1LA1NjJdi9aCTyfY6rXoig4ppa9es2v
iC+nnjM6QsGM+Ij59ZWI/66btsebAm3Tykh6uhHwnKcv22pDQVC32sWPGxCf
4leWzaeAPME0jB9GrBEik/eSkEAGlIUXIF7FvKrOIiHO5K/ikAbEtgs/H3Uh
ofI5oRH0GPHkDc98TRLWub3YWtKDuGjmk6wOApYbtKwc6ULcxwrq0wnoM3yR
UnsXsd6MnoV7COiJ9n2qeYGL9yjLzIoAR5mVplMC4tCksyoUAbvLpY1WPhyb
evVqEwAZSS0ya8RaorPMYgKqHwQOppGIpX2CBpaApqXmJpUzEbf3ByU4EeBw
e3QkbxTdX29AWH+cgLM8G17AIGLICVapIUBZOmx6bwjxZOfkEQUBhjox9tcn
EfNvRT/aQELGtgBH6bdov1g3rYJYEpKTPCw2r+X2v9nu10KCeqGvossXccWS
+/JvKMg11l1WW4pYtM9wypyCaxfPvFcZ5fJVPmHuRoGJpp7Aep0x8F6va80L
pqC1VnnvlUTEBvv6lEQUGKb+rDjwDHHz7fFnYRRUOdu9afxuFcq/baR4DwVu
f65nCywQh6omzV5PgUb8E69UF8Si4PEf5lJwtchTKgpEfCecf/wxCR0RA4XS
OG690KMlnQRJR8AWfwn3fYqhowMJYrUTKnVSxNL87ozZJFyKjHAqz0Ps07BD
vRXlZ4Zkoj4bscYcu5nJKN+67YrSNMS7Ls2KdCdgk9HsacGxiCU2FqMWBLRV
6cudQxHz57ttJgjY393Nv+6FuELPpQrVT7g/9tQXR8Ra1NglPQJ40VbpBdaI
/RYI/jAjYN7bOp955tx5Du6YdEXxt904H7USse1x4S8JqD53ruh+MODW+6XH
NBBQoxHsZrsc8ZY5ZXHKJIwITx59QyMuqpimY0dCysXFD9WBO9+uptokEqj8
hrB4Ln6svs6shyS8FhZlv/Tl9udXnFOloH2FU/D2RC5/AbJMSwqicnmbnl7h
zqMoCfGgYK27djPbzeWn/L1rKPV1bmm0viZiEaqfPPOVeas+jf8XuSmuUwIa
r1/VWRxX5E/j/c0k2z0WJtM4fo/rGnHQBRqfz9ehz+h9DY3PbygJCNdso/H9
4F1c7o0uGt+/c51ArvyYxvlZUGC7Q9RB4/wNz7PKeNtM4/wqIur2ulTROP+3
kkIOKnHxv9YnTV9/YtNpGtePse7WLYyhcX07W0em4kJoXP8f5ca8rfto3B8f
P3nzLT1o3D8Ov0UXb9xJ4/46PHpozMqdxv0nNjgpS/SmcX8aRes4uwfTuH8F
28+4RyXQuL/V/ZeePlBA4/7P/b661aWRxvNhXVimaTFE4/mJoV1E9zQYPF/a
OeF2hasZPH+vxt5179zF4Pm0Ps/EHBYzeH6NX/vvzylm8HyHltry0poZPP/b
WHu5ywsG64NJV2OX8TiD9WMwwNI5fzqL9eWLjO+ZqcJi/bka1av4SZXF+hSo
KxYbKbP/69eBlwPEZwbrm57ERtV0mMH6F2FcoVPUy2B9bDsv0+2/z2D9dDLo
H3OsZLC+Xr5pmxJUwmD9TRpMNMvJYrA+D73RGVROY7B+T91Xf1SSzGB9J04N
h9j8zmD9r/JUW2HNrf/qD86Djfm1pQz2j+GbXlnH6hjsLw2pYcVKzxjsP4cG
8sB7isH+NLWmNjCbYLF/Pf3nsly4kcX+5qXnaiDwZ7H/2dtbTAxJWOyP7pnP
PzVVs9g/m0O0jsb3s9hfb/03vybYf/8Fn0TnVw==
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {17., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 10.899999999999999`}, 
           4.1, {-2.9202782112420023`, -0.2213144423477913}]}, 
         PolygonBox[{{9.4, 6.8}, {10.6, 6.3999999999999995`}, {10.6, 7.2}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "k", "u"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
           2.9202782112420023`}]}, 
         PolygonBox[{{10.6, 13.2}, {9.4, 13.6}, {9.4, 12.799999999999999`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "k", "u"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["7",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->7.819636363636365],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            7.819636363636365]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {0, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1:eJw9lQk0VXkcx+973hMy0o6cyL1X2xgjKYnur5TlVLbMITWdZylERSdLspYa
yxAhyhFvLKNJY+vMyBLlVEKGFGImaiKlybNv0fx03r3vnPfu+Zx3/7//b/3+
1ricsjvKJwjiLH7nn8PzP4QKEF8/FGh0OytuuLQSCJHwQH0jCbIRoYMaMyuA
mNTTNswlwcSk9+9brsjQsd0yloT0CA+x4cPlQKSdG90XTsJ4X218LI1s4324
JZKEyQFB69mYZUAom8ylp5HQmBLLz5haCkT+57aCchKWWfflKgQi+0zs2fue
hLJ31/2WKCBLomzUtSjoL1uVKlu6BIjmp6o7XSj4eFWvQNkPueytTHAeBTFQ
3r3cFlnO4rrTAAXhptsdb5khO05qu+jQ8FuhV84qe2TNxmJjTxqYvO2dwf7I
PTPk23QaLKa1LNtuIkvWuzx5QIODOLL9wHvkKB/XsS4atiXdOx2pi/5E1V/T
6qMhpKXneJY/cn+Y69MeGi6IVug8L0MWaRQbNdJwuiQxNVaC/P3qmDM3aXC6
qKJWroLx96hlGAfR8HjO78sqHeQaUfQY0DBarZV8YgOy3MYFkQQNeQ1DohQl
5EnTkPWVFDTbr3Ko7kB7geJ3BwMoeNVjHOcePW/fTPeyAQVvirV49lrIFq82
q0+TUJn1+HZIHvofntLKqyPhWk69+gfV+XxZytWJSUhrr3YNiFgMhEqN/o/R
JBwLHtbJeKMMREeKxmwYCXkv3XjapsiGu+TXXCKBNsrNrbNdhPn/M+JsOglK
OkNHmzYpYT5GfYbvkRBaqP/ETf8bvC9a/v4nEk6VP/s8fUgR++PCRNA6CnwX
P6+ZLlmI5zNuGHhSwHh5BvsZI4efaL11G+NLz7w1OKWA+XNa6zFMQYLCsn37
PyCnGeUM6dPQ1M2Y9sjj+xLJncmTNCxSC+Ol2SFn2Y5HZNFQHHd1wroS2aP8
keIjGhLWPOgzNMH7J9+LS//BfBpvu+tQj2zRnbcb6yfJqTy31BH97e9SsO2m
YXpwqVVDJ3JCf/GmJzScSu2/622O8YkSchbk0lDvsKeTn4xcFpSRfYaGzDlf
ta1lyP2XPQONaOAHWStW3UYukuz1n6LApz/532wfZEfzud47FJxM4gdEf0H7
HpmGO3woeN32TK/gEHJgR+/4dxRU91cqdEWhf2UT5odHSQgXW+3fHYfxQJyN
Wy0JgtHpQtp3Pj/ED1E3SNCWNah23iGP+bFUyv2JlM6tHJ6H82+wfu81G+DG
fVnu/5mFQpvOeCF3PuxIcUnFaQFn32aH6RgVIMPdv3q9TtOBHD7n3xXv2Sh/
gs/5n7nDS/3wZR4X3+zFopFddjwufhEvvrfOnMflZ/df5fSsF4/LX4LHSrOk
Mh6XX6Hyx+LNNJ/L/+rzppEff+Vz9TlY+8gs30CGq9+pVyaqjx/IcPU9cs1T
rshUwNVf0hs+535bwPWHnmZNpca4gOsfn7GB0pLlQq6/dN1E9sqyQq7/miuu
XoipFXD9Gf9pIyPcL+D6N2GPjowwR4br78SAxi3pjXyu/4efKV3Xe8rj5qPz
oZPT1t8Jbn4uvfOedh+ZY9j5clPaYhHr95lh5y9LTPhqTU8x7HxWVLz42SFt
gmHnVynktYX8sTGGne8zhn4zhf4jDDv/N+sVG5w7hxhWH6oKrmTzMyQMqx+N
v/hO2scOMqy+iIgPR5IKPjGs/tTJ2wg0U5Gl+uTha6yra4TvS/Vr25a74hYT
tCfVt5GQvL2F6nifVP/WyoXYh9LDDKuPqqVCg0870T+pfmYH/ScuchplWH39
4namK88R45Hqr4z74lRF7XGG1WfHnbYnEwuRpfqtDksz7XqRpfrePrsiIr8C
War/VjnbrKs2Ikv3Q+jxxOxefbQv3R+rnZPX/9GO/kj3S0HtMY8XGuivdP80
5beMxapifNL9BFkd7noFAwy7vxLcXkdnt/Yx7H6jRipGjdpeM+z+W/dtgd6u
hy8Zdj8qr1OV41k1M+z+1DSMehfsd49h9+vX8U12r2L37/9O1A6/
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {3., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJxFlQs0VHkcxye1mpDU2kI66d67UYnuvR4ptl8be5R2dCShjUx59Fghz/KY
VY1XERZTwlCeqekhiSLkkazkUNoomrTRSRvr0cvs/+7p/PeeM+eez5n7///+
/9/j+10iPOjgqcTj8cLQj3uLpxToWQG8/x4K/DQefBiyNASe9GOpKUtBeA3w
/aIR89ueNLlS4OFxcu7yNsR39O+WB1LA1NjJdi9aCTyfY6rXoig4ppa9es2v
iC+nnjM6QsGM+Ij59ZWI/66btsebAm3Tykh6uhHwnKcv22pDQVC32sWPGxCf
4leWzaeAPME0jB9GrBEik/eSkEAGlIUXIF7FvKrOIiHO5K/ikAbEtgs/H3Uh
ofI5oRH0GPHkDc98TRLWub3YWtKDuGjmk6wOApYbtKwc6ULcxwrq0wnoM3yR
UnsXsd6MnoV7COiJ9n2qeYGL9yjLzIoAR5mVplMC4tCksyoUAbvLpY1WPhyb
evVqEwAZSS0ya8RaorPMYgKqHwQOppGIpX2CBpaApqXmJpUzEbf3ByU4EeBw
e3QkbxTdX29AWH+cgLM8G17AIGLICVapIUBZOmx6bwjxZOfkEQUBhjox9tcn
EfNvRT/aQELGtgBH6bdov1g3rYJYEpKTPCw2r+X2v9nu10KCeqGvossXccWS
+/JvKMg11l1WW4pYtM9wypyCaxfPvFcZ5fJVPmHuRoGJpp7Aep0x8F6va80L
pqC1VnnvlUTEBvv6lEQUGKb+rDjwDHHz7fFnYRRUOdu9afxuFcq/baR4DwVu
f65nCywQh6omzV5PgUb8E69UF8Si4PEf5lJwtchTKgpEfCecf/wxCR0RA4XS
OG690KMlnQRJR8AWfwn3fYqhowMJYrUTKnVSxNL87ozZJFyKjHAqz0Ps07BD
vRXlZ4Zkoj4bscYcu5nJKN+67YrSNMS7Ls2KdCdgk9HsacGxiCU2FqMWBLRV
6cudQxHz57ttJgjY393Nv+6FuELPpQrVT7g/9tQXR8Ra1NglPQJ40VbpBdaI
/RYI/jAjYN7bOp955tx5Du6YdEXxt904H7USse1x4S8JqD53ruh+MODW+6XH
NBBQoxHsZrsc8ZY5ZXHKJIwITx59QyMuqpimY0dCysXFD9WBO9+uptokEqj8
hrB4Ln6svs6shyS8FhZlv/Tl9udXnFOloH2FU/D2RC5/AbJMSwqicnmbnl7h
zqMoCfGgYK27djPbzeWn/L1rKPV1bmm0viZiEaqfPPOVeas+jf8XuSmuUwIa
r1/VWRxX5E/j/c0k2z0WJtM4fo/rGnHQBRqfz9ehz+h9DY3PbygJCNdso/H9
4F1c7o0uGt+/c51ArvyYxvlZUGC7Q9RB4/wNz7PKeNtM4/wqIur2ulTROP+3
kkIOKnHxv9YnTV9/YtNpGtePse7WLYyhcX07W0em4kJoXP8f5ca8rfto3B8f
P3nzLT1o3D8Ov0UXb9xJ4/46PHpozMqdxv0nNjgpS/SmcX8aRes4uwfTuH8F
28+4RyXQuL/V/ZeePlBA4/7P/b661aWRxvNhXVimaTFE4/mJoV1E9zQYPF/a
OeF2hasZPH+vxt5179zF4Pm0Ps/EHBYzeH6NX/vvzylm8HyHltry0poZPP/b
WHu5ywsG64NJV2OX8TiD9WMwwNI5fzqL9eWLjO+ZqcJi/bka1av4SZXF+hSo
KxYbKbP/69eBlwPEZwbrm57ERtV0mMH6F2FcoVPUy2B9bDsv0+2/z2D9dDLo
H3OsZLC+Xr5pmxJUwmD9TRpMNMvJYrA+D73RGVROY7B+T91Xf1SSzGB9J04N
h9j8zmD9r/JUW2HNrf/qD86Djfm1pQz2j+GbXlnH6hjsLw2pYcVKzxjsP4cG
8sB7isH+NLWmNjCbYLF/Pf3nsly4kcX+5qXnaiDwZ7H/2dtbTAxJWOyP7pnP
PzVVs9g/m0O0jsb3s9hfb/03vybYf/8Fn0TnVw==
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {17., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 10.899999999999999`}, 
           4.1, {-2.9202782112420023`, -0.2213144423477913}]}, 
         PolygonBox[{{9.4, 6.8}, {10.6, 6.3999999999999995`}, {10.6, 7.2}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "k", "u"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
           2.9202782112420023`}]}, 
         PolygonBox[{{10.6, 13.2}, {9.4, 13.6}, {9.4, 12.799999999999999`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "k", "u"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["8",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->7.819636363636365],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            7.819636363636365]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {22, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1:eJw9lQk0VXkcx+973hMy0o6cyL1X2xgjKYnur5TlVLbMITWdZylERSdLspYa
yxAhyhFvLKNJY+vMyBLlVEKGFGImaiKlybNv0fx03r3vnPfu+Zx3/7//b/3+
1ricsjvKJwjiLH7nn8PzP4QKEF8/FGh0OytuuLQSCJHwQH0jCbIRoYMaMyuA
mNTTNswlwcSk9+9brsjQsd0yloT0CA+x4cPlQKSdG90XTsJ4X218LI1s4324
JZKEyQFB69mYZUAom8ylp5HQmBLLz5haCkT+57aCchKWWfflKgQi+0zs2fue
hLJ31/2WKCBLomzUtSjoL1uVKlu6BIjmp6o7XSj4eFWvQNkPueytTHAeBTFQ
3r3cFlnO4rrTAAXhptsdb5khO05qu+jQ8FuhV84qe2TNxmJjTxqYvO2dwf7I
PTPk23QaLKa1LNtuIkvWuzx5QIODOLL9wHvkKB/XsS4atiXdOx2pi/5E1V/T
6qMhpKXneJY/cn+Y69MeGi6IVug8L0MWaRQbNdJwuiQxNVaC/P3qmDM3aXC6
qKJWroLx96hlGAfR8HjO78sqHeQaUfQY0DBarZV8YgOy3MYFkQQNeQ1DohQl
5EnTkPWVFDTbr3Ko7kB7geJ3BwMoeNVjHOcePW/fTPeyAQVvirV49lrIFq82
q0+TUJn1+HZIHvofntLKqyPhWk69+gfV+XxZytWJSUhrr3YNiFgMhEqN/o/R
JBwLHtbJeKMMREeKxmwYCXkv3XjapsiGu+TXXCKBNsrNrbNdhPn/M+JsOglK
OkNHmzYpYT5GfYbvkRBaqP/ETf8bvC9a/v4nEk6VP/s8fUgR++PCRNA6CnwX
P6+ZLlmI5zNuGHhSwHh5BvsZI4efaL11G+NLz7w1OKWA+XNa6zFMQYLCsn37
PyCnGeUM6dPQ1M2Y9sjj+xLJncmTNCxSC+Ol2SFn2Y5HZNFQHHd1wroS2aP8
keIjGhLWPOgzNMH7J9+LS//BfBpvu+tQj2zRnbcb6yfJqTy31BH97e9SsO2m
YXpwqVVDJ3JCf/GmJzScSu2/622O8YkSchbk0lDvsKeTn4xcFpSRfYaGzDlf
ta1lyP2XPQONaOAHWStW3UYukuz1n6LApz/532wfZEfzud47FJxM4gdEf0H7
HpmGO3woeN32TK/gEHJgR+/4dxRU91cqdEWhf2UT5odHSQgXW+3fHYfxQJyN
Wy0JgtHpQtp3Pj/ED1E3SNCWNah23iGP+bFUyv2JlM6tHJ6H82+wfu81G+DG
fVnu/5mFQpvOeCF3PuxIcUnFaQFn32aH6RgVIMPdv3q9TtOBHD7n3xXv2Sh/
gs/5n7nDS/3wZR4X3+zFopFddjwufhEvvrfOnMflZ/df5fSsF4/LX4LHSrOk
Mh6XX6Hyx+LNNJ/L/+rzppEff+Vz9TlY+8gs30CGq9+pVyaqjx/IcPU9cs1T
rshUwNVf0hs+535bwPWHnmZNpca4gOsfn7GB0pLlQq6/dN1E9sqyQq7/miuu
XoipFXD9Gf9pIyPcL+D6N2GPjowwR4br78SAxi3pjXyu/4efKV3Xe8rj5qPz
oZPT1t8Jbn4uvfOedh+ZY9j5clPaYhHr95lh5y9LTPhqTU8x7HxWVLz42SFt
gmHnVynktYX8sTGGne8zhn4zhf4jDDv/N+sVG5w7hxhWH6oKrmTzMyQMqx+N
v/hO2scOMqy+iIgPR5IKPjGs/tTJ2wg0U5Gl+uTha6yra4TvS/Vr25a74hYT
tCfVt5GQvL2F6nifVP/WyoXYh9LDDKuPqqVCg0870T+pfmYH/ScuchplWH39
4namK88R45Hqr4z74lRF7XGG1WfHnbYnEwuRpfqtDksz7XqRpfrePrsiIr8C
War/VjnbrKs2Ikv3Q+jxxOxefbQv3R+rnZPX/9GO/kj3S0HtMY8XGuivdP80
5beMxapifNL9BFkd7noFAwy7vxLcXkdnt/Yx7H6jRipGjdpeM+z+W/dtgd6u
hy8Zdj8qr1OV41k1M+z+1DSMehfsd49h9+vX8U12r2L37/9O1A6/
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {3., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJxFlQs0VHkcxye1mpDU2kI66d67UYnuvR4ptl8be5R2dCShjUx59Fghz/KY
VY1XERZTwlCeqekhiSLkkazkUNoomrTRSRvr0cvs/+7p/PeeM+eez5n7///+
/9/j+10iPOjgqcTj8cLQj3uLpxToWQG8/x4K/DQefBiyNASe9GOpKUtBeA3w
/aIR89ueNLlS4OFxcu7yNsR39O+WB1LA1NjJdi9aCTyfY6rXoig4ppa9es2v
iC+nnjM6QsGM+Ij59ZWI/66btsebAm3Tykh6uhHwnKcv22pDQVC32sWPGxCf
4leWzaeAPME0jB9GrBEik/eSkEAGlIUXIF7FvKrOIiHO5K/ikAbEtgs/H3Uh
ofI5oRH0GPHkDc98TRLWub3YWtKDuGjmk6wOApYbtKwc6ULcxwrq0wnoM3yR
UnsXsd6MnoV7COiJ9n2qeYGL9yjLzIoAR5mVplMC4tCksyoUAbvLpY1WPhyb
evVqEwAZSS0ya8RaorPMYgKqHwQOppGIpX2CBpaApqXmJpUzEbf3ByU4EeBw
e3QkbxTdX29AWH+cgLM8G17AIGLICVapIUBZOmx6bwjxZOfkEQUBhjox9tcn
EfNvRT/aQELGtgBH6bdov1g3rYJYEpKTPCw2r+X2v9nu10KCeqGvossXccWS
+/JvKMg11l1WW4pYtM9wypyCaxfPvFcZ5fJVPmHuRoGJpp7Aep0x8F6va80L
pqC1VnnvlUTEBvv6lEQUGKb+rDjwDHHz7fFnYRRUOdu9afxuFcq/baR4DwVu
f65nCywQh6omzV5PgUb8E69UF8Si4PEf5lJwtchTKgpEfCecf/wxCR0RA4XS
OG690KMlnQRJR8AWfwn3fYqhowMJYrUTKnVSxNL87ozZJFyKjHAqz0Ps07BD
vRXlZ4Zkoj4bscYcu5nJKN+67YrSNMS7Ls2KdCdgk9HsacGxiCU2FqMWBLRV
6cudQxHz57ttJgjY393Nv+6FuELPpQrVT7g/9tQXR8Ra1NglPQJ40VbpBdaI
/RYI/jAjYN7bOp955tx5Du6YdEXxt904H7USse1x4S8JqD53ruh+MODW+6XH
NBBQoxHsZrsc8ZY5ZXHKJIwITx59QyMuqpimY0dCysXFD9WBO9+uptokEqj8
hrB4Ln6svs6shyS8FhZlv/Tl9udXnFOloH2FU/D2RC5/AbJMSwqicnmbnl7h
zqMoCfGgYK27djPbzeWn/L1rKPV1bmm0viZiEaqfPPOVeas+jf8XuSmuUwIa
r1/VWRxX5E/j/c0k2z0WJtM4fo/rGnHQBRqfz9ehz+h9DY3PbygJCNdso/H9
4F1c7o0uGt+/c51ArvyYxvlZUGC7Q9RB4/wNz7PKeNtM4/wqIur2ulTROP+3
kkIOKnHxv9YnTV9/YtNpGtePse7WLYyhcX07W0em4kJoXP8f5ca8rfto3B8f
P3nzLT1o3D8Ov0UXb9xJ4/46PHpozMqdxv0nNjgpS/SmcX8aRes4uwfTuH8F
28+4RyXQuL/V/ZeePlBA4/7P/b661aWRxvNhXVimaTFE4/mJoV1E9zQYPF/a
OeF2hasZPH+vxt5179zF4Pm0Ps/EHBYzeH6NX/vvzylm8HyHltry0poZPP/b
WHu5ywsG64NJV2OX8TiD9WMwwNI5fzqL9eWLjO+ZqcJi/bka1av4SZXF+hSo
KxYbKbP/69eBlwPEZwbrm57ERtV0mMH6F2FcoVPUy2B9bDsv0+2/z2D9dDLo
H3OsZLC+Xr5pmxJUwmD9TRpMNMvJYrA+D73RGVROY7B+T91Xf1SSzGB9J04N
h9j8zmD9r/JUW2HNrf/qD86Djfm1pQz2j+GbXlnH6hjsLw2pYcVKzxjsP4cG
8sB7isH+NLWmNjCbYLF/Pf3nsly4kcX+5qXnaiDwZ7H/2dtbTAxJWOyP7pnP
PzVVs9g/m0O0jsb3s9hfb/03vybYf/8Fn0TnVw==
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {17., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.005, 0.030000000000000002`}], 
          CircleBox[{10., 10.899999999999999`}, 
           4.1, {-2.9202782112420023`, -0.2213144423477913}]}, 
         PolygonBox[{{9.4, 6.8}, {10.6, 6.3999999999999995`}, {10.6, 7.2}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "g"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.005, 0.030000000000000002`}], 
          CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
           2.9202782112420023`}]}, 
         PolygonBox[{{10.6, 13.2}, {9.4, 13.6}, {9.4, 12.799999999999999`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "g"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["9",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->7.819636363636365],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            7.819636363636365]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1:eJw9lQk0VXkcx+973hMy0o6cyL1X2xgjKYnur5TlVLbMITWdZylERSdLspYa
yxAhyhFvLKNJY+vMyBLlVEKGFGImaiKlybNv0fx03r3vnPfu+Zx3/7//b/3+
1ricsjvKJwjiLH7nn8PzP4QKEF8/FGh0OytuuLQSCJHwQH0jCbIRoYMaMyuA
mNTTNswlwcSk9+9brsjQsd0yloT0CA+x4cPlQKSdG90XTsJ4X218LI1s4324
JZKEyQFB69mYZUAom8ylp5HQmBLLz5haCkT+57aCchKWWfflKgQi+0zs2fue
hLJ31/2WKCBLomzUtSjoL1uVKlu6BIjmp6o7XSj4eFWvQNkPueytTHAeBTFQ
3r3cFlnO4rrTAAXhptsdb5khO05qu+jQ8FuhV84qe2TNxmJjTxqYvO2dwf7I
PTPk23QaLKa1LNtuIkvWuzx5QIODOLL9wHvkKB/XsS4atiXdOx2pi/5E1V/T
6qMhpKXneJY/cn+Y69MeGi6IVug8L0MWaRQbNdJwuiQxNVaC/P3qmDM3aXC6
qKJWroLx96hlGAfR8HjO78sqHeQaUfQY0DBarZV8YgOy3MYFkQQNeQ1DohQl
5EnTkPWVFDTbr3Ko7kB7geJ3BwMoeNVjHOcePW/fTPeyAQVvirV49lrIFq82
q0+TUJn1+HZIHvofntLKqyPhWk69+gfV+XxZytWJSUhrr3YNiFgMhEqN/o/R
JBwLHtbJeKMMREeKxmwYCXkv3XjapsiGu+TXXCKBNsrNrbNdhPn/M+JsOglK
OkNHmzYpYT5GfYbvkRBaqP/ETf8bvC9a/v4nEk6VP/s8fUgR++PCRNA6CnwX
P6+ZLlmI5zNuGHhSwHh5BvsZI4efaL11G+NLz7w1OKWA+XNa6zFMQYLCsn37
PyCnGeUM6dPQ1M2Y9sjj+xLJncmTNCxSC+Ol2SFn2Y5HZNFQHHd1wroS2aP8
keIjGhLWPOgzNMH7J9+LS//BfBpvu+tQj2zRnbcb6yfJqTy31BH97e9SsO2m
YXpwqVVDJ3JCf/GmJzScSu2/622O8YkSchbk0lDvsKeTn4xcFpSRfYaGzDlf
ta1lyP2XPQONaOAHWStW3UYukuz1n6LApz/532wfZEfzud47FJxM4gdEf0H7
HpmGO3woeN32TK/gEHJgR+/4dxRU91cqdEWhf2UT5odHSQgXW+3fHYfxQJyN
Wy0JgtHpQtp3Pj/ED1E3SNCWNah23iGP+bFUyv2JlM6tHJ6H82+wfu81G+DG
fVnu/5mFQpvOeCF3PuxIcUnFaQFn32aH6RgVIMPdv3q9TtOBHD7n3xXv2Sh/
gs/5n7nDS/3wZR4X3+zFopFddjwufhEvvrfOnMflZ/df5fSsF4/LX4LHSrOk
Mh6XX6Hyx+LNNJ/L/+rzppEff+Vz9TlY+8gs30CGq9+pVyaqjx/IcPU9cs1T
rshUwNVf0hs+535bwPWHnmZNpca4gOsfn7GB0pLlQq6/dN1E9sqyQq7/miuu
XoipFXD9Gf9pIyPcL+D6N2GPjowwR4br78SAxi3pjXyu/4efKV3Xe8rj5qPz
oZPT1t8Jbn4uvfOedh+ZY9j5clPaYhHr95lh5y9LTPhqTU8x7HxWVLz42SFt
gmHnVynktYX8sTGGne8zhn4zhf4jDDv/N+sVG5w7hxhWH6oKrmTzMyQMqx+N
v/hO2scOMqy+iIgPR5IKPjGs/tTJ2wg0U5Gl+uTha6yra4TvS/Vr25a74hYT
tCfVt5GQvL2F6nifVP/WyoXYh9LDDKuPqqVCg0870T+pfmYH/ScuchplWH39
4namK88R45Hqr4z74lRF7XGG1WfHnbYnEwuRpfqtDksz7XqRpfrePrsiIr8C
War/VjnbrKs2Ikv3Q+jxxOxefbQv3R+rnZPX/9GO/kj3S0HtMY8XGuivdP80
5beMxapifNL9BFkd7noFAwy7vxLcXkdnt/Yx7H6jRipGjdpeM+z+W/dtgd6u
hy8Zdj8qr1OV41k1M+z+1DSMehfsd49h9+vX8U12r2L37/9O1A6/
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {3., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1:eJxFlQs0VHkcxye1mpDU2kI66d67UYnuvR4ptl8be5R2dCShjUx59Fghz/KY
VY1XERZTwlCeqekhiSLkkazkUNoomrTRSRvr0cvs/+7p/PeeM+eez5n7///+
/9/j+10iPOjgqcTj8cLQj3uLpxToWQG8/x4K/DQefBiyNASe9GOpKUtBeA3w
/aIR89ueNLlS4OFxcu7yNsR39O+WB1LA1NjJdi9aCTyfY6rXoig4ppa9es2v
iC+nnjM6QsGM+Ij59ZWI/66btsebAm3Tykh6uhHwnKcv22pDQVC32sWPGxCf
4leWzaeAPME0jB9GrBEik/eSkEAGlIUXIF7FvKrOIiHO5K/ikAbEtgs/H3Uh
ofI5oRH0GPHkDc98TRLWub3YWtKDuGjmk6wOApYbtKwc6ULcxwrq0wnoM3yR
UnsXsd6MnoV7COiJ9n2qeYGL9yjLzIoAR5mVplMC4tCksyoUAbvLpY1WPhyb
evVqEwAZSS0ya8RaorPMYgKqHwQOppGIpX2CBpaApqXmJpUzEbf3ByU4EeBw
e3QkbxTdX29AWH+cgLM8G17AIGLICVapIUBZOmx6bwjxZOfkEQUBhjox9tcn
EfNvRT/aQELGtgBH6bdov1g3rYJYEpKTPCw2r+X2v9nu10KCeqGvossXccWS
+/JvKMg11l1WW4pYtM9wypyCaxfPvFcZ5fJVPmHuRoGJpp7Aep0x8F6va80L
pqC1VnnvlUTEBvv6lEQUGKb+rDjwDHHz7fFnYRRUOdu9afxuFcq/baR4DwVu
f65nCywQh6omzV5PgUb8E69UF8Si4PEf5lJwtchTKgpEfCecf/wxCR0RA4XS
OG690KMlnQRJR8AWfwn3fYqhowMJYrUTKnVSxNL87ozZJFyKjHAqz0Ps07BD
vRXlZ4Zkoj4bscYcu5nJKN+67YrSNMS7Ls2KdCdgk9HsacGxiCU2FqMWBLRV
6cudQxHz57ttJgjY393Nv+6FuELPpQrVT7g/9tQXR8Ra1NglPQJ40VbpBdaI
/RYI/jAjYN7bOp955tx5Du6YdEXxt904H7USse1x4S8JqD53ruh+MODW+6XH
NBBQoxHsZrsc8ZY5ZXHKJIwITx59QyMuqpimY0dCysXFD9WBO9+uptokEqj8
hrB4Ln6svs6shyS8FhZlv/Tl9udXnFOloH2FU/D2RC5/AbJMSwqicnmbnl7h
zqMoCfGgYK27djPbzeWn/L1rKPV1bmm0viZiEaqfPPOVeas+jf8XuSmuUwIa
r1/VWRxX5E/j/c0k2z0WJtM4fo/rGnHQBRqfz9ehz+h9DY3PbygJCNdso/H9
4F1c7o0uGt+/c51ArvyYxvlZUGC7Q9RB4/wNz7PKeNtM4/wqIur2ulTROP+3
kkIOKnHxv9YnTV9/YtNpGtePse7WLYyhcX07W0em4kJoXP8f5ca8rfto3B8f
P3nzLT1o3D8Ov0UXb9xJ4/46PHpozMqdxv0nNjgpS/SmcX8aRes4uwfTuH8F
28+4RyXQuL/V/ZeePlBA4/7P/b661aWRxvNhXVimaTFE4/mJoV1E9zQYPF/a
OeF2hasZPH+vxt5179zF4Pm0Ps/EHBYzeH6NX/vvzylm8HyHltry0poZPP/b
WHu5ywsG64NJV2OX8TiD9WMwwNI5fzqL9eWLjO+ZqcJi/bka1av4SZXF+hSo
KxYbKbP/69eBlwPEZwbrm57ERtV0mMH6F2FcoVPUy2B9bDsv0+2/z2D9dDLo
H3OsZLC+Xr5pmxJUwmD9TRpMNMvJYrA+D73RGVROY7B+T91Xf1SSzGB9J04N
h9j8zmD9r/JUW2HNrf/qD86Djfm1pQz2j+GbXlnH6hjsLw2pYcVKzxjsP4cG
8sB7isH+NLWmNjCbYLF/Pf3nsly4kcX+5qXnaiDwZ7H/2dtbTAxJWOyP7pnP
PzVVs9g/m0O0jsb3s9hfb/03vybYf/8Fn0TnVw==
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {17., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[CompressedData["
1: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
983K6/qwIXnt3zzHgOo/dyH+B8l71Ys=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
/gfGw7lz
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["10",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->7.819636363636365],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            7.819636363636365]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], LineBox[CompressedData["
1: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
majUoy+xlC/9vuCwlyD8nvT74/9lQRxL
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {5., 9.0548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
P2bi94//ATAZ2Pc=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.774545454545455],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.774545454545455]& ], {15., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], 
          {Thickness[0.015], LineBox[{{9.5, 9.5}, {10.5, 10.5}}], 
           LineBox[{{9.5, 10.5}, {10.5, 9.5}}]}}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["11",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->7.819636363636365],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            7.819636363636365]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bc/0.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bc/0.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {88, 0}, {0, 0}, {22, 22}], InsetBox[
     TagBox[
      StyleBox[
       TagBox["g",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->11.729454545454546`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       11.729454545454546`]& ], {61.5, 47.959999999999994}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox["\[RightArrow]",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->11.729454545454546`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       11.729454545454546`]& ], {66., 47.959999999999994}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox["g",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->11.729454545454546`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       11.729454545454546`]& ], {70.5, 47.959999999999994}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]]},
   AspectRatio->0.3833333333333333,
   ImageSize->{512, 256},
   PlotRange->{{0, 132}, {0, 50.599999999999994`}}], 
  TraditionalForm]], "Print",
 CellChangeTimes->{{3.9165493161311283`*^9, 3.916549327689225*^9}, 
   3.916549565217374*^9, 3.9165496955279903`*^9, 3.916549795689118*^9, 
   3.916551533279035*^9, 3.916551603315154*^9, 3.916552113443975*^9, 
   3.916675476197364*^9, 3.9166765636513433`*^9, 3.91667704716116*^9},
 CellLabel->
  "During evaluation of \
In[42]:=",ExpressionUUID->"750291c0-604c-4e56-bd7c-c74d77936c38"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Paint", "[", 
   RowBox[{
    RowBox[{"diag5", "[", "0", "]"}], ",", " ", 
    RowBox[{"ColumnsXRows", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{"5", ",", " ", "1"}], "}"}]}], ",", " ", 
    RowBox[{"Numbering", " ", "->", " ", "Simple"}], ",", " ", 
    RowBox[{"ImageSize", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{"512", ",", " ", "256"}], "}"}]}]}], "]"}], ";"}]], "Code",
 CellChangeTimes->{{3.916550429786152*^9, 3.916550439678653*^9}},
 CellLabel->"In[43]:=",ExpressionUUID->"3e7f1631-1767-4067-beb7-1a581f038014"],

Cell[BoxData[
 FormBox[
  GraphicsBox[{InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-6.701306176637445*^-13, 10.}, {6.00000000000067, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {3., 9.3048}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000000668`, 10.}, {13.999999999999329`, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {17., 10.6952}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         CircleBox[{10., 10.899999999999999`}, 
          4.1, {-2.9202782112420023`, -0.2213144423477913}], 
         PolygonBox[{{9.4, 6.8}, {10.6, 6.3999999999999995`}, {10.6, 7.2}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "k"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
           2.9202782112420023`}]}, 
         PolygonBox[{{10.6, 13.2}, {9.4, 13.6}, {9.4, 12.799999999999999`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "k", "u"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["1",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.383563636363636],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.383563636363636]& ], {10., -0.5}, NCache[
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
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {3., 9.3048}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000000668`, 10.}, {13.999999999999329`, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {17., 10.6952}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         CircleBox[{10., 10.899999999999999`}, 
          4.1, {-2.9202782112420023`, -0.2213144423477913}], 
         PolygonBox[{{10.6, 6.8}, {9.4, 6.3999999999999995`}, {9.4, 7.2}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["u", "k"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
           2.9202782112420023`}]}, 
         PolygonBox[{{9.4, 13.2}, {10.6, 13.6}, {10.6, 12.799999999999999`}}],
          InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["u", "~"], "k", "u"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["2",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.383563636363636],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.383563636363636]& ], {10., -0.5}, NCache[
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
         LineBox[{{-6.701306176637445*^-13, 10.}, {6.00000000000067, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {3., 9.3048}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000000668`, 10.}, {13.999999999999329`, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {17., 10.6952}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         CircleBox[{10., 10.899999999999999`}, 
          4.1, {-2.9202782112420023`, -0.2213144423477913}], 
         PolygonBox[{{9.4, 6.8}, {10.6, 6.3999999999999995`}, {10.6, 7.2}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "k"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
           2.9202782112420023`}]}, 
         PolygonBox[{{10.6, 13.2}, {9.4, 13.6}, {9.4, 12.799999999999999`}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "k", "u"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["3",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.383563636363636],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.383563636363636]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-6.701306176637445*^-13, 10.}, {6.00000000000067, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {3., 9.3048}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000000668`, 10.}, {13.999999999999329`, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {17., 10.6952}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         CircleBox[{10., 10.899999999999999`}, 
          4.1, {-2.9202782112420023`, -0.2213144423477913}], 
         PolygonBox[{{10.6, 6.8}, {9.4, 6.3999999999999995`}, {9.4, 7.2}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubscriptBox["d", "k"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 5.8548}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          CircleBox[{10., 9.100000000000001}, 4.1, {0.2213144423477913, 
           2.9202782112420023`}]}, 
         PolygonBox[{{9.4, 13.2}, {10.6, 13.6}, {10.6, 12.799999999999999`}}],
          InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["d", "~"], "k", "u"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["4",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.383563636363636],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.383563636363636]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 0}, {0, 0}, {22, 22}], InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{-6.701306176637445*^-13, 10.}, {6.00000000000067, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {3., 9.3048}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000000668`, 10.}, {13.999999999999329`, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {17., 10.6952}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         CircleBox[{10., 10.899999999999999`}, 
          4.1, {-2.9202782112420023`, -0.2213144423477913}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             OverscriptBox["g", "~"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 6.1048}, NCache[
          ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[CompressedData["
1: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
/gfGw7lz
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->11.729454545454544`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            11.729454545454544`]& ], {10., 14.145199999999999}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{6., 10.}], PointBox[{14., 10.}]}, 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox["5",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->9.383563636363636],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            9.383563636363636]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"ac/bd/cdcd.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "ac/bd/cdcd.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {88, 0}, {0, 0}, {22, 22}], InsetBox[
     TagBox[
      StyleBox[
       TagBox[
        OverscriptBox["g", "~"],
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->14.075345454545452`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       14.075345454545452`]& ], {50.5, 25.960000000000004}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox["\[RightArrow]",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->14.075345454545452`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       14.075345454545452`]& ], {55., 25.960000000000004}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox[
        OverscriptBox["g", "~"],
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->14.075345454545452`],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       14.075345454545452`]& ], {59.5, 25.960000000000004}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]]},
   AspectRatio->0.26,
   ImageSize->{512, 256},
   PlotRange->{{0, 110}, {0, 28.6}}], TraditionalForm]], "Print",
 CellChangeTimes->{{3.916550433806733*^9, 3.916550440218893*^9}, 
   3.916551533301939*^9, 3.9165516033382177`*^9, 3.9165521134664927`*^9, 
   3.916675476238122*^9, 3.916676563700844*^9, 3.916677047229371*^9},
 CellLabel->
  "During evaluation of \
In[43]:=",ExpressionUUID->"9aa8b5e8-b63b-4a8d-860c-43a47ddc155e"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Obtain the amplitudes", "Section",
 CellChangeTimes->{{3.9145749146702127`*^9, 
  3.914574919955998*^9}},ExpressionUUID->"bb5afc7a-27fa-4db9-85c0-\
1c24051ac8cb"],

Cell["Some text.", "Text",
 CellChangeTimes->{{3.914574928222319*^9, 
  3.914574929643838*^9}},ExpressionUUID->"779641a9-eb5b-4cf4-b503-\
53b94e2a6c0a"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"MakeBoxes", "[", 
     RowBox[{"mq", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
    RowBox[{"SubscriptBox", "[", 
     RowBox[{"\"\<m\>\"", ",", " ", "\"\<q\>\""}], "]"}]}], ";"}], 
  "\n"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"ZQL", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<Z\>\"", ",", "\"\<qL\>\""}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"ZQR", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<Z\>\"", ",", "\"\<qR\>\""}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"Ze", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<Z\>\"", ",", " ", "\"\<e\>\""}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"ZZ", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<Z\>\"", ",", " ", "\"\<Z\>\""}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"ZsW", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<Z\>\"", ",", " ", "\"\<sW\>\""}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"Zm", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<Z\>\"", ",", " ", "\"\<m\>\""}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"ZGl", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<Z\>\"", ",", " ", "\"\<g\>\""}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"ZGluino", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<Z\>\"", ",", " ", 
     RowBox[{"OverscriptBox", "[", 
      RowBox[{"\"\<g\>\"", ",", " ", "\"\<~\>\""}], "]"}]}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"MakeBoxes", "[", 
     RowBox[{"ZmGluino", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
    
    RowBox[{"SubscriptBox", "[", 
     RowBox[{"\"\<Z\>\"", ",", " ", 
      RowBox[{"SubscriptBox", "[", 
       RowBox[{"\"\<m\>\"", ",", " ", 
        RowBox[{"OverscriptBox", "[", 
         RowBox[{"\"\<g\>\"", ",", " ", "\"\<~\>\""}], "]"}]}], "]"}]}], 
     "]"}]}], ";"}], "\n", "\n"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"dQL", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<\[Delta]\>\"", ",", "\"\<qL\>\""}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"dQR", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<\[Delta]\>\"", ",", "\"\<qR\>\""}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"de", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<\[Delta]\>\"", ",", " ", "\"\<e\>\""}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"dZ", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<\[Delta]\>\"", ",", " ", "\"\<Z\>\""}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"dsW", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<\[Delta]\>\"", ",", " ", "\"\<W\>\""}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"dQm", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<\[Delta]\>\"", ",", " ", "\"\<m\>\""}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"dGl", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<\[Delta]\>\"", ",", " ", "\"\<g\>\""}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"dGluino", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<\[Delta]\>\"", ",", " ", 
     RowBox[{"OverscriptBox", "[", 
      RowBox[{"\"\<g\>\"", ",", " ", "\"\<~\>\""}], "]"}]}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"dmGluino", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<\[Delta]\>\"", ",", " ", 
     RowBox[{"SubscriptBox", "[", 
      RowBox[{"\"\<m\>\"", ",", " ", 
       RowBox[{"OverscriptBox", "[", 
        RowBox[{"\"\<g\>\"", ",", " ", "\"\<~\>\""}], "]"}]}], "]"}]}], 
    "]"}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.915681621426889*^9, 3.915681663773157*^9}, {
   3.9156817008049603`*^9, 3.9156818056752787`*^9}, {3.915681837012416*^9, 
   3.915681862466351*^9}, {3.916118725229847*^9, 3.916118759579762*^9}, {
   3.916548137385392*^9, 3.916548200863927*^9}, 3.9165483970925493`*^9, {
   3.916549523641994*^9, 3.9165495412194567`*^9}, {3.9165511940783253`*^9, 
   3.91655126387903*^9}},
 CellLabel->"In[44]:=",ExpressionUUID->"722f744c-7e3a-45c6-a921-6c7b7916b84d"],

Cell[CellGroupData[{

Cell["Quark self-energy", "Subsection",
 CellChangeTimes->{{3.915608126174597*^9, 
  3.915608130736068*^9}},ExpressionUUID->"7241d7c1-0b35-40e1-86ae-\
19afbd47b509"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampQuarkSE", "[", "0", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{"FCFAConvert", "[", "\n", "\t", 
    RowBox[{
     RowBox[{"CreateFeynAmp", "[", 
      RowBox[{
       RowBox[{"diagQuarkSE", "[", "1", "]"}], ",", " ", 
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
      RowBox[{
       RowBox[{"SMP", "[", "\"\<m_u\>\"", "]"}], "->", "mq"}]}]}], "\n", 
    "]"}], " ", "+", " ", 
   RowBox[{"FCFAConvert", "[", "\n", "\t", 
    RowBox[{
     RowBox[{"CreateFeynAmp", "[", 
      RowBox[{
       RowBox[{"diagQuarkSECT", "[", "1", "]"}], ",", " ", 
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
         RowBox[{"dMf1", "[", "__", "]"}], "->", "Zm"}], ",", " ", 
        RowBox[{
         RowBox[{"dZfL1", "[", "__", "]"}], "->", "ZQL"}], ",", "\n", "\t", 
        RowBox[{
         RowBox[{"dZfR1", "[", "__", "]"}], "->", "ZQR"}], ",", " ", 
        RowBox[{
         RowBox[{"SMP", "[", "\"\<m_u\>\"", "]"}], "->", "mq"}]}], "}"}]}]}], 
    "\n", "]"}]}]}]], "Code",
 CellChangeTimes->{{3.914574932395079*^9, 3.9145750642106*^9}, {
   3.914575114114571*^9, 3.914575140895885*^9}, {3.914575213933047*^9, 
   3.914575230956373*^9}, 3.9145752957831707`*^9, {3.914575403525599*^9, 
   3.914575408291696*^9}, {3.914575627947624*^9, 3.914575639390836*^9}, {
   3.9145763894920387`*^9, 3.914576423833235*^9}, {3.914576914638637*^9, 
   3.914576993535039*^9}, 3.915635215915537*^9, {3.915681825635068*^9, 
   3.915681829061543*^9}, {3.915681883861487*^9, 3.915681908480117*^9}, {
   3.915702181919441*^9, 3.915702185075617*^9}, {3.915873346706002*^9, 
   3.915873349275494*^9}, {3.91654812326412*^9, 3.916548124468946*^9}, {
   3.916549436138627*^9, 3.9165494365215397`*^9}},
 CellLabel->"In[63]:=",ExpressionUUID->"5ac34549-5324-4fe2-88d9-41a99bbbd953"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FormBox[
    RowBox[{
     FractionBox["1", 
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
            FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D], 
            FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D]], "-", 
           TreeLevel`MSf[
             FeynArts`Index[TreeLevel`Sfermion, 3], 3, 1]^2],
          Editable->False], ")"}]}]}]], "\[ImaginaryI]", " ", 
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
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "2"}], 
              OverscriptBox["q", "~"]], ")"}]},
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
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "1"}], 
              OverscriptBox["q", "~"]], ")"}]},
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
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "2"}], 
          OverscriptBox["q", "~"]]}], "-", 
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
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "1"}], 
          OverscriptBox["q", "~"]]}]}], ")"}]}]}],
    TraditionalForm], "-", 
   RowBox[{"\[ImaginaryI]", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"\[ImaginaryI]", " ", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], " ", 
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
          RowBox[{"-", 
           FractionBox["1", "2"]}], " ", 
          SubscriptBox["m", "q"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["Z", "qL"], ")"}]},
           "Conjugate"]}], "-", 
         FractionBox[
          RowBox[{
           SubscriptBox["m", "q"], " ", 
           SubscriptBox["Z", "qR"]}], "2"], "-", 
         SubscriptBox["Z", "m"]}], ")"}]}], "+", 
      RowBox[{"\[ImaginaryI]", " ", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], " ", 
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
          RowBox[{"-", 
           FractionBox["1", "2"]}], " ", 
          SubscriptBox["m", "q"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["Z", "qR"], ")"}]},
           "Conjugate"]}], "-", 
         FractionBox[
          RowBox[{
           SubscriptBox["m", "q"], " ", 
           SubscriptBox["Z", "qL"]}], "2"], "-", 
         SubscriptBox["Z", "m"]}], ")"}]}], "+", 
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
               SubscriptBox["Z", "qL"], ")"}]},
            "Conjugate"], "2"]}], "-", 
         FractionBox[
          SubscriptBox["Z", "qL"], "2"]}], ")"}], " ", 
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
              SubscriptBox["Z", "qR"], ")"}]},
           "Conjugate"], "2"], "+", 
         FractionBox[
          SubscriptBox["Z", "qR"], "2"]}], ")"}], " ", 
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
          TraditionalForm]]}]}]}], ")"}]}], "-", 
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
        RowBox[{
         SubscriptBox["m", "q"], "+", 
         RowBox[{"\[Gamma]", "\[CenterDot]", 
          FormBox[
           FormBox["q",
            TraditionalForm],
           TraditionalForm]}]}], ")"}], ".", 
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
       RowBox[{"(", 
        InterpretationBox[
         RowBox[{
          SuperscriptBox[
           FormBox[
            FormBox["q",
             TraditionalForm],
            TraditionalForm], "2"], "\[InvisibleSpace]", "\<\"-\"\>", 
          "\[InvisibleSpace]", 
          SubsuperscriptBox["m", "q", "2"]}],
         SequenceForm[
          FeynCalc`Pair[
           FeynCalc`Momentum[$CellContext`q, D], 
           FeynCalc`Momentum[$CellContext`q, D]], "-", $CellContext`mq^2],
         Editable->False], ")"}], ".", 
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
          FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D], 
          FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D]]],
        Editable->False]}]}]],
    TraditionalForm]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.914575052920919*^9, {3.914575089031087*^9, 3.9145750893814297`*^9}, 
   3.914575141640571*^9, 3.9145752379762583`*^9, 3.914575296647696*^9, 
   3.914575354462061*^9, {3.914575404137352*^9, 3.91457540875249*^9}, 
   3.9145756423206053`*^9, 3.914576308840642*^9, 3.9145764273142138`*^9, 
   3.914576479502083*^9, 3.914576560660631*^9, {3.914576985017625*^9, 
   3.914576994818483*^9}, 3.915604271591738*^9, 3.915604791439386*^9, 
   3.915605243335981*^9, 3.9156078846777067`*^9, 3.915608289685635*^9, 
   3.91561163013448*^9, 3.915613373016503*^9, 3.9156312241602993`*^9, 
   3.915631682573973*^9, 3.91563521756876*^9, 3.9156355634879208`*^9, 
   3.915682312979959*^9, 3.915688076794076*^9, 3.91585674508573*^9, 
   3.915873381605352*^9, 3.915873539558571*^9, 3.916110387211187*^9, 
   3.916115551404039*^9, 3.9161173781409082`*^9, 3.916118542377471*^9, 
   3.916119329699098*^9, 3.916121579699279*^9, 3.9164532186038*^9, 
   3.9165482294828863`*^9, 3.9165484554927692`*^9, 3.916549438083919*^9, 
   3.9165495654308577`*^9, 3.916549695751137*^9, 3.9165497958940287`*^9, 
   3.916551533499201*^9, 3.916551603546791*^9, 3.916552113659096*^9, 
   3.9166754764749537`*^9, 3.916676563936638*^9, 3.916677047445961*^9},
 CellLabel->"Out[63]=",ExpressionUUID->"61f8b95f-9361-40b6-b0a6-3a0210f258a5"]
}, Open  ]]
}, Closed]],

Cell[CellGroupData[{

Cell["Gluon  self - energy", "Subsection",
 CellChangeTimes->{{3.916549391932316*^9, 
  3.916549407273946*^9}},ExpressionUUID->"573818b8-edd4-438e-9066-\
be7feb30ace4"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampGlSE", "[", "0", "]"}], " ", "=", " ", 
  RowBox[{"Join", "[", "\n", "\t", 
   RowBox[{
    RowBox[{"FCFAConvert", "[", "\n", "\t\t", 
     RowBox[{
      RowBox[{"CreateFeynAmp", "[", 
       RowBox[{
        RowBox[{"diagGlSE", "[", "1", "]"}], ",", " ", 
        RowBox[{"Truncated", " ", "->", " ", "True"}]}], "]"}], ",", "\n", 
      "\t\t", 
      RowBox[{"IncomingMomenta", " ", "->", " ", 
       RowBox[{"{", "p", "}"}]}], ",", "\n", "\t\t", 
      RowBox[{"OutgoingMomenta", " ", "->", " ", 
       RowBox[{"{", "p", "}"}]}], ",", "\n", "\t\t", 
      RowBox[{"LorentzIndexNames", " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{"\[Mu]", ",", " ", "\[Nu]"}], "}"}]}], ",", "\n", "\t\t", 
      RowBox[{"DropSumOver", " ", "->", " ", "True"}], ",", "\n", "\t\t", 
      RowBox[{"LoopMomenta", " ", "->", " ", 
       RowBox[{"{", "q", "}"}]}], ",", "\n", "\t\t", 
      RowBox[{"UndoChiralSplittings", " ", "->", " ", "True"}], ",", "\n", 
      "\t\t", 
      RowBox[{"ChangeDimension", " ", "->", " ", "D"}], ",", "\n", "\t\t", 
      RowBox[{"List", " ", "->", " ", "True"}], ",", "\n", "\t\t", 
      RowBox[{"SMP", " ", "->", " ", "True"}], ",", "\n", "\t\t", 
      RowBox[{"FinalSubstitutions", " ", "->", " ", 
       RowBox[{
        RowBox[{"SMP", "[", "\"\<m_u\>\"", "]"}], "->", "mq"}]}]}], "\n", 
     "\t", "]"}], ",", "\n", "\t", 
    RowBox[{"FCFAConvert", "[", "\n", "\t\t", 
     RowBox[{
      RowBox[{"CreateFeynAmp", "[", 
       RowBox[{
        RowBox[{"diagGlSECT", "[", "1", "]"}], ",", " ", 
        RowBox[{"Truncated", " ", "->", " ", "True"}]}], "]"}], ",", "\n", 
      "\t\t", 
      RowBox[{"IncomingMomenta", " ", "->", " ", 
       RowBox[{"{", "p", "}"}]}], ",", "\n", "\t\t", 
      RowBox[{"OutgoingMomenta", " ", "->", " ", 
       RowBox[{"{", "p", "}"}]}], ",", "\n", "\t\t", 
      RowBox[{"LorentzIndexNames", " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{"\[Mu]", ",", " ", "\[Nu]"}], "}"}]}], ",", "\n", "\t\t", 
      RowBox[{"DropSumOver", " ", "->", " ", "True"}], ",", "\n", "\t\t", 
      RowBox[{"LoopMomenta", " ", "->", " ", 
       RowBox[{"{", "q", "}"}]}], ",", "\n", "\t\t", 
      RowBox[{"UndoChiralSplittings", " ", "->", " ", "True"}], ",", "\n", 
      "\t\t", 
      RowBox[{"ChangeDimension", " ", "->", " ", "D"}], ",", "\n", "\t\t", 
      RowBox[{"List", " ", "->", " ", "True"}], ",", "\n", "\t\t", 
      RowBox[{"SMP", " ", "->", " ", "True"}], ",", "\n", "\t\t", 
      RowBox[{"FinalSubstitutions", " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"dZGG1", " ", "->", " ", "ZGl"}], ",", " ", 
         RowBox[{
          RowBox[{"SMP", "[", "\"\<m_u\>\"", "]"}], "->", "mq"}]}], "}"}]}]}],
      "\n", "\t", "]"}]}], "\n", "]"}]}]], "Code",
 CellChangeTimes->{{3.9165494098629723`*^9, 3.9165494186995487`*^9}, {
   3.916549455312668*^9, 3.9165494690908403`*^9}, {3.916549500816121*^9, 
   3.916549507196496*^9}, 3.916549547979044*^9, {3.916549648107024*^9, 
   3.916549649712871*^9}, {3.91654977750983*^9, 3.916549780337533*^9}, {
   3.916549905080182*^9, 3.9165499052077837`*^9}, {3.916675964405013*^9, 
   3.916676037213828*^9}},
 CellLabel->"In[64]:=",ExpressionUUID->"a4497417-c2c8-429c-8389-d1fa41b30768"],

Cell[BoxData[
 FormBox[
  RowBox[{"{", 
   RowBox[{
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
       SubsuperscriptBox["g", "s", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox[
          RowBox[{"(", 
           SuperscriptBox["T", 
            FormBox[
             FormBox["Glu1",
              TraditionalForm],
             TraditionalForm]], 
           SuperscriptBox["T", 
            FormBox[
             FormBox["Glu2",
              TraditionalForm],
             TraditionalForm]], ")"}], 
          RowBox[{
           FormBox[
            FormBox["Col3",
             TraditionalForm],
            TraditionalForm], 
           FormBox[
            FormBox["Col3",
             TraditionalForm],
            TraditionalForm]}]], "+", 
         SubscriptBox[
          RowBox[{"(", 
           SuperscriptBox["T", 
            FormBox[
             FormBox["Glu2",
              TraditionalForm],
             TraditionalForm]], 
           SuperscriptBox["T", 
            FormBox[
             FormBox["Glu1",
              TraditionalForm],
             TraditionalForm]], ")"}], 
          RowBox[{
           FormBox[
            FormBox["Col3",
             TraditionalForm],
            TraditionalForm], 
           FormBox[
            FormBox["Col3",
             TraditionalForm],
            TraditionalForm]}]]}], ")"}]}], 
      RowBox[{"16", " ", 
       SuperscriptBox["\[Pi]", "4"], " ", 
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
           FeynCalc`Momentum[$CellContext`q, D], 
           FeynCalc`Momentum[$CellContext`q, D]], "-", TreeLevel`MSf[
            FeynArts`Index[TreeLevel`Sfermion, 3], 3, 
            FeynArts`Index[$CellContext`Generation, 3]]^2],
         Editable->False], ")"}]}]],
     TraditionalForm], ",", 
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
       SubsuperscriptBox["g", "s", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox[
          RowBox[{"(", 
           SuperscriptBox["T", 
            FormBox[
             FormBox["Glu1",
              TraditionalForm],
             TraditionalForm]], 
           SuperscriptBox["T", 
            FormBox[
             FormBox["Glu2",
              TraditionalForm],
             TraditionalForm]], ")"}], 
          RowBox[{
           FormBox[
            FormBox["Col3",
             TraditionalForm],
            TraditionalForm], 
           FormBox[
            FormBox["Col3",
             TraditionalForm],
            TraditionalForm]}]], "+", 
         SubscriptBox[
          RowBox[{"(", 
           SuperscriptBox["T", 
            FormBox[
             FormBox["Glu2",
              TraditionalForm],
             TraditionalForm]], 
           SuperscriptBox["T", 
            FormBox[
             FormBox["Glu1",
              TraditionalForm],
             TraditionalForm]], ")"}], 
          RowBox[{
           FormBox[
            FormBox["Col3",
             TraditionalForm],
            TraditionalForm], 
           FormBox[
            FormBox["Col3",
             TraditionalForm],
            TraditionalForm]}]]}], ")"}]}], 
      RowBox[{"16", " ", 
       SuperscriptBox["\[Pi]", "4"], " ", 
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
           FeynCalc`Momentum[$CellContext`q, D], 
           FeynCalc`Momentum[$CellContext`q, D]], "-", TreeLevel`MSf[
            FeynArts`Index[TreeLevel`Sfermion, 3], 4, 
            FeynArts`Index[$CellContext`Generation, 3]]^2],
         Editable->False], ")"}]}]],
     TraditionalForm], ",", 
    FormBox[
     RowBox[{"-", 
      RowBox[{
       FractionBox["1", 
        RowBox[{"32", " ", 
         SuperscriptBox["\[Pi]", "4"], " ", 
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
          Editable->False]}]], 
       RowBox[{
        SuperscriptBox["g", 
         RowBox[{
          FormBox[
           FormBox["Lor3",
            TraditionalForm],
           TraditionalForm], 
          FormBox[
           FormBox["Lor4",
            TraditionalForm],
           TraditionalForm]}]], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[ImaginaryI]", " ", 
           SuperscriptBox["g", 
            RowBox[{
             FormBox[
              FormBox["Lor3",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["\[Nu]",
               TraditionalForm],
              TraditionalForm]}]], " ", 
           SuperscriptBox["g", 
            RowBox[{
             FormBox[
              FormBox["Lor4",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["\[Mu]",
               TraditionalForm],
              TraditionalForm]}]], " ", 
           SuperscriptBox["f", 
            RowBox[{
             FormBox[
              FormBox["Glu1",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Glu3",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["$AL$15046",
               TraditionalForm],
              TraditionalForm]}]], " ", 
           SuperscriptBox["f", 
            RowBox[{
             FormBox[
              FormBox["Glu2",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Glu3",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["$AL$15046",
               TraditionalForm],
              TraditionalForm]}]], " ", 
           SubsuperscriptBox["g", "s", "2"]}], "-", 
          RowBox[{"\[ImaginaryI]", " ", 
           SuperscriptBox["g", 
            RowBox[{
             FormBox[
              FormBox["Lor3",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Lor4",
               TraditionalForm],
              TraditionalForm]}]], " ", 
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
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              SuperscriptBox["f", 
               RowBox[{
                FormBox[
                 FormBox["Glu1",
                  TraditionalForm],
                 TraditionalForm], 
                FormBox[
                 FormBox["Glu3",
                  TraditionalForm],
                 TraditionalForm], 
                FormBox[
                 FormBox["$AL$15047",
                  TraditionalForm],
                 TraditionalForm]}]], " ", 
              SuperscriptBox["f", 
               RowBox[{
                FormBox[
                 FormBox["Glu2",
                  TraditionalForm],
                 TraditionalForm], 
                FormBox[
                 FormBox["Glu3",
                  TraditionalForm],
                 TraditionalForm], 
                FormBox[
                 FormBox["$AL$15047",
                  TraditionalForm],
                 TraditionalForm]}]]}], "+", 
             RowBox[{
              SuperscriptBox["f", 
               RowBox[{
                FormBox[
                 FormBox["Glu1",
                  TraditionalForm],
                 TraditionalForm], 
                FormBox[
                 FormBox["Glu3",
                  TraditionalForm],
                 TraditionalForm], 
                FormBox[
                 FormBox["$AL$15048",
                  TraditionalForm],
                 TraditionalForm]}]], " ", 
              SuperscriptBox["f", 
               RowBox[{
                FormBox[
                 FormBox["Glu2",
                  TraditionalForm],
                 TraditionalForm], 
                FormBox[
                 FormBox["Glu3",
                  TraditionalForm],
                 TraditionalForm], 
                FormBox[
                 FormBox["$AL$15048",
                  TraditionalForm],
                 TraditionalForm]}]]}]}], ")"}], " ", 
           SubsuperscriptBox["g", "s", "2"]}], "+", 
          RowBox[{"\[ImaginaryI]", " ", 
           SuperscriptBox["g", 
            RowBox[{
             FormBox[
              FormBox["Lor3",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["\[Mu]",
               TraditionalForm],
              TraditionalForm]}]], " ", 
           SuperscriptBox["g", 
            RowBox[{
             FormBox[
              FormBox["Lor4",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["\[Nu]",
               TraditionalForm],
              TraditionalForm]}]], " ", 
           SuperscriptBox["f", 
            RowBox[{
             FormBox[
              FormBox["Glu1",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Glu3",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["$AL$15050",
               TraditionalForm],
              TraditionalForm]}]], " ", 
           SuperscriptBox["f", 
            RowBox[{
             FormBox[
              FormBox["Glu2",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Glu3",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["$AL$15050",
               TraditionalForm],
              TraditionalForm]}]], " ", 
           SubsuperscriptBox["g", "s", "2"]}]}], ")"}]}]}]}],
     TraditionalForm], ",", 
    FormBox[
     RowBox[{"-", 
      FractionBox[
       RowBox[{"\[ImaginaryI]", " ", 
        RowBox[{"tr", "(", 
         FormBox[
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"MQU", "(", 
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
                SequenceForm["Gen", 3],
                Editable->False],
               TraditionalForm], ")"}], "-", 
             RowBox[{"\[Gamma]", "\[CenterDot]", 
              FormBox[
               FormBox["q",
                TraditionalForm],
               TraditionalForm]}]}], ")"}], ".", 
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
                FormBox["Col3",
                 TraditionalForm],
                TraditionalForm], 
               FormBox[
                FormBox["Col4",
                 TraditionalForm],
                TraditionalForm]}], 
              FormBox[
               FormBox["Glu2",
                TraditionalForm],
               TraditionalForm]]}], ")"}], ".", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"\[Gamma]", "\[CenterDot]", "(", 
              FormBox[
               FormBox[
                RowBox[{
                 FormBox["p",
                  TraditionalForm], "-", 
                 FormBox["q",
                  TraditionalForm]}],
                TraditionalForm],
               TraditionalForm], ")"}], "+", 
             RowBox[{"MQU", "(", 
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
                SequenceForm["Gen", 3],
                Editable->False],
               TraditionalForm], ")"}]}], ")"}], ".", 
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
                FormBox["Col4",
                 TraditionalForm],
                TraditionalForm], 
               FormBox[
                FormBox["Col3",
                 TraditionalForm],
                TraditionalForm]}], 
              FormBox[
               FormBox["Glu1",
                TraditionalForm],
               TraditionalForm]]}], ")"}]}],
          TraditionalForm], ")"}]}], 
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
            SuperscriptBox[
             RowBox[{"MQU", "(", 
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
                SequenceForm["Gen", 3],
                Editable->False],
               TraditionalForm], ")"}], "2"]}],
           SequenceForm[
            FeynCalc`Pair[
             FeynCalc`Momentum[$CellContext`q, D], 
             FeynCalc`Momentum[$CellContext`q, D]], "-", $CellContext`MQU[
              FeynArts`Index[$CellContext`Generation, 3]]^2],
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
            SuperscriptBox[
             RowBox[{"MQU", "(", 
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
                SequenceForm["Gen", 3],
                Editable->False],
               TraditionalForm], ")"}], "2"]}],
           SequenceForm[
            FeynCalc`Pair[
             FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D], 
             FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D]], 
            "-", $CellContext`MQU[
              FeynArts`Index[$CellContext`Generation, 3]]^2],
           Editable->False], ")"}]}]}]]}],
     TraditionalForm], ",", 
    FormBox[
     RowBox[{"-", 
      FractionBox[
       RowBox[{"\[ImaginaryI]", " ", 
        RowBox[{"tr", "(", 
         FormBox[
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"MQD", "(", 
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
                SequenceForm["Gen", 3],
                Editable->False],
               TraditionalForm], ")"}], "-", 
             RowBox[{"\[Gamma]", "\[CenterDot]", 
              FormBox[
               FormBox["q",
                TraditionalForm],
               TraditionalForm]}]}], ")"}], ".", 
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
                FormBox["Col3",
                 TraditionalForm],
                TraditionalForm], 
               FormBox[
                FormBox["Col4",
                 TraditionalForm],
                TraditionalForm]}], 
              FormBox[
               FormBox["Glu2",
                TraditionalForm],
               TraditionalForm]]}], ")"}], ".", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"\[Gamma]", "\[CenterDot]", "(", 
              FormBox[
               FormBox[
                RowBox[{
                 FormBox["p",
                  TraditionalForm], "-", 
                 FormBox["q",
                  TraditionalForm]}],
                TraditionalForm],
               TraditionalForm], ")"}], "+", 
             RowBox[{"MQD", "(", 
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
                SequenceForm["Gen", 3],
                Editable->False],
               TraditionalForm], ")"}]}], ")"}], ".", 
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
                FormBox["Col4",
                 TraditionalForm],
                TraditionalForm], 
               FormBox[
                FormBox["Col3",
                 TraditionalForm],
                TraditionalForm]}], 
              FormBox[
               FormBox["Glu1",
                TraditionalForm],
               TraditionalForm]]}], ")"}]}],
          TraditionalForm], ")"}]}], 
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
            SuperscriptBox[
             RowBox[{"MQD", "(", 
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
                SequenceForm["Gen", 3],
                Editable->False],
               TraditionalForm], ")"}], "2"]}],
           SequenceForm[
            FeynCalc`Pair[
             FeynCalc`Momentum[$CellContext`q, D], 
             FeynCalc`Momentum[$CellContext`q, D]], "-", $CellContext`MQD[
              FeynArts`Index[$CellContext`Generation, 3]]^2],
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
            SuperscriptBox[
             RowBox[{"MQD", "(", 
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
                SequenceForm["Gen", 3],
                Editable->False],
               TraditionalForm], ")"}], "2"]}],
           SequenceForm[
            FeynCalc`Pair[
             FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D], 
             FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D]], 
            "-", $CellContext`MQD[
              FeynArts`Index[$CellContext`Generation, 3]]^2],
           Editable->False], ")"}]}]}]]}],
     TraditionalForm], ",", 
    FormBox[
     RowBox[{"-", 
      FractionBox[
       RowBox[{"\[ImaginaryI]", " ", 
        RowBox[{"tr", "(", 
         FormBox[
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             SubscriptBox["m", 
              OverscriptBox["g", "~"]], "-", 
             RowBox[{"\[Gamma]", "\[CenterDot]", 
              FormBox[
               FormBox["q",
                TraditionalForm],
               TraditionalForm]}]}], ")"}], ".", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              SuperscriptBox["\[Gamma]", 
               FormBox[
                FormBox["\[Nu]",
                 TraditionalForm],
                TraditionalForm]]}], " ", 
             SubscriptBox["g", "s"], " ", 
             SuperscriptBox["f", 
              RowBox[{
               FormBox[
                FormBox["Glu2",
                 TraditionalForm],
                TraditionalForm], 
               FormBox[
                FormBox["Glu3",
                 TraditionalForm],
                TraditionalForm], 
               FormBox[
                FormBox["Glu4",
                 TraditionalForm],
                TraditionalForm]}]]}], ")"}], ".", 
           RowBox[{"(", 
            RowBox[{
             SubscriptBox["m", 
              OverscriptBox["g", "~"]], "+", 
             RowBox[{"\[Gamma]", "\[CenterDot]", "(", 
              FormBox[
               FormBox[
                RowBox[{
                 FormBox["p",
                  TraditionalForm], "-", 
                 FormBox["q",
                  TraditionalForm]}],
                TraditionalForm],
               TraditionalForm], ")"}]}], ")"}], ".", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["\[Gamma]", 
              FormBox[
               FormBox["\[Mu]",
                TraditionalForm],
               TraditionalForm]], " ", 
             SubscriptBox["g", "s"], " ", 
             SuperscriptBox["f", 
              RowBox[{
               FormBox[
                FormBox["Glu1",
                 TraditionalForm],
                TraditionalForm], 
               FormBox[
                FormBox["Glu3",
                 TraditionalForm],
                TraditionalForm], 
               FormBox[
                FormBox["Glu4",
                 TraditionalForm],
                TraditionalForm]}]]}], ")"}]}],
          TraditionalForm], ")"}]}], 
       RowBox[{"32", " ", 
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
             OverscriptBox["g", "~"], "2"]}],
           SequenceForm[
            FeynCalc`Pair[
             FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D], 
             FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D]], "-", 
            TreeLevel`MGl^2],
           Editable->False], ")"}]}]}]]}],
     TraditionalForm], ",", 
    FormBox[
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", 
       SuperscriptBox[
        RowBox[{"(", 
         FormBox[
          FormBox[
           RowBox[{
            FormBox["p",
             TraditionalForm], "-", 
            RowBox[{"2", " ", 
             FormBox["q",
              TraditionalForm]}]}],
           TraditionalForm],
          TraditionalForm], ")"}], 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], " ", 
       SuperscriptBox[
        RowBox[{"(", 
         FormBox[
          FormBox[
           RowBox[{
            RowBox[{"2", " ", 
             FormBox["q",
              TraditionalForm]}], "-", 
            FormBox["p",
             TraditionalForm]}],
           TraditionalForm],
          TraditionalForm], ")"}], 
        FormBox[
         FormBox["\[Nu]",
          TraditionalForm],
         TraditionalForm]], " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       SubsuperscriptBox["T", 
        RowBox[{
         FormBox[
          FormBox["Col4",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Col3",
           TraditionalForm],
          TraditionalForm]}], 
        FormBox[
         FormBox["Glu1",
          TraditionalForm],
         TraditionalForm]], " ", 
       SubsuperscriptBox["T", 
        RowBox[{
         FormBox[
          FormBox["Col3",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Col4",
           TraditionalForm],
          TraditionalForm]}], 
        FormBox[
         FormBox["Glu2",
          TraditionalForm],
         TraditionalForm]]}], 
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
            FeynCalc`Momentum[$CellContext`q, D], 
            FeynCalc`Momentum[$CellContext`q, D]], "-", TreeLevel`MSf[
             FeynArts`Index[TreeLevel`Sfermion, 3], 3, 
             FeynArts`Index[$CellContext`Generation, 3]]^2],
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
            FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D], 
            FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D]], "-", 
           TreeLevel`MSf[
             FeynArts`Index[TreeLevel`Sfermion, 3], 3, 
             FeynArts`Index[$CellContext`Generation, 3]]^2],
          Editable->False], ")"}]}]}]],
     TraditionalForm], ",", 
    FormBox[
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", 
       SuperscriptBox[
        RowBox[{"(", 
         FormBox[
          FormBox[
           RowBox[{
            FormBox["p",
             TraditionalForm], "-", 
            RowBox[{"2", " ", 
             FormBox["q",
              TraditionalForm]}]}],
           TraditionalForm],
          TraditionalForm], ")"}], 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], " ", 
       SuperscriptBox[
        RowBox[{"(", 
         FormBox[
          FormBox[
           RowBox[{
            RowBox[{"2", " ", 
             FormBox["q",
              TraditionalForm]}], "-", 
            FormBox["p",
             TraditionalForm]}],
           TraditionalForm],
          TraditionalForm], ")"}], 
        FormBox[
         FormBox["\[Nu]",
          TraditionalForm],
         TraditionalForm]], " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       SubsuperscriptBox["T", 
        RowBox[{
         FormBox[
          FormBox["Col4",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Col3",
           TraditionalForm],
          TraditionalForm]}], 
        FormBox[
         FormBox["Glu1",
          TraditionalForm],
         TraditionalForm]], " ", 
       SubsuperscriptBox["T", 
        RowBox[{
         FormBox[
          FormBox["Col3",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Col4",
           TraditionalForm],
          TraditionalForm]}], 
        FormBox[
         FormBox["Glu2",
          TraditionalForm],
         TraditionalForm]]}], 
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
            FeynCalc`Momentum[$CellContext`q, D], 
            FeynCalc`Momentum[$CellContext`q, D]], "-", TreeLevel`MSf[
             FeynArts`Index[TreeLevel`Sfermion, 3], 4, 
             FeynArts`Index[$CellContext`Generation, 3]]^2],
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
            FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D], 
            FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D]], "-", 
           TreeLevel`MSf[
             FeynArts`Index[TreeLevel`Sfermion, 3], 4, 
             FeynArts`Index[$CellContext`Generation, 3]]^2],
          Editable->False], ")"}]}]}]],
     TraditionalForm], ",", 
    FormBox[
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", 
       SuperscriptBox[
        RowBox[{"(", 
         FormBox[
          FormBox[
           RowBox[{
            FormBox["q",
             TraditionalForm], "-", 
            FormBox["p",
             TraditionalForm]}],
           TraditionalForm],
          TraditionalForm], ")"}], 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], " ", 
       SuperscriptBox[
        FormBox[
         FormBox["q",
          TraditionalForm],
         TraditionalForm], 
        FormBox[
         FormBox["\[Nu]",
          TraditionalForm],
         TraditionalForm]], " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       SuperscriptBox["f", 
        RowBox[{
         FormBox[
          FormBox["Glu1",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Glu3",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Glu4",
           TraditionalForm],
          TraditionalForm]}]], " ", 
       SuperscriptBox["f", 
        RowBox[{
         FormBox[
          FormBox["Glu2",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Glu3",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Glu4",
           TraditionalForm],
          TraditionalForm]}]]}], 
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
           FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D], 
           FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D]]],
         Editable->False]}]}]],
     TraditionalForm], ",", 
    FormBox[
     RowBox[{
      FractionBox["1", 
       RowBox[{"32", " ", 
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
            FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D], 
            FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D]]],
          Editable->False]}]}]], 
      RowBox[{"\[ImaginaryI]", " ", 
       SuperscriptBox["g", 
        RowBox[{
         FormBox[
          FormBox["Lor3",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Lor4",
           TraditionalForm],
          TraditionalForm]}]], " ", 
       SuperscriptBox["g", 
        RowBox[{
         FormBox[
          FormBox["Lor5",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Lor6",
           TraditionalForm],
          TraditionalForm]}]], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox[
           RowBox[{"(", 
            FormBox[
             FormBox[
              RowBox[{
               RowBox[{"2", " ", 
                FormBox["p",
                 TraditionalForm]}], "-", 
               FormBox["q",
                TraditionalForm]}],
              TraditionalForm],
             TraditionalForm], ")"}], 
           FormBox[
            FormBox["Lor3",
             TraditionalForm],
            TraditionalForm]], " ", 
          SuperscriptBox["g", 
           RowBox[{
            FormBox[
             FormBox["Lor5",
              TraditionalForm],
             TraditionalForm], 
            FormBox[
             FormBox["\[Mu]",
              TraditionalForm],
             TraditionalForm]}]]}], "+", 
         RowBox[{
          SuperscriptBox["g", 
           RowBox[{
            FormBox[
             FormBox["Lor3",
              TraditionalForm],
             TraditionalForm], 
            FormBox[
             FormBox["\[Mu]",
              TraditionalForm],
             TraditionalForm]}]], " ", 
          SuperscriptBox[
           RowBox[{"(", 
            FormBox[
             FormBox[
              RowBox[{
               RowBox[{"-", 
                FormBox["p",
                 TraditionalForm]}], "-", 
               FormBox["q",
                TraditionalForm]}],
              TraditionalForm],
             TraditionalForm], ")"}], 
           FormBox[
            FormBox["Lor5",
             TraditionalForm],
            TraditionalForm]]}], "+", 
         RowBox[{
          SuperscriptBox["g", 
           RowBox[{
            FormBox[
             FormBox["Lor3",
              TraditionalForm],
             TraditionalForm], 
            FormBox[
             FormBox["Lor5",
              TraditionalForm],
             TraditionalForm]}]], " ", 
          SuperscriptBox[
           RowBox[{"(", 
            FormBox[
             FormBox[
              RowBox[{
               RowBox[{"2", " ", 
                FormBox["q",
                 TraditionalForm]}], "-", 
               FormBox["p",
                TraditionalForm]}],
              TraditionalForm],
             TraditionalForm], ")"}], 
           FormBox[
            FormBox["\[Mu]",
             TraditionalForm],
            TraditionalForm]]}]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox[
           RowBox[{"(", 
            FormBox[
             FormBox[
              RowBox[{
               FormBox["q",
                TraditionalForm], "-", 
               RowBox[{"2", " ", 
                FormBox["p",
                 TraditionalForm]}]}],
              TraditionalForm],
             TraditionalForm], ")"}], 
           FormBox[
            FormBox["Lor4",
             TraditionalForm],
            TraditionalForm]], " ", 
          SuperscriptBox["g", 
           RowBox[{
            FormBox[
             FormBox["Lor6",
              TraditionalForm],
             TraditionalForm], 
            FormBox[
             FormBox["\[Nu]",
              TraditionalForm],
             TraditionalForm]}]]}], "+", 
         RowBox[{
          SuperscriptBox["g", 
           RowBox[{
            FormBox[
             FormBox["Lor4",
              TraditionalForm],
             TraditionalForm], 
            FormBox[
             FormBox["\[Nu]",
              TraditionalForm],
             TraditionalForm]}]], " ", 
          SuperscriptBox[
           RowBox[{"(", 
            FormBox[
             FormBox[
              RowBox[{
               FormBox["p",
                TraditionalForm], "+", 
               FormBox["q",
                TraditionalForm]}],
              TraditionalForm],
             TraditionalForm], ")"}], 
           FormBox[
            FormBox["Lor6",
             TraditionalForm],
            TraditionalForm]]}], "+", 
         RowBox[{
          SuperscriptBox["g", 
           RowBox[{
            FormBox[
             FormBox["Lor4",
              TraditionalForm],
             TraditionalForm], 
            FormBox[
             FormBox["Lor6",
              TraditionalForm],
             TraditionalForm]}]], " ", 
          SuperscriptBox[
           RowBox[{"(", 
            FormBox[
             FormBox[
              RowBox[{
               FormBox["p",
                TraditionalForm], "-", 
               RowBox[{"2", " ", 
                FormBox["q",
                 TraditionalForm]}]}],
              TraditionalForm],
             TraditionalForm], ")"}], 
           FormBox[
            FormBox["\[Nu]",
             TraditionalForm],
            TraditionalForm]]}]}], ")"}], " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       SuperscriptBox["f", 
        RowBox[{
         FormBox[
          FormBox["Glu1",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Glu3",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Glu4",
           TraditionalForm],
          TraditionalForm]}]], " ", 
       SuperscriptBox["f", 
        RowBox[{
         FormBox[
          FormBox["Glu2",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Glu3",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Glu4",
           TraditionalForm],
          TraditionalForm]}]]}]}],
     TraditionalForm], ",", 
    RowBox[{
     RowBox[{"-", "\[ImaginaryI]"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"\[ImaginaryI]", " ", 
        SubscriptBox["Z", "g"], " ", 
        SuperscriptBox[
         FormBox[
          FormBox["p",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["\[Mu]",
           TraditionalForm],
          TraditionalForm]], " ", 
        SuperscriptBox[
         FormBox[
          FormBox["p",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["\[Nu]",
           TraditionalForm],
          TraditionalForm]], " ", 
        SuperscriptBox["\[Delta]", 
         RowBox[{
          FormBox[
           FormBox["Glu1",
            TraditionalForm],
           TraditionalForm], 
          FormBox[
           FormBox["Glu2",
            TraditionalForm],
           TraditionalForm]}]]}], "-", 
       RowBox[{"\[ImaginaryI]", " ", 
        SubscriptBox["Z", "g"], " ", 
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
        SuperscriptBox[
         FormBox[
          FormBox["p",
           TraditionalForm],
          TraditionalForm], "2"], " ", 
        SuperscriptBox["\[Delta]", 
         RowBox[{
          FormBox[
           FormBox["Glu1",
            TraditionalForm],
           TraditionalForm], 
          FormBox[
           FormBox["Glu2",
            TraditionalForm],
           TraditionalForm]}]]}]}], ")"}]}]}], "}"}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.916549446051999*^9, 3.9165494738032703`*^9}, 
   3.916549565785296*^9, 3.916549695788311*^9, 3.9165497962241488`*^9, 
   3.916549906507029*^9, 3.9165515338152514`*^9, 3.9165516038814993`*^9, 
   3.916552113995213*^9, 3.916675476802801*^9, 3.916676042153558*^9, 
   3.91667656427801*^9, 3.916677047795067*^9},
 CellLabel->"Out[64]=",ExpressionUUID->"5b6090ca-ffd6-4f39-865c-ee3b64f1a6bc"]
}, Open  ]]
}, Closed]],

Cell[CellGroupData[{

Cell["Quark-Z vertex", "Subsection",
 CellChangeTimes->{{3.91560816314998*^9, 3.915608167175212*^9}, 
   3.9156082095571537`*^9},ExpressionUUID->"14fad89e-dd2c-4ef2-badf-\
ba7915157cc0"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"ampQZVertex", "[", "0", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{"FCFAConvert", "[", "\n", "\t", 
    RowBox[{
     RowBox[{"CreateFeynAmp", "[", 
      RowBox[{
       RowBox[{"diagQuarkZVertex", "[", "1", "]"}], ",", " ", 
       RowBox[{"Truncated", " ", "->", " ", "True"}]}], "]"}], ",", "\n", 
     "\t", 
     RowBox[{"IncomingMomenta", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{"p", ",", " ", "k"}], "}"}]}], ",", "\n", "\t", 
     RowBox[{"OutgoingMomenta", " ", "->", " ", 
      RowBox[{"{", "q", "}"}]}], ",", "\n", "\t", 
     RowBox[{"LorentzIndexNames", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{"\[Mu]", ",", " ", "\[Nu]"}], "}"}]}], ",", "\n", "\t", 
     RowBox[{"DropSumOver", " ", "->", " ", "True"}], ",", "\n", "\t", 
     RowBox[{"LoopMomenta", " ", "->", " ", 
      RowBox[{"{", "qloop", "}"}]}], ",", "\n", "\t", 
     RowBox[{"UndoChiralSplittings", " ", "->", " ", "True"}], ",", "\n", 
     "\t", 
     RowBox[{"ChangeDimension", " ", "->", " ", "D"}], ",", "\n", "\t", 
     RowBox[{"List", " ", "->", " ", "False"}], ",", "\n", "\t", 
     RowBox[{"SMP", " ", "->", " ", "True"}], ",", "\n", "\t", 
     RowBox[{"FinalSubstitutions", " ", "->", " ", 
      RowBox[{
       RowBox[{"SMP", "[", "\"\<m_u\>\"", "]"}], "->", "0"}]}]}], "\n", "]"}],
    " ", "+", " ", 
   RowBox[{"FCFAConvert", "[", "\n", "\t", 
    RowBox[{
     RowBox[{"CreateFeynAmp", "[", 
      RowBox[{
       RowBox[{"diagQuarkZVertex", "[", "0", "]"}], ",", " ", 
       RowBox[{"Truncated", " ", "->", " ", "True"}]}], "]"}], ",", "\n", 
     "\t", 
     RowBox[{"IncomingMomenta", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{"p", ",", " ", "k"}], "}"}]}], ",", "\n", "\t", 
     RowBox[{"OutgoingMomenta", " ", "->", " ", 
      RowBox[{"{", "q", "}"}]}], ",", "\n", "\t", 
     RowBox[{"LorentzIndexNames", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{"\[Mu]", ",", " ", "\[Nu]"}], "}"}]}], ",", "\n", "\t", 
     RowBox[{"DropSumOver", " ", "->", " ", "True"}], ",", "\n", "\t", 
     RowBox[{"LoopMomenta", " ", "->", " ", 
      RowBox[{"{", "qloop", "}"}]}], ",", "\n", "\t", 
     RowBox[{"UndoChiralSplittings", " ", "->", " ", "True"}], ",", "\n", 
     "\t", 
     RowBox[{"ChangeDimension", " ", "->", " ", "D"}], ",", "\n", "\t", 
     RowBox[{"List", " ", "->", " ", "False"}], ",", "\n", "\t", 
     RowBox[{"SMP", " ", "->", " ", "True"}], ",", "\n", "\t", 
     RowBox[{"FinalSubstitutions", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"SMP", "[", "\"\<m_u\>\"", "]"}], "->", "0"}], ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"DiracGamma", "[", "args__", "]"}], ".", 
          RowBox[{"DiracGamma", "[", "6", "]"}]}], " ", "->", " ", 
         RowBox[{"Ze", "*", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"ZQR", "+", 
             RowBox[{"ZQR", "\[Conjugate]"}]}], ")"}], "/", "2"}], " ", 
          RowBox[{
           RowBox[{"DiracGamma", "[", "args", "]"}], ".", 
           RowBox[{"DiracGamma", "[", "6", "]"}]}]}]}], ",", "\n", "\t", 
        RowBox[{
         RowBox[{
          RowBox[{"DiracGamma", "[", "args__", "]"}], ".", 
          RowBox[{"DiracGamma", "[", "7", "]"}]}], " ", "->", " ", 
         RowBox[{"Ze", "*", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"ZQL", "+", 
             RowBox[{"ZQL", "\[Conjugate]"}]}], ")"}], "/", "2"}], " ", 
          RowBox[{
           RowBox[{"DiracGamma", "[", "args", "]"}], ".", 
           RowBox[{"DiracGamma", "[", "7", "]"}]}]}]}], ",", "\n", "\t", 
        RowBox[{
         RowBox[{"SMP", "[", "\"\<sin_W\>\"", "]"}], "->", 
         RowBox[{
          RowBox[{"Sqrt", "[", "ZsW", "]"}], "*", 
          RowBox[{"SMP", "[", "\"\<sin_W\>\"", "]"}]}]}], ",", " ", 
        RowBox[{
         RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}], "->", 
         RowBox[{
          RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}], " ", "-", " ", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{"1", "-", 
             RowBox[{"Sqrt", "[", "ZsW", "]"}]}], ")"}], "*", 
           RowBox[{
            RowBox[{
             RowBox[{"SMP", "[", "\"\<sin_W\>\"", "]"}], "^", "2"}], "/", 
            RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}]}]}]}]}]}], "}"}]}]}], 
    "\n", "]"}]}]}], "\n", 
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"FCFAConvert", "[", "\n", "\t", 
    RowBox[{
     RowBox[{"CreateFeynAmp", "[", 
      RowBox[{
       RowBox[{"diagQuarkZVertexCT", "[", "1", "]"}], ",", " ", 
       RowBox[{"Truncated", " ", "->", " ", "True"}]}], "]"}], ",", "\n", 
     "\t", 
     RowBox[{"IncomingMomenta", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{"p", ",", " ", "k"}], "}"}]}], ",", "\n", "\t", 
     RowBox[{"OutgoingMomenta", " ", "->", " ", 
      RowBox[{"{", "q", "}"}]}], ",", "\n", "\t", 
     RowBox[{"LorentzIndexNames", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{"\[Mu]", ",", " ", "\[Nu]"}], "}"}]}], ",", "\n", "\t", 
     RowBox[{"DropSumOver", " ", "->", " ", "True"}], ",", "\n", "\t", 
     RowBox[{"LoopMomenta", " ", "->", " ", 
      RowBox[{"{", "qloop", "}"}]}], ",", "\n", "\t", 
     RowBox[{"UndoChiralSplittings", " ", "->", " ", "True"}], ",", "\n", 
     "\t", 
     RowBox[{"ChangeDimension", " ", "->", " ", "D"}], ",", "\n", "\t", 
     RowBox[{"List", " ", "->", " ", "False"}], ",", "\n", "\t", 
     RowBox[{"SMP", " ", "->", " ", "True"}], ",", "\n", "\t", 
     RowBox[{"FinalSubstitutions", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"dZfL1", "[", "__", "]"}], "->", "0"}], ",", "\n", "\t", 
        RowBox[{
         RowBox[{"dZfR1", "[", "__", "]"}], "->", "0"}], ",", " ", 
        RowBox[{"dZe1", "->", "0"}], ",", " ", 
        RowBox[{"dSW1", "->", "0"}], ",", " ", 
        RowBox[{"dZZZ1", "->", 
         RowBox[{"Ze", "*", 
          RowBox[{"(", 
           RowBox[{"ZQL", "+", "ZQR"}], ")"}]}]}], ",", " ", 
        RowBox[{"dZAZ1", "->", "0"}]}], "}"}]}]}], "\n", "]"}], 
   "*)"}]}]}], "Code",
 CellChangeTimes->{{3.915608171189853*^9, 3.915608184377736*^9}, {
   3.915608216265519*^9, 3.915608240513633*^9}, {3.915608319571127*^9, 
   3.9156083746099367`*^9}, {3.915608828801515*^9, 3.915608874846463*^9}, {
   3.915609342008267*^9, 3.915609400062485*^9}, {3.915609440997752*^9, 
   3.915609474262732*^9}, {3.915611139653211*^9, 3.915611147243069*^9}, {
   3.9156112649142733`*^9, 3.91561132317879*^9}, {3.915611390711067*^9, 
   3.915611392061079*^9}, {3.915612037051285*^9, 3.915612037106411*^9}, 
   3.915628719153099*^9, 3.9156291114456587`*^9, {3.915631075916451*^9, 
   3.91563109889284*^9}, {3.9156313967851343`*^9, 3.915631412151845*^9}, {
   3.915631470037442*^9, 3.915631472066293*^9}, {3.9156316298168573`*^9, 
   3.915631643548078*^9}, {3.915641292748203*^9, 3.91564138552855*^9}, {
   3.915681918126348*^9, 3.915681957278222*^9}, {3.915682013454194*^9, 
   3.915682034879884*^9}, {3.915873352341431*^9, 3.915873354658993*^9}, {
   3.915936072410877*^9, 3.915936084450366*^9}, {3.915936115163972*^9, 
   3.915936172123221*^9}, {3.915936369856352*^9, 3.915936370334353*^9}, {
   3.91611720058468*^9, 3.916117204549587*^9}, {3.91611877701705*^9, 
   3.916118835161071*^9}, {3.916119092163919*^9, 3.916119121584826*^9}, {
   3.91611927248796*^9, 3.916119278006371*^9}, {3.916121508916226*^9, 
   3.916121528539864*^9}},
 CellLabel->"In[65]:=",ExpressionUUID->"988f0b85-13a4-4484-833c-46e347dd685b"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", 
    FormBox[
     RowBox[{
      RowBox[{"(", 
       RowBox[{"\[ImaginaryI]", " ", "\<\"e\"\>", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          FormBox[
           FormBox[
            RowBox[{
             RowBox[{"-", 
              RowBox[{"2", " ", 
               FormBox["k",
                TraditionalForm]}]}], "+", 
             FormBox["q",
              TraditionalForm], "-", 
             RowBox[{"2", " ", 
              FormBox["qloop",
               TraditionalForm]}]}],
            TraditionalForm],
           TraditionalForm], ")"}], 
         FormBox[
          FormBox["\[Mu]",
           TraditionalForm],
          TraditionalForm]], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"sin", "("}], 
              SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "5"}],
               SequenceForm["Sfe", 5],
               Editable->False],
              TraditionalForm], "2"}], 
            OverscriptBox["q", "~"]], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "4"}], 
                    SequenceForm["Sfe", 4], Editable -> False], 
                   TraditionalForm], "2"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"]}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"4", " ", 
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"sin", "("}], 
                 SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
             "3"}], ")"}], " ", 
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "5"}],
               SequenceForm["Sfe", 5],
               Editable->False],
              TraditionalForm], "1"}], 
            OverscriptBox["q", "~"]], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "4"}], 
                    SequenceForm["Sfe", 4], Editable -> False], 
                   TraditionalForm], "1"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"]}]}], ")"}], " ", 
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
               FormBox["Col4",
                TraditionalForm],
               TraditionalForm]}], 
             FormBox[
              FormBox["Glu4",
               TraditionalForm],
              TraditionalForm]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["R", 
                 RowBox[{
                   FormBox[
                    InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
                    SequenceForm["Sfe", 5], Editable -> False], 
                    TraditionalForm], "2"}], 
                 OverscriptBox["q", "~"]], ")"}]},
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
               FormBox["Col4",
                TraditionalForm],
               TraditionalForm]}], 
             FormBox[
              FormBox["Glu4",
               TraditionalForm],
              TraditionalForm]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["R", 
                 RowBox[{
                   FormBox[
                    InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "5"}], 
                    SequenceForm["Sfe", 5], Editable -> False], 
                    TraditionalForm], "1"}], 
                 OverscriptBox["q", "~"]], ")"}]},
             "Conjugate"]}]}], ")"}], ".", 
         RowBox[{"(", 
          RowBox[{
           SubscriptBox["m", 
            OverscriptBox["g", "~"]], "+", 
           RowBox[{"\[Gamma]", "\[CenterDot]", 
            FormBox[
             FormBox["qloop",
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
               FormBox["Col4",
                TraditionalForm],
               TraditionalForm], 
              FormBox[
               FormBox["Col1",
                TraditionalForm],
               TraditionalForm]}], 
             FormBox[
              FormBox["Glu4",
               TraditionalForm],
              TraditionalForm]], " ", 
            SubsuperscriptBox["R", 
             RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "4"}],
                SequenceForm["Sfe", 4],
                Editable->False],
               TraditionalForm], "2"}], 
             OverscriptBox["q", "~"]]}], "-", 
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
               FormBox["Col4",
                TraditionalForm],
               TraditionalForm], 
              FormBox[
               FormBox["Col1",
                TraditionalForm],
               TraditionalForm]}], 
             FormBox[
              FormBox["Glu4",
               TraditionalForm],
              TraditionalForm]], " ", 
            SubsuperscriptBox["R", 
             RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "4"}],
                SequenceForm["Sfe", 4],
                Editable->False],
               TraditionalForm], "1"}], 
             OverscriptBox["q", "~"]]}]}], ")"}]}]}], ")"}], "/", 
      RowBox[{"(", 
       RowBox[{"96", " ", 
        SuperscriptBox["\[Pi]", "4"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
        RowBox[{
         RowBox[{"(", 
          InterpretationBox[
           RowBox[{
            SuperscriptBox[
             FormBox[
              FormBox["qloop",
               TraditionalForm],
              TraditionalForm], "2"], "\[InvisibleSpace]", "\<\"-\"\>", 
            "\[InvisibleSpace]", 
            SubsuperscriptBox["m", 
             OverscriptBox["g", "~"], "2"]}],
           SequenceForm[
            FeynCalc`Pair[
             FeynCalc`Momentum[XSec`qloop, D], 
             FeynCalc`Momentum[XSec`qloop, D]], "-", TreeLevel`MGl^2],
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
                 FormBox["k",
                  TraditionalForm], "+", 
                 FormBox["qloop",
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
                RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "5"}],
                SequenceForm["Sfe", 5],
                Editable->False],
               TraditionalForm]], "2"]}],
           SequenceForm[
            FeynCalc`Pair[
             FeynCalc`Momentum[$CellContext`k + XSec`qloop, D], 
             FeynCalc`Momentum[$CellContext`k + XSec`qloop, D]], "-", 
            TreeLevel`MSf[
              FeynArts`Index[TreeLevel`Sfermion, 5], 3, 1]^2],
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
                 FormBox["k",
                  TraditionalForm], "-", 
                 FormBox["q",
                  TraditionalForm], "+", 
                 FormBox["qloop",
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
                RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "4"}],
                SequenceForm["Sfe", 4],
                Editable->False],
               TraditionalForm]], "2"]}],
           SequenceForm[
            FeynCalc`Pair[
             
             FeynCalc`Momentum[$CellContext`k - $CellContext`q + XSec`qloop, 
              D], 
             
             FeynCalc`Momentum[$CellContext`k - $CellContext`q + XSec`qloop, 
              D]], "-", TreeLevel`MSf[
              FeynArts`Index[TreeLevel`Sfermion, 4], 3, 1]^2],
           Editable->False], ")"}]}]}], ")"}]}],
     TraditionalForm]}], "+", 
   FormBox[
    FractionBox[
     RowBox[{
      SuperscriptBox["g", 
       RowBox[{
        FormBox[
         FormBox["Lor3",
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
         SubscriptBox["g", "s"], " ", 
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["Lor3",
            TraditionalForm],
           TraditionalForm]], " ", 
         SubsuperscriptBox["T", 
          RowBox[{
           FormBox[
            FormBox["Col2",
             TraditionalForm],
            TraditionalForm], 
           FormBox[
            FormBox["Col4",
             TraditionalForm],
            TraditionalForm]}], 
          FormBox[
           FormBox["Glu4",
            TraditionalForm],
           TraditionalForm]]}], ")"}], ".", 
       RowBox[{"(", 
        RowBox[{"\[Gamma]", "\[CenterDot]", "(", 
         FormBox[
          FormBox[
           RowBox[{
            RowBox[{"-", 
             FormBox["k",
              TraditionalForm]}], "-", 
            FormBox["qloop",
             TraditionalForm]}],
           TraditionalForm],
          TraditionalForm], ")"}], ")"}], ".", 
       RowBox[{"(", 
        RowBox[{
         FractionBox[
          RowBox[{"2", " ", "\[ImaginaryI]", " ", "\<\"e\"\>", " ", 
           RowBox[{
            SuperscriptBox["\[Gamma]", 
             FormBox[
              FormBox["\[Mu]",
               TraditionalForm],
              TraditionalForm]], ".", 
            SuperscriptBox[
             OverscriptBox["\[Gamma]", "_"], 
             FormBox["6",
              TraditionalForm]]}], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"sin", "("}], 
             SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
          RowBox[{"3", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"cos", "("}], 
             SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
         FractionBox[
          RowBox[{"\[ImaginaryI]", " ", "\<\"e\"\>", " ", 
           RowBox[{
            SuperscriptBox["\[Gamma]", 
             FormBox[
              FormBox["\[Mu]",
               TraditionalForm],
              TraditionalForm]], ".", 
            SuperscriptBox[
             OverscriptBox["\[Gamma]", "_"], 
             FormBox["7",
              TraditionalForm]]}], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"4", " ", 
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"sin", "("}], 
                 SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
             "3"}], ")"}]}], 
          RowBox[{"6", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"cos", "("}], 
             SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"sin", "("}], 
             SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]]}], ")"}], ".", 
       RowBox[{"(", 
        RowBox[{"\[Gamma]", "\[CenterDot]", "(", 
         FormBox[
          FormBox[
           RowBox[{
            RowBox[{"-", 
             FormBox["k",
              TraditionalForm]}], "+", 
            FormBox["q",
             TraditionalForm], "-", 
            FormBox["qloop",
             TraditionalForm]}],
           TraditionalForm],
          TraditionalForm], ")"}], ")"}], ".", 
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
            FormBox["Col4",
             TraditionalForm],
            TraditionalForm], 
           FormBox[
            FormBox["Col1",
             TraditionalForm],
            TraditionalForm]}], 
          FormBox[
           FormBox["Glu4",
            TraditionalForm],
           TraditionalForm]]}], ")"}]}]}], 
     RowBox[{"16", " ", 
      SuperscriptBox["\[Pi]", "4"], " ", 
      RowBox[{
       InterpretationBox[
        SuperscriptBox[
         FormBox[
          FormBox["qloop",
           TraditionalForm],
          TraditionalForm], "2"],
        SequenceForm[
         FeynCalc`Pair[
          FeynCalc`Momentum[XSec`qloop, D], 
          FeynCalc`Momentum[XSec`qloop, D]]],
        Editable->False], ".", 
       InterpretationBox[
        SuperscriptBox[
         RowBox[{
          FormBox["\<\"(\"\>",
           TraditionalForm], 
          FormBox[
           FormBox[
            RowBox[{
             FormBox["k",
              TraditionalForm], "+", 
             FormBox["qloop",
              TraditionalForm]}],
            TraditionalForm],
           TraditionalForm], 
          FormBox["\<\")\"\>",
           TraditionalForm]}], "2"],
        SequenceForm[
         FeynCalc`Pair[
          FeynCalc`Momentum[$CellContext`k + XSec`qloop, D], 
          FeynCalc`Momentum[$CellContext`k + XSec`qloop, D]]],
        Editable->False], ".", 
       InterpretationBox[
        SuperscriptBox[
         RowBox[{
          FormBox["\<\"(\"\>",
           TraditionalForm], 
          FormBox[
           FormBox[
            RowBox[{
             FormBox["k",
              TraditionalForm], "-", 
             FormBox["q",
              TraditionalForm], "+", 
             FormBox["qloop",
              TraditionalForm]}],
            TraditionalForm],
           TraditionalForm], 
          FormBox["\<\")\"\>",
           TraditionalForm]}], "2"],
        SequenceForm[
         FeynCalc`Pair[
          FeynCalc`Momentum[$CellContext`k - $CellContext`q + XSec`qloop, D], 
          
          FeynCalc`Momentum[$CellContext`k - $CellContext`q + XSec`qloop, D]]],
        Editable->False]}]}]],
    TraditionalForm], "-", 
   RowBox[{"\[ImaginaryI]", " ", 
    RowBox[{"(", 
     RowBox[{
      FractionBox[
       RowBox[{"\[ImaginaryI]", " ", "\<\"e\"\>", " ", 
        SubscriptBox["Z", "e"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
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
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["Z", "qL"], ")"}]},
           "Conjugate"], "+", 
          SubscriptBox["Z", "qL"]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"4", " ", 
           SubscriptBox["Z", "sW"], " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"sin", "("}], 
              SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", "3"}],
          ")"}]}], 
       RowBox[{"12", " ", 
        SqrtBox[
         SubscriptBox["Z", "sW"]], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], "-", 
          FractionBox[
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", 
              SqrtBox[
               SubscriptBox["Z", "sW"]]}], ")"}], " ", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               RowBox[{"sin", "("}], 
               SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], 
           RowBox[{
            RowBox[{"cos", "("}], 
            SubscriptBox["\[Theta]", "W"], ")"}]]}], ")"}]}]], "+", 
      FractionBox[
       RowBox[{"\[ImaginaryI]", " ", "\<\"e\"\>", " ", 
        SubscriptBox["Z", "e"], " ", 
        SqrtBox[
         SubscriptBox["Z", "sW"]], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["6",
           TraditionalForm]]}], " ", 
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
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["Z", "qR"], ")"}]},
           "Conjugate"], "+", 
          SubscriptBox["Z", "qR"]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
       RowBox[{"3", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], "-", 
          FractionBox[
           RowBox[{
            RowBox[{"(", 
             RowBox[{"1", "-", 
              SqrtBox[
               SubscriptBox["Z", "sW"]]}], ")"}], " ", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               RowBox[{"sin", "("}], 
               SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], 
           RowBox[{
            RowBox[{"cos", "("}], 
            SubscriptBox["\[Theta]", "W"], ")"}]]}], ")"}]}]]}], ")"}]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.915608241571076*^9, 3.915608292013964*^9, 3.91560834512419*^9, 
   3.915608391516726*^9, {3.915608846746311*^9, 3.915608876141982*^9}, 
   3.9156093437415733`*^9, 3.915609401304824*^9, {3.915609462203949*^9, 
   3.915609475172207*^9}, 3.9156111480976*^9, {3.915611294256409*^9, 
   3.915611324313346*^9}, 3.915611392860536*^9, 3.91561163050432*^9, 
   3.915612042744316*^9, 3.915613373388315*^9, 3.915629137653861*^9, 
   3.9156312245283957`*^9, 3.915631423096226*^9, 3.915631473148273*^9, {
   3.915631631348475*^9, 3.9156316443795547`*^9}, 3.915631682958274*^9, 
   3.91563556388868*^9, 3.91564133150548*^9, 3.915641404898898*^9, 
   3.915682313378707*^9, 3.915688077194109*^9, 3.915856746059937*^9, 
   3.91587338172038*^9, 3.915873540734838*^9, 3.915936173838512*^9, 
   3.915936372770416*^9, 3.915936413493268*^9, 3.916110388469509*^9, 
   3.916115552650399*^9, 3.916117212958735*^9, 3.916117379293599*^9, 
   3.916118543366666*^9, 3.916119123276727*^9, 3.916119333311144*^9, 
   3.916121580776116*^9, 3.916453219170921*^9, 3.916548229798813*^9, 
   3.9165484557965603`*^9, 3.916549566140415*^9, 3.916549696099378*^9, 
   3.91654979655614*^9, 3.916551534130619*^9, 3.916551604185266*^9, 
   3.9165521142928753`*^9, 3.916675477102417*^9, 3.9166765645801992`*^9, 
   3.916677048094378*^9},
 CellLabel->"Out[65]=",ExpressionUUID->"0d8d500f-7fc7-4b9c-ab72-be179b35b2a9"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"FCFAConvert", "[", "\n", "\t", 
  RowBox[{
   RowBox[{"CreateFeynAmp", "[", 
    RowBox[{
     RowBox[{"diagQuarkZVertex", "[", "0", "]"}], ",", " ", 
     RowBox[{"Truncated", " ", "->", " ", "True"}]}], "]"}], ",", "\n", "\t", 
   
   RowBox[{"IncomingMomenta", " ", "->", " ", 
    RowBox[{"{", 
     RowBox[{"p", ",", " ", "k"}], "}"}]}], ",", "\n", "\t", 
   RowBox[{"OutgoingMomenta", " ", "->", " ", 
    RowBox[{"{", "q", "}"}]}], ",", "\n", "\t", 
   RowBox[{"LorentzIndexNames", " ", "->", " ", 
    RowBox[{"{", 
     RowBox[{"\[Mu]", ",", " ", "\[Nu]"}], "}"}]}], ",", "\n", "\t", 
   RowBox[{"DropSumOver", " ", "->", " ", "True"}], ",", "\n", "\t", 
   RowBox[{"LoopMomenta", " ", "->", " ", 
    RowBox[{"{", "qloop", "}"}]}], ",", "\n", "\t", 
   RowBox[{"UndoChiralSplittings", " ", "->", " ", "True"}], ",", "\n", "\t", 
   
   RowBox[{"ChangeDimension", " ", "->", " ", "D"}], ",", "\n", "\t", 
   RowBox[{"List", " ", "->", " ", "False"}], ",", "\n", "\t", 
   RowBox[{"SMP", " ", "->", " ", "True"}], ",", "\n", "\t", 
   RowBox[{"FinalSubstitutions", " ", "->", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"SMP", "[", "\"\<m_u\>\"", "]"}], "->", "0"}], ",", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"DiracGamma", "[", "args__", "]"}], ".", 
        RowBox[{"DiracGamma", "[", "6", "]"}]}], " ", "->", " ", 
       RowBox[{"Ze", "*", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"ZQR", "+", 
           RowBox[{"ZQR", "\[Conjugate]"}]}], ")"}], "/", "2"}], " ", 
        RowBox[{
         RowBox[{"DiracGamma", "[", "args", "]"}], ".", 
         RowBox[{"DiracGamma", "[", "6", "]"}]}]}]}], ",", "\n", "\t", 
      RowBox[{
       RowBox[{
        RowBox[{"DiracGamma", "[", "args__", "]"}], ".", 
        RowBox[{"DiracGamma", "[", "7", "]"}]}], " ", "->", " ", 
       RowBox[{"Ze", "*", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"ZQL", "+", 
           RowBox[{"ZQL", "\[Conjugate]"}]}], ")"}], "/", "2"}], " ", 
        RowBox[{
         RowBox[{"DiracGamma", "[", "args", "]"}], ".", 
         RowBox[{"DiracGamma", "[", "7", "]"}]}]}]}]}], "}"}]}]}], "\n", 
  "]"}]], "Code",
 CellChangeTimes->{{3.9158731725835867`*^9, 3.915873175812015*^9}, {
  3.915873357326065*^9, 3.9158733589447403`*^9}, {3.916116486416519*^9, 
  3.916116520514259*^9}, {3.916116555840255*^9, 3.916116599870655*^9}, {
  3.91611711237746*^9, 3.91611717945485*^9}},
 CellLabel->"In[66]:=",ExpressionUUID->"f7e6a78c-a539-4669-9dcc-2671093a2f05"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", "\[ImaginaryI]"}], " ", 
   RowBox[{"(", 
    RowBox[{
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "\<\"e\"\>", " ", 
       SubscriptBox["Z", "e"], " ", 
       RowBox[{
        SuperscriptBox["\[Gamma]", 
         FormBox[
          FormBox["\[Mu]",
           TraditionalForm],
          TraditionalForm]], ".", 
        SuperscriptBox[
         OverscriptBox["\[Gamma]", "_"], 
         FormBox["7",
          TraditionalForm]]}], " ", 
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
         TemplateBox[{
           RowBox[{"(", 
             SubscriptBox["Z", "qL"], ")"}]},
          "Conjugate"], "+", 
         SubscriptBox["Z", "qL"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"4", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{"sin", "("}], 
             SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", "3"}], 
        ")"}]}], 
      RowBox[{"12", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
     FractionBox[
      RowBox[{"\[ImaginaryI]", " ", "\<\"e\"\>", " ", 
       SubscriptBox["Z", "e"], " ", 
       RowBox[{
        SuperscriptBox["\[Gamma]", 
         FormBox[
          FormBox["\[Mu]",
           TraditionalForm],
          TraditionalForm]], ".", 
        SuperscriptBox[
         OverscriptBox["\[Gamma]", "_"], 
         FormBox["6",
          TraditionalForm]]}], " ", 
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
         TemplateBox[{
           RowBox[{"(", 
             SubscriptBox["Z", "qR"], ")"}]},
          "Conjugate"], "+", 
         SubscriptBox["Z", "qR"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
      RowBox[{"3", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.915873381812928*^9, 3.9158735414396544`*^9, 3.916110389278859*^9, 
   3.916115553397067*^9, {3.916117165960034*^9, 3.91611717995582*^9}, 
   3.916117379632174*^9, 3.916118543800962*^9, 3.916119333790447*^9, 
   3.91612158112492*^9, 3.916453219393232*^9, 3.9165482298766823`*^9, 
   3.916548455869809*^9, 3.916549566267352*^9, 3.916549696182776*^9, 
   3.916549796659079*^9, 3.9165515342347193`*^9, 3.916551604278941*^9, 
   3.9165521143886833`*^9, 3.916675477203802*^9, 3.916676564672926*^9, 
   3.9166770482016687`*^9},
 CellLabel->"Out[66]=",ExpressionUUID->"d264668b-3b7a-40c8-b831-03d31346a44f"]
}, Open  ]]
}, Closed]],

Cell[CellGroupData[{

Cell["Gluino self-energy", "Subsection",
 CellChangeTimes->{{3.915608126174597*^9, 3.915608130736068*^9}, {
  3.916550554514002*^9, 
  3.916550556971884*^9}},ExpressionUUID->"234663d3-c35e-4472-aceb-\
ee1fa3d44550"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampGluinoSE", "[", "0", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{"FCFAConvert", "[", "\n", "\t", 
    RowBox[{
     RowBox[{"CreateFeynAmp", "[", 
      RowBox[{
       RowBox[{"diagGluinoSE", "[", "1", "]"}], ",", " ", 
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
      RowBox[{
       RowBox[{"SMP", "[", "\"\<m_u\>\"", "]"}], "->", "mq"}]}]}], "\n", 
    "]"}], " ", "+", " ", 
   RowBox[{"FCFAConvert", "[", "\n", "\t", 
    RowBox[{
     RowBox[{"CreateFeynAmp", "[", 
      RowBox[{
       RowBox[{"diagQuarkSECT", "[", "1", "]"}], ",", " ", 
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
         RowBox[{"dMf1", "[", "__", "]"}], "->", "ZmGluino"}], ",", " ", 
        RowBox[{
         RowBox[{"dZfL1", "[", "__", "]"}], "->", "ZGluino"}], ",", "\n", 
        "\t", 
        RowBox[{
         RowBox[{"dZfR1", "[", "__", "]"}], "->", "ZGluino"}], ",", " ", 
        RowBox[{
         RowBox[{"SMP", "[", "\"\<m_u\>\"", "]"}], "->", "MGl"}], ",", "\n", 
        "\t", 
        RowBox[{
         RowBox[{"SUNFDelta", "[", 
          RowBox[{
           RowBox[{"SUNFIndex", "[", "Col1", "]"}], ",", 
           RowBox[{"SUNFIndex", "[", "Col2", "]"}]}], "]"}], " ", "->", " ", 
         RowBox[{
          RowBox[{"SUNTF", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"SUNIndex", "[", "Glu2", "]"}], "}"}], ",", 
            RowBox[{"SUNFIndex", "[", "Col3", "]"}], ",", 
            RowBox[{"SUNFIndex", "[", "Col4", "]"}]}], "]"}], 
          RowBox[{"SUNTF", "[", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"SUNIndex", "[", "Glu1", "]"}], "}"}], ",", 
            RowBox[{"SUNFIndex", "[", "Col4", "]"}], ",", 
            RowBox[{"SUNFIndex", "[", "Col3", "]"}]}], "]"}]}]}]}], "}"}]}]}],
     "\n", "]"}]}]}]], "Code",
 CellChangeTimes->{{3.914574932395079*^9, 3.9145750642106*^9}, {
   3.914575114114571*^9, 3.914575140895885*^9}, {3.914575213933047*^9, 
   3.914575230956373*^9}, 3.9145752957831707`*^9, {3.914575403525599*^9, 
   3.914575408291696*^9}, {3.914575627947624*^9, 3.914575639390836*^9}, {
   3.9145763894920387`*^9, 3.914576423833235*^9}, {3.914576914638637*^9, 
   3.914576993535039*^9}, 3.915635215915537*^9, {3.915681825635068*^9, 
   3.915681829061543*^9}, {3.915681883861487*^9, 3.915681908480117*^9}, {
   3.915702181919441*^9, 3.915702185075617*^9}, {3.915873346706002*^9, 
   3.915873349275494*^9}, {3.91654812326412*^9, 3.916548124468946*^9}, {
   3.916549436138627*^9, 3.9165494365215397`*^9}, {3.9165505637454844`*^9, 
   3.916550583540949*^9}, {3.916550653786694*^9, 3.916550683669986*^9}, {
   3.916550997032*^9, 3.916551014150619*^9}, {3.9165510715490093`*^9, 
   3.916551139170124*^9}, 3.916551282538691*^9, {3.9165514682941313`*^9, 
   3.916551494628681*^9}, {3.916551576090412*^9, 3.9165515846457148`*^9}, {
   3.9165519864371033`*^9, 3.916552089562725*^9}},
 CellLabel->"In[67]:=",ExpressionUUID->"d1d2234c-4ddb-4963-a0f0-293015f5ba60"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FormBox[
    RowBox[{
     RowBox[{"(", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[ImaginaryI]", " ", 
           SqrtBox["2"], " ", 
           TemplateBox[{"SqrtEGl"},
            "Conjugate"], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "2"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"], " ", 
           SuperscriptBox[
            OverscriptBox["\[Gamma]", "_"], 
            FormBox["7",
             TraditionalForm]], " ", 
           SubscriptBox["g", "s"], " ", 
           SubsuperscriptBox["T", 
            RowBox[{
             FormBox[
              FormBox["Col3",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Col4",
               TraditionalForm],
              TraditionalForm]}], 
            FormBox[
             FormBox["Glu2",
              TraditionalForm],
             TraditionalForm]]}], "-", 
          RowBox[{"\[ImaginaryI]", " ", 
           SqrtBox["2"], " ", "SqrtEGl", " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "1"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"], " ", 
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
              FormBox["Col4",
               TraditionalForm],
              TraditionalForm]}], 
            FormBox[
             FormBox["Glu2",
              TraditionalForm],
             TraditionalForm]]}]}], ")"}], ".", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Gamma]", "\[CenterDot]", 
           FormBox[
            FormBox["q",
             TraditionalForm],
            TraditionalForm]}], "+", 
          RowBox[{"MQD", "(", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Gen", 3],
             Editable->False],
            TraditionalForm], ")"}]}], ")"}], ".", 
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
              FormBox["Col4",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Col3",
               TraditionalForm],
              TraditionalForm]}], 
            FormBox[
             FormBox["Glu1",
              TraditionalForm],
             TraditionalForm]], " ", 
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "2"}], 
            OverscriptBox["q", "~"]]}], "-", 
          RowBox[{"\[ImaginaryI]", " ", 
           SqrtBox["2"], " ", 
           TemplateBox[{"SqrtEGl"},
            "Conjugate"], " ", 
           SuperscriptBox[
            OverscriptBox["\[Gamma]", "_"], 
            FormBox["7",
             TraditionalForm]], " ", 
           SubscriptBox["g", "s"], " ", 
           SubsuperscriptBox["T", 
            RowBox[{
             FormBox[
              FormBox["Col4",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Col3",
               TraditionalForm],
              TraditionalForm]}], 
            FormBox[
             FormBox["Glu1",
              TraditionalForm],
             TraditionalForm]], " ", 
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "1"}], 
            OverscriptBox["q", "~"]]}]}], ")"}]}]}], ")"}], "/", 
     RowBox[{"(", 
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
           SuperscriptBox[
            RowBox[{"MQD", "(", 
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Gen", 3],
               Editable->False],
              TraditionalForm], ")"}], "2"]}],
          SequenceForm[
           FeynCalc`Pair[
            FeynCalc`Momentum[$CellContext`q, D], 
            FeynCalc`Momentum[$CellContext`q, D]], "-", $CellContext`MQD[
             FeynArts`Index[$CellContext`Generation, 3]]^2],
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
            FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D], 
            FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D]], "-", 
           TreeLevel`MSf[
             FeynArts`Index[TreeLevel`Sfermion, 3], 4, 
             FeynArts`Index[$CellContext`Generation, 3]]^2],
          Editable->False], ")"}]}]}], ")"}]}],
    TraditionalForm], "+", 
   FormBox[
    RowBox[{
     RowBox[{"(", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{
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
              FormBox["Col4",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Col3",
               TraditionalForm],
              TraditionalForm]}], 
            FormBox[
             FormBox["Glu2",
              TraditionalForm],
             TraditionalForm]], " ", 
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "2"}], 
            OverscriptBox["q", "~"]]}], "-", 
          RowBox[{"\[ImaginaryI]", " ", 
           SqrtBox["2"], " ", 
           TemplateBox[{"SqrtEGl"},
            "Conjugate"], " ", 
           SuperscriptBox[
            OverscriptBox["\[Gamma]", "_"], 
            FormBox["7",
             TraditionalForm]], " ", 
           SubscriptBox["g", "s"], " ", 
           SubsuperscriptBox["T", 
            RowBox[{
             FormBox[
              FormBox["Col4",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Col3",
               TraditionalForm],
              TraditionalForm]}], 
            FormBox[
             FormBox["Glu2",
              TraditionalForm],
             TraditionalForm]], " ", 
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "1"}], 
            OverscriptBox["q", "~"]]}]}], ")"}], ".", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Gamma]", "\[CenterDot]", 
           FormBox[
            FormBox["q",
             TraditionalForm],
            TraditionalForm]}], "+", 
          RowBox[{"MQD", "(", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Gen", 3],
             Editable->False],
            TraditionalForm], ")"}]}], ")"}], ".", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[ImaginaryI]", " ", 
           SqrtBox["2"], " ", 
           TemplateBox[{"SqrtEGl"},
            "Conjugate"], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "2"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"], " ", 
           SuperscriptBox[
            OverscriptBox["\[Gamma]", "_"], 
            FormBox["7",
             TraditionalForm]], " ", 
           SubscriptBox["g", "s"], " ", 
           SubsuperscriptBox["T", 
            RowBox[{
             FormBox[
              FormBox["Col3",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Col4",
               TraditionalForm],
              TraditionalForm]}], 
            FormBox[
             FormBox["Glu1",
              TraditionalForm],
             TraditionalForm]]}], "-", 
          RowBox[{"\[ImaginaryI]", " ", 
           SqrtBox["2"], " ", "SqrtEGl", " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "1"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"], " ", 
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
              FormBox["Col4",
               TraditionalForm],
              TraditionalForm]}], 
            FormBox[
             FormBox["Glu1",
              TraditionalForm],
             TraditionalForm]]}]}], ")"}]}]}], ")"}], "/", 
     RowBox[{"(", 
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
           SuperscriptBox[
            RowBox[{"MQD", "(", 
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Gen", 3],
               Editable->False],
              TraditionalForm], ")"}], "2"]}],
          SequenceForm[
           FeynCalc`Pair[
            FeynCalc`Momentum[$CellContext`q, D], 
            FeynCalc`Momentum[$CellContext`q, D]], "-", $CellContext`MQD[
             FeynArts`Index[$CellContext`Generation, 3]]^2],
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
            FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D], 
            FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D]], "-", 
           TreeLevel`MSf[
             FeynArts`Index[TreeLevel`Sfermion, 3], 4, 
             FeynArts`Index[$CellContext`Generation, 3]]^2],
          Editable->False], ")"}]}]}], ")"}]}],
    TraditionalForm], "+", 
   FormBox[
    RowBox[{
     RowBox[{"(", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[ImaginaryI]", " ", 
           SqrtBox["2"], " ", 
           TemplateBox[{"SqrtEGl"},
            "Conjugate"], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "2"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"], " ", 
           SuperscriptBox[
            OverscriptBox["\[Gamma]", "_"], 
            FormBox["7",
             TraditionalForm]], " ", 
           SubscriptBox["g", "s"], " ", 
           SubsuperscriptBox["T", 
            RowBox[{
             FormBox[
              FormBox["Col3",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Col4",
               TraditionalForm],
              TraditionalForm]}], 
            FormBox[
             FormBox["Glu2",
              TraditionalForm],
             TraditionalForm]]}], "-", 
          RowBox[{"\[ImaginaryI]", " ", 
           SqrtBox["2"], " ", "SqrtEGl", " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "1"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"], " ", 
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
              FormBox["Col4",
               TraditionalForm],
              TraditionalForm]}], 
            FormBox[
             FormBox["Glu2",
              TraditionalForm],
             TraditionalForm]]}]}], ")"}], ".", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Gamma]", "\[CenterDot]", 
           FormBox[
            FormBox["q",
             TraditionalForm],
            TraditionalForm]}], "+", 
          RowBox[{"MQU", "(", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Gen", 3],
             Editable->False],
            TraditionalForm], ")"}]}], ")"}], ".", 
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
              FormBox["Col4",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Col3",
               TraditionalForm],
              TraditionalForm]}], 
            FormBox[
             FormBox["Glu1",
              TraditionalForm],
             TraditionalForm]], " ", 
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "2"}], 
            OverscriptBox["q", "~"]]}], "-", 
          RowBox[{"\[ImaginaryI]", " ", 
           SqrtBox["2"], " ", 
           TemplateBox[{"SqrtEGl"},
            "Conjugate"], " ", 
           SuperscriptBox[
            OverscriptBox["\[Gamma]", "_"], 
            FormBox["7",
             TraditionalForm]], " ", 
           SubscriptBox["g", "s"], " ", 
           SubsuperscriptBox["T", 
            RowBox[{
             FormBox[
              FormBox["Col4",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Col3",
               TraditionalForm],
              TraditionalForm]}], 
            FormBox[
             FormBox["Glu1",
              TraditionalForm],
             TraditionalForm]], " ", 
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "1"}], 
            OverscriptBox["q", "~"]]}]}], ")"}]}]}], ")"}], "/", 
     RowBox[{"(", 
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
           SuperscriptBox[
            RowBox[{"MQU", "(", 
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Gen", 3],
               Editable->False],
              TraditionalForm], ")"}], "2"]}],
          SequenceForm[
           FeynCalc`Pair[
            FeynCalc`Momentum[$CellContext`q, D], 
            FeynCalc`Momentum[$CellContext`q, D]], "-", $CellContext`MQU[
             FeynArts`Index[$CellContext`Generation, 3]]^2],
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
            FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D], 
            FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D]], "-", 
           TreeLevel`MSf[
             FeynArts`Index[TreeLevel`Sfermion, 3], 3, 
             FeynArts`Index[$CellContext`Generation, 3]]^2],
          Editable->False], ")"}]}]}], ")"}]}],
    TraditionalForm], "+", 
   FormBox[
    RowBox[{
     RowBox[{"(", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{
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
              FormBox["Col4",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Col3",
               TraditionalForm],
              TraditionalForm]}], 
            FormBox[
             FormBox["Glu2",
              TraditionalForm],
             TraditionalForm]], " ", 
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "2"}], 
            OverscriptBox["q", "~"]]}], "-", 
          RowBox[{"\[ImaginaryI]", " ", 
           SqrtBox["2"], " ", 
           TemplateBox[{"SqrtEGl"},
            "Conjugate"], " ", 
           SuperscriptBox[
            OverscriptBox["\[Gamma]", "_"], 
            FormBox["7",
             TraditionalForm]], " ", 
           SubscriptBox["g", "s"], " ", 
           SubsuperscriptBox["T", 
            RowBox[{
             FormBox[
              FormBox["Col4",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Col3",
               TraditionalForm],
              TraditionalForm]}], 
            FormBox[
             FormBox["Glu2",
              TraditionalForm],
             TraditionalForm]], " ", 
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "1"}], 
            OverscriptBox["q", "~"]]}]}], ")"}], ".", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[Gamma]", "\[CenterDot]", 
           FormBox[
            FormBox["q",
             TraditionalForm],
            TraditionalForm]}], "+", 
          RowBox[{"MQU", "(", 
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Gen", 3],
             Editable->False],
            TraditionalForm], ")"}]}], ")"}], ".", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\[ImaginaryI]", " ", 
           SqrtBox["2"], " ", 
           TemplateBox[{"SqrtEGl"},
            "Conjugate"], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "2"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"], " ", 
           SuperscriptBox[
            OverscriptBox["\[Gamma]", "_"], 
            FormBox["7",
             TraditionalForm]], " ", 
           SubscriptBox["g", "s"], " ", 
           SubsuperscriptBox["T", 
            RowBox[{
             FormBox[
              FormBox["Col3",
               TraditionalForm],
              TraditionalForm], 
             FormBox[
              FormBox["Col4",
               TraditionalForm],
              TraditionalForm]}], 
            FormBox[
             FormBox["Glu1",
              TraditionalForm],
             TraditionalForm]]}], "-", 
          RowBox[{"\[ImaginaryI]", " ", 
           SqrtBox["2"], " ", "SqrtEGl", " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "1"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"], " ", 
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
              FormBox["Col4",
               TraditionalForm],
              TraditionalForm]}], 
            FormBox[
             FormBox["Glu1",
              TraditionalForm],
             TraditionalForm]]}]}], ")"}]}]}], ")"}], "/", 
     RowBox[{"(", 
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
           SuperscriptBox[
            RowBox[{"MQU", "(", 
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Gen", 3],
               Editable->False],
              TraditionalForm], ")"}], "2"]}],
          SequenceForm[
           FeynCalc`Pair[
            FeynCalc`Momentum[$CellContext`q, D], 
            FeynCalc`Momentum[$CellContext`q, D]], "-", $CellContext`MQU[
             FeynArts`Index[$CellContext`Generation, 3]]^2],
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
            FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D], 
            FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D]], "-", 
           TreeLevel`MSf[
             FeynArts`Index[TreeLevel`Sfermion, 3], 3, 
             FeynArts`Index[$CellContext`Generation, 3]]^2],
          Editable->False], ")"}]}]}], ")"}]}],
    TraditionalForm], "-", 
   FormBox[
    FractionBox[
     RowBox[{"\[ImaginaryI]", " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox["\[Gamma]", 
           FormBox[
            FormBox["\[Nu]",
             TraditionalForm],
            TraditionalForm]]}], " ", 
         SubscriptBox["g", "s"], " ", 
         SuperscriptBox["f", 
          RowBox[{
           FormBox[
            FormBox["Glu2",
             TraditionalForm],
            TraditionalForm], 
           FormBox[
            FormBox["Glu3",
             TraditionalForm],
            TraditionalForm], 
           FormBox[
            FormBox["Glu4",
             TraditionalForm],
            TraditionalForm]}]]}], ")"}], ".", 
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
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], " ", 
         SubscriptBox["g", "s"], " ", 
         SuperscriptBox["f", 
          RowBox[{
           FormBox[
            FormBox["Glu1",
             TraditionalForm],
            TraditionalForm], 
           FormBox[
            FormBox["Glu3",
             TraditionalForm],
            TraditionalForm], 
           FormBox[
            FormBox["Glu4",
             TraditionalForm],
            TraditionalForm]}]]}], ")"}]}], " ", 
      SuperscriptBox["g", 
       RowBox[{
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm], 
        FormBox[
         FormBox["\[Nu]",
          TraditionalForm],
         TraditionalForm]}]]}], 
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
          FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D], 
          FeynCalc`Momentum[-CalcTools`p + $CellContext`q, D]]],
        Editable->False]}]}]],
    TraditionalForm], "-", 
   RowBox[{"\[ImaginaryI]", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           FractionBox["1", "2"]}], " ", 
          SubscriptBox["m", 
           OverscriptBox["g", "~"]], " ", 
          SubscriptBox["Z", 
           OverscriptBox["g", "~"]]}], "-", 
         SubscriptBox["Z", 
          SubscriptBox["m", 
           OverscriptBox["g", "~"]]], "-", 
         RowBox[{
          FractionBox["1", "2"], " ", 
          SubscriptBox["m", 
           OverscriptBox["g", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["Z", 
               OverscriptBox["g", "~"]], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], " ", 
       SubsuperscriptBox["T", 
        RowBox[{
         FormBox[
          FormBox["Col4",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Col3",
           TraditionalForm],
          TraditionalForm]}], 
        FormBox[
         FormBox["Glu1",
          TraditionalForm],
         TraditionalForm]], " ", 
       SubsuperscriptBox["T", 
        RowBox[{
         FormBox[
          FormBox["Col3",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Col4",
           TraditionalForm],
          TraditionalForm]}], 
        FormBox[
         FormBox["Glu2",
          TraditionalForm],
         TraditionalForm]]}], "+", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           FractionBox["1", "2"]}], " ", 
          SubscriptBox["m", 
           OverscriptBox["g", "~"]], " ", 
          SubscriptBox["Z", 
           OverscriptBox["g", "~"]]}], "-", 
         SubscriptBox["Z", 
          SubscriptBox["m", 
           OverscriptBox["g", "~"]]], "-", 
         RowBox[{
          FractionBox["1", "2"], " ", 
          SubscriptBox["m", 
           OverscriptBox["g", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["Z", 
               OverscriptBox["g", "~"]], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], " ", 
       SubsuperscriptBox["T", 
        RowBox[{
         FormBox[
          FormBox["Col4",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Col3",
           TraditionalForm],
          TraditionalForm]}], 
        FormBox[
         FormBox["Glu1",
          TraditionalForm],
         TraditionalForm]], " ", 
       SubsuperscriptBox["T", 
        RowBox[{
         FormBox[
          FormBox["Col3",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Col4",
           TraditionalForm],
          TraditionalForm]}], 
        FormBox[
         FormBox["Glu2",
          TraditionalForm],
         TraditionalForm]]}], "+", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          FractionBox[
           SubscriptBox["Z", 
            OverscriptBox["g", "~"]], "2"]}], "-", 
         FractionBox[
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["Z", 
               OverscriptBox["g", "~"]], ")"}]},
           "Conjugate"], "2"]}], ")"}], " ", 
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
          TraditionalForm]]}], " ", 
       SubsuperscriptBox["T", 
        RowBox[{
         FormBox[
          FormBox["Col4",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Col3",
           TraditionalForm],
          TraditionalForm]}], 
        FormBox[
         FormBox["Glu1",
          TraditionalForm],
         TraditionalForm]], " ", 
       SubsuperscriptBox["T", 
        RowBox[{
         FormBox[
          FormBox["Col3",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Col4",
           TraditionalForm],
          TraditionalForm]}], 
        FormBox[
         FormBox["Glu2",
          TraditionalForm],
         TraditionalForm]]}], "+", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"(", 
        RowBox[{
         FractionBox[
          SubscriptBox["Z", 
           OverscriptBox["g", "~"]], "2"], "+", 
         FractionBox[
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["Z", 
               OverscriptBox["g", "~"]], ")"}]},
           "Conjugate"], "2"]}], ")"}], " ", 
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
          TraditionalForm]]}], " ", 
       SubsuperscriptBox["T", 
        RowBox[{
         FormBox[
          FormBox["Col4",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Col3",
           TraditionalForm],
          TraditionalForm]}], 
        FormBox[
         FormBox["Glu1",
          TraditionalForm],
         TraditionalForm]], " ", 
       SubsuperscriptBox["T", 
        RowBox[{
         FormBox[
          FormBox["Col3",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Col4",
           TraditionalForm],
          TraditionalForm]}], 
        FormBox[
         FormBox["Glu2",
          TraditionalForm],
         TraditionalForm]]}]}], ")"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.9165510149400187`*^9, {3.9165511192817087`*^9, 3.9165511397163677`*^9}, 
   3.916551270720264*^9, {3.916551478532219*^9, 3.916551495707999*^9}, 
   3.9165515343671923`*^9, 3.916551604370619*^9, {3.916552013688322*^9, 
   3.916552033123705*^9}, {3.916552080833284*^9, 3.9165521145681467`*^9}, 
   3.9166754773820667`*^9, 3.916676564886492*^9, 3.916677048386775*^9},
 CellLabel->"Out[67]=",ExpressionUUID->"4894ee23-2563-4518-9d40-bdac396ef0de"]
}, Open  ]]
}, Closed]]
}, Closed]],

Cell[CellGroupData[{

Cell["Calculate the amplitudes", "Section",
 CellChangeTimes->{{3.914575668950384*^9, 
  3.914575675283248*^9}},ExpressionUUID->"a75b00ae-7f3a-42c5-9ea8-\
228a5a55557a"],

Cell[CellGroupData[{

Cell["Quark self-energy", "Subsection",
 CellChangeTimes->{{3.914575682808432*^9, 
  3.914575687573115*^9}},ExpressionUUID->"5fb3249a-2a16-4578-8abb-\
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
       RowBox[{"ampQuarkSE", "[", "0", "]"}], " ", "//", " ", 
       "DiracSimplify"}], " ", "//", "\n", "\t", "SUNSimplify"}], " ", "//", 
     " ", "DiracSimplify"}], " ", "//", "\n", "\t", 
    RowBox[{
     RowBox[{"TID", "[", 
      RowBox[{"#", ",", " ", "q", ",", " ", 
       RowBox[{"UsePaVeBasis", "->", "True"}], ",", 
       RowBox[{"ToPaVe", "->", "True"}]}], "]"}], "&"}]}]}], ";"}]], "Code",
 CellChangeTimes->{{3.914575695650922*^9, 3.914575751381132*^9}, 
   3.914576311078836*^9, {3.914576498433462*^9, 3.914576521614826*^9}, {
   3.914576699501038*^9, 3.914576728664986*^9}, {3.914577005384384*^9, 
   3.914577015314972*^9}, {3.915604349457487*^9, 3.915604349521366*^9}, 
   3.915605996130371*^9, 3.915606032474703*^9, {3.915630710654091*^9, 
   3.91563071933018*^9}, {3.915635093718601*^9, 3.915635158395149*^9}, 
   3.915635191700086*^9, {3.915682048904943*^9, 3.915682050463778*^9}, 
   3.915685190552537*^9, {3.915688060501205*^9, 3.915688073394274*^9}, {
   3.915688193665931*^9, 3.915688205910771*^9}, 3.915688995660984*^9, 
   3.915689049143714*^9, {3.915695805549962*^9, 3.91569580750732*^9}, {
   3.915695932185074*^9, 3.915695939898809*^9}, {3.9156961539744577`*^9, 
   3.91569617780539*^9}, {3.915698851346374*^9, 3.9156988714267187`*^9}, 
   3.916115650454897*^9, {3.9161157876150293`*^9, 3.916115818703369*^9}, {
   3.916115859715121*^9, 3.916115896549749*^9}},
 CellLabel->"In[68]:=",ExpressionUUID->"4dcc74a2-e6cc-47d2-9c5f-f7e955d1c8d1"],

Cell["Discard all the finite pieces of the 1-loop amplitude.", "Text",
 CellChangeTimes->{{3.914575760905298*^9, 
  3.914575773152245*^9}},ExpressionUUID->"07a229b4-97b9-4501-ae63-\
3860530369b7"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"ampQuarkSEDiv", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"ampQuarkSE", "[", "1", "]"}], " ", "//", " ", 
     RowBox[{
      RowBox[{"PaVeUVPart", "[", "#", "]"}], "&"}]}], " ", "//", " ", 
    RowBox[{
     RowBox[{"ReplaceRepeated", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{
        RowBox[{"SqrtEGl", " ", 
         RowBox[{"SqrtEGl", "\[Conjugate]"}]}], "->", "1"}]}], "]"}], 
     "&"}]}]}], ";"}]], "Code",
 CellChangeTimes->{{3.914575774640349*^9, 3.914575814619986*^9}, 
   3.9145763206515303`*^9, {3.915606002058123*^9, 3.915606011436789*^9}, 
   3.915606089963867*^9, {3.915607855432483*^9, 3.915607866126801*^9}, {
   3.915630725612297*^9, 3.915630730683013*^9}, {3.9156988776187773`*^9, 
   3.915698942658197*^9}},
 CellLabel->"In[69]:=",ExpressionUUID->"fdf30683-fdbc-4649-8751-412388ff38e5"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampQuarkSEDiv", "[", "1", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"FCReplaceD", "[", 
       RowBox[{
        RowBox[{"ampQuarkSEDiv", "[", "0", "]"}], ",", " ", 
        RowBox[{"D", "->", 
         RowBox[{"4", "-", 
          RowBox[{"2", "Epsilon"}]}]}]}], "]"}], " ", "//", "\n", "\t", 
      RowBox[{
       RowBox[{"Series", "[", 
        RowBox[{"#", ",", 
         RowBox[{"{", 
          RowBox[{"Epsilon", ",", "0", ",", "0"}], "}"}]}], "]"}], "&"}]}], 
     " ", "//", "\n", "\t", "Normal"}], " ", "//", " ", "FCHideEpsilon"}], 
   " ", "//", " ", "Simplify"}]}]], "Code",
 CellChangeTimes->{{3.914575819158785*^9, 3.9145758830227823`*^9}, 
   3.91457632775228*^9, {3.914576588185513*^9, 3.914576592494037*^9}, {
   3.9145766284047728`*^9, 3.914576628541034*^9}, {3.915604753444929*^9, 
   3.915604757502358*^9}, {3.915604804794796*^9, 3.915604848440514*^9}, {
   3.915607664370339*^9, 3.915607672293354*^9}, {3.915607817456128*^9, 
   3.915607818877862*^9}, {3.915630518326273*^9, 3.915630648351819*^9}, {
   3.915630733481065*^9, 3.915630750994009*^9}, {3.915635001334855*^9, 
   3.91563501175825*^9}, {3.915635050127429*^9, 3.915635067642909*^9}, {
   3.9156888437255077`*^9, 3.915688844728621*^9}, 3.915698954706225*^9},
 CellLabel->"In[70]:=",ExpressionUUID->"5ada759b-cf95-4642-b2b6-5cf7337a3f67"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], 
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
      RowBox[{"-", "4"}], " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      SubscriptBox["m", "q"], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{"4", " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      SubscriptBox["m", "q"], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{
      SubsuperscriptBox["C", "A", "2"], " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"2", " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{"SqrtEGl"},
         "Conjugate"], ")"}], "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{"2", " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{"SqrtEGl"},
         "Conjugate"], ")"}], "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{
      SubsuperscriptBox["C", "A", "2"], " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{"2", " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{"SqrtEGl"},
         "Conjugate"], ")"}], "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"2", " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{"SqrtEGl"},
         "Conjugate"], ")"}], "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{
      SubsuperscriptBox["C", "A", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"2", " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]], " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{"2", " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]], " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{
      SubsuperscriptBox["C", "A", "2"], " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{"2", " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]], " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"2", " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]], " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{
      SubsuperscriptBox["C", "A", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["C", "A"], "-", "1"}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["C", "A"], "+", "1"}], ")"}], 
      " ", "\<\"\[CapitalDelta]\"\>", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         SubscriptBox["m", 
          OverscriptBox["g", "~"]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "1"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"], " ", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["6",
           TraditionalForm]], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "2"}], 
          OverscriptBox["q", "~"]], " ", 
         SuperscriptBox["SqrtEGl", "2"]}], "+", 
        RowBox[{"4", " ", 
         SubscriptBox["m", "q"]}], "-", 
        RowBox[{"\[Gamma]", "\[CenterDot]", 
         FormBox[
          FormBox["p",
           TraditionalForm],
          TraditionalForm]}], "+", 
        RowBox[{"2", " ", 
         SubscriptBox["m", 
          OverscriptBox["g", "~"]], " ", 
         SuperscriptBox[
          RowBox[{"(", 
           TemplateBox[{"SqrtEGl"},
            "Conjugate"], ")"}], "2"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "2"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"], " ", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "1"}], 
          OverscriptBox["q", "~"]]}], "-", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "1"}], 
              OverscriptBox["q", "~"]], ")"}]},
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
            TraditionalForm]]}], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "1"}], 
          OverscriptBox["q", "~"]]}], "-", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "2"}], 
              OverscriptBox["q", "~"]], ")"}]},
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
            TraditionalForm]]}], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "2"}], 
          OverscriptBox["q", "~"]]}]}], ")"}], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{"4", " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      SubscriptBox["m", "q"], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"4", " ", 
      SubscriptBox["m", "q"], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{
      SubsuperscriptBox["C", "A", "2"], " ", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"32", " ", 
      SubscriptBox["C", "A"], " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["Z", "m"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], "-", 
     RowBox[{"16", " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["m", "q"], " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["Z", "qR"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], "-", 
     RowBox[{"16", " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["m", "q"], " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["Z", "qL"], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], "-", 
     RowBox[{"32", " ", 
      SubscriptBox["C", "A"], " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["Z", "m"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], "-", 
     RowBox[{"16", " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["m", "q"], " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["Z", "qL"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], "-", 
     RowBox[{"16", " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["m", "q"], " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["Z", "qR"], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], "+", 
     RowBox[{"16", " ", 
      SubscriptBox["C", "A"], " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["Z", "qR"], " ", 
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
     RowBox[{"16", " ", 
      SubscriptBox["C", "A"], " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["Z", "qR"], ")"}]},
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
     RowBox[{"16", " ", 
      SubscriptBox["C", "A"], " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["Z", "qL"], " ", 
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
         TraditionalForm]]}]}], "+", 
     RowBox[{"16", " ", 
      SubscriptBox["C", "A"], " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["Z", "qL"], ")"}]},
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
         TraditionalForm]]}]}]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.9145763089487762`*^9, 3.914576524893687*^9, 3.914576560822183*^9, 
   3.914576592877271*^9, 3.914576628788353*^9, 3.914577023806427*^9, 
   3.915604271832077*^9, 3.915604363053198*^9, {3.915604791892349*^9, 
   3.9156048491966877`*^9}, 3.915605243741829*^9, 3.915606036321088*^9, 
   3.915606091885535*^9, 3.915607693470969*^9, {3.915607800989823*^9, 
   3.915607819635921*^9}, 3.915607885091791*^9, 3.915611630915097*^9, 
   3.915613373813459*^9, {3.915630539730825*^9, 3.915630562541526*^9}, 
   3.9156305961001663`*^9, 3.915630649258675*^9, 3.915631224925931*^9, 
   3.915631683397818*^9, {3.91563513182788*^9, 3.915635161360054*^9}, 
   3.915635228966044*^9, 3.915635564321303*^9, 3.915682313757621*^9, 
   3.915688077366988*^9, 3.91568821576319*^9, 3.915688845784453*^9, 
   3.915698946003491*^9, 3.9158567485002604`*^9, 3.915873382161669*^9, 
   3.915873543616456*^9, 3.916110391635963*^9, 3.916115555626338*^9, 
   3.916117381860962*^9, 3.916118545987059*^9, 3.916119336042478*^9, 
   3.916121583300811*^9, 3.916453220067354*^9, 3.916548231149033*^9, 
   3.9165484566364803`*^9, 3.916549567786574*^9, 3.9165496970357857`*^9, 
   3.916549797448263*^9, 3.916551535192453*^9, 3.916551605196933*^9, 
   3.91655211538941*^9, 3.916675478188262*^9, 3.916676565731448*^9, 
   3.91667704920156*^9},
 CellLabel->"Out[70]=",ExpressionUUID->"2dd8c8de-3724-46ff-b3d9-65eddb91d1cf"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampQuarkSEDiv", "[", "2", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"ampQuarkSEDiv", "[", "1", "]"}], " ", "//", "\n", "\t", 
        RowBox[{
         RowBox[{"ReplaceRepeated", "[", 
          RowBox[{"#", ",", 
           RowBox[{"{", "\n", "\t\t", 
            RowBox[{
             RowBox[{"Zm", " ", "->", " ", 
              RowBox[{"1", " ", "+", " ", 
               RowBox[{"alpha", " ", "dQm"}]}]}], ",", "\n", "\t\t", 
             RowBox[{"ZQL", " ", "->", " ", 
              RowBox[{"1", " ", "+", " ", 
               RowBox[{"alpha", " ", "dQL"}]}]}], ",", "\n", "\t\t", 
             RowBox[{"ZQR", " ", "->", " ", 
              RowBox[{"1", " ", "+", " ", 
               RowBox[{"alpha", " ", "dQR"}]}]}]}], "}"}]}], "\n", "\t", 
          "]"}], "&"}]}], " ", "//", "\n", "\t", 
       RowBox[{
        RowBox[{"Series", "[", 
         RowBox[{"#", ",", 
          RowBox[{"{", 
           RowBox[{"alpha", ",", "0", ",", "1"}], "}"}]}], "]"}], "&"}]}], 
      " ", "//", "\n", "\t", "Normal"}], " ", "//", " ", 
     RowBox[{
      RowBox[{"ReplaceAll", "[", 
       RowBox[{"#", ",", " ", 
        RowBox[{"alpha", "->", "1"}]}], "]"}], "&"}]}], " ", "//", "\n", "\t", 
    RowBox[{
     RowBox[{"SelectNotFree2", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{"SMP", "[", "\"\<Delta\>\"", "]"}], ",", " ", "dQL", ",", " ", 
       "dQR", ",", " ", "dQm"}], "]"}], "&"}]}], " ", "//", "\n", "\t", 
   RowBox[{
    RowBox[{"ReplaceAll", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", "\n", "\t\t", 
       RowBox[{
        RowBox[{"dQL", " ", "->", " ", 
         RowBox[{
          RowBox[{"Re", "[", "dQL", "]"}], "+", 
          RowBox[{"\[ImaginaryI]", "*", 
           RowBox[{"Im", "[", "dQL", "]"}]}]}]}], ",", "\n", "\t\t", 
        RowBox[{"dQR", " ", "->", " ", 
         RowBox[{
          RowBox[{"Re", "[", "dQR", "]"}], "+", 
          RowBox[{"\[ImaginaryI]", "*", 
           RowBox[{"Im", "[", "dQR", "]"}]}]}]}]}], "}"}]}], "\n", "\t", 
     "]"}], "&"}]}]}]], "Code",
 CellChangeTimes->{{3.91457588791752*^9, 3.914576033332181*^9}, 
   3.914576339848319*^9, {3.915605027550218*^9, 3.915605062139845*^9}, {
   3.915605126283597*^9, 3.915605159187806*^9}, {3.91563075756826*^9, 
   3.9156308141664877`*^9}, {3.915635242691201*^9, 3.915635305198457*^9}, {
   3.915635424253512*^9, 3.915635429392536*^9}, {3.915635471481731*^9, 
   3.915635526529984*^9}, {3.915682070530323*^9, 3.915682159733402*^9}, {
   3.9159501202726173`*^9, 3.9159501621386137`*^9}},
 CellLabel->"In[71]:=",ExpressionUUID->"b54e4ebe-9448-42c1-962a-2a87d322a1b5"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     FractionBox["1", 
      RowBox[{"32", " ", 
       SuperscriptBox["\[Pi]", "2"]}]]}], "\<\"\[CapitalDelta]\"\>", " ", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["C", "A"], "-", "1"}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      SubscriptBox["C", "A"], "+", "1"}], ")"}], " ", 
    SubsuperscriptBox["g", "s", "2"], " ", 
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
      RowBox[{"2", " ", 
       SuperscriptBox["SqrtEGl", "2"], " ", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], " ", 
       SubscriptBox["m", 
        OverscriptBox["g", "~"]], " ", 
       SubsuperscriptBox["R", 
        RowBox[{
         FormBox[
          InterpretationBox[
           RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
           SequenceForm["Sfe", 3],
           Editable->False],
          TraditionalForm], "2"}], 
        OverscriptBox["q", "~"]], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["R", 
            RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
              "1"}], 
            OverscriptBox["q", "~"]], ")"}]},
        "Conjugate"]}], "+", 
      RowBox[{"2", " ", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], " ", 
       SuperscriptBox[
        RowBox[{"(", 
         TemplateBox[{"SqrtEGl"},
          "Conjugate"], ")"}], "2"], " ", 
       SubscriptBox["m", 
        OverscriptBox["g", "~"]], " ", 
       SubsuperscriptBox["R", 
        RowBox[{
         FormBox[
          InterpretationBox[
           RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
           SequenceForm["Sfe", 3],
           Editable->False],
          TraditionalForm], "1"}], 
        OverscriptBox["q", "~"]], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["R", 
            RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
              "2"}], 
            OverscriptBox["q", "~"]], ")"}]},
        "Conjugate"]}], "-", 
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
         FormBox["7",
          TraditionalForm]]}], " ", 
       SubsuperscriptBox["R", 
        RowBox[{
         FormBox[
          InterpretationBox[
           RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
           SequenceForm["Sfe", 3],
           Editable->False],
          TraditionalForm], "1"}], 
        OverscriptBox["q", "~"]], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["R", 
            RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
              "1"}], 
            OverscriptBox["q", "~"]], ")"}]},
        "Conjugate"]}], "-", 
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
          TraditionalForm]]}], " ", 
       SubsuperscriptBox["R", 
        RowBox[{
         FormBox[
          InterpretationBox[
           RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
           SequenceForm["Sfe", 3],
           Editable->False],
          TraditionalForm], "2"}], 
        OverscriptBox["q", "~"]], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["R", 
            RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
              "2"}], 
            OverscriptBox["q", "~"]], ")"}]},
        "Conjugate"]}], "+", 
      RowBox[{"4", " ", 
       SubscriptBox["m", "q"]}], "-", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}]}], ")"}]}], "-", 
   RowBox[{
    FractionBox["1", "2"], " ", 
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["6",
      TraditionalForm]], " ", 
    SubscriptBox["C", "A"], " ", 
    SubscriptBox["m", "q"], " ", 
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
      RowBox[{"Re", "(", 
       SubscriptBox["\[Delta]", "qL"], ")"}], "-", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", "qL"], ")"}]}]}], ")"}]}], "-", 
   RowBox[{
    FractionBox["1", "2"], " ", 
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["7",
      TraditionalForm]], " ", 
    SubscriptBox["C", "A"], " ", 
    SubscriptBox["m", "q"], " ", 
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
      RowBox[{"Re", "(", 
       SubscriptBox["\[Delta]", "qL"], ")"}], "+", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", "qL"], ")"}]}]}], ")"}]}], "-", 
   RowBox[{
    FractionBox["1", "2"], " ", 
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["7",
      TraditionalForm]], " ", 
    SubscriptBox["C", "A"], " ", 
    SubscriptBox["m", "q"], " ", 
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
      RowBox[{"Re", "(", 
       SubscriptBox["\[Delta]", "qR"], ")"}], "-", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", "qR"], ")"}]}]}], ")"}]}], "-", 
   RowBox[{
    FractionBox["1", "2"], " ", 
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["6",
      TraditionalForm]], " ", 
    SubscriptBox["C", "A"], " ", 
    SubscriptBox["m", "q"], " ", 
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
      RowBox[{"Re", "(", 
       SubscriptBox["\[Delta]", "qR"], ")"}], "+", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", "qR"], ")"}]}]}], ")"}]}], "+", 
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
       TraditionalForm]]}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"Re", "(", 
       SubscriptBox["\[Delta]", "qL"], ")"}], "-", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", "qL"], ")"}]}]}], ")"}]}], "+", 
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
       TraditionalForm]]}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"Re", "(", 
       SubscriptBox["\[Delta]", "qL"], ")"}], "+", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", "qL"], ")"}]}]}], ")"}]}], "+", 
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
       TraditionalForm]]}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"Re", "(", 
       SubscriptBox["\[Delta]", "qR"], ")"}], "-", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", "qR"], ")"}]}]}], ")"}]}], "+", 
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
       TraditionalForm]]}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"Re", "(", 
       SubscriptBox["\[Delta]", "qR"], ")"}], "+", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", "qR"], ")"}]}]}], ")"}]}], "-", 
   RowBox[{
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["6",
      TraditionalForm]], " ", 
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
       TraditionalForm]}]]}], "-", 
   RowBox[{
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["7",
      TraditionalForm]], " ", 
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
       TraditionalForm]}]]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.914576309000933*^9, {3.914576526971516*^9, 3.914576560864656*^9}, 
   3.914577028874678*^9, 3.915604271898407*^9, 3.9156043794272947`*^9, 
   3.915604792045149*^9, 3.915604862008191*^9, {3.915605058421609*^9, 
   3.915605062622292*^9}, 3.91560524377412*^9, 3.91560603754948*^9, 
   3.915606092767136*^9, 3.915607694876915*^9, {3.9156078017952337`*^9, 
   3.915607820391342*^9}, 3.915607885140748*^9, 3.915611630949479*^9, 
   3.915613373861554*^9, 3.91563066089172*^9, 3.9156312249526873`*^9, 
   3.915631683437091*^9, {3.915635132981955*^9, 3.915635162124075*^9}, 
   3.915635272360783*^9, 3.915635313631538*^9, 3.9156353484443817`*^9, 
   3.915635429951648*^9, 3.915635564372849*^9, 3.915682313794813*^9, 
   3.915688077398243*^9, 3.915688226218601*^9, 3.9156888486186333`*^9, 
   3.9158567487006083`*^9, 3.915873382230098*^9, 3.91587354376493*^9, 
   3.915950164990975*^9, 3.916110393494076*^9, 3.9161155574063253`*^9, 
   3.916117383710971*^9, 3.916118547783809*^9, 3.916119337903301*^9, 
   3.9161215849144382`*^9, 3.916453220571208*^9, 3.916548231486442*^9, 
   3.9165484569699173`*^9, 3.916549567818125*^9, 3.9165496973846292`*^9, 
   3.916549797792575*^9, 3.916551535565834*^9, 3.916551605580971*^9, 
   3.916552115785581*^9, 3.916675478574087*^9, 3.9166765661342773`*^9, 
   3.916677049579924*^9},
 CellLabel->"Out[71]=",ExpressionUUID->"bafef373-169e-4f50-93f9-fc1135c6fd62"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampQuarkSEDiv", "[", "3", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"ampQuarkSEDiv", "[", "2", "]"}], " ", "//", "\n", "\t", 
    "SUNSimplify"}], " ", "//", "\n", "\t", 
   RowBox[{
    RowBox[{"Collect2", "[", 
     RowBox[{"#", ",", " ", "DiracGamma", ",", " ", 
      RowBox[{"Factoring", "->", "Simplify"}]}], "]"}], "&"}]}]}]], "Code",
 CellChangeTimes->{{3.914576042299127*^9, 3.914576080351676*^9}, 
   3.914576346662568*^9, {3.914576688256481*^9, 3.914576691129487*^9}, {
   3.914577036467249*^9, 3.914577036597219*^9}, {3.91560683458986*^9, 
   3.915606883342495*^9}, {3.915606924375864*^9, 3.915606929498748*^9}, {
   3.9156308316909447`*^9, 3.9156308477848053`*^9}, {3.915635281678619*^9, 
   3.915635282602481*^9}, {3.915699068243824*^9, 3.9156990698677387`*^9}},
 CellLabel->"In[72]:=",ExpressionUUID->"6de71fd3-b077-4544-a30d-61cb2e5ee74f"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     FractionBox["1", 
      RowBox[{"16", " ", 
       SuperscriptBox["\[Pi]", "2"]}]]}], 
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["6",
      TraditionalForm]], " ", 
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
      RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
       SuperscriptBox["SqrtEGl", "2"], " ", 
       SubsuperscriptBox["C", "A", "2"], " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       SubscriptBox["m", 
        OverscriptBox["g", "~"]], " ", 
       SubsuperscriptBox["R", 
        RowBox[{
         FormBox[
          InterpretationBox[
           RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
           SequenceForm["Sfe", 3],
           Editable->False],
          TraditionalForm], "2"}], 
        OverscriptBox["q", "~"]], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["R", 
            RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
              "1"}], 
            OverscriptBox["q", "~"]], ")"}]},
        "Conjugate"]}], "-", 
      RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
       SuperscriptBox["SqrtEGl", "2"], " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       SubscriptBox["m", 
        OverscriptBox["g", "~"]], " ", 
       SubsuperscriptBox["R", 
        RowBox[{
         FormBox[
          InterpretationBox[
           RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
           SequenceForm["Sfe", 3],
           Editable->False],
          TraditionalForm], "2"}], 
        OverscriptBox["q", "~"]], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["R", 
            RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
              "1"}], 
            OverscriptBox["q", "~"]], ")"}]},
        "Conjugate"]}], "-", 
      RowBox[{"8", " ", "\[ImaginaryI]", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["m", "q"], " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", "qL"], ")"}]}], "+", 
      RowBox[{"8", " ", "\[ImaginaryI]", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["m", "q"], " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", "qR"], ")"}]}], "+", 
      RowBox[{"16", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["\[Delta]", "m"]}], "+", 
      RowBox[{"8", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["m", "q"], " ", 
       RowBox[{"Re", "(", 
        SubscriptBox["\[Delta]", "qL"], ")"}]}], "+", 
      RowBox[{"8", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["m", "q"], " ", 
       RowBox[{"Re", "(", 
        SubscriptBox["\[Delta]", "qR"], ")"}]}]}], ")"}]}], "-", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"16", " ", 
      SuperscriptBox["\[Pi]", "2"]}]], 
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["7",
      TraditionalForm]], " ", 
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
      RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
       SubsuperscriptBox["C", "A", "2"], " ", 
       SuperscriptBox[
        RowBox[{"(", 
         TemplateBox[{"SqrtEGl"},
          "Conjugate"], ")"}], "2"], " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       SubscriptBox["m", 
        OverscriptBox["g", "~"]], " ", 
       SubsuperscriptBox["R", 
        RowBox[{
         FormBox[
          InterpretationBox[
           RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
           SequenceForm["Sfe", 3],
           Editable->False],
          TraditionalForm], "1"}], 
        OverscriptBox["q", "~"]], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["R", 
            RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
              "2"}], 
            OverscriptBox["q", "~"]], ")"}]},
        "Conjugate"]}], "-", 
      RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
       SuperscriptBox[
        RowBox[{"(", 
         TemplateBox[{"SqrtEGl"},
          "Conjugate"], ")"}], "2"], " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       SubscriptBox["m", 
        OverscriptBox["g", "~"]], " ", 
       SubsuperscriptBox["R", 
        RowBox[{
         FormBox[
          InterpretationBox[
           RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
           SequenceForm["Sfe", 3],
           Editable->False],
          TraditionalForm], "1"}], 
        OverscriptBox["q", "~"]], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["R", 
            RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
              "2"}], 
            OverscriptBox["q", "~"]], ")"}]},
        "Conjugate"]}], "+", 
      RowBox[{"8", " ", "\[ImaginaryI]", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["m", "q"], " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", "qL"], ")"}]}], "-", 
      RowBox[{"8", " ", "\[ImaginaryI]", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["m", "q"], " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", "qR"], ")"}]}], "+", 
      RowBox[{"16", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["\[Delta]", "m"]}], "+", 
      RowBox[{"8", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["m", "q"], " ", 
       RowBox[{"Re", "(", 
        SubscriptBox["\[Delta]", "qL"], ")"}]}], "+", 
      RowBox[{"8", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["m", "q"], " ", 
       RowBox[{"Re", "(", 
        SubscriptBox["\[Delta]", "qR"], ")"}]}]}], ")"}]}], "+", 
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
        TraditionalForm]]}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SubsuperscriptBox["R", 
         RowBox[{
          FormBox[
           InterpretationBox[
            RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
            SequenceForm["Sfe", 3],
            Editable->False],
           TraditionalForm], "1"}], 
         OverscriptBox["q", "~"]], " ", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["R", 
             RowBox[{
               FormBox[
                InterpretationBox[
                 RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                 SequenceForm["Sfe", 3], Editable -> False], TraditionalForm],
                "1"}], 
             OverscriptBox["q", "~"]], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{"32", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", 
        SubscriptBox["C", "A"], " ", 
        RowBox[{"Re", "(", 
         SubscriptBox["\[Delta]", "qL"], ")"}]}]}], ")"}]}], 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "+", 
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
        TraditionalForm]]}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SubsuperscriptBox["R", 
         RowBox[{
          FormBox[
           InterpretationBox[
            RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
            SequenceForm["Sfe", 3],
            Editable->False],
           TraditionalForm], "2"}], 
         OverscriptBox["q", "~"]], " ", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["R", 
             RowBox[{
               FormBox[
                InterpretationBox[
                 RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                 SequenceForm["Sfe", 3], Editable -> False], TraditionalForm],
                "2"}], 
             OverscriptBox["q", "~"]], ")"}]},
         "Conjugate"]}], "+", 
       RowBox[{"32", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", 
        SubscriptBox["C", "A"], " ", 
        RowBox[{"Re", "(", 
         SubscriptBox["\[Delta]", "qR"], ")"}]}]}], ")"}]}], 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "-", 
   FractionBox[
    RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
     RowBox[{"(", 
      RowBox[{
       SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     SubscriptBox["m", "q"], " ", 
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
        TraditionalForm]}]]}], 
    RowBox[{"8", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "+", 
   FractionBox[
    RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
     RowBox[{"(", 
      RowBox[{
       SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     RowBox[{"\[Gamma]", "\[CenterDot]", 
      FormBox[
       FormBox["p",
        TraditionalForm],
       TraditionalForm]}]}], 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"]}]]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.914576309046397*^9, {3.914576533078253*^9, 3.914576560911056*^9}, {
   3.914577032230495*^9, 3.914577037330236*^9}, 3.915604271929907*^9, 
   3.915604383083984*^9, 3.915604792087643*^9, 3.91560486835574*^9, 
   3.91560506551678*^9, 3.915605243816788*^9, 3.915606039965013*^9, 
   3.915606094564893*^9, 3.915606884191107*^9, 3.915606932105339*^9, 
   3.915607695700541*^9, {3.915607802677674*^9, 3.915607821142058*^9}, 
   3.9156078852896147`*^9, 3.9156116309909153`*^9, 3.915613373914799*^9, 
   3.9156306760508137`*^9, 3.915631224986623*^9, 3.915631683479349*^9, {
   3.915635136358076*^9, 3.9156351628234*^9}, 3.915635284246346*^9, 
   3.9156353509262943`*^9, 3.915635433526664*^9, 3.915635564430471*^9, 
   3.915682313838519*^9, 3.915688077437435*^9, 3.9156882280390368`*^9, 
   3.915688850211179*^9, 3.915856749154785*^9, 3.915873382292403*^9, 
   3.91587354416227*^9, 3.915950189765646*^9, 3.916110394137596*^9, 
   3.916115557900367*^9, 3.916117384265448*^9, 3.916118548335037*^9, 
   3.916119338501356*^9, 3.916121585414212*^9, 3.916453220727325*^9, 
   3.916548231742468*^9, 3.916548457101252*^9, 3.9165495678519993`*^9, 
   3.916549697524952*^9, 3.916549797990193*^9, 3.9165515356944437`*^9, 
   3.916551605709642*^9, 3.9165521159184*^9, 3.916675478713257*^9, 
   3.91667656629983*^9, 3.916677049715757*^9},
 CellLabel->"Out[72]=",ExpressionUUID->"1fd4aeca-5316-4950-b449-78ad68bae98a"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ampQuarkSEDivPole", " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"SelectNotFree2", "[", 
         RowBox[{
          RowBox[{"ampQuarkSEDiv", "[", "3", "]"}], ",", " ", 
          RowBox[{"DiracGamma", "[", 
           RowBox[{
            RowBox[{"Momentum", "[", 
             RowBox[{"p", ",", " ", "D"}], "]"}], ",", " ", "D"}], "]"}]}], 
         "]"}], " ", "//", "\n", "\t", "DiracSimplify"}], " ", "//", " ", 
       RowBox[{
        RowBox[{"Collect2", "[", 
         RowBox[{"#", ",", " ", "SMP"}], "]"}], "&"}]}], " ", "//", "\n", 
      "\t", 
      RowBox[{
       RowBox[{"ReplaceAll", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{"SqrtEGl", " ", 
             RowBox[{"SqrtEGl", "\[Conjugate]"}]}], "->", "1"}], ",", " ", 
           RowBox[{
            RowBox[{"DiracGamma", "[", 
             RowBox[{
              RowBox[{"Momentum", "[", 
               RowBox[{"p", ",", " ", "D"}], "]"}], ",", " ", "D"}], "]"}], 
            " ", "->", " ", 
            RowBox[{
             RowBox[{"DiracGamma", "[", 
              RowBox[{
               RowBox[{"Momentum", "[", 
                RowBox[{"p", ",", " ", "D"}], "]"}], ",", " ", "D"}], "]"}], 
             ".", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"alpha", " ", 
                RowBox[{"DiracGamma", "[", "6", "]"}]}], " ", "+", " ", 
               RowBox[{"beta", " ", 
                RowBox[{"DiracGamma", "[", "7", "]"}]}]}], ")"}]}]}]}], 
          "}"}]}], "]"}], "&"}]}], " ", "//", "\n", "\t", "DiracSimplify"}], 
    " ", "//", " ", "Simplify"}], " ", "//", " ", 
   RowBox[{
    RowBox[{"ReplaceAll", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"alpha", "->", "1"}], ",", " ", 
        RowBox[{"beta", "->", "1"}]}], "}"}]}], "]"}], "&"}]}]}]], "Code",
 CellChangeTimes->{{3.915607054625533*^9, 3.915607095386076*^9}, {
   3.915628597373839*^9, 3.915628630310159*^9}, {3.915640965103493*^9, 
   3.915641067193727*^9}, {3.915641103132578*^9, 3.915641114960072*^9}, {
   3.9156822530445347`*^9, 3.91568228981182*^9}, {3.915682364194097*^9, 
   3.915682370496233*^9}, {3.915688254021814*^9, 3.915688277941984*^9}, {
   3.915688827684183*^9, 3.915688829425554*^9}, {3.915689088837331*^9, 
   3.915689104301497*^9}, {3.915689404018444*^9, 3.915689422172348*^9}, 
   3.915699085647545*^9, {3.915699135135043*^9, 3.915699156188718*^9}, {
   3.915699219535673*^9, 3.915699285872128*^9}, {3.915699353105693*^9, 
   3.915699372395504*^9}, {3.915699764894412*^9, 3.9156999892734327`*^9}},
 CellLabel->"In[73]:=",ExpressionUUID->"907c5da8-7214-4c70-afcb-e19ed56d7c3e"],

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
         FormBox["7",
          TraditionalForm]]}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
          SubsuperscriptBox["g", "s", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             SubsuperscriptBox["R", 
              RowBox[{
               FormBox[
                InterpretationBox[
                 RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
                 SequenceForm["Sfe", 3],
                 Editable->False],
                TraditionalForm], "1"}], 
              OverscriptBox["q", "~"]], " ", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["R", 
                  RowBox[{
                    FormBox[
                    InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                    TraditionalForm], "1"}], 
                  OverscriptBox["q", "~"]], ")"}]},
              "Conjugate"]}], "+", "1"}], ")"}]}], "+", 
         RowBox[{"32", " ", 
          SuperscriptBox["\[Pi]", "2"], " ", 
          SubscriptBox["C", "A"], " ", 
          RowBox[{"Re", "(", 
           SubscriptBox["\[Delta]", "qL"], ")"}]}]}], ")"}]}], "+", 
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
          TraditionalForm]]}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
          SubsuperscriptBox["g", "s", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             SubsuperscriptBox["R", 
              RowBox[{
               FormBox[
                InterpretationBox[
                 RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
                 SequenceForm["Sfe", 3],
                 Editable->False],
                TraditionalForm], "2"}], 
              OverscriptBox["q", "~"]], " ", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["R", 
                  RowBox[{
                    FormBox[
                    InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                    TraditionalForm], "2"}], 
                  OverscriptBox["q", "~"]], ")"}]},
              "Conjugate"]}], "+", "1"}], ")"}]}], "+", 
         RowBox[{"32", " ", 
          SuperscriptBox["\[Pi]", "2"], " ", 
          SubscriptBox["C", "A"], " ", 
          RowBox[{"Re", "(", 
           SubscriptBox["\[Delta]", "qR"], ")"}]}]}], ")"}]}]}], ")"}]}], 
   RowBox[{"32", " ", 
    SuperscriptBox["\[Pi]", "2"]}]], TraditionalForm]], "Output",
 CellChangeTimes->{{3.9156999815617*^9, 3.91569999009326*^9}, 
   3.915856749479766*^9, 3.915873382354526*^9, 3.915873544480334*^9, 
   3.91595023176703*^9, 3.916110394475431*^9, 3.916115558215646*^9, 
   3.916117384584282*^9, 3.916118548663322*^9, 3.9161193388234787`*^9, 
   3.916121585744875*^9, 3.916453220829273*^9, 3.916548231849818*^9, 
   3.916548457203314*^9, 3.9165495678813887`*^9, 3.916549697630238*^9, 
   3.916549798095818*^9, 3.916551535792293*^9, 3.9165516058072453`*^9, 
   3.916552116021331*^9, 3.91667547881787*^9, 3.916676566399488*^9, 
   3.916677049813219*^9},
 CellLabel->"Out[73]=",ExpressionUUID->"6d5780ed-6337-4834-8552-a0a9930fee13"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"ampQuarkSEDivPoleR", " ", "=", " ", 
   RowBox[{"Coefficient", "[", 
    RowBox[{"ampQuarkSEDivPole", ",", " ", 
     RowBox[{
      RowBox[{"DiracGamma", "[", 
       RowBox[{
        RowBox[{"Momentum", "[", 
         RowBox[{"p", ",", " ", "D"}], "]"}], ",", " ", "D"}], "]"}], ".", 
      RowBox[{"DiracGamma", "[", "6", "]"}]}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"ampQuarkSEDivPoleL", " ", "=", " ", 
   RowBox[{"Coefficient", "[", 
    RowBox[{"ampQuarkSEDivPole", ",", " ", 
     RowBox[{
      RowBox[{"DiracGamma", "[", 
       RowBox[{
        RowBox[{"Momentum", "[", 
         RowBox[{"p", ",", " ", "D"}], "]"}], ",", " ", "D"}], "]"}], ".", 
      RowBox[{"DiracGamma", "[", "7", "]"}]}]}], "]"}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.915700084017263*^9, 3.915700161001513*^9}, {
  3.915700206705513*^9, 3.915700305339728*^9}, {3.916675365907069*^9, 
  3.916675367592729*^9}},
 CellLabel->"In[74]:=",ExpressionUUID->"10ca052e-91e5-4f65-8a56-dfa3994d1575"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"ampQuarkSEDivMass", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{"SelectFree2", "[", 
    RowBox[{
     RowBox[{"ampQuarkSEDiv", "[", "3", "]"}], ",", " ", 
     RowBox[{"DiracGamma", "[", 
      RowBox[{
       RowBox[{"Momentum", "[", 
        RowBox[{"p", ",", " ", "D"}], "]"}], ",", " ", "D"}], "]"}]}], 
    "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"ampQuarkSEDivMass", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"SelectFree2", "[", 
      RowBox[{
       RowBox[{"ampQuarkSEDivMass", "[", "0", "]"}], ",", " ", 
       RowBox[{"DiracGamma", "[", 
        RowBox[{"6", "|", "7"}], "]"}]}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"DiracGamma", "[", "6", "]"}], "+", 
       RowBox[{"DiracGamma", "[", "7", "]"}]}], ")"}]}], " ", "+", " ", 
    RowBox[{"SelectNotFree2", "[", 
     RowBox[{
      RowBox[{"ampQuarkSEDivMass", "[", "0", "]"}], ",", " ", 
      RowBox[{"DiracGamma", "[", 
       RowBox[{"6", "|", "7"}], "]"}]}], "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"ampQuarkSEDivMass", "[", "2", "]"}], " ", "=", " ", 
  RowBox[{"Collect2", "[", 
   RowBox[{
    RowBox[{"ampQuarkSEDivMass", "[", "1", "]"}], ",", " ", 
    RowBox[{"DiracGamma", "[", "_", "]"}]}], "]"}]}]}], "Code",
 CellChangeTimes->{{3.915950279742947*^9, 3.915950326948373*^9}, {
  3.916675266461307*^9, 3.91667535717688*^9}, {3.916675392664629*^9, 
  3.916675405693984*^9}, {3.916675457955645*^9, 3.9166754670042543`*^9}},
 CellLabel->"In[76]:=",ExpressionUUID->"a3656621-063f-4e23-80e7-f537481a0938"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    FractionBox["1", 
     RowBox[{"16", " ", 
      SuperscriptBox["\[Pi]", "2"]}]], 
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["6",
      TraditionalForm]], " ", 
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
       RowBox[{"-", "\<\"\[CapitalDelta]\"\>"}], " ", 
       SuperscriptBox["SqrtEGl", "2"], " ", 
       SubsuperscriptBox["C", "A", "2"], " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       SubscriptBox["m", 
        OverscriptBox["g", "~"]], " ", 
       SubsuperscriptBox["R", 
        RowBox[{
         FormBox[
          InterpretationBox[
           RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
           SequenceForm["Sfe", 3],
           Editable->False],
          TraditionalForm], "2"}], 
        OverscriptBox["q", "~"]], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["R", 
            RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
              "1"}], 
            OverscriptBox["q", "~"]], ")"}]},
        "Conjugate"]}], "+", 
      RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
       SuperscriptBox["SqrtEGl", "2"], " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       SubscriptBox["m", 
        OverscriptBox["g", "~"]], " ", 
       SubsuperscriptBox["R", 
        RowBox[{
         FormBox[
          InterpretationBox[
           RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
           SequenceForm["Sfe", 3],
           Editable->False],
          TraditionalForm], "2"}], 
        OverscriptBox["q", "~"]], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["R", 
            RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
              "1"}], 
            OverscriptBox["q", "~"]], ")"}]},
        "Conjugate"]}], "-", 
      RowBox[{"2", " ", "\<\"\[CapitalDelta]\"\>", " ", 
       SubsuperscriptBox["C", "A", "2"], " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       SubscriptBox["m", "q"]}], "+", 
      RowBox[{"8", " ", "\[ImaginaryI]", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["m", "q"], " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", "qL"], ")"}]}], "-", 
      RowBox[{"8", " ", "\[ImaginaryI]", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["m", "q"], " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", "qR"], ")"}]}], "-", 
      RowBox[{"16", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["\[Delta]", "m"]}], "-", 
      RowBox[{"8", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["m", "q"], " ", 
       RowBox[{"Re", "(", 
        SubscriptBox["\[Delta]", "qL"], ")"}]}], "-", 
      RowBox[{"8", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["m", "q"], " ", 
       RowBox[{"Re", "(", 
        SubscriptBox["\[Delta]", "qR"], ")"}]}], "+", 
      RowBox[{"2", " ", "\<\"\[CapitalDelta]\"\>", " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       SubscriptBox["m", "q"]}]}], ")"}]}], "+", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"16", " ", 
      SuperscriptBox["\[Pi]", "2"]}]], 
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["7",
      TraditionalForm]], " ", 
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
       RowBox[{"-", "\<\"\[CapitalDelta]\"\>"}], " ", 
       SubsuperscriptBox["C", "A", "2"], " ", 
       SuperscriptBox[
        RowBox[{"(", 
         TemplateBox[{"SqrtEGl"},
          "Conjugate"], ")"}], "2"], " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       SubscriptBox["m", 
        OverscriptBox["g", "~"]], " ", 
       SubsuperscriptBox["R", 
        RowBox[{
         FormBox[
          InterpretationBox[
           RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
           SequenceForm["Sfe", 3],
           Editable->False],
          TraditionalForm], "1"}], 
        OverscriptBox["q", "~"]], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["R", 
            RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
              "2"}], 
            OverscriptBox["q", "~"]], ")"}]},
        "Conjugate"]}], "+", 
      RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
       SuperscriptBox[
        RowBox[{"(", 
         TemplateBox[{"SqrtEGl"},
          "Conjugate"], ")"}], "2"], " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       SubscriptBox["m", 
        OverscriptBox["g", "~"]], " ", 
       SubsuperscriptBox["R", 
        RowBox[{
         FormBox[
          InterpretationBox[
           RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
           SequenceForm["Sfe", 3],
           Editable->False],
          TraditionalForm], "1"}], 
        OverscriptBox["q", "~"]], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["R", 
            RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
              "2"}], 
            OverscriptBox["q", "~"]], ")"}]},
        "Conjugate"]}], "-", 
      RowBox[{"2", " ", "\<\"\[CapitalDelta]\"\>", " ", 
       SubsuperscriptBox["C", "A", "2"], " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       SubscriptBox["m", "q"]}], "-", 
      RowBox[{"8", " ", "\[ImaginaryI]", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["m", "q"], " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", "qL"], ")"}]}], "+", 
      RowBox[{"8", " ", "\[ImaginaryI]", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["m", "q"], " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", "qR"], ")"}]}], "-", 
      RowBox[{"16", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["\[Delta]", "m"]}], "-", 
      RowBox[{"8", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["m", "q"], " ", 
       RowBox[{"Re", "(", 
        SubscriptBox["\[Delta]", "qL"], ")"}]}], "-", 
      RowBox[{"8", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       SubscriptBox["C", "A"], " ", 
       SubscriptBox["m", "q"], " ", 
       RowBox[{"Re", "(", 
        SubscriptBox["\[Delta]", "qR"], ")"}]}], "+", 
      RowBox[{"2", " ", "\<\"\[CapitalDelta]\"\>", " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       SubscriptBox["m", "q"]}]}], ")"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.915950321279469*^9, 3.915950327395687*^9}, 
   3.916110394652676*^9, 3.916115558358334*^9, 3.9161173847477913`*^9, 
   3.91611854881567*^9, 3.916119338973131*^9, 3.916121585811914*^9, 
   3.916453220864006*^9, 3.9165482319028378`*^9, 3.916548457256239*^9, 
   3.916549567932994*^9, 3.9165496977493067`*^9, 3.916549798141158*^9, 
   3.916551535837612*^9, 3.91655160586073*^9, 3.916552116090687*^9, {
   3.916675357774271*^9, 3.916675408477003*^9}, 3.91667547888284*^9, 
   3.916676566883407*^9, 3.916677049873728*^9},
 CellLabel->"Out[78]=",ExpressionUUID->"9c6d1a4d-de51-4920-a47f-518ec12c1584"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"solL", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{"ampQuarkSEDivPoleL", "==", "0"}], ",", " ", 
        RowBox[{"Re", "[", "dQL", "]"}]}], "]"}], " ", "//", "\n", "\t", 
      "Flatten"}], " ", "//", " ", 
     RowBox[{
      RowBox[{"ReplaceAll", "[", 
       RowBox[{"#", ",", 
        RowBox[{
         RowBox[{"Rule", "[", 
          RowBox[{"a_", ",", "b_"}], "]"}], ":>", 
         RowBox[{"Rule", "[", 
          RowBox[{"a", ",", 
           RowBox[{"SUNSimplify", "[", "b", "]"}]}], "]"}]}]}], "]"}], 
      "&"}]}], " ", "//", "\n", "\t", 
    RowBox[{
     RowBox[{"ReplaceAll", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}], "^", "2"}], " ", "->", " ", 
        RowBox[{"4", "Pi", " ", 
         RowBox[{"SMP", "[", "\"\<alpha_s\>\"", "]"}]}]}]}], "]"}], "&"}]}]}],
   ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"solR", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"Solve", "[", 
       RowBox[{
        RowBox[{"ampQuarkSEDivPoleR", "==", "0"}], ",", " ", 
        RowBox[{"Re", "[", "dQR", "]"}]}], "]"}], " ", "//", "\n", "\t", 
      "Flatten"}], " ", "//", " ", 
     RowBox[{
      RowBox[{"ReplaceAll", "[", 
       RowBox[{"#", ",", 
        RowBox[{
         RowBox[{"Rule", "[", 
          RowBox[{"a_", ",", "b_"}], "]"}], ":>", 
         RowBox[{"Rule", "[", 
          RowBox[{"a", ",", 
           RowBox[{"SUNSimplify", "[", "b", "]"}]}], "]"}]}]}], "]"}], 
      "&"}]}], " ", "//", "\n", "\t", 
    RowBox[{
     RowBox[{"ReplaceAll", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}], "^", "2"}], " ", "->", " ", 
        RowBox[{"4", "Pi", " ", 
         RowBox[{"SMP", "[", "\"\<alpha_s\>\"", "]"}]}]}]}], "]"}], "&"}]}]}],
   ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"solm", "[", "1", "]"}], " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"Solve", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            StyleBox[
             RowBox[{
              RowBox[{"ampQuarkSEDivMass", "[", "2", "]"}], "/.", 
              RowBox[{"solL", "[", "1", "]"}]}], "Code"], 
            StyleBox["/.", "Code"], 
            RowBox[{
             StyleBox["solR", "Code"], 
             StyleBox["[", "Code"], 
             StyleBox["1", "Code"], "]"}]}], ")"}], " ", "==", " ", "0"}], 
         ",", " ", "dm"}], "]"}], " ", "//", "\n", "\t", "Flatten"}], " ", "//",
       " ", 
      RowBox[{
       RowBox[{"ReplaceAll", "[", 
        RowBox[{"#", ",", 
         RowBox[{
          RowBox[{"Rule", "[", 
           RowBox[{"a_", ",", "b_"}], "]"}], ":>", 
          RowBox[{"Rule", "[", 
           RowBox[{"a", ",", 
            RowBox[{"SUNSimplify", "[", "b", "]"}]}], "]"}]}]}], "]"}], 
       "&"}]}], " ", "//", "\n", "\t", 
     RowBox[{
      RowBox[{"ReplaceAll", "[", 
       RowBox[{"#", ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}], "^", "2"}], " ", "->", 
         " ", 
         RowBox[{"4", "Pi", " ", 
          RowBox[{"SMP", "[", "\"\<alpha_s\>\"", "]"}]}]}]}], "]"}], 
      "&"}]}]}], ";"}], "\n"}], "\n", 
 RowBox[{"solQMSbar", " ", "=", " ", 
  RowBox[{
   RowBox[{"Join", "[", 
    RowBox[{
     RowBox[{"solL", "[", "1", "]"}], ",", " ", 
     RowBox[{"solR", "[", "1", "]"}], ",", " ", 
     RowBox[{"solm", "[", "1", "]"}]}], "]"}], " ", "//", " ", 
   "Simplify"}]}], "\n", 
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"solQMSbar1", " ", "=", " ", 
    RowBox[{
     RowBox[{"Join", "[", 
      RowBox[{
       RowBox[{"solL", "[", "1", "]"}], ",", " ", 
       RowBox[{"solR", "[", "1", "]"}]}], "]"}], " ", "//", " ", 
     "Simplify"}]}], "*)"}]}]}], "Code",
 CellChangeTimes->{{3.914576085071594*^9, 3.914576271429175*^9}, 
   3.914576362715526*^9, {3.915606889295372*^9, 3.9156069439428387`*^9}, {
   3.915607020810649*^9, 3.915607040957179*^9}, {3.915607101455134*^9, 
   3.9156073419584303`*^9}, {3.915607391068959*^9, 3.915607474856219*^9}, {
   3.91560770658748*^9, 3.9156077492295847`*^9}, 3.915607784870926*^9, {
   3.91561056342134*^9, 3.915610581246805*^9}, {3.9156106656814823`*^9, 
   3.915610759894559*^9}, {3.915630943212435*^9, 3.915631039526663*^9}, {
   3.915635446542345*^9, 3.915635458343183*^9}, {3.915635582748584*^9, 
   3.915635613127037*^9}, {3.915635662701167*^9, 3.9156357990640373`*^9}, {
   3.915640786314447*^9, 3.915640811106774*^9}, {3.915641187725995*^9, 
   3.915641192254242*^9}, {3.915641716581132*^9, 3.915641773181531*^9}, {
   3.915682195508872*^9, 3.9156821958693523`*^9}, {3.915685366318378*^9, 
   3.915685383898263*^9}, {3.915688576566821*^9, 3.915688714577341*^9}, {
   3.91568877734212*^9, 3.915688812015645*^9}, {3.915689323534189*^9, 
   3.91568932853456*^9}, {3.9157000170855007`*^9, 3.915700060556443*^9}, {
   3.915700318321312*^9, 3.915700322508253*^9}, {3.915857732684013*^9, 
   3.915857844272493*^9}, {3.916548240927082*^9, 3.916548368932444*^9}, {
   3.9165484711207047`*^9, 3.916548501764308*^9}, {3.916675444896606*^9, 
   3.916675445747697*^9}, {3.9166754774079933`*^9, 3.9166755670270844`*^9}},
 CellLabel->"In[79]:=",ExpressionUUID->"cada339f-0f42-455e-bcff-a191a7599925"],

Cell[BoxData[
 FormBox[
  RowBox[{"{", 
   RowBox[{
    RowBox[{
     RowBox[{"Re", "(", 
      SubscriptBox["\[Delta]", "qL"], ")"}], "\[Rule]", 
     RowBox[{"-", 
      FractionBox[
       RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
        SubscriptBox["C", "F"], " ", 
        SubscriptBox["\[Alpha]", "s"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "1"}], 
            OverscriptBox["q", "~"]], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "1"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"]}], "+", "1"}], ")"}]}], 
       RowBox[{"4", " ", "\[Pi]"}]]}]}], ",", 
    RowBox[{
     RowBox[{"Re", "(", 
      SubscriptBox["\[Delta]", "qR"], ")"}], "\[Rule]", 
     RowBox[{"-", 
      FractionBox[
       RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
        SubscriptBox["C", "F"], " ", 
        SubscriptBox["\[Alpha]", "s"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "2"}], 
            OverscriptBox["q", "~"]], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "2"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"]}], "+", "1"}], ")"}]}], 
       RowBox[{"4", " ", "\[Pi]"}]]}]}]}], "}"}], TraditionalForm]], "Output",\

 CellChangeTimes->{3.91667562676987*^9, 3.916676567061646*^9, 
  3.916677049921382*^9},
 CellLabel->"Out[82]=",ExpressionUUID->"d0321e07-fdc3-46ec-a012-82d50e1f626b"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"ampQuarkSEDivMass", "[", "2", "]"}], "/.", 
    RowBox[{"solL", "[", "1", "]"}]}], "/.", 
   RowBox[{"solR", "[", "1", "]"}]}], " ", "//", " ", "Simplify"}]], "Code",
 CellChangeTimes->{{3.916675574815117*^9, 3.916675584930086*^9}},
 CellLabel->"In[83]:=",ExpressionUUID->"01961dc9-3470-4ebb-9414-756f6f1e09ed"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{"16", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], 
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
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", "\[Pi]", " ", "\<\"\[CapitalDelta]\"\>", " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["C", "F"], " ", 
         SubscriptBox["m", "q"], " ", 
         SubscriptBox["\[Alpha]", "s"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["R", 
             RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
                SequenceForm["Sfe", 3],
                Editable->False],
               TraditionalForm], "1"}], 
             OverscriptBox["q", "~"]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["R", 
                 RowBox[{
                   FormBox[
                    InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                    TraditionalForm], "1"}], 
                 OverscriptBox["q", "~"]], ")"}]},
             "Conjugate"]}], "+", "1"}], ")"}]}], "+", 
        RowBox[{"2", " ", "\[Pi]", " ", "\<\"\[CapitalDelta]\"\>", " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["C", "F"], " ", 
         SubscriptBox["m", "q"], " ", 
         SubscriptBox["\[Alpha]", "s"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["R", 
             RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
                SequenceForm["Sfe", 3],
                Editable->False],
               TraditionalForm], "2"}], 
             OverscriptBox["q", "~"]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["R", 
                 RowBox[{
                   FormBox[
                    InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                    TraditionalForm], "2"}], 
                 OverscriptBox["q", "~"]], ")"}]},
             "Conjugate"]}], "+", "1"}], ")"}]}], "-", 
        RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
         SuperscriptBox["SqrtEGl", "2"], " ", 
         SubsuperscriptBox["C", "A", "2"], " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         SubscriptBox["m", 
          OverscriptBox["g", "~"]], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "2"}], 
          OverscriptBox["q", "~"]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "1"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
         SuperscriptBox["SqrtEGl", "2"], " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         SubscriptBox["m", 
          OverscriptBox["g", "~"]], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "2"}], 
          OverscriptBox["q", "~"]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "1"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"]}], "-", 
        RowBox[{"2", " ", "\<\"\[CapitalDelta]\"\>", " ", 
         SubsuperscriptBox["C", "A", "2"], " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         SubscriptBox["m", "q"]}], "+", 
        RowBox[{"8", " ", "\[ImaginaryI]", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["m", "q"], " ", 
         RowBox[{"Im", "(", 
          SubscriptBox["\[Delta]", "qL"], ")"}]}], "-", 
        RowBox[{"8", " ", "\[ImaginaryI]", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["m", "q"], " ", 
         RowBox[{"Im", "(", 
          SubscriptBox["\[Delta]", "qR"], ")"}]}], "-", 
        RowBox[{"16", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["\[Delta]", "m"]}], "+", 
        RowBox[{"2", " ", "\<\"\[CapitalDelta]\"\>", " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         SubscriptBox["m", "q"]}]}], ")"}]}], "+", 
     RowBox[{
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", "\[Pi]", " ", "\<\"\[CapitalDelta]\"\>", " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["C", "F"], " ", 
         SubscriptBox["m", "q"], " ", 
         SubscriptBox["\[Alpha]", "s"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["R", 
             RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
                SequenceForm["Sfe", 3],
                Editable->False],
               TraditionalForm], "1"}], 
             OverscriptBox["q", "~"]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["R", 
                 RowBox[{
                   FormBox[
                    InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                    TraditionalForm], "1"}], 
                 OverscriptBox["q", "~"]], ")"}]},
             "Conjugate"]}], "+", "1"}], ")"}]}], "+", 
        RowBox[{"2", " ", "\[Pi]", " ", "\<\"\[CapitalDelta]\"\>", " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["C", "F"], " ", 
         SubscriptBox["m", "q"], " ", 
         SubscriptBox["\[Alpha]", "s"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["R", 
             RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
                SequenceForm["Sfe", 3],
                Editable->False],
               TraditionalForm], "2"}], 
             OverscriptBox["q", "~"]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["R", 
                 RowBox[{
                   FormBox[
                    InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                    TraditionalForm], "2"}], 
                 OverscriptBox["q", "~"]], ")"}]},
             "Conjugate"]}], "+", "1"}], ")"}]}], "-", 
        RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
         SubsuperscriptBox["C", "A", "2"], " ", 
         SuperscriptBox[
          RowBox[{"(", 
           TemplateBox[{"SqrtEGl"},
            "Conjugate"], ")"}], "2"], " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         SubscriptBox["m", 
          OverscriptBox["g", "~"]], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "1"}], 
          OverscriptBox["q", "~"]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "2"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
         SuperscriptBox[
          RowBox[{"(", 
           TemplateBox[{"SqrtEGl"},
            "Conjugate"], ")"}], "2"], " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         SubscriptBox["m", 
          OverscriptBox["g", "~"]], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "1"}], 
          OverscriptBox["q", "~"]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "2"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"]}], "-", 
        RowBox[{"2", " ", "\<\"\[CapitalDelta]\"\>", " ", 
         SubsuperscriptBox["C", "A", "2"], " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         SubscriptBox["m", "q"]}], "-", 
        RowBox[{"8", " ", "\[ImaginaryI]", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["m", "q"], " ", 
         RowBox[{"Im", "(", 
          SubscriptBox["\[Delta]", "qL"], ")"}]}], "+", 
        RowBox[{"8", " ", "\[ImaginaryI]", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["m", "q"], " ", 
         RowBox[{"Im", "(", 
          SubscriptBox["\[Delta]", "qR"], ")"}]}], "-", 
        RowBox[{"16", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["\[Delta]", "m"]}], "+", 
        RowBox[{"2", " ", "\<\"\[CapitalDelta]\"\>", " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         SubscriptBox["m", "q"]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.916548352443927*^9, 3.916548366930407*^9}, {
   3.916548457296846*^9, 3.916548482038422*^9}, 3.916548635433889*^9, 
   3.916549568083508*^9, 3.916549697908222*^9, 3.916549798277837*^9, 
   3.916551535979733*^9, 3.916551605999597*^9, 3.916552116230891*^9, 
   3.9166754789323883`*^9, {3.91667551991276*^9, 3.916675585357807*^9}, 
   3.916676567191787*^9, 3.916677050039008*^9},
 CellLabel->"Out[83]=",ExpressionUUID->"6865f562-473a-49d2-ae0b-07aa829a53ae"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"ampQuarkSEDiv", "[", "3", "]"}], " ", "//", " ", 
   RowBox[{
    RowBox[{"SelectFree2", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"DiracGamma", "[", 
       RowBox[{
        RowBox[{"Momentum", "[", "__", "]"}], ",", " ", "_"}], "]"}]}], "]"}],
     "&"}]}], " ", "//", " ", "Simplify"}]], "Code",
 CellChangeTimes->{{3.915688734306319*^9, 3.915688753074938*^9}, {
  3.9156891465801067`*^9, 3.915689286336151*^9}, {3.915700341416473*^9, 
  3.915700424244513*^9}, {3.915700482439708*^9, 3.915700525007253*^9}, {
  3.915857854291227*^9, 3.915857913552359*^9}, {3.915857967497065*^9, 
  3.915857969447301*^9}, {3.915858692593075*^9, 3.915858709477475*^9}},
 CellLabel->"In[84]:=",ExpressionUUID->"9daa838c-bb6b-4d9d-a7c7-aee15e3f5dd4"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{"16", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], 
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
      RowBox[{"-", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]]}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
         SuperscriptBox["SqrtEGl", "2"], " ", 
         SubsuperscriptBox["C", "A", "2"], " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         SubscriptBox["m", 
          OverscriptBox["g", "~"]], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "2"}], 
          OverscriptBox["q", "~"]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "1"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"]}], "-", 
        RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
         SuperscriptBox["SqrtEGl", "2"], " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         SubscriptBox["m", 
          OverscriptBox["g", "~"]], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "2"}], 
          OverscriptBox["q", "~"]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "1"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"]}], "-", 
        RowBox[{"8", " ", "\[ImaginaryI]", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["m", "q"], " ", 
         RowBox[{"Im", "(", 
          SubscriptBox["\[Delta]", "qL"], ")"}]}], "+", 
        RowBox[{"8", " ", "\[ImaginaryI]", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["m", "q"], " ", 
         RowBox[{"Im", "(", 
          SubscriptBox["\[Delta]", "qR"], ")"}]}], "+", 
        RowBox[{"16", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["\[Delta]", "m"]}], "+", 
        RowBox[{"8", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["m", "q"], " ", 
         RowBox[{"Re", "(", 
          SubscriptBox["\[Delta]", "qL"], ")"}]}], "+", 
        RowBox[{"8", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["m", "q"], " ", 
         RowBox[{"Re", "(", 
          SubscriptBox["\[Delta]", "qR"], ")"}]}]}], ")"}]}], "-", 
     RowBox[{
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
         SubsuperscriptBox["C", "A", "2"], " ", 
         SuperscriptBox[
          RowBox[{"(", 
           TemplateBox[{"SqrtEGl"},
            "Conjugate"], ")"}], "2"], " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         SubscriptBox["m", 
          OverscriptBox["g", "~"]], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "1"}], 
          OverscriptBox["q", "~"]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "2"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"]}], "-", 
        RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
         SuperscriptBox[
          RowBox[{"(", 
           TemplateBox[{"SqrtEGl"},
            "Conjugate"], ")"}], "2"], " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         SubscriptBox["m", 
          OverscriptBox["g", "~"]], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "1"}], 
          OverscriptBox["q", "~"]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "2"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{"8", " ", "\[ImaginaryI]", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["m", "q"], " ", 
         RowBox[{"Im", "(", 
          SubscriptBox["\[Delta]", "qL"], ")"}]}], "-", 
        RowBox[{"8", " ", "\[ImaginaryI]", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["m", "q"], " ", 
         RowBox[{"Im", "(", 
          SubscriptBox["\[Delta]", "qR"], ")"}]}], "+", 
        RowBox[{"16", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["\[Delta]", "m"]}], "+", 
        RowBox[{"8", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["m", "q"], " ", 
         RowBox[{"Re", "(", 
          SubscriptBox["\[Delta]", "qL"], ")"}]}], "+", 
        RowBox[{"8", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["m", "q"], " ", 
         RowBox[{"Re", "(", 
          SubscriptBox["\[Delta]", "qR"], ")"}]}]}], ")"}]}], "-", 
     RowBox[{"2", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      RowBox[{"(", 
       RowBox[{
        SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
      SubsuperscriptBox["g", "s", "2"], " ", 
      SubscriptBox["m", "q"]}]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.915688757816604*^9, {3.915689138692966*^9, 3.915689221800954*^9}, {
   3.915689261218237*^9, 3.915689287029525*^9}, 3.915689334830427*^9, 
   3.91570043000041*^9, 3.915700525662709*^9, 3.9158567497367563`*^9, 
   3.915857858701914*^9, {3.915857905169881*^9, 3.91585791417981*^9}, 
   3.915857969698925*^9, 3.915873382536457*^9, 3.915873544696945*^9, 
   3.916110394846473*^9, 3.916115558649684*^9, 3.916117385005475*^9, 
   3.91611854911483*^9, 3.916119339228056*^9, 3.916121585954502*^9, 
   3.916453220930935*^9, 3.916548232007621*^9, 3.916548457438724*^9, 
   3.916549568117293*^9, 3.916549697993742*^9, 3.916549798359682*^9, 
   3.916551536059284*^9, 3.916551606079653*^9, 3.9165521163251543`*^9, 
   3.9166754790175257`*^9, 3.916676567268134*^9, 3.91667705011427*^9},
 CellLabel->"Out[84]=",ExpressionUUID->"5cdbe384-a984-4812-b65b-3b5d43658cf8"]
}, Open  ]]
}, Closed]],

Cell[CellGroupData[{

Cell["Gluon self-energy", "Subsection",
 CellChangeTimes->{{3.914575682808432*^9, 3.914575687573115*^9}, {
  3.916549591468264*^9, 
  3.916549594378117*^9}},ExpressionUUID->"f328c725-2ea0-4d5a-9c3b-\
c07a7c864039"],

Cell["Some text", "Text",
 CellChangeTimes->{{3.914575689930893*^9, 
  3.914575693724884*^9}},ExpressionUUID->"11d286f0-3f3b-49fb-8c28-\
826f34ff5975"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"ampGlSE", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"2", "Nf", " ", 
      RowBox[{
       RowBox[{"ampGlSE", "[", "0", "]"}], "[", 
       RowBox[{"[", "1", "]"}], "]"}]}], " ", "+", " ", 
     RowBox[{
      RowBox[{"ampGlSE", "[", "0", "]"}], "[", 
      RowBox[{"[", "3", "]"}], "]"}], " ", "+", " ", 
     RowBox[{"Nf", "  ", 
      RowBox[{
       RowBox[{"ampGlSE", "[", "0", "]"}], "[", 
       RowBox[{"[", "4", "]"}], "]"}]}], " ", "+", " ", 
     RowBox[{
      RowBox[{"ampGlSE", "[", "0", "]"}], "[", 
      RowBox[{"[", "6", "]"}], "]"}], " ", "+", " ", 
     RowBox[{"2", "Nf", " ", 
      RowBox[{
       RowBox[{"ampGlSE", "[", "0", "]"}], "[", 
       RowBox[{"[", "7", "]"}], "]"}]}], "  ", "+", " ", 
     RowBox[{"Total", "[", 
      RowBox[{
       RowBox[{"ampGlSE", "[", "0", "]"}], "[", 
       RowBox[{"[", 
        RowBox[{"9", ";;"}], "]"}], "]"}], "]"}]}], " ", "//", "\n", "   \t", 
    
    RowBox[{
     RowBox[{"ReplaceAll", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{
        RowBox[{"MQU", "[", "arg_", "]"}], " ", "->", " ", 
        RowBox[{"SMP", "[", "\"\<m_q\>\"", "]"}]}]}], "]"}], " ", "&"}]}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"ampGlSE", "[", "2", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"ampGlSE", "[", "1", "]"}], " ", "//", " ", "DiracSimplify"}], 
      " ", "//", "\n", "     \t", "SUNSimplify"}], " ", "//", " ", 
     "DiracSimplify"}], " ", "//", "\n", "   \t", 
    RowBox[{
     RowBox[{"TID", "[", 
      RowBox[{"#", ",", " ", "q", ",", " ", 
       RowBox[{"UsePaVeBasis", " ", "->", " ", "True"}], ",", " ", 
       RowBox[{"ToPaVe", " ", "->", " ", "True"}]}], "]"}], " ", "&"}]}]}], 
  ";"}]}], "Input",
 InitializationCell->True,
 CellChangeTimes->{
  3.916676596955359*^9, {3.9166768207204533`*^9, 3.916676838950162*^9}, {
   3.916676880585552*^9, 3.916676998882638*^9}, {3.916677104302849*^9, 
   3.9166771090780783`*^9}},
 CellLabel->"In[85]:=",ExpressionUUID->"ff87d62e-a283-4665-b81b-a59840f7dace"],

Cell["Discard all the finite pieces of the 1-loop amplitude.", "Text",
 CellChangeTimes->{{3.914575760905298*^9, 
  3.914575773152245*^9}},ExpressionUUID->"44ca28b9-5698-4efc-b5d4-\
a956587dcbec"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"ampGlSEDiv", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"ampGlSE", "[", "2", "]"}], " ", "//", " ", 
     RowBox[{
      RowBox[{"PaVeUVPart", "[", "#", "]"}], "&"}]}], " ", "//", " ", 
    RowBox[{
     RowBox[{"ReplaceRepeated", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{
        RowBox[{"SqrtEGl", " ", 
         RowBox[{"SqrtEGl", "\[Conjugate]"}]}], "->", "1"}]}], "]"}], 
     "&"}]}]}], ";"}]], "Code",
 CellChangeTimes->{{3.914575774640349*^9, 3.914575814619986*^9}, 
   3.9145763206515303`*^9, {3.915606002058123*^9, 3.915606011436789*^9}, 
   3.915606089963867*^9, {3.915607855432483*^9, 3.915607866126801*^9}, {
   3.915630725612297*^9, 3.915630730683013*^9}, {3.9156988776187773`*^9, 
   3.915698942658197*^9}, {3.9165497378811827`*^9, 3.9165497417945433`*^9}, {
   3.916676224556014*^9, 3.916676224659017*^9}},
 CellLabel->"In[87]:=",ExpressionUUID->"4c4f9408-71a2-4ba5-bc7e-5106b71ca576"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampGlSEDiv", "[", "1", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"FCReplaceD", "[", 
       RowBox[{
        RowBox[{"ampGlSEDiv", "[", "0", "]"}], ",", " ", 
        RowBox[{"D", "->", 
         RowBox[{"4", "-", 
          RowBox[{"2", "Epsilon"}]}]}]}], "]"}], " ", "//", "\n", "\t", 
      RowBox[{
       RowBox[{"Series", "[", 
        RowBox[{"#", ",", 
         RowBox[{"{", 
          RowBox[{"Epsilon", ",", "0", ",", "0"}], "}"}]}], "]"}], "&"}]}], 
     " ", "//", "\n", "\t", "Normal"}], " ", "//", " ", "FCHideEpsilon"}], 
   " ", "//", " ", "Simplify"}]}]], "Code",
 CellChangeTimes->{{3.914575819158785*^9, 3.9145758830227823`*^9}, 
   3.91457632775228*^9, {3.914576588185513*^9, 3.914576592494037*^9}, {
   3.9145766284047728`*^9, 3.914576628541034*^9}, {3.915604753444929*^9, 
   3.915604757502358*^9}, {3.915604804794796*^9, 3.915604848440514*^9}, {
   3.915607664370339*^9, 3.915607672293354*^9}, {3.915607817456128*^9, 
   3.915607818877862*^9}, {3.915630518326273*^9, 3.915630648351819*^9}, {
   3.915630733481065*^9, 3.915630750994009*^9}, {3.915635001334855*^9, 
   3.91563501175825*^9}, {3.915635050127429*^9, 3.915635067642909*^9}, {
   3.9156888437255077`*^9, 3.915688844728621*^9}, 3.915698954706225*^9, {
   3.916549745222455*^9, 3.91654974935962*^9}},
 CellLabel->"In[88]:=",ExpressionUUID->"86931454-35a8-4ca4-a11f-35955befc8bd"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], 
   RowBox[{
    SuperscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Glu1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Glu2",
        TraditionalForm],
       TraditionalForm]}]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
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
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox[
           FormBox[
            FormBox["p",
             TraditionalForm],
            TraditionalForm], "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             SubsuperscriptBox["g", "s", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"3", " ", "\<\"\[CapitalDelta]\"\>", " ", 
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["C", "A"], "-", 
                  SubscriptBox["N", "f"]}], ")"}]}], "+", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"4", "+", 
                  RowBox[{"3", " ", 
                   TagBox["\[DoubledGamma]",
                    Function[{}, EulerGamma]]}], "-", 
                  RowBox[{"3", " ", 
                   RowBox[{"log", "(", 
                    RowBox[{"4", " ", "\[Pi]"}], ")"}]}]}], ")"}], " ", 
                SubscriptBox["C", "A"]}], "+", 
               RowBox[{"3", " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"log", "(", 
                   RowBox[{"4", " ", "\[Pi]"}], ")"}], "-", 
                  TagBox["\[DoubledGamma]",
                   Function[{}, EulerGamma]]}], ")"}], " ", 
                SubscriptBox["N", "f"]}]}], ")"}]}], "-", 
            RowBox[{"48", " ", 
             SuperscriptBox["\[Pi]", "2"], " ", 
             SubscriptBox["Z", "g"]}]}], ")"}]}], "-", 
         RowBox[{"4", " ", 
          SubsuperscriptBox["g", "s", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             RowBox[{
              SubscriptBox["N", "f"], " ", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], 
                FormBox[
                 InterpretationBox[
                  RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
                  SequenceForm["Sfe", 3],
                  Editable->False],
                 TraditionalForm]], "2"]}]}], "+", 
            RowBox[{
             SubscriptBox["C", "A"], " ", 
             SubsuperscriptBox["m", 
              OverscriptBox["g", "~"], "2"]}], "+", 
            RowBox[{
             SubscriptBox["N", "f"], " ", 
             SubsuperscriptBox["m", "q", "2"]}]}], ")"}]}]}], ")"}]}], "+", 
      RowBox[{"3", " ", 
       SuperscriptBox[
        FormBox[
         FormBox["p",
          TraditionalForm],
         TraditionalForm], 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], " ", 
       SuperscriptBox[
        FormBox[
         FormBox["p",
          TraditionalForm],
         TraditionalForm], 
        FormBox[
         FormBox["\[Nu]",
          TraditionalForm],
         TraditionalForm]], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["g", "s", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
             RowBox[{"(", 
              RowBox[{
               SubscriptBox["N", "f"], "-", 
               SubscriptBox["C", "A"]}], ")"}]}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"-", "2"}], "-", 
               TagBox["\[DoubledGamma]",
                Function[{}, EulerGamma]], "+", 
               RowBox[{"log", "(", 
                RowBox[{"4", " ", "\[Pi]"}], ")"}]}], ")"}], " ", 
             SubscriptBox["C", "A"]}], "+", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               TagBox["\[DoubledGamma]",
                Function[{}, EulerGamma]], "-", 
               RowBox[{"log", "(", 
                RowBox[{"4", " ", "\[Pi]"}], ")"}]}], ")"}], " ", 
             SubscriptBox["N", "f"]}]}], ")"}]}], "+", 
         RowBox[{"16", " ", 
          SuperscriptBox["\[Pi]", "2"], " ", 
          SubscriptBox["Z", "g"]}]}], ")"}]}]}], ")"}]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.9145763089487762`*^9, 3.914576524893687*^9, 3.914576560822183*^9, 
   3.914576592877271*^9, 3.914576628788353*^9, 3.914577023806427*^9, 
   3.915604271832077*^9, 3.915604363053198*^9, {3.915604791892349*^9, 
   3.9156048491966877`*^9}, 3.915605243741829*^9, 3.915606036321088*^9, 
   3.915606091885535*^9, 3.915607693470969*^9, {3.915607800989823*^9, 
   3.915607819635921*^9}, 3.915607885091791*^9, 3.915611630915097*^9, 
   3.915613373813459*^9, {3.915630539730825*^9, 3.915630562541526*^9}, 
   3.9156305961001663`*^9, 3.915630649258675*^9, 3.915631224925931*^9, 
   3.915631683397818*^9, {3.91563513182788*^9, 3.915635161360054*^9}, 
   3.915635228966044*^9, 3.915635564321303*^9, 3.915682313757621*^9, 
   3.915688077366988*^9, 3.91568821576319*^9, 3.915688845784453*^9, 
   3.915698946003491*^9, 3.9158567485002604`*^9, 3.915873382161669*^9, 
   3.915873543616456*^9, 3.916110391635963*^9, 3.916115555626338*^9, 
   3.916117381860962*^9, 3.916118545987059*^9, 3.916119336042478*^9, 
   3.916121583300811*^9, 3.916453220067354*^9, 3.916548231149033*^9, 
   3.9165484566364803`*^9, 3.91654969816007*^9, 3.916549799794087*^9, 
   3.916549926997912*^9, 3.916551537529767*^9, 3.9165516075362*^9, 
   3.916552117841484*^9, 3.916675480484765*^9, 3.916676311469233*^9, 
   3.916676568544593*^9, {3.916677029087372*^9, 3.916677051209179*^9}},
 CellLabel->"Out[88]=",ExpressionUUID->"94e53151-5c10-4ea3-8428-3e1ffbbafb73"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampGlSEDiv", "[", "2", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"ampGlSEDiv", "[", "1", "]"}], " ", "//", "\n", "\t", 
       RowBox[{
        RowBox[{"ReplaceRepeated", "[", 
         RowBox[{"#", ",", 
          RowBox[{"{", "\n", "\t\t", 
           RowBox[{"ZGl", " ", "->", " ", 
            RowBox[{"1", " ", "+", " ", 
             RowBox[{"alpha", " ", "dGl"}]}]}], "}"}]}], "\n", "\t", "]"}], 
        "&"}]}], " ", "//", "\n", "\t", 
      RowBox[{
       RowBox[{"Series", "[", 
        RowBox[{"#", ",", 
         RowBox[{"{", 
          RowBox[{"alpha", ",", "0", ",", "1"}], "}"}]}], "]"}], "&"}]}], " ",
      "//", "\n", "\t", "Normal"}], " ", "//", " ", 
    RowBox[{
     RowBox[{"ReplaceAll", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{"alpha", "->", "1"}]}], "]"}], "&"}]}], " ", "//", "\n", "\t", 
   
   RowBox[{
    RowBox[{"SelectNotFree2", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"SMP", "[", "\"\<Delta\>\"", "]"}], ",", " ", "dGl"}], "]"}], 
    "&"}]}]}]], "Code",
 CellChangeTimes->{{3.91457588791752*^9, 3.914576033332181*^9}, 
   3.914576339848319*^9, {3.915605027550218*^9, 3.915605062139845*^9}, {
   3.915605126283597*^9, 3.915605159187806*^9}, {3.91563075756826*^9, 
   3.9156308141664877`*^9}, {3.915635242691201*^9, 3.915635305198457*^9}, {
   3.915635424253512*^9, 3.915635429392536*^9}, {3.915635471481731*^9, 
   3.915635526529984*^9}, {3.915682070530323*^9, 3.915682159733402*^9}, {
   3.9159501202726173`*^9, 3.9159501621386137`*^9}, {3.916549975488533*^9, 
   3.916550019223268*^9}, {3.9165501040853148`*^9, 3.9165501322365103`*^9}},
 CellLabel->"In[89]:=",ExpressionUUID->"70231125-bf2a-4242-8b14-1a4418271719"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     SuperscriptBox[
      FormBox[
       FormBox["p",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["\[Mu]",
        TraditionalForm],
       TraditionalForm]], " ", 
     SuperscriptBox[
      FormBox[
       FormBox["p",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["\[Nu]",
        TraditionalForm],
       TraditionalForm]], " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["N", "f"], "-", 
       SubscriptBox["C", "A"]}], ")"}]}], 
    RowBox[{"16", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "+", 
   FractionBox[
    RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox[
      FormBox[
       FormBox["p",
        TraditionalForm],
       TraditionalForm], "2"], " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["C", "A"], "-", 
       SubscriptBox["N", "f"]}], ")"}]}], 
    RowBox[{"16", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "+", 
   RowBox[{
    SubscriptBox["\[Delta]", "g"], " ", 
    SuperscriptBox[
     FormBox[
      FormBox["p",
       TraditionalForm],
      TraditionalForm], 
     FormBox[
      FormBox["\[Mu]",
       TraditionalForm],
      TraditionalForm]], " ", 
    SuperscriptBox[
     FormBox[
      FormBox["p",
       TraditionalForm],
      TraditionalForm], 
     FormBox[
      FormBox["\[Nu]",
       TraditionalForm],
      TraditionalForm]], " ", 
    SuperscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Glu1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Glu2",
        TraditionalForm],
       TraditionalForm]}]]}], "-", 
   RowBox[{
    SuperscriptBox[
     FormBox[
      FormBox["p",
       TraditionalForm],
      TraditionalForm], "2"], " ", 
    SubscriptBox["\[Delta]", "g"], " ", 
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
    SuperscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Glu1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Glu2",
        TraditionalForm],
       TraditionalForm]}]]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.914576309000933*^9, {3.914576526971516*^9, 3.914576560864656*^9}, 
   3.914577028874678*^9, 3.915604271898407*^9, 3.9156043794272947`*^9, 
   3.915604792045149*^9, 3.915604862008191*^9, {3.915605058421609*^9, 
   3.915605062622292*^9}, 3.91560524377412*^9, 3.91560603754948*^9, 
   3.915606092767136*^9, 3.915607694876915*^9, {3.9156078017952337`*^9, 
   3.915607820391342*^9}, 3.915607885140748*^9, 3.915611630949479*^9, 
   3.915613373861554*^9, 3.91563066089172*^9, 3.9156312249526873`*^9, 
   3.915631683437091*^9, {3.915635132981955*^9, 3.915635162124075*^9}, 
   3.915635272360783*^9, 3.915635313631538*^9, 3.9156353484443817`*^9, 
   3.915635429951648*^9, 3.915635564372849*^9, 3.915682313794813*^9, 
   3.915688077398243*^9, 3.915688226218601*^9, 3.9156888486186333`*^9, 
   3.9158567487006083`*^9, 3.915873382230098*^9, 3.91587354376493*^9, 
   3.915950164990975*^9, 3.916110393494076*^9, 3.9161155574063253`*^9, 
   3.916117383710971*^9, 3.916118547783809*^9, 3.916119337903301*^9, 
   3.9161215849144382`*^9, 3.916453220571208*^9, 3.916548231486442*^9, 
   3.9165484569699173`*^9, 3.9165496982263737`*^9, 3.916549799837214*^9, 
   3.9165500203731613`*^9, 3.916550107259345*^9, 3.9165501497753468`*^9, 
   3.9165515375512037`*^9, 3.916551607561298*^9, 3.916552117865848*^9, 
   3.916675480509976*^9, 3.9166763175573177`*^9, 3.916676568574003*^9, 
   3.9166770512360907`*^9},
 CellLabel->"Out[89]=",ExpressionUUID->"b96a4e30-f5ab-45b6-90f4-f13083ea4f9c"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampGlSEDiv", "[", "3", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"ampGlSEDiv", "[", "2", "]"}], " ", "//", "\n", "\t", 
    "SUNSimplify"}], " ", "//", "\n", "\t", 
   RowBox[{
    RowBox[{"Collect2", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"Pair", "[", "__", "]"}], ",", " ", 
      RowBox[{"Factoring", "->", "Simplify"}]}], "]"}], "&"}]}]}]], "Code",
 CellChangeTimes->{{3.914576042299127*^9, 3.914576080351676*^9}, 
   3.914576346662568*^9, {3.914576688256481*^9, 3.914576691129487*^9}, {
   3.914577036467249*^9, 3.914577036597219*^9}, {3.91560683458986*^9, 
   3.915606883342495*^9}, {3.915606924375864*^9, 3.915606929498748*^9}, {
   3.9156308316909447`*^9, 3.9156308477848053`*^9}, {3.915635281678619*^9, 
   3.915635282602481*^9}, {3.915699068243824*^9, 3.9156990698677387`*^9}, {
   3.91655007197279*^9, 3.91655010105195*^9}, {3.916550140579116*^9, 
   3.9165501460372953`*^9}},
 CellLabel->"In[90]:=",ExpressionUUID->"afb5464a-a41a-4a48-b9e4-c268aba615aa"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{
     SuperscriptBox[
      FormBox[
       FormBox["p",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["\[Mu]",
        TraditionalForm],
       TraditionalForm]], " ", 
     SuperscriptBox[
      FormBox[
       FormBox["p",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["\[Nu]",
        TraditionalForm],
       TraditionalForm]], " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubscriptBox["N", "f"], "-", 
          SubscriptBox["C", "A"]}], ")"}]}], "+", 
       RowBox[{"16", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", 
        SubscriptBox["\[Delta]", "g"]}]}], ")"}]}], 
    RowBox[{"16", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "-", 
   FractionBox[
    RowBox[{
     SuperscriptBox[
      FormBox[
       FormBox["p",
        TraditionalForm],
       TraditionalForm], "2"], " ", 
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
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SubscriptBox["N", "f"], "-", 
          SubscriptBox["C", "A"]}], ")"}]}], "+", 
       RowBox[{"16", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", 
        SubscriptBox["\[Delta]", "g"]}]}], ")"}]}], 
    RowBox[{"16", " ", 
     SuperscriptBox["\[Pi]", "2"]}]]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.914576309046397*^9, {3.914576533078253*^9, 3.914576560911056*^9}, {
   3.914577032230495*^9, 3.914577037330236*^9}, 3.915604271929907*^9, 
   3.915604383083984*^9, 3.915604792087643*^9, 3.91560486835574*^9, 
   3.91560506551678*^9, 3.915605243816788*^9, 3.915606039965013*^9, 
   3.915606094564893*^9, 3.915606884191107*^9, 3.915606932105339*^9, 
   3.915607695700541*^9, {3.915607802677674*^9, 3.915607821142058*^9}, 
   3.9156078852896147`*^9, 3.9156116309909153`*^9, 3.915613373914799*^9, 
   3.9156306760508137`*^9, 3.915631224986623*^9, 3.915631683479349*^9, {
   3.915635136358076*^9, 3.9156351628234*^9}, 3.915635284246346*^9, 
   3.9156353509262943`*^9, 3.915635433526664*^9, 3.915635564430471*^9, 
   3.915682313838519*^9, 3.915688077437435*^9, 3.9156882280390368`*^9, 
   3.915688850211179*^9, 3.915856749154785*^9, 3.915873382292403*^9, 
   3.91587354416227*^9, 3.915950189765646*^9, 3.916110394137596*^9, 
   3.916115557900367*^9, 3.916117384265448*^9, 3.916118548335037*^9, 
   3.916119338501356*^9, 3.916121585414212*^9, 3.916453220727325*^9, 
   3.916548231742468*^9, 3.916548457101252*^9, 3.916549698340983*^9, 
   3.916549799951058*^9, {3.916550147404001*^9, 3.916550151419238*^9}, 
   3.916551537573242*^9, 3.91655160758587*^9, 3.9165521178901567`*^9, 
   3.916675480536503*^9, 3.9166763202401123`*^9, 3.916676568610238*^9, 
   3.916677051264764*^9},
 CellLabel->"Out[90]=",ExpressionUUID->"04e1df9e-2fbc-4b82-b76c-266e9108a4db"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"solGlMS", " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"Solve", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"ampGlSEDiv", "[", "3", "]"}], "==", "0"}], ",", " ", "dGl"}],
       "]"}], " ", "//", "\n", "\t", "Flatten"}], " ", "//", " ", 
    RowBox[{
     RowBox[{"ReplaceAll", "[", 
      RowBox[{"#", ",", 
       RowBox[{
        RowBox[{"Rule", "[", 
         RowBox[{"a_", ",", "b_"}], "]"}], ":>", 
        RowBox[{"Rule", "[", 
         RowBox[{"a", ",", 
          RowBox[{"SUNSimplify", "[", "b", "]"}]}], "]"}]}]}], "]"}], "&"}]}],
    " ", "//", "\n", "\t", 
   RowBox[{
    RowBox[{"ReplaceAll", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}], "^", "2"}], " ", "->", " ", 
       
       RowBox[{"4", "Pi", " ", 
        RowBox[{"SMP", "[", "\"\<alpha_s\>\"", "]"}]}]}]}], "]"}], 
    "&"}]}]}]], "Code",
 CellChangeTimes->{{3.914576085071594*^9, 3.914576271429175*^9}, 
   3.914576362715526*^9, {3.915606889295372*^9, 3.9156069439428387`*^9}, {
   3.915607020810649*^9, 3.915607040957179*^9}, {3.915607101455134*^9, 
   3.9156073419584303`*^9}, {3.915607391068959*^9, 3.915607474856219*^9}, {
   3.91560770658748*^9, 3.9156077492295847`*^9}, 3.915607784870926*^9, {
   3.91561056342134*^9, 3.915610581246805*^9}, {3.9156106656814823`*^9, 
   3.915610759894559*^9}, {3.915630943212435*^9, 3.915631039526663*^9}, {
   3.915635446542345*^9, 3.915635458343183*^9}, {3.915635582748584*^9, 
   3.915635613127037*^9}, {3.915635662701167*^9, 3.9156357990640373`*^9}, {
   3.915640786314447*^9, 3.915640811106774*^9}, {3.915641187725995*^9, 
   3.915641192254242*^9}, {3.915641716581132*^9, 3.915641773181531*^9}, {
   3.915682195508872*^9, 3.9156821958693523`*^9}, {3.915685366318378*^9, 
   3.915685383898263*^9}, {3.915688576566821*^9, 3.915688714577341*^9}, {
   3.91568877734212*^9, 3.915688812015645*^9}, {3.915689323534189*^9, 
   3.91568932853456*^9}, {3.9157000170855007`*^9, 3.915700060556443*^9}, {
   3.915700318321312*^9, 3.915700322508253*^9}, {3.915857732684013*^9, 
   3.915857844272493*^9}, {3.916548240927082*^9, 3.916548368932444*^9}, {
   3.9165484711207047`*^9, 3.916548501764308*^9}, {3.9165501967644157`*^9, 
   3.916550235487764*^9}},
 CellLabel->"In[91]:=",ExpressionUUID->"1ce32f14-f969-49e3-bebb-b672335dfc7b"],

Cell[BoxData[
 FormBox[
  RowBox[{"{", 
   RowBox[{
    SubscriptBox["\[Delta]", "g"], "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
       SubscriptBox["\[Alpha]", "s"], " ", 
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["N", "f"], "-", 
         SubscriptBox["C", "A"]}], ")"}]}], 
      RowBox[{"4", " ", "\[Pi]"}]]}]}], "}"}], TraditionalForm]], "Output",
 CellChangeTimes->{3.916550235729863*^9, 3.916551537588333*^9, 
  3.916551607612082*^9, 3.916552117914837*^9, 3.9166754805627193`*^9, 
  3.9166763216474*^9, 3.916676568638275*^9, 3.9166770512996893`*^9},
 CellLabel->"Out[91]=",ExpressionUUID->"a7f4c6de-be75-4d52-81c4-3ab09946f912"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Quark-Z Vertex", "Subsection",
 CellChangeTimes->{{3.915611514701611*^9, 
  3.915611525902963*^9}},ExpressionUUID->"3e3c5c03-0fc0-4050-bacd-\
6a7116b5eb41"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"ampQZVertex", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"ampQZVertex", "[", "0", "]"}], " ", "//", " ", "SUNSimplify"}],
      " ", "//", " ", "DiracSimplify"}], " ", "//", " ", 
    RowBox[{
     RowBox[{"ReplaceRepeated", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{"{", 
        RowBox[{"SqrtEGl", "->", "0"}], "}"}]}], "]"}], "&"}]}]}], 
  ";"}]], "Code",
 CellChangeTimes->{{3.9156115277165413`*^9, 3.915611553577682*^9}, 
   3.915611614994533*^9, {3.9156117897732267`*^9, 3.915611843324626*^9}, {
   3.915611962469036*^9, 3.915611991436858*^9}, {3.915613324213197*^9, 
   3.915613356556153*^9}, 3.915613442089457*^9, {3.915628666153513*^9, 
   3.915628694535317*^9}, {3.91563185863758*^9, 3.915631869873445*^9}, {
   3.9156325700149193`*^9, 3.915632571869291*^9}, 3.915683186688534*^9, {
   3.91611843398995*^9, 3.91611844909301*^9}},
 CellLabel->"In[92]:=",ExpressionUUID->"efe2fbe5-96fe-4c72-b76b-6e60e580a858"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"ampQZVertex", "[", "2", "]"}], " ", "=", " ", 
   RowBox[{"TID", "[", 
    RowBox[{
     RowBox[{"ampQZVertex", "[", "1", "]"}], ",", " ", "qloop", ",", " ", 
     RowBox[{"UsePaVeBasis", " ", "->", " ", "True"}], ",", " ", 
     RowBox[{"ToPaVe", " ", "->", " ", "True"}]}], "]"}]}], ";"}]], "Code",
 CellChangeTimes->{{3.9156115406034822`*^9, 3.915611569374031*^9}, {
  3.915611729697155*^9, 3.915611787160747*^9}},
 CellLabel->"In[93]:=",ExpressionUUID->"e5c5400c-bfd8-4a45-8758-964b45c82208"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampQZVertexDiv", "[", "0", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"ampQZVertex", "[", "2", "]"}], " ", "//", " ", "PaVeUVPart"}], 
   " ", "//", " ", 
   RowBox[{
    RowBox[{"ReplaceAll", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{
       RowBox[{"SqrtEGl", "*", 
        RowBox[{"SqrtEGl", "\[Conjugate]"}]}], "->", "1"}]}], "]"}], 
    "&"}]}]}]], "Code",
 CellChangeTimes->{{3.915611578969301*^9, 3.915611592535638*^9}, {
  3.915612059731338*^9, 3.915612099539437*^9}, {3.9156135203262568`*^9, 
  3.915613522268508*^9}},
 CellLabel->"In[94]:=",ExpressionUUID->"51a41273-b623-439a-b1d0-e8cfc3bc6c25"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"(", 
    RowBox[{"\<\"e\"\>", " ", 
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
       RowBox[{"32", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", "D", " ", 
        SubscriptBox["C", "A"], " ", 
        SubscriptBox["Z", "e"], " ", 
        SubscriptBox["Z", "sW"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        TemplateBox[{
          RowBox[{"(", 
            SubscriptBox["Z", "qL"], ")"}]},
         "Conjugate"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
       RowBox[{"24", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", "D", " ", 
        SubscriptBox["C", "A"], " ", 
        SubscriptBox["Z", "e"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        TemplateBox[{
          RowBox[{"(", 
            SubscriptBox["Z", "qL"], ")"}]},
         "Conjugate"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
       RowBox[{"32", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", "D", " ", 
        SubscriptBox["C", "A"], " ", 
        SubscriptBox["Z", "e"], " ", 
        SubscriptBox["Z", "sW"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["6",
           TraditionalForm]]}], " ", 
        TemplateBox[{
          RowBox[{"(", 
            SubscriptBox["Z", "qR"], ")"}]},
         "Conjugate"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
       RowBox[{"128", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", 
        SubscriptBox["C", "A"], " ", 
        SubscriptBox["Z", "e"], " ", 
        SubscriptBox["Z", "sW"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        TemplateBox[{
          RowBox[{"(", 
            SubscriptBox["Z", "qL"], ")"}]},
         "Conjugate"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
       RowBox[{"96", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", 
        SubscriptBox["C", "A"], " ", 
        SubscriptBox["Z", "e"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        TemplateBox[{
          RowBox[{"(", 
            SubscriptBox["Z", "qL"], ")"}]},
         "Conjugate"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
       RowBox[{"128", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", 
        SubscriptBox["C", "A"], " ", 
        SubscriptBox["Z", "e"], " ", 
        SubscriptBox["Z", "sW"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["6",
           TraditionalForm]]}], " ", 
        TemplateBox[{
          RowBox[{"(", 
            SubscriptBox["Z", "qR"], ")"}]},
         "Conjugate"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
       RowBox[{"32", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", "D", " ", 
        SubscriptBox["C", "A"], " ", 
        SubscriptBox["Z", "e"], " ", 
        SubscriptBox["Z", "qL"], " ", 
        SubscriptBox["Z", "sW"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
       RowBox[{"24", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", "D", " ", 
        SubscriptBox["C", "A"], " ", 
        SubscriptBox["Z", "e"], " ", 
        SubscriptBox["Z", "qL"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
       RowBox[{"32", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", "D", " ", 
        SubscriptBox["C", "A"], " ", 
        SubscriptBox["Z", "e"], " ", 
        SubscriptBox["Z", "qR"], " ", 
        SubscriptBox["Z", "sW"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["6",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
       RowBox[{"128", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", 
        SubscriptBox["C", "A"], " ", 
        SubscriptBox["Z", "e"], " ", 
        SubscriptBox["Z", "qL"], " ", 
        SubscriptBox["Z", "sW"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
       RowBox[{"96", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", 
        SubscriptBox["C", "A"], " ", 
        SubscriptBox["Z", "e"], " ", 
        SubscriptBox["Z", "qL"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
       RowBox[{"128", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", 
        SubscriptBox["C", "A"], " ", 
        SubscriptBox["Z", "e"], " ", 
        SubscriptBox["Z", "qR"], " ", 
        SubscriptBox["Z", "sW"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["6",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
       RowBox[{"4", " ", 
        SubsuperscriptBox["C", "A", "2"], " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SqrtBox[
         SubscriptBox["Z", "sW"]], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["6",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
       RowBox[{"4", " ", 
        SubsuperscriptBox["C", "A", "2"], " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SqrtBox[
         SubscriptBox["Z", "sW"]], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
       RowBox[{"3", " ", 
        SubsuperscriptBox["C", "A", "2"], " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SqrtBox[
         SubscriptBox["Z", "sW"]], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
       RowBox[{"4", " ", 
        SubsuperscriptBox["C", "A", "2"], " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SubscriptBox["Z", "sW"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["6",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "4"]}], "+", 
       RowBox[{"4", " ", 
        SubsuperscriptBox["C", "A", "2"], " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SqrtBox[
         SubscriptBox["Z", "sW"]], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["6",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "4"]}], "-", 
       RowBox[{"4", " ", 
        SubsuperscriptBox["C", "A", "2"], " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SubscriptBox["Z", "sW"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "4"]}], "+", 
       RowBox[{"4", " ", 
        SubsuperscriptBox["C", "A", "2"], " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SqrtBox[
         SubscriptBox["Z", "sW"]], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "4"]}], "+", 
       RowBox[{"3", " ", 
        SubsuperscriptBox["C", "A", "2"], " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SubscriptBox["Z", "sW"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
       RowBox[{"3", " ", 
        SubsuperscriptBox["C", "A", "2"], " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SqrtBox[
         SubscriptBox["Z", "sW"]], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
       RowBox[{"4", " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SqrtBox[
         SubscriptBox["Z", "sW"]], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["6",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
       RowBox[{"4", " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SqrtBox[
         SubscriptBox["Z", "sW"]], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
       RowBox[{"3", " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SqrtBox[
         SubscriptBox["Z", "sW"]], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
       RowBox[{"4", " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SubscriptBox["Z", "sW"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["6",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "4"]}], "-", 
       RowBox[{"4", " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SqrtBox[
         SubscriptBox["Z", "sW"]], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["6",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "4"]}], "+", 
       RowBox[{"4", " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SubscriptBox["Z", "sW"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "4"]}], "-", 
       RowBox[{"4", " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SqrtBox[
         SubscriptBox["Z", "sW"]], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "4"]}], "-", 
       RowBox[{"3", " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SubscriptBox["Z", "sW"], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
       RowBox[{"3", " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SqrtBox[
         SubscriptBox["Z", "sW"]], " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}]}], ")"}]}], 
    ")"}], "/", 
   RowBox[{"(", 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{"D", "-", "4"}], ")"}], " ", 
     SqrtBox[
      SubscriptBox["Z", "sW"]], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       RowBox[{
        SqrtBox[
         SubscriptBox["Z", "sW"]], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}]}], 
    ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.915611593111402*^9, 3.915611598676087*^9}, 
   3.91561163464537*^9, {3.9156120562349157`*^9, 3.915612100823419*^9}, 
   3.9156134605171957`*^9, 3.915613526022855*^9, 3.915629151990672*^9, 
   3.915631227554254*^9, 3.915631490025359*^9, 3.915631686147159*^9, 
   3.915631872745663*^9, 3.9156325748222933`*^9, 3.91564149274984*^9, 
   3.915682316335541*^9, 3.9156827968445597`*^9, 3.9156831912255507`*^9, 
   3.915688080317033*^9, 3.915856755739202*^9, 3.915873382704987*^9, 
   3.915873550677297*^9, 3.915936222322997*^9, 3.915936442363123*^9, 
   3.916110400675286*^9, 3.916115564498179*^9, 3.91611724259923*^9, 
   3.916117391615541*^9, 3.916118555761177*^9, 3.916119347023185*^9, 
   3.916121594413684*^9, 3.916453223399433*^9, 3.916548234548452*^9, 
   3.916548459897851*^9, 3.91654957078504*^9, 3.916549701141901*^9, 
   3.916549802683012*^9, 3.916551540122017*^9, 3.916551610137692*^9, 
   3.916552120406769*^9, 3.916675483012579*^9, 3.9166765711537857`*^9, 
   3.916677053804119*^9},
 CellLabel->"Out[94]=",ExpressionUUID->"7ac62c0a-390b-4fd9-883e-22132d0e652b"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"ampQZVertexDiv", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"FCReplaceD", "[", 
        RowBox[{
         RowBox[{"ampQZVertexDiv", "[", "0", "]"}], ",", " ", 
         RowBox[{"D", " ", "->", " ", 
          RowBox[{"4", " ", "-", " ", 
           RowBox[{"2", " ", "Epsilon"}]}]}]}], "]"}], " ", "//", " ", "\n", 
       "      \t", 
       RowBox[{
        RowBox[{"Series", "[", 
         RowBox[{"#", ",", " ", 
          RowBox[{"{", 
           RowBox[{"Epsilon", ",", " ", "0", ",", " ", "0"}], "}"}]}], "]"}], 
        " ", "&"}]}], " ", "//", "\n", "     \t", "Normal"}], " ", "//", " ", 
     "FCHideEpsilon"}], " ", "//", " ", "SUNSimplify"}]}], ";"}]], "Code",
 CellChangeTimes->{{3.915612186515546*^9, 3.915612225543759*^9}, {
  3.915613497758166*^9, 3.915613531390083*^9}},
 CellLabel->"In[95]:=",ExpressionUUID->"f50e7aad-d55f-4478-b7cd-6d9553d8ebeb"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampQZVertexDiv", "[", "2", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"ampQZVertexDiv", "[", "1", "]"}], " ", "//", " ", 
         RowBox[{
          RowBox[{"ReplaceRepeated", "[", 
           RowBox[{"#", ",", " ", 
            RowBox[{"{", "\n", "          \t", 
             RowBox[{
              RowBox[{"Ze", " ", "->", " ", 
               RowBox[{"1", " ", "+", " ", 
                RowBox[{"alpha", " ", "de"}]}]}], ",", " ", "\n", 
              "          \t", 
              RowBox[{"ZZ", " ", "->", " ", 
               RowBox[{"1", " ", "+", " ", 
                RowBox[{"alpha", " ", "dZ"}]}]}], ",", " ", "\n", 
              "          \t", 
              RowBox[{"ZQL", " ", "->", " ", 
               RowBox[{"1", " ", "+", " ", 
                RowBox[{"alpha", " ", "dQL"}]}]}], ",", "\n", "          \t", 
              
              RowBox[{"ZQR", " ", "->", " ", 
               RowBox[{"1", " ", "+", " ", 
                RowBox[{"alpha", " ", "dQR"}]}]}], ",", "\n", "          \t", 
              
              RowBox[{"ZsW", " ", "->", " ", 
               RowBox[{"1", " ", "+", " ", 
                RowBox[{"alpha", " ", "dsW"}]}]}]}], "\n", "          \t", 
             "}"}]}], "]"}], " ", "&"}]}], " ", "//", " ", 
        RowBox[{
         RowBox[{"ReplaceAll", "[", 
          RowBox[{"#", ",", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"(", 
              RowBox[{"alpha", "*", "b_"}], ")"}], "\[Conjugate]"}], "->", 
            RowBox[{"alpha", "*", 
             RowBox[{"b", "\[Conjugate]"}]}]}]}], "]"}], "&"}]}], " ", "//", 
       " ", "Expand"}], " ", "//", " ", 
      RowBox[{
       RowBox[{"Series", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{"{", 
          RowBox[{"alpha", ",", " ", "0", ",", " ", "1"}], "}"}]}], "]"}], 
       " ", "&"}]}], " ", "//", " ", "\n", "     \t", "Normal"}], " ", "//", 
    " ", 
    RowBox[{
     RowBox[{"ReplaceAll", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{"alpha", " ", "->", " ", "1"}]}], "]"}], " ", "&"}]}], " ", "//",
    "\n", "   \t", 
   RowBox[{
    RowBox[{"SelectNotFree2", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"SMP", "[", "\"\<Delta\>\"", "]"}], ",", " ", "de", ",", " ", 
      "dZ", ",", " ", "dQL", ",", " ", "dQR", ",", " ", "dsW"}], "]"}], " ", 
    "&"}]}]}]], "Code",
 CellChangeTimes->{{3.915612216327241*^9, 3.915612235161283*^9}, {
   3.915613477991962*^9, 3.915613480551297*^9}, {3.915632235775804*^9, 
   3.91563223586123*^9}, {3.915641433682358*^9, 3.915641520669639*^9}, {
   3.915682699548052*^9, 3.915682779835501*^9}, {3.916117461780794*^9, 
   3.916117461897602*^9}, {3.916117500123317*^9, 3.9161175171425858`*^9}, {
   3.916117553786203*^9, 3.916117680099933*^9}, {3.916117721203251*^9, 
   3.916117735949998*^9}, {3.916119144990655*^9, 3.916119175364462*^9}, 
   3.9161192410945272`*^9},
 CellLabel->"In[96]:=",ExpressionUUID->"63607982-70f0-4cc6-958e-81f843ec5d7d"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"96", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"24", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"24", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"24", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"24", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{"2", " ", 
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["\[Delta]", "e"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{"4", " ", 
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "e"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["\[Delta]", "qR"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{"2", " ", 
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "qR"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{"2", " ", 
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{"4", " ", 
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     TemplateBox[{
       RowBox[{"(", 
         SubscriptBox["\[Delta]", "qR"], ")"}]},
      "Conjugate"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{"2", " ", 
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["C", "F"], " ", 
     TemplateBox[{
       RowBox[{"(", 
         SubscriptBox["\[Delta]", "qR"], ")"}]},
      "Conjugate"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{"2", " ", 
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["\[Delta]", "e"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{"4", " ", 
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "e"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["\[Delta]", "qL"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{"2", " ", 
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "qL"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{"2", " ", 
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{"4", " ", 
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     TemplateBox[{
       RowBox[{"(", 
         SubscriptBox["\[Delta]", "qL"], ")"}]},
      "Conjugate"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{"2", " ", 
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["C", "F"], " ", 
     TemplateBox[{
       RowBox[{"(", 
         SubscriptBox["\[Delta]", "qL"], ")"}]},
      "Conjugate"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     TagBox["\[DoubledGamma]",
      Function[{}, EulerGamma]], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"128", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
     RowBox[{"log", "(", 
      RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", "\<\"e\"\>", " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "5"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{"2", " ", 
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "+", 
   FractionBox[
    RowBox[{"2", " ", 
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "3"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     SubscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Col1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Col2",
         TraditionalForm],
        TraditionalForm]}]]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     SubscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Col1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Col2",
         TraditionalForm],
        TraditionalForm]}]]}], 
    RowBox[{"64", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["C", "F"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     SubscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Col1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Col2",
         TraditionalForm],
        TraditionalForm]}]]}], 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "F"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>",
      " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     SubscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Col1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Col2",
         TraditionalForm],
        TraditionalForm]}]]}], 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["\[Delta]", "e"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Col1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Col2",
         TraditionalForm],
        TraditionalForm]}]]}], 
    RowBox[{"2", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "e"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Col1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Col2",
         TraditionalForm],
        TraditionalForm]}]]}], 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["\[Delta]", "qL"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Col1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Col2",
         TraditionalForm],
        TraditionalForm]}]]}], 
    RowBox[{"4", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "qL"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Col1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Col2",
         TraditionalForm],
        TraditionalForm]}]]}], 
    RowBox[{"2", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     TemplateBox[{
       RowBox[{"(", 
         SubscriptBox["\[Delta]", "qL"], ")"}]},
      "Conjugate"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Col1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Col2",
         TraditionalForm],
        TraditionalForm]}]]}], 
    RowBox[{"4", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["C", "F"], " ", 
     TemplateBox[{
       RowBox[{"(", 
         SubscriptBox["\[Delta]", "qL"], ")"}]},
      "Conjugate"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     SubscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Col1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Col2",
         TraditionalForm],
        TraditionalForm]}]]}], 
    RowBox[{"2", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["C", "A", "2"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
     SubscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Col1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Col2",
         TraditionalForm],
        TraditionalForm]}]]}], 
    RowBox[{"4", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["C", "F"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", "\<\"e\"\>", " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}], " ", 
     SubscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Col1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Col2",
         TraditionalForm],
        TraditionalForm]}]]}], 
    RowBox[{"2", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.91561348595755*^9, 3.915613535855748*^9}, 
   3.915629157102873*^9, 3.915631227770936*^9, 3.915631495011728*^9, 
   3.915631686446389*^9, 3.915631879657734*^9, 3.91563223791636*^9, 
   3.915632575671973*^9, {3.915641480544816*^9, 3.915641521702964*^9}, 
   3.915682316579461*^9, 3.9156827985632963`*^9, 3.915683194428071*^9, 
   3.915688080713719*^9, 3.915856756623181*^9, 3.915873382776114*^9, 
   3.915873551563777*^9, 3.915936222572829*^9, 3.9159364426176586`*^9, 
   3.9161104009271097`*^9, 3.916115564782614*^9, 3.916117250203578*^9, 
   3.916117392321327*^9, 3.916117462825108*^9, 3.916117520128313*^9, 
   3.916117559954739*^9, {3.916117599928557*^9, 3.916117623076332*^9}, 
   3.916117654825272*^9, 3.916117737288501*^9, 3.91611855659424*^9, 
   3.916119349099558*^9, 3.916121600709913*^9, 3.916453225216757*^9, 
   3.9165482363578978`*^9, 3.916548461695471*^9, 3.9165495726504107`*^9, 
   3.91654970306742*^9, 3.916549804560111*^9, 3.916551541993441*^9, 
   3.91655161202735*^9, 3.916552122216762*^9, 3.9166754848717127`*^9, 
   3.91667657297549*^9, 3.916677055609186*^9},
 CellLabel->"Out[96]=",ExpressionUUID->"2c725a79-6fee-4fbe-87b9-9bca44146a47"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampQZVertexDiv", "[", "3", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"ampQZVertexDiv", "[", "2", "]"}], " ", "//", " ", 
     RowBox[{
      RowBox[{"SUNSimplify", "[", 
       RowBox[{"#", ",", " ", 
        RowBox[{"Explicit", " ", "->", " ", "True"}]}], "]"}], " ", "&"}]}], 
    " ", "//", " ", "\n", "   \t", 
    RowBox[{
     RowBox[{"ReplaceAll", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{
        RowBox[{"SUNTrace", "[", "x__", "]"}], " ", ":>", " ", 
        RowBox[{"SUNTrace", "[", 
         RowBox[{"x", ",", " ", 
          RowBox[{"Explicit", " ", "->", " ", "True"}]}], "]"}]}]}], "]"}], 
     " ", "&"}]}], " ", "//", "\n", "  \t", 
   RowBox[{
    RowBox[{"Collect2", "[", 
     RowBox[{"#", ",", " ", "Epsilon", ",", " ", "SUNIndex"}], "]"}], " ", 
    "&"}]}]}]], "Code",
 CellChangeTimes->{{3.915613590886113*^9, 3.91561359951884*^9}, {
   3.915641547583795*^9, 3.91564161613473*^9}, 3.915682839674127*^9},
 CellLabel->"In[97]:=",ExpressionUUID->"70a07223-4fc1-4b26-aa71-3e03e30980ee"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{"192", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "\<\"e\"\>", " ", 
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
     RowBox[{"64", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["C", "A"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["\[Delta]", "qL"], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
     RowBox[{"48", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["C", "A"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["\[Delta]", "qL"], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
     RowBox[{"64", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["C", "A"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]]}], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["\[Delta]", "qR"], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
     RowBox[{"128", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["\[Delta]", "e"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
     RowBox[{"128", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["\[Delta]", "e"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
     RowBox[{"96", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["\[Delta]", "e"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
     RowBox[{"4", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      SubsuperscriptBox["g", "s", "2"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
     RowBox[{"4", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      SubsuperscriptBox["g", "s", "2"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
     RowBox[{"3", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      SubsuperscriptBox["g", "s", "2"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
     RowBox[{"64", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["\[Delta]", "qL"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
     RowBox[{"48", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["\[Delta]", "qL"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
     RowBox[{"64", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["\[Delta]", "qR"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
     RowBox[{"64", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["\[Delta]", "W"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
     RowBox[{"64", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["\[Delta]", "W"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
     RowBox[{"48", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["\[Delta]", "W"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
     RowBox[{"64", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["\[Delta]", "W"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "4"]}], "-", 
     RowBox[{"64", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["\[Delta]", "W"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "4"]}], "+", 
     RowBox[{"48", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["\[Delta]", "W"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
     RowBox[{"4", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["g", "s", "2"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
     RowBox[{"4", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["g", "s", "2"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"sin", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
     RowBox[{"3", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["g", "s", "2"], " ", 
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.915613592581844*^9, 3.9156136007020473`*^9}, 
   3.915629164357664*^9, 3.915631227805414*^9, 3.915631498022319*^9, 
   3.915631686508811*^9, 3.915631880810451*^9, 3.915632239382056*^9, 
   3.915632576253583*^9, 3.915641543094508*^9, {3.915641595499004*^9, 
   3.915641616829402*^9}, 3.915682316619484*^9, 3.915682869707954*^9, 
   3.915683196977387*^9, 3.915688080914398*^9, 3.915856756826651*^9, 
   3.915873382831573*^9, 3.915873551762004*^9, 3.915936224197378*^9, 
   3.915936442771461*^9, 3.916110401013006*^9, 3.916115564866651*^9, 
   3.91611725418232*^9, 3.916117392456514*^9, 3.916117768890871*^9, 
   3.9161185568118467`*^9, 3.916119350129468*^9, 3.916121601803604*^9, 
   3.916453225429719*^9, 3.916548236655905*^9, 3.9165484619536858`*^9, 
   3.916549573020454*^9, 3.9165497034197083`*^9, 3.916549804815948*^9, 
   3.916551542189486*^9, 3.916551612241335*^9, 3.9165521224211683`*^9, 
   3.916675485072732*^9, 3.916676573164813*^9, 3.91667705580031*^9},
 CellLabel->"Out[97]=",ExpressionUUID->"5e013ea1-6ce6-4732-936a-45f2ae2cf3eb"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampQZVertexDiv", "[", "4", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"ampQZVertexDiv", "[", "3", "]"}], " ", "//", " ", "\n", 
        "      \t", 
        RowBox[{
         RowBox[{"ReplaceAll", "[", 
          RowBox[{"#", ",", " ", 
           RowBox[{
            RowBox[{"suntf", "[", 
             RowBox[{"xx_", ",", " ", "_SUNFIndex", ",", " ", "_SUNFIndex"}], 
             "]"}], " ", ":>", " ", 
            RowBox[{"SUNT", " ", "@@", " ", "xx"}]}]}], "]"}], " ", "&"}]}], 
       " ", "//", " ", "\n", "     \t", 
       RowBox[{
        RowBox[{"ReplaceAll", "[", 
         RowBox[{"#", ",", " ", 
          RowBox[{"SUNTF", " ", "->", " ", "suntf"}]}], "]"}], " ", "&"}]}], 
      " ", "//", " ", 
      RowBox[{
       RowBox[{"ReplaceAll", "[", 
        RowBox[{"#", ",", " ", "\n", "      \t", 
         RowBox[{
          RowBox[{"suntf", "[", 
           RowBox[{"xx_", ",", " ", "_SUNFIndex", ",", " ", "_SUNFIndex"}], 
           "]"}], " ", ":>", " ", 
          RowBox[{"SUNT", " ", "@@", " ", "xx"}]}]}], "]"}], " ", "&"}]}], 
     " ", "//", " ", "\n", "   \t", "SUNSimplify"}], " ", "//", " ", 
    RowBox[{
     RowBox[{"Collect2", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{"{", 
        RowBox[{
        "dQL", ",", " ", "dQR", ",", " ", "de", ",", " ", "dsW", ",", " ", 
         RowBox[{
          RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}], "^", "2"}]}], "}"}], ",", 
       " ", 
       RowBox[{"Factoring", "->", "Simplify"}]}], "]"}], " ", "&"}]}], " ", "//",
    " ", 
   RowBox[{
    RowBox[{"ReplaceRepeated", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"DiracGamma", "[", "args__", "]"}], ".", 
         RowBox[{"DiracGamma", "[", "6", "]"}]}], "+", 
        RowBox[{
         RowBox[{"DiracGamma", "[", "args__", "]"}], ".", 
         RowBox[{"DiracGamma", "[", "7", "]"}]}]}], "->", 
       RowBox[{"DiracGamma", "[", "args", "]"}]}]}], "]"}], "&"}]}]}]], "Code",\

 CellChangeTimes->{{3.915613618193549*^9, 3.915613626079591*^9}, {
  3.9156138045044727`*^9, 3.9156138417637043`*^9}, {3.915613875706743*^9, 
  3.915613889753516*^9}, {3.915619725472468*^9, 3.9156197766590347`*^9}, {
  3.915619813582859*^9, 3.915619857758165*^9}, {3.915683309827927*^9, 
  3.915683391237526*^9}, {3.916119417342548*^9, 3.916119419021706*^9}},
 CellLabel->"In[98]:=",ExpressionUUID->"4cc8cc03-7d33-4a8a-bb6b-e1998dccd993"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{"\<\"e\"\>", " ", 
     SubscriptBox["C", "A"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
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
         SubscriptBox["\[Delta]", "qL"], ")"}]},
      "Conjugate"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"4", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", "3"}], 
      ")"}]}], 
    RowBox[{"12", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{"\<\"e\"\>", " ", 
     SubscriptBox["C", "A"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", 
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
         SubscriptBox["\[Delta]", "qR"], ")"}]},
      "Conjugate"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{"\<\"e\"\>", " ", 
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "e"], " ", 
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
       RowBox[{"4", " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["6",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
       RowBox[{
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"sin", "("}], 
              SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", "3"}],
          ")"}]}]}], ")"}]}], 
    RowBox[{"6", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{"\<\"\[CapitalDelta]\"\>", " ", "\<\"e\"\>", " ", 
     RowBox[{"(", 
      RowBox[{
       SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
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
       RowBox[{"4", " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["6",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
       RowBox[{
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"sin", "("}], 
              SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", "3"}],
          ")"}]}]}], ")"}]}], 
    RowBox[{"192", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{"\<\"e\"\>", " ", 
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "qL"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], " ", 
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
       RowBox[{"4", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", "3"}], 
      ")"}]}], 
    RowBox[{"12", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{"\<\"e\"\>", " ", 
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "qR"], " ", 
     RowBox[{
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
         TraditionalForm],
        TraditionalForm]], ".", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], " ", 
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
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], 
    RowBox[{"3", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{"\<\"e\"\>", " ", 
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["\[Delta]", "W"], " ", 
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
       RowBox[{"4", " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["6",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{"cos", "("}], 
             SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "-", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{"sin", "("}], 
             SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}]}], 
       "+", 
       RowBox[{
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"cos", "("}], 
              SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"4", " ", 
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"sin", "("}], 
                 SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
             "3"}], ")"}]}], "-", 
          RowBox[{"4", " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"sin", "("}], 
              SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "4"]}], "+", 
          RowBox[{"3", " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"sin", "("}], 
              SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}]}], 
         ")"}]}]}], ")"}]}], 
    RowBox[{"12", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.91561364495825*^9, 3.915613844406695*^9, 3.915613890834526*^9, 
   3.915619726388184*^9, 3.915619778196627*^9, {3.915619839401662*^9, 
   3.915619858590404*^9}, 3.915629166213121*^9, 3.915631227861176*^9, 
   3.9156315003737993`*^9, 3.915631686582011*^9, 3.915631883472949*^9, 
   3.915632240286264*^9, 3.915632576873663*^9, 3.915641636130825*^9, 
   3.91568231668104*^9, 3.915682892017921*^9, 3.915683198512903*^9, {
   3.91568331891085*^9, 3.9156833919766*^9}, 3.915688081107032*^9, 
   3.915856757244693*^9, 3.915873382889217*^9, 3.915873552185988*^9, 
   3.915936225647572*^9, 3.915936445100854*^9, 3.916110401192249*^9, 
   3.916115565063842*^9, 3.916117257448292*^9, 3.916117392716569*^9, 
   3.916117781361541*^9, 3.916118557123432*^9, 3.916119350429536*^9, 
   3.916119419940524*^9, 3.9161216021849422`*^9, 3.916453225522496*^9, 
   3.916548236754025*^9, 3.9165484620476227`*^9, 3.916549573119836*^9, 
   3.9165497035270853`*^9, 3.9165498049138308`*^9, 3.9165515422901697`*^9, 
   3.916551612335947*^9, 3.916552122529559*^9, 3.9166754851676397`*^9, 
   3.9166765732542677`*^9, 3.916677055889667*^9},
 CellLabel->"Out[98]=",ExpressionUUID->"82ffe51a-e0df-4b1d-96b5-1411770de7bc"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"CommonFactor", " ", "=", " ", 
   RowBox[{
    FractionBox[
     RowBox[{
      RowBox[{"SMP", "[", "\"\<e\>\"", "]"}], 
      RowBox[{"(", 
       RowBox[{"CA", "-", 
        RowBox[{"2", "CF"}]}], ")"}]}], 
     RowBox[{"48", 
      RowBox[{"\[Pi]", "^", "2"}], "*", 
      RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}]}]], 
    RowBox[{"SUNFDelta", "[", 
     RowBox[{
      RowBox[{"SUNFIndex", "[", "Col1", "]"}], ",", 
      RowBox[{"SUNFIndex", "[", "Col2", "]"}]}], "]"}]}]}], ";"}], "\n", 
 RowBox[{"CommonFactor", " ", 
  RowBox[{"Collect2", "[", 
   RowBox[{
    FractionBox[
     RowBox[{"ampQZVertexDiv", "[", "4", "]"}], "CommonFactor"], ",", " ", 
    RowBox[{
     RowBox[{"DiracGamma", "[", "__", "]"}], ".", 
     RowBox[{"DiracGamma", "[", 
      RowBox[{"6", "|", "7"}], "]"}]}], ",", " ", 
    RowBox[{"Factoring", " ", "->", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"Collect2", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{"{", 
          RowBox[{"dQL", ",", " ", "dQR", ",", " ", "de", ",", " ", 
           RowBox[{
            RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}], "^", "2"}]}], "}"}], 
         ",", " ", 
         RowBox[{"Factoring", "->", "Simplify"}]}], "]"}], "&"}], ")"}]}]}], 
   "]"}]}]}], "Code",
 CellChangeTimes->{{3.91568347149646*^9, 3.915683511407907*^9}, {
  3.915683584019437*^9, 3.915683586184703*^9}, {3.915683660969018*^9, 
  3.915683890498853*^9}, {3.915683920646303*^9, 3.915683920767709*^9}},
 CellLabel->"In[99]:=",ExpressionUUID->"49de38a0-94b6-4e86-a6fb-3ba3e1b566ff"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{"48", " ", 
     SuperscriptBox["\[Pi]", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"cos", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "\<\"e\"\>", " ", 
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
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]]}], " ", 
      RowBox[{"(", 
       RowBox[{
        FractionBox[
         RowBox[{"4", " ", 
          SuperscriptBox["\[Pi]", "2"], " ", 
          SubscriptBox["C", "A"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["\[Delta]", "qL"], ")"}]},
           "Conjugate"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"4", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{
                RowBox[{"sin", "("}], 
                SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
            "3"}], ")"}]}], 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}]], "+", 
        FractionBox[
         RowBox[{"4", " ", 
          SuperscriptBox["\[Pi]", "2"], " ", 
          SubscriptBox["C", "A"], " ", 
          SubscriptBox["\[Delta]", "W"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{
                RowBox[{"cos", "("}], 
                SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"4", " ", 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"sin", "("}], 
                   SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
               "3"}], ")"}]}], "-", 
            RowBox[{"4", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{
                RowBox[{"sin", "("}], 
                SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "4"]}], "+", 
            RowBox[{"3", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{
                RowBox[{"sin", "("}], 
                SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}]}], 
           ")"}]}], 
         RowBox[{
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{"cos", "("}], 
             SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"sin", "("}], 
            SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
        FractionBox[
         RowBox[{"8", " ", 
          SuperscriptBox["\[Pi]", "2"], " ", 
          SubscriptBox["C", "A"], " ", 
          SubscriptBox["\[Delta]", "e"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"4", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{
                RowBox[{"sin", "("}], 
                SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
            "3"}], ")"}]}], 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}]], "+", 
        FractionBox[
         RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
          SubsuperscriptBox["g", "s", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"4", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{
                RowBox[{"sin", "("}], 
                SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
            "3"}], ")"}]}], 
         RowBox[{"4", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"sin", "("}], 
            SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
        FractionBox[
         RowBox[{"4", " ", 
          SuperscriptBox["\[Pi]", "2"], " ", 
          SubscriptBox["C", "A"], " ", 
          SubscriptBox["\[Delta]", "qL"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"4", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{
                RowBox[{"sin", "("}], 
                SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
            "3"}], ")"}]}], 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}]]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
          TraditionalForm],
         TraditionalForm]], ".", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]]}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"16", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubscriptBox["\[Delta]", "qR"], ")"}]},
          "Conjugate"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], "+", 
        FractionBox[
         RowBox[{"16", " ", 
          SuperscriptBox["\[Pi]", "2"], " ", 
          SubscriptBox["C", "A"], " ", 
          SubscriptBox["\[Delta]", "W"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"sin", "("}], 
            SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               RowBox[{"cos", "("}], 
               SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], "-", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               RowBox[{"sin", "("}], 
               SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], ")"}]}], 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            RowBox[{"cos", "("}], 
            SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]], "+", 
        RowBox[{"32", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["\[Delta]", "e"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], "+", 
        RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
         RowBox[{"(", 
          RowBox[{
           SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}], "+", 
        RowBox[{"16", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["\[Delta]", "qR"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]}], ")"}]}]}], 
    ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.915683500940227*^9, 3.91568351196672*^9}, 
   3.915683588985526*^9, {3.915683662132622*^9, 3.915683690977488*^9}, {
   3.915683805229186*^9, 3.915683830249092*^9}, {3.915683860978429*^9, 
   3.915683921491741*^9}, 3.915688081179121*^9, 3.915856757400139*^9, 
   3.915873382945629*^9, 3.915873552315379*^9, 3.915936226935821*^9, 
   3.9159364470195417`*^9, 3.916110401291067*^9, 3.916115565159091*^9, 
   3.916117262161897*^9, 3.916117392970892*^9, 3.916117799878509*^9, 
   3.9161185572737503`*^9, 3.91611935056497*^9, 3.916119429611795*^9, 
   3.916121602349457*^9, 3.9164532255796404`*^9, 3.916548236797144*^9, 
   3.916548462088933*^9, 3.9165495731640244`*^9, 3.916549703592695*^9, 
   3.916549804958005*^9, 3.9165515423272257`*^9, 3.9165516123895493`*^9, 
   3.9165521225670023`*^9, 3.916675485221684*^9, 3.916676573292637*^9, 
   3.916677055927463*^9},
 CellLabel->
  "Out[100]=",ExpressionUUID->"2734d34b-45ab-4e00-ac9f-e4f9216e7aca"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampQZVertexDiv", "[", "5", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"ampQZVertexDiv", "[", "4", "]"}], " ", "/.", " ", 
        RowBox[{"{", "\n", 
         RowBox[{"(*", "         \t", 
          RowBox[{
           RowBox[{
            RowBox[{"SMP", "[", "\"\<d_A\>\"", "]"}], " ", "->", " ", 
            RowBox[{"SMP", "[", "\"\<d_A^MS\>\"", "]"}]}], ",", " ", "\n", 
           "         \t", 
           RowBox[{
            RowBox[{"SMP", "[", "\"\<d_psi\>\"", "]"}], " ", "->", " ", 
            RowBox[{
             RowBox[{"Re", "[", 
              RowBox[{"SMP", "[", "\"\<d_psi^MS\>\"", "]"}], "]"}], " ", "+", 
             " ", 
             RowBox[{"\[ImaginaryI]", "*", 
              RowBox[{"Im", "[", 
               RowBox[{"SMP", "[", "\"\<d_psi\>\"", "]"}], "]"}], "*", 
              "0"}]}]}], ","}], "*)"}], "\n", "         \t", 
         RowBox[{
          RowBox[{"dQR", " ", "->", " ", 
           RowBox[{
            RowBox[{"Re", "[", "dQR", "]"}], " ", "+", " ", 
            RowBox[{"\[ImaginaryI]", "*", 
             RowBox[{"Im", "[", "dQR", "]"}]}]}]}], ",", "\n", "         \t", 
          
          RowBox[{"dQL", " ", "->", " ", 
           RowBox[{
            RowBox[{"Re", "[", "dQL", "]"}], " ", "+", " ", 
            RowBox[{"\[ImaginaryI]", "*", 
             RowBox[{"Im", "[", "dQL", "]"}]}]}]}]}], 
         RowBox[{"(*", 
          RowBox[{",", "\n", "         \t", 
           RowBox[{
            RowBox[{"SMP", "[", "\"\<Delta\>\"", "]"}], " ", "->", " ", 
            RowBox[{"1", "/", "Epsilon"}]}]}], "*)"}], "\n", "         ", 
         "}"}]}], " ", "/.", " ", "solQMS"}], " ", ")"}], " ", "//", " ", 
     RowBox[{
      RowBox[{"ReplaceAll", "[", 
       RowBox[{"#", ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}], "^", "2"}], " ", "->", 
         " ", 
         RowBox[{"4", " ", "Pi", " ", 
          RowBox[{"SMP", "[", "\"\<alpha_s\>\"", "]"}]}]}]}], "]"}], " ", 
      "&"}]}], " ", "//", "\n", "    ", 
    RowBox[{
     RowBox[{"Collect2", "[", 
      RowBox[{"#", ",", " ", "Epsilon"}], "]"}], " ", "&"}]}], " ", "//", " ",
    "SUNSimplify"}]}]], "Code",
 CellChangeTimes->{{3.915613636938309*^9, 3.915613653022785*^9}, {
   3.915614259889215*^9, 3.915614328539151*^9}, {3.915630445936378*^9, 
   3.915630457990394*^9}, {3.915632210675406*^9, 3.9156322541111803`*^9}, {
   3.915632304389292*^9, 3.915632304804735*^9}, {3.915641666752344*^9, 
   3.915641688588024*^9}, {3.915641806192504*^9, 3.915641814242326*^9}, {
   3.91564185131516*^9, 3.915641876528761*^9}, {3.915682941812112*^9, 
   3.9156829981842127`*^9}, {3.915858005489416*^9, 3.915858006531811*^9}, {
   3.915858125156466*^9, 3.915858128051385*^9}, 3.916117841340642*^9},
 CellLabel->
  "In[101]:=",ExpressionUUID->"da34a509-0dd2-4530-82fd-f8244fe9e40c"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "ReplaceAll", "reps", 
    "\"\\!\\(\\*FormBox[RowBox[{\\\"{\\\", \\\"solQMS\\\", \\\"}\\\"}], \
TraditionalForm]\\) is neither a list of replacement rules nor a valid \
dispatch table, and so cannot be used for replacing.\"", 2, 101, 3, 
    33591135623197961147, "Local"},
   "MessageTemplate"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.916676573325624*^9, 3.916677055959642*^9},
 CellLabel->
  "During evaluation of \
In[101]:=",ExpressionUUID->"4c3d88fd-f98e-4a06-9318-3bb49eb613b7"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "ReplaceAll", "reps", 
    "\"\\!\\(\\*FormBox[RowBox[{\\\"{\\\", \\\"solQMS\\\", \\\"}\\\"}], \
TraditionalForm]\\) is neither a list of replacement rules nor a valid \
dispatch table, and so cannot be used for replacing.\"", 2, 101, 4, 
    33591135623197961147, "Local"},
   "MessageTemplate"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.916676573325624*^9, 3.91667705596002*^9},
 CellLabel->
  "During evaluation of \
In[101]:=",ExpressionUUID->"7c0f2c18-8d59-48c6-8b01-d4410ed5ac34"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "ReplaceAll", "reps", 
    "\"\\!\\(\\*FormBox[RowBox[{\\\"{\\\", \\\"solQMS\\\", \\\"}\\\"}], \
TraditionalForm]\\) is neither a list of replacement rules nor a valid \
dispatch table, and so cannot be used for replacing.\"", 2, 101, 5, 
    33591135623197961147, "Local"},
   "MessageTemplate"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.916676573325624*^9, 3.9166770559636507`*^9},
 CellLabel->
  "During evaluation of \
In[101]:=",ExpressionUUID->"f966dbd1-ea5e-4691-b735-d5b1149fe993"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "General", "stop", 
    "\"Further output of \
\\!\\(\\*FormBox[StyleBox[RowBox[{\\\"ReplaceAll\\\", \\\"::\\\", \
\\\"reps\\\"}], \\\"MessageName\\\"], TraditionalForm]\\) will be suppressed \
during this calculation.\"", 2, 101, 6, 33591135623197961147, "Local"},
   "MessageTemplate"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.916676573325624*^9, 3.9166770559663887`*^9},
 CellLabel->
  "During evaluation of \
In[101]:=",ExpressionUUID->"9dfcbd75-5390-410f-8ac4-eedcb9bdc7d7"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "FCCanonicalizeDummyIndices", "failmsg", 
    "\"Error! FCCanonicalizeDummyIndices has encountered a fatal problem and \
must abort the computation. The problem reads: \
\\!\\(\\*FormBox[\\\"\\\\\\\"The input expression contains dummy indices that\
\\\\\\\\n\\\\\\\\t\\\\\\\\t\\\\\\\\tappear more than twice, which violates \
the Einstein convention.\\\\\\\"\\\", TraditionalForm]\\)\"", 2, 101, 7, 
    33591135623197961147, "Local", "FeynCalc`FCCanonicalizeDummyIndices"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.916676573325624*^9, 3.916677055990264*^9},
 CellLabel->
  "During evaluation of \
In[101]:=",ExpressionUUID->"25ed9984-d922-4f98-89cf-80dba96b3f1c"],

Cell[BoxData[
 FormBox["$Aborted", TraditionalForm]], "Output",
 CellChangeTimes->{
  3.915613619261639*^9, 3.915613654019705*^9, 3.915613899180379*^9, 
   3.915614329011005*^9, 3.915629170498974*^9, 3.91563045917248*^9, 
   3.915631227898444*^9, 3.915631521000297*^9, 3.915631686678723*^9, 
   3.915631884866362*^9, {3.915632224644031*^9, 3.915632255556457*^9}, 
   3.9156323499400177`*^9, 3.915632577486083*^9, 3.915641645079299*^9, 
   3.915641689764022*^9, {3.915641786050984*^9, 3.915641815613153*^9}, 
   3.9156418776178913`*^9, 3.915682316745459*^9, 3.915683002759655*^9, 
   3.915683200870894*^9, 3.915683943587332*^9, 3.915688081363284*^9, 
   3.9158567577127*^9, 3.915858007459689*^9, 3.915858129994361*^9, 
   3.915873383007713*^9, 3.915873552571293*^9, 3.9159362285688677`*^9, 
   3.915936449177613*^9, 3.916110401440959*^9, 3.916115565357217*^9, 
   3.916117270246111*^9, 3.916117393329343*^9, 3.916117819064905*^9, 
   3.916117854843932*^9, 3.9161185574230843`*^9, 3.916119350851529*^9, 
   3.916119437086424*^9, 3.91612160257123*^9, 3.916453225679562*^9, 
   3.916548236859997*^9, 3.916548462151877*^9, 3.916549573217841*^9, 
   3.916549703672954*^9, 3.9165498050225773`*^9, 3.916551542392592*^9, 
   3.916551612462488*^9, 3.916552122627162*^9, 3.916675485288378*^9, 
   3.9166765733580723`*^9, 3.916677055993932*^9},
 CellLabel->
  "Out[101]=",ExpressionUUID->"ad9ac052-8eea-4f5d-889f-f5e256571b77"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect2", "[", 
  RowBox[{
   RowBox[{"ampQZVertexDiv", "[", "5", "]"}], ",", " ", 
   RowBox[{
    RowBox[{"DiracGamma", "[", "__", "]"}], ".", 
    RowBox[{"DiracGamma", "[", 
     RowBox[{"6", "|", "7"}], "]"}]}], ",", " ", 
   RowBox[{"Factoring", "->", "Simplify"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.915858061559325*^9, 3.91585810481668*^9}},
 CellLabel->
  "In[102]:=",ExpressionUUID->"35e6529c-1861-4b3b-8e0f-1b393100ab97"],

Cell[BoxData[
 FormBox[
  RowBox[{"ampQZVertexDiv", "(", "5", ")"}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.915858105781809*^9, 3.915858132391477*^9}, 
   3.915873383068246*^9, 3.915873553208068*^9, 3.9159362434986353`*^9, 
   3.915936457857578*^9, 3.9161104016226254`*^9, 3.916115565592447*^9, 
   3.916117285903023*^9, 3.91611739361619*^9, 3.9161178963933*^9, 
   3.9161185576093473`*^9, 3.916119351164302*^9, 3.916119447560454*^9, 
   3.916121602927001*^9, 3.916453225812026*^9, 3.916548236959384*^9, 
   3.916548462251762*^9, 3.916549573343362*^9, 3.916549703774844*^9, 
   3.9165498051279917`*^9, 3.916551542487288*^9, 3.916551612569121*^9, 
   3.916552122718815*^9, 3.916675485381741*^9, 3.91667657338381*^9, 
   3.916677056020727*^9},
 CellLabel->
  "Out[102]=",ExpressionUUID->"201b525c-aa6c-4180-9bb2-f7743568e5d8"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"ampQZVertexDivL", " ", "=", " ", 
   RowBox[{
    RowBox[{"SelectNotFree2", "[", 
     RowBox[{
      RowBox[{"ampQZVertexDiv", "[", "5", "]"}], ",", " ", 
      RowBox[{
       RowBox[{"DiracGamma", "[", "__", "]"}], ".", 
       RowBox[{"DiracGamma", "[", "7", "]"}]}]}], "]"}], " ", "/.", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"DiracGamma", "[", "__", "]"}], ".", 
      RowBox[{"DiracGamma", "[", "7", "]"}]}], "->", "1"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"ampQZVertexDivR", " ", "=", " ", 
   RowBox[{
    RowBox[{"SelectNotFree2", "[", 
     RowBox[{
      RowBox[{"ampQZVertexDiv", "[", "5", "]"}], ",", " ", 
      RowBox[{
       RowBox[{"DiracGamma", "[", "__", "]"}], ".", 
       RowBox[{"DiracGamma", "[", "6", "]"}]}]}], "]"}], " ", "/.", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"DiracGamma", "[", "__", "]"}], ".", 
      RowBox[{"DiracGamma", "[", "6", "]"}]}], "->", "1"}]}]}], 
  ";"}]}], "Code",
 CellChangeTimes->{{3.916117966919781*^9, 3.916118088568331*^9}},
 CellLabel->
  "In[103]:=",ExpressionUUID->"efde68a8-05af-4acf-86f6-f506e397c36c"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"solL", "[", "5", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"Solve", "[", 
      RowBox[{
       RowBox[{"ampQZVertexDivL", " ", "==", " ", "0"}], ",", " ", "dsW"}], 
      "]"}], " ", "//", " ", "Flatten"}], " ", "//", " ", "Simplify"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"solR", "[", "5", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"Solve", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"ampQZVertexDivR", " ", "==", " ", "0"}], " ", "//", " ", 
       RowBox[{
        RowBox[{"ReplaceAll", "[", 
         RowBox[{"#", ",", " ", 
          RowBox[{"solL", "[", "5", "]"}]}], "]"}], "&"}]}], ",", " ", "de"}],
      "]"}], " ", "//", " ", "Flatten"}], " ", "//", " ", 
   "Simplify"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"solL", "[", "5", "]"}], " ", "//", " ", 
   RowBox[{
    RowBox[{"ReplaceAll", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"solR", "[", "5", "]"}]}], "]"}], "&"}]}], " ", "//", " ", 
  "Simplify"}], "\n", 
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"solMS4", " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"sol", "[", "5", "]"}], " ", "/.", " ", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"SMP", "[", "\"\<d_e\>\"", "]"}], " ", "->", " ", 
         RowBox[{"SMP", "[", "\"\<d_e^MS\>\"", "]"}]}], "}"}], "\n", 
       "solMSbar4"}]}], " ", "=", " ", 
     RowBox[{
      RowBox[{"sol", "[", "5", "]"}], " ", "/.", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"SMP", "[", "\"\<d_e\>\"", "]"}], " ", "->", " ", 
         RowBox[{"SMP", "[", "\"\<d_e^MSbar\>\"", "]"}]}], ",", " ", 
        RowBox[{
         RowBox[{"1", "/", "Epsilon"}], " ", "->", " ", 
         RowBox[{"SMP", "[", "\"\<Delta\>\"", "]"}]}]}], "}"}]}]}]}], 
   "*)"}]}]}], "Code",
 CellChangeTimes->{{3.9156319820491467`*^9, 3.91563209134406*^9}, 
   3.915632136479946*^9, 3.915632168038254*^9, {3.915632310098738*^9, 
   3.915632345923936*^9}, {3.9156830627848*^9, 3.915683062868291*^9}, {
   3.91611809389523*^9, 3.916118129182473*^9}, {3.916453696028009*^9, 
   3.916453781852015*^9}, {3.91645388552054*^9, 3.916453888966609*^9}, {
   3.916454276621171*^9, 3.916454287684423*^9}},
 CellLabel->
  "In[105]:=",ExpressionUUID->"5ce67e2a-dbb9-4b4b-ac6e-b3d5e8e426e7"],

Cell[BoxData[
 FormBox[
  RowBox[{"{", "}"}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.915632026939797*^9, 3.91563204079486*^9}, 
   3.915632092662122*^9, 3.915632168952011*^9, {3.915632242613202*^9, 
   3.915632257555408*^9}, 3.915632351538498*^9, 3.915632578255994*^9, 
   3.91564191629659*^9, 3.915682316791788*^9, 3.915683070908189*^9, 
   3.915683205301784*^9, 3.915688081696908*^9, 3.91585675833086*^9, 
   3.915873383133428*^9, 3.915873553948072*^9, 3.915936262452305*^9, 
   3.9159364599031663`*^9, 3.916110401731659*^9, 3.916115565786027*^9, 
   3.916117303054174*^9, 3.916117393971449*^9, 3.91611790990711*^9, {
   3.916118114484117*^9, 3.916118129979144*^9}, 3.916118557741918*^9, 
   3.916119351437003*^9, 3.916119464153959*^9, 3.9161216031596527`*^9, 
   3.916453225884821*^9, 3.916453709914456*^9, {3.9164537554557743`*^9, 
   3.916453782466207*^9}, 3.916453890567276*^9, {3.916454283318411*^9, 
   3.91645428807203*^9}, 3.916548237037602*^9, 3.9165484623305387`*^9, 
   3.9165495734621058`*^9, 3.9165497038710413`*^9, 3.916549805196796*^9, 
   3.916551542568256*^9, 3.916551612683117*^9, 3.916552122795031*^9, 
   3.91667548546152*^9, 3.916676573415946*^9, 3.916677056052547*^9},
 CellLabel->
  "Out[106]=",ExpressionUUID->"9696cf68-74a7-49bf-ac3d-8f676a5c9caa"],

Cell[BoxData[
 FormBox[
  RowBox[{"{", "}"}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.915632026939797*^9, 3.91563204079486*^9}, 
   3.915632092662122*^9, 3.915632168952011*^9, {3.915632242613202*^9, 
   3.915632257555408*^9}, 3.915632351538498*^9, 3.915632578255994*^9, 
   3.91564191629659*^9, 3.915682316791788*^9, 3.915683070908189*^9, 
   3.915683205301784*^9, 3.915688081696908*^9, 3.91585675833086*^9, 
   3.915873383133428*^9, 3.915873553948072*^9, 3.915936262452305*^9, 
   3.9159364599031663`*^9, 3.916110401731659*^9, 3.916115565786027*^9, 
   3.916117303054174*^9, 3.916117393971449*^9, 3.91611790990711*^9, {
   3.916118114484117*^9, 3.916118129979144*^9}, 3.916118557741918*^9, 
   3.916119351437003*^9, 3.916119464153959*^9, 3.9161216031596527`*^9, 
   3.916453225884821*^9, 3.916453709914456*^9, {3.9164537554557743`*^9, 
   3.916453782466207*^9}, 3.916453890567276*^9, {3.916454283318411*^9, 
   3.91645428807203*^9}, 3.916548237037602*^9, 3.9165484623305387`*^9, 
   3.9165495734621058`*^9, 3.9165497038710413`*^9, 3.916549805196796*^9, 
   3.916551542568256*^9, 3.916551612683117*^9, 3.916552122795031*^9, 
   3.91667548546152*^9, 3.916676573415946*^9, 3.916677056052939*^9},
 CellLabel->
  "Out[107]=",ExpressionUUID->"6b738096-19dd-4c0c-8977-576353399503"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"ampQZVertexDiv", "[", "2", "]"}], " ", "//", "\n", "\t", 
           RowBox[{
            RowBox[{"ReplaceAll", "[", 
             RowBox[{"#", ",", " ", 
              RowBox[{
               RowBox[{
                RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}], "^", "2"}], " ", "->",
                " ", 
               RowBox[{"4", " ", "Pi", " ", 
                RowBox[{"SMP", "[", "\"\<alpha_s\>\"", "]"}]}]}]}], "]"}], 
            "&"}]}], " ", "//", "\n", "\t", "Simplify"}], " ", "//", "\n", 
         "\t", 
         RowBox[{
          RowBox[{"ReplaceAll", "[", 
           RowBox[{"#", ",", " ", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"dQL", "->", 
               RowBox[{
                RowBox[{"Re", "[", "dQL", "]"}], "+", 
                RowBox[{"\[ImaginaryI]", " ", 
                 RowBox[{"Im", "[", "dQL", "]"}]}]}]}], ",", " ", 
              RowBox[{"dQR", "->", 
               RowBox[{
                RowBox[{"Re", "[", "dQR", "]"}], "+", 
                RowBox[{"\[ImaginaryI]", " ", 
                 RowBox[{"Im", "[", "dQR", "]"}]}]}]}]}], "}"}]}], "]"}], 
          "&"}]}], " ", "//", "\n", "\t", 
        RowBox[{
         RowBox[{"ReplaceRepeated", "[", 
          RowBox[{"#", ",", " ", "solQMS"}], "]"}], "&"}]}], " ", "//", "\n", 
       "\t", 
       RowBox[{
        RowBox[{"ReplaceRepeated", "[", 
         RowBox[{"#", ",", " ", 
          RowBox[{"solR", "[", "5", "]"}]}], "]"}], "&"}]}], " ", "//", "\n", 
      "\t", 
      RowBox[{
       RowBox[{"ReplaceRepeated", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{"solL", "[", "5", "]"}]}], "]"}], "&"}]}], " ", "//", "\n", 
     "\t", "Simplify"}], " ", "//", "\n", "\t", 
    RowBox[{
     RowBox[{"ReplaceRepeated", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{"solR", "[", "5", "]"}]}], "]"}], "&"}]}], " ", "//", "\n", 
   "\t", 
   RowBox[{
    RowBox[{"ReplaceAll", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"CA", " ", "->", " ", "N"}], ",", " ", 
        RowBox[{"CF", " ", "->", " ", 
         FractionBox[
          RowBox[{
           RowBox[{"N", "^", "2"}], "-", "1"}], 
          RowBox[{"2", "N"}]]}]}], "}"}]}], "]"}], "&"}]}], " ", "//", "\n", 
  "\t", 
  RowBox[{
   RowBox[{"Collect2", "[", 
    RowBox[{"#", ",", " ", "DiracGamma", ",", " ", 
     RowBox[{"Factoring", "->", "Simplify"}]}], "]"}], "&"}]}]], "Code",
 CellChangeTimes->{
  3.9156321804389963`*^9, {3.916453998553445*^9, 3.916454133017577*^9}, {
   3.916454184235434*^9, 3.9164541901646004`*^9}, {3.916454244711852*^9, 
   3.916454249330775*^9}, {3.9164542968061438`*^9, 3.916454414163838*^9}, {
   3.916454656676256*^9, 3.916454722232853*^9}, {3.916454813315284*^9, 
   3.916454835578021*^9}},
 CellLabel->
  "In[108]:=",ExpressionUUID->"33bc48d5-628e-4396-9536-02fef67c724b"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "ReplaceRepeated", "reps", 
    "\"\\!\\(\\*FormBox[RowBox[{\\\"{\\\", \\\"solQMS\\\", \\\"}\\\"}], \
TraditionalForm]\\) is neither a list of replacement rules nor a valid \
dispatch table, and so cannot be used for replacing.\"", 2, 108, 8, 
    33591135623197961147, "Local"},
   "MessageTemplate"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.916676573521763*^9, 3.916677056159544*^9},
 CellLabel->
  "During evaluation of \
In[108]:=",ExpressionUUID->"e4663f75-079e-4635-9255-5585cbe234e6"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "ReplaceRepeated", "reps", 
    "\"\\!\\(\\*FormBox[RowBox[{\\\"{\\\", \\\"solQMS\\\", \\\"}\\\"}], \
TraditionalForm]\\) is neither a list of replacement rules nor a valid \
dispatch table, and so cannot be used for replacing.\"", 2, 108, 9, 
    33591135623197961147, "Local"},
   "MessageTemplate"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.916676573521763*^9, 3.9166770562128687`*^9},
 CellLabel->
  "During evaluation of \
In[108]:=",ExpressionUUID->"390c5cae-7067-4d07-8ca5-10903a38cfe2"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "ReplaceRepeated", "reps", 
    "\"\\!\\(\\*FormBox[RowBox[{\\\"{\\\", \\\"solQMS\\\", \\\"}\\\"}], \
TraditionalForm]\\) is neither a list of replacement rules nor a valid \
dispatch table, and so cannot be used for replacing.\"", 2, 108, 10, 
    33591135623197961147, "Local"},
   "MessageTemplate"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.916676573521763*^9, 3.916677056216259*^9},
 CellLabel->
  "During evaluation of \
In[108]:=",ExpressionUUID->"b727213b-81f7-4066-a755-2a52a6e4431f"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "General", "stop", 
    "\"Further output of \
\\!\\(\\*FormBox[StyleBox[RowBox[{\\\"ReplaceRepeated\\\", \\\"::\\\", \
\\\"reps\\\"}], \\\"MessageName\\\"], TraditionalForm]\\) will be suppressed \
during this calculation.\"", 2, 108, 11, 33591135623197961147, "Local"},
   "MessageTemplate"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.916676573521763*^9, 3.916677056219108*^9},
 CellLabel->
  "During evaluation of \
In[108]:=",ExpressionUUID->"46112d16-1584-4cf1-b92c-ffcb353cf312"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    FractionBox["1", 
     RowBox[{"48", " ", "\[Pi]", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         RowBox[{"cos", "("}], 
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"sin", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], 
    RowBox[{"\<\"e\"\>", " ", 
     RowBox[{"(", 
      RowBox[{"N", "-", 
       FractionBox[
        RowBox[{
         SuperscriptBox["N", "2"], "-", "1"}], "N"]}], ")"}], " ", 
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
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]]}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"cos", "("}], 
              SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"4", " ", "\[Pi]", " ", "N", " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", 
                 RowBox[{"6", " ", 
                  SubscriptBox["\[Delta]", "e"]}]}], "+", 
                RowBox[{"4", " ", 
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"2", " ", 
                    SubscriptBox["\[Delta]", "e"]}], "+", 
                   SubscriptBox["\[Delta]", "W"]}], ")"}], " ", 
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"sin", "("}], 
                    SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
                
                RowBox[{"3", " ", 
                 SubscriptBox["\[Delta]", "W"]}]}], ")"}]}], "+", 
             RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
              RowBox[{"(", 
               RowBox[{
                SuperscriptBox["N", "2"], "-", "1"}], ")"}], " ", 
              SubscriptBox["\[Alpha]", "s"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"4", " ", 
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"sin", "("}], 
                    SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
                "3"}], ")"}]}], "+", 
             RowBox[{"8", " ", "\[Pi]", " ", "N", " ", 
              RowBox[{"Re", "(", 
               SubscriptBox["\[Delta]", "qL"], ")"}], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"4", " ", 
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"sin", "("}], 
                    SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
                "3"}], ")"}]}]}], ")"}]}], "+", 
          RowBox[{"4", " ", "\[Pi]", " ", "N", " ", 
           SubscriptBox["\[Delta]", "W"], " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"sin", "("}], 
              SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
           RowBox[{"(", 
            RowBox[{"3", "-", 
             RowBox[{"4", " ", 
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"sin", "("}], 
                 SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}]}], 
            ")"}]}]}], ")"}]}], "+", 
       RowBox[{"4", " ", 
        RowBox[{
         SuperscriptBox["\[Gamma]", 
          FormBox[
           FormBox["\[Mu]",
            TraditionalForm],
           TraditionalForm]], ".", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["6",
           TraditionalForm]]}], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"cos", "("}], 
              SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"4", " ", "\[Pi]", " ", "N", " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"2", " ", 
                 SubscriptBox["\[Delta]", "e"]}], "+", 
                SubscriptBox["\[Delta]", "W"]}], ")"}]}], "+", 
             RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
              RowBox[{"(", 
               RowBox[{
                SuperscriptBox["N", "2"], "-", "1"}], ")"}], " ", 
              SubscriptBox["\[Alpha]", "s"]}], "+", 
             RowBox[{"8", " ", "\[Pi]", " ", "N", " ", 
              RowBox[{"Re", "(", 
               SubscriptBox["\[Delta]", "qR"], ")"}]}]}], ")"}]}], "-", 
          RowBox[{"4", " ", "\[Pi]", " ", "N", " ", 
           SubscriptBox["\[Delta]", "W"], " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{"sin", "("}], 
              SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}]}], 
         ")"}]}]}], ")"}]}]}], "//.", "\[VeryThinSpace]", "solQMS"}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.915632180930476*^9, 3.9156823168376627`*^9, 3.91568808192652*^9, 
   3.9158567587401743`*^9, 3.91587338319538*^9, 3.915873554282963*^9, 
   3.916110401998032*^9, 3.9161155659451637`*^9, 3.9161173944776573`*^9, 
   3.916118557873011*^9, 3.916119351597136*^9, 3.916121603379101*^9, 
   3.916453225938462*^9, 3.916454043855806*^9, {3.916454093786485*^9, 
   3.916454133493959*^9}, 3.916454191935753*^9, 3.916454249597139*^9, {
   3.9164542985972233`*^9, 3.916454311485731*^9}, {3.916454342581313*^9, 
   3.91645434645428*^9}, 3.916454415530726*^9, {3.916454694859777*^9, 
   3.916454722672648*^9}, {3.916454824858048*^9, 3.916454836197253*^9}, 
   3.916548237469133*^9, 3.9165484627587976`*^9, 3.9165495736570063`*^9, 
   3.916549704318939*^9, 3.916549805638938*^9, 3.9165515430044193`*^9, 
   3.91655161314555*^9, 3.916552123247663*^9, 3.9166754859258947`*^9, 
   3.9166765736088467`*^9, 3.916677056243264*^9},
 CellLabel->
  "Out[108]=",ExpressionUUID->"29cb6f56-e39c-4f2f-8c57-51a2ab4b4d0f"]
}, Open  ]]
}, Closed]],

Cell[CellGroupData[{

Cell["Gluino self-energy", "Subsection",
 CellChangeTimes->{{3.914575682808432*^9, 3.914575687573115*^9}, {
  3.916551323831279*^9, 
  3.916551325705822*^9}},ExpressionUUID->"507c374a-0c02-4c1d-a73d-\
69a4a2d8ab36"],

Cell["Some text", "Text",
 CellChangeTimes->{{3.914575689930893*^9, 
  3.914575693724884*^9}},ExpressionUUID->"c75236b9-7e4e-4342-80b2-\
103dbf3e85ed"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"ampGluinoSE", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"ampGluinoSE", "[", "0", "]"}], " ", "//", " ", 
       "DiracSimplify"}], " ", "//", "\n", "\t", "SUNSimplify"}], " ", "//", 
     " ", "DiracSimplify"}], " ", "//", "\n", "\t", 
    RowBox[{
     RowBox[{"TID", "[", 
      RowBox[{"#", ",", " ", "q", ",", " ", 
       RowBox[{"UsePaVeBasis", "->", "True"}], ",", 
       RowBox[{"ToPaVe", "->", "True"}]}], "]"}], "&"}]}]}], ";"}]], "Code",
 CellChangeTimes->{{3.914575695650922*^9, 3.914575751381132*^9}, 
   3.914576311078836*^9, {3.914576498433462*^9, 3.914576521614826*^9}, {
   3.914576699501038*^9, 3.914576728664986*^9}, {3.914577005384384*^9, 
   3.914577015314972*^9}, {3.915604349457487*^9, 3.915604349521366*^9}, 
   3.915605996130371*^9, 3.915606032474703*^9, {3.915630710654091*^9, 
   3.91563071933018*^9}, {3.915635093718601*^9, 3.915635158395149*^9}, 
   3.915635191700086*^9, {3.915682048904943*^9, 3.915682050463778*^9}, 
   3.915685190552537*^9, {3.915688060501205*^9, 3.915688073394274*^9}, {
   3.915688193665931*^9, 3.915688205910771*^9}, 3.915688995660984*^9, 
   3.915689049143714*^9, {3.915695805549962*^9, 3.91569580750732*^9}, {
   3.915695932185074*^9, 3.915695939898809*^9}, {3.9156961539744577`*^9, 
   3.91569617780539*^9}, {3.915698851346374*^9, 3.9156988714267187`*^9}, 
   3.916115650454897*^9, {3.9161157876150293`*^9, 3.916115818703369*^9}, {
   3.916115859715121*^9, 3.916115896549749*^9}, {3.9165513322530518`*^9, 
   3.916551338106895*^9}},
 CellLabel->
  "In[109]:=",ExpressionUUID->"5668510c-a602-4854-8bb7-a63eef5e933c"],

Cell["Discard all the finite pieces of the 1-loop amplitude.", "Text",
 CellChangeTimes->{{3.914575760905298*^9, 
  3.914575773152245*^9}},ExpressionUUID->"eb2b04e9-e579-4a5e-9a68-\
46c8247cfac8"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"ampGluinoSEDiv", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"ampGluinoSE", "[", "1", "]"}], " ", "//", " ", 
     RowBox[{
      RowBox[{"PaVeUVPart", "[", "#", "]"}], "&"}]}], " ", "//", " ", 
    RowBox[{
     RowBox[{"ReplaceRepeated", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{
        RowBox[{"SqrtEGl", " ", 
         RowBox[{"SqrtEGl", "\[Conjugate]"}]}], "->", "1"}]}], "]"}], 
     "&"}]}]}], ";"}]], "Code",
 CellChangeTimes->{{3.914575774640349*^9, 3.914575814619986*^9}, 
   3.9145763206515303`*^9, {3.915606002058123*^9, 3.915606011436789*^9}, 
   3.915606089963867*^9, {3.915607855432483*^9, 3.915607866126801*^9}, {
   3.915630725612297*^9, 3.915630730683013*^9}, {3.9156988776187773`*^9, 
   3.915698942658197*^9}, {3.916551342581439*^9, 3.916551345424604*^9}},
 CellLabel->
  "In[110]:=",ExpressionUUID->"2c3f98e6-8f31-4e0c-8a7d-c2fae4a85aae"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampGluinoSEDiv", "[", "1", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"FCReplaceD", "[", 
       RowBox[{
        RowBox[{"ampGluinoSEDiv", "[", "0", "]"}], ",", " ", 
        RowBox[{"D", "->", 
         RowBox[{"4", "-", 
          RowBox[{"2", "Epsilon"}]}]}]}], "]"}], " ", "//", "\n", "\t", 
      RowBox[{
       RowBox[{"Series", "[", 
        RowBox[{"#", ",", 
         RowBox[{"{", 
          RowBox[{"Epsilon", ",", "0", ",", "0"}], "}"}]}], "]"}], "&"}]}], 
     " ", "//", "\n", "\t", "Normal"}], " ", "//", " ", "FCHideEpsilon"}], 
   " ", "//", " ", "Simplify"}]}]], "Code",
 CellChangeTimes->{{3.914575819158785*^9, 3.9145758830227823`*^9}, 
   3.91457632775228*^9, {3.914576588185513*^9, 3.914576592494037*^9}, {
   3.9145766284047728`*^9, 3.914576628541034*^9}, {3.915604753444929*^9, 
   3.915604757502358*^9}, {3.915604804794796*^9, 3.915604848440514*^9}, {
   3.915607664370339*^9, 3.915607672293354*^9}, {3.915607817456128*^9, 
   3.915607818877862*^9}, {3.915630518326273*^9, 3.915630648351819*^9}, {
   3.915630733481065*^9, 3.915630750994009*^9}, {3.915635001334855*^9, 
   3.91563501175825*^9}, {3.915635050127429*^9, 3.915635067642909*^9}, {
   3.9156888437255077`*^9, 3.915688844728621*^9}, 3.915698954706225*^9, {
   3.916551349465932*^9, 3.916551352555624*^9}},
 CellLabel->
  "In[111]:=",ExpressionUUID->"aad03992-a105-4ae6-951f-12fb8cfac234"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], 
   SuperscriptBox["\[Delta]", 
    RowBox[{
     FormBox[
      FormBox["Glu1",
       TraditionalForm],
      TraditionalForm], 
     FormBox[
      FormBox["Glu2",
       TraditionalForm],
      TraditionalForm]}]], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "8"}], " ", 
      SubscriptBox["C", "A"], " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{"2", " ", 
      SubscriptBox["C", "A"], " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"8", " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]], " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{"2", " ", 
      SubscriptBox["C", "A"], " ", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"4", " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{"SqrtEGl"},
         "Conjugate"], ")"}], "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
      RowBox[{"MQU", "(", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Gen", 3],
         Editable->False],
        TraditionalForm], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{"4", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{"SqrtEGl"},
         "Conjugate"], ")"}], "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      RowBox[{"MQU", "(", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Gen", 3],
         Editable->False],
        TraditionalForm], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"4", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{"SqrtEGl"},
         "Conjugate"], ")"}], "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
      RowBox[{"MQU", "(", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Gen", 3],
         Editable->False],
        TraditionalForm], ")"}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"4", " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
      RowBox[{"MQU", "(", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Gen", 3],
         Editable->False],
        TraditionalForm], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{"4", " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      RowBox[{"MQU", "(", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Gen", 3],
         Editable->False],
        TraditionalForm], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"4", " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
      RowBox[{"MQU", "(", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Gen", 3],
         Editable->False],
        TraditionalForm], ")"}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"4", " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{"SqrtEGl"},
         "Conjugate"], ")"}], "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
      RowBox[{"MQD", "(", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Gen", 3],
         Editable->False],
        TraditionalForm], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{"4", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{"SqrtEGl"},
         "Conjugate"], ")"}], "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      RowBox[{"MQD", "(", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Gen", 3],
         Editable->False],
        TraditionalForm], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"4", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{"SqrtEGl"},
         "Conjugate"], ")"}], "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
      RowBox[{"MQD", "(", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Gen", 3],
         Editable->False],
        TraditionalForm], ")"}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "1"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"4", " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
      RowBox[{"MQD", "(", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Gen", 3],
         Editable->False],
        TraditionalForm], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{"4", " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      RowBox[{"MQD", "(", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Gen", 3],
         Editable->False],
        TraditionalForm], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"4", " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "1"}], 
           OverscriptBox["q", "~"]], ")"}]},
       "Conjugate"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
      RowBox[{"MQD", "(", 
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Gen", 3],
         Editable->False],
        TraditionalForm], ")"}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["R", 
           RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
               SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
             "2"}], 
           OverscriptBox["q", "~"]], ")"}]},
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
         TraditionalForm]]}], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["R", 
       RowBox[{
        FormBox[
         InterpretationBox[
          RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
          SequenceForm["Sfe", 3],
          Editable->False],
         TraditionalForm], "2"}], 
       OverscriptBox["q", "~"]], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "+", 
     RowBox[{"8", " ", 
      SubscriptBox["C", "A"], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"2", " ", 
      SubscriptBox["C", "A"], " ", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["g", "s", "2"]}], "-", 
     RowBox[{"8", " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]], " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["Z", 
       OverscriptBox["g", "~"]], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], "-", 
     RowBox[{"16", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["Z", 
       SubscriptBox["m", 
        OverscriptBox["g", "~"]]], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]]}], "-", 
     RowBox[{"8", " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]], " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["Z", 
       OverscriptBox["g", "~"]], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], "-", 
     RowBox[{"16", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["Z", 
       SubscriptBox["m", 
        OverscriptBox["g", "~"]]], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]]}], "-", 
     RowBox[{"8", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubscriptBox["Z", 
           OverscriptBox["g", "~"]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubscriptBox["m", 
          OverscriptBox["g", "~"]], " ", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox[
            OverscriptBox["\[Gamma]", "_"], 
            FormBox["6",
             TraditionalForm]], "+", 
           SuperscriptBox[
            OverscriptBox["\[Gamma]", "_"], 
            FormBox["7",
             TraditionalForm]]}], ")"}]}], "-", 
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
           TraditionalForm]]}], "-", 
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
      SuperscriptBox["\[Pi]", "2"], " ", 
      SubscriptBox["Z", 
       OverscriptBox["g", "~"]], " ", 
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
         TraditionalForm]]}]}], "+", 
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
         TraditionalForm]]}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "1"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"], " ", 
         RowBox[{"(", 
          RowBox[{"\<\"\[CapitalDelta]\"\>", "-", 
           RowBox[{"log", "(", 
            RowBox[{"4", " ", "\[Pi]"}], ")"}], "+", 
           TagBox["\[DoubledGamma]",
            Function[{}, EulerGamma]]}], ")"}], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "1"}], 
          OverscriptBox["q", "~"]], " ", 
         SubsuperscriptBox["g", "s", "2"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "2"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"], " ", 
         RowBox[{"(", 
          RowBox[{"\<\"\[CapitalDelta]\"\>", "-", 
           RowBox[{"log", "(", 
            RowBox[{"4", " ", "\[Pi]"}], ")"}], "+", 
           TagBox["\[DoubledGamma]",
            Function[{}, EulerGamma]]}], ")"}], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "2"}], 
          OverscriptBox["q", "~"]], " ", 
         SubsuperscriptBox["g", "s", "2"]}], "+", 
        RowBox[{
         TagBox["\[DoubledGamma]",
          Function[{}, EulerGamma]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "1"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "1"}], 
          OverscriptBox["q", "~"]], " ", 
         SubsuperscriptBox["g", "s", "2"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "1"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"], " ", "\<\"\[CapitalDelta]\"\>", " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "1"}], 
          OverscriptBox["q", "~"]], " ", 
         SubsuperscriptBox["g", "s", "2"]}], "-", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "1"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"], " ", 
         RowBox[{"log", "(", 
          RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "1"}], 
          OverscriptBox["q", "~"]], " ", 
         SubsuperscriptBox["g", "s", "2"]}], "+", 
        RowBox[{
         TagBox["\[DoubledGamma]",
          Function[{}, EulerGamma]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "2"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "2"}], 
          OverscriptBox["q", "~"]], " ", 
         SubsuperscriptBox["g", "s", "2"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "2"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"], " ", "\<\"\[CapitalDelta]\"\>", " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "2"}], 
          OverscriptBox["q", "~"]], " ", 
         SubsuperscriptBox["g", "s", "2"]}], "-", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "2"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"], " ", 
         RowBox[{"log", "(", 
          RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "2"}], 
          OverscriptBox["q", "~"]], " ", 
         SubsuperscriptBox["g", "s", "2"]}], "+", 
        RowBox[{"8", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["Z", 
          OverscriptBox["g", "~"]]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.9145763089487762`*^9, 3.914576524893687*^9, 3.914576560822183*^9, 
   3.914576592877271*^9, 3.914576628788353*^9, 3.914577023806427*^9, 
   3.915604271832077*^9, 3.915604363053198*^9, {3.915604791892349*^9, 
   3.9156048491966877`*^9}, 3.915605243741829*^9, 3.915606036321088*^9, 
   3.915606091885535*^9, 3.915607693470969*^9, {3.915607800989823*^9, 
   3.915607819635921*^9}, 3.915607885091791*^9, 3.915611630915097*^9, 
   3.915613373813459*^9, {3.915630539730825*^9, 3.915630562541526*^9}, 
   3.9156305961001663`*^9, 3.915630649258675*^9, 3.915631224925931*^9, 
   3.915631683397818*^9, {3.91563513182788*^9, 3.915635161360054*^9}, 
   3.915635228966044*^9, 3.915635564321303*^9, 3.915682313757621*^9, 
   3.915688077366988*^9, 3.91568821576319*^9, 3.915688845784453*^9, 
   3.915698946003491*^9, 3.9158567485002604`*^9, 3.915873382161669*^9, 
   3.915873543616456*^9, 3.916110391635963*^9, 3.916115555626338*^9, 
   3.916117381860962*^9, 3.916118545987059*^9, 3.916119336042478*^9, 
   3.916121583300811*^9, 3.916453220067354*^9, 3.916548231149033*^9, 
   3.9165484566364803`*^9, 3.916549567786574*^9, 3.9165496970357857`*^9, 
   3.916549797448263*^9, 3.916551360331623*^9, 3.91655154381349*^9, 
   3.916551613989353*^9, 3.916552124246958*^9, 3.9166754869953947`*^9, 
   3.916676574615901*^9, 3.916677057259406*^9},
 CellLabel->
  "Out[111]=",ExpressionUUID->"d2f6fdd3-0bfe-4fb2-8b16-c06744d928a8"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampGluinoSEDiv", "[", "2", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"ampGluinoSEDiv", "[", "1", "]"}], " ", "//", "\n", "\t", 
        RowBox[{
         RowBox[{"ReplaceRepeated", "[", 
          RowBox[{"#", ",", 
           RowBox[{"{", "\n", "\t\t", 
            RowBox[{
             RowBox[{"ZmGluino", " ", "->", " ", 
              RowBox[{"1", " ", "+", " ", 
               RowBox[{"alpha", " ", "dmGluino"}]}]}], ",", "\n", "\t\t", 
             RowBox[{"ZGluino", " ", "->", " ", 
              RowBox[{"1", " ", "+", " ", 
               RowBox[{"alpha", " ", "dGluino"}]}]}]}], "}"}]}], "\n", "\t", 
          "]"}], "&"}]}], " ", "//", "\n", "\t", 
       RowBox[{
        RowBox[{"Series", "[", 
         RowBox[{"#", ",", 
          RowBox[{"{", 
           RowBox[{"alpha", ",", "0", ",", "1"}], "}"}]}], "]"}], "&"}]}], 
      " ", "//", "\n", "\t", "Normal"}], " ", "//", " ", 
     RowBox[{
      RowBox[{"ReplaceAll", "[", 
       RowBox[{"#", ",", " ", 
        RowBox[{"alpha", "->", "1"}]}], "]"}], "&"}]}], " ", "//", "\n", "\t", 
    RowBox[{
     RowBox[{"SelectNotFree2", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{"SMP", "[", "\"\<Delta\>\"", "]"}], ",", " ", "dmGluino", ",", 
       " ", "dGluino"}], "]"}], "&"}]}], " ", "//", "\n", "\t", 
   RowBox[{
    RowBox[{"ReplaceAll", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"dGluino", " ", "->", " ", 
       RowBox[{
        RowBox[{"Re", "[", "dGluino", "]"}], " ", "+", " ", 
        RowBox[{"\[ImaginaryI]", " ", 
         RowBox[{"Im", "[", "dGluino", "]"}]}]}]}]}], "]"}], 
    "&"}]}]}]], "Code",
 CellChangeTimes->{{3.91457588791752*^9, 3.914576033332181*^9}, 
   3.914576339848319*^9, {3.915605027550218*^9, 3.915605062139845*^9}, {
   3.915605126283597*^9, 3.915605159187806*^9}, {3.91563075756826*^9, 
   3.9156308141664877`*^9}, {3.915635242691201*^9, 3.915635305198457*^9}, {
   3.915635424253512*^9, 3.915635429392536*^9}, {3.915635471481731*^9, 
   3.915635526529984*^9}, {3.915682070530323*^9, 3.915682159733402*^9}, {
   3.9159501202726173`*^9, 3.9159501621386137`*^9}, {3.916551368270097*^9, 
   3.916551408781432*^9}, {3.916553794309568*^9, 3.9165538213705387`*^9}},
 CellLabel->
  "In[112]:=",ExpressionUUID->"bdc978de-93c3-440d-b51b-420a141ff265"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     RowBox[{"\[Gamma]", "\[CenterDot]", 
      FormBox[
       FormBox["p",
        TraditionalForm],
       TraditionalForm]}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     SubsuperscriptBox["g", "s", "2"]}], 
    RowBox[{"16", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "-", 
   FractionBox[
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SubscriptBox["m", 
      OverscriptBox["g", "~"]], " ", "\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     SubsuperscriptBox["g", "s", "2"]}], 
    RowBox[{"4", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "+", 
   FractionBox[
    RowBox[{
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["R", 
          RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
              SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
            "1"}], 
          OverscriptBox["q", "~"]], ")"}]},
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
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     SubsuperscriptBox["R", 
      RowBox[{
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Sfe", 3],
         Editable->False],
        TraditionalForm], "1"}], 
      OverscriptBox["q", "~"]], " ", 
     SubsuperscriptBox["g", "s", "2"]}], 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "+", 
   FractionBox[
    RowBox[{
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["R", 
          RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
              SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
            "1"}], 
          OverscriptBox["q", "~"]], ")"}]},
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
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     SubsuperscriptBox["R", 
      RowBox[{
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Sfe", 3],
         Editable->False],
        TraditionalForm], "1"}], 
      OverscriptBox["q", "~"]], " ", 
     SubsuperscriptBox["g", "s", "2"]}], 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "-", 
   FractionBox[
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       TemplateBox[{"SqrtEGl"},
        "Conjugate"], ")"}], "2"], " ", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["R", 
          RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
              SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
            "2"}], 
          OverscriptBox["q", "~"]], ")"}]},
      "Conjugate"], " ", 
     SuperscriptBox[
      OverscriptBox["\[Gamma]", "_"], 
      FormBox["7",
       TraditionalForm]], " ", 
     RowBox[{"MQU", "(", 
      FormBox[
       InterpretationBox[
        RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
        SequenceForm["Gen", 3],
        Editable->False],
       TraditionalForm], ")"}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     SubsuperscriptBox["R", 
      RowBox[{
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Sfe", 3],
         Editable->False],
        TraditionalForm], "1"}], 
      OverscriptBox["q", "~"]], " ", 
     SubsuperscriptBox["g", "s", "2"]}], 
    RowBox[{"8", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "+", 
   FractionBox[
    RowBox[{
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["R", 
          RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
              SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
            "2"}], 
          OverscriptBox["q", "~"]], ")"}]},
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
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     SubsuperscriptBox["R", 
      RowBox[{
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Sfe", 3],
         Editable->False],
        TraditionalForm], "2"}], 
      OverscriptBox["q", "~"]], " ", 
     SubsuperscriptBox["g", "s", "2"]}], 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "+", 
   FractionBox[
    RowBox[{
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["R", 
          RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
              SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
            "2"}], 
          OverscriptBox["q", "~"]], ")"}]},
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
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     SubsuperscriptBox["R", 
      RowBox[{
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Sfe", 3],
         Editable->False],
        TraditionalForm], "2"}], 
      OverscriptBox["q", "~"]], " ", 
     SubsuperscriptBox["g", "s", "2"]}], 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "-", 
   FractionBox[
    RowBox[{
     SuperscriptBox["SqrtEGl", "2"], " ", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["R", 
          RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
              SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
            "1"}], 
          OverscriptBox["q", "~"]], ")"}]},
      "Conjugate"], " ", 
     SuperscriptBox[
      OverscriptBox["\[Gamma]", "_"], 
      FormBox["6",
       TraditionalForm]], " ", 
     RowBox[{"MQU", "(", 
      FormBox[
       InterpretationBox[
        RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
        SequenceForm["Gen", 3],
        Editable->False],
       TraditionalForm], ")"}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     SubsuperscriptBox["R", 
      RowBox[{
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Sfe", 3],
         Editable->False],
        TraditionalForm], "2"}], 
      OverscriptBox["q", "~"]], " ", 
     SubsuperscriptBox["g", "s", "2"]}], 
    RowBox[{"8", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "+", 
   FractionBox[
    RowBox[{
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["R", 
          RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
              SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
            "1"}], 
          OverscriptBox["q", "~"]], ")"}]},
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
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     SubsuperscriptBox["R", 
      RowBox[{
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Sfe", 3],
         Editable->False],
        TraditionalForm], "1"}], 
      OverscriptBox["q", "~"]], " ", 
     SubsuperscriptBox["g", "s", "2"]}], 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "+", 
   FractionBox[
    RowBox[{
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["R", 
          RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
              SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
            "1"}], 
          OverscriptBox["q", "~"]], ")"}]},
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
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     SubsuperscriptBox["R", 
      RowBox[{
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Sfe", 3],
         Editable->False],
        TraditionalForm], "1"}], 
      OverscriptBox["q", "~"]], " ", 
     SubsuperscriptBox["g", "s", "2"]}], 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "-", 
   FractionBox[
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       TemplateBox[{"SqrtEGl"},
        "Conjugate"], ")"}], "2"], " ", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["R", 
          RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
              SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
            "2"}], 
          OverscriptBox["q", "~"]], ")"}]},
      "Conjugate"], " ", 
     SuperscriptBox[
      OverscriptBox["\[Gamma]", "_"], 
      FormBox["7",
       TraditionalForm]], " ", 
     RowBox[{"MQD", "(", 
      FormBox[
       InterpretationBox[
        RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
        SequenceForm["Gen", 3],
        Editable->False],
       TraditionalForm], ")"}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     SubsuperscriptBox["R", 
      RowBox[{
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Sfe", 3],
         Editable->False],
        TraditionalForm], "1"}], 
      OverscriptBox["q", "~"]], " ", 
     SubsuperscriptBox["g", "s", "2"]}], 
    RowBox[{"8", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "+", 
   FractionBox[
    RowBox[{
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["R", 
          RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
              SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
            "2"}], 
          OverscriptBox["q", "~"]], ")"}]},
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
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     SubsuperscriptBox["R", 
      RowBox[{
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Sfe", 3],
         Editable->False],
        TraditionalForm], "2"}], 
      OverscriptBox["q", "~"]], " ", 
     SubsuperscriptBox["g", "s", "2"]}], 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "+", 
   FractionBox[
    RowBox[{
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["R", 
          RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
              SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
            "2"}], 
          OverscriptBox["q", "~"]], ")"}]},
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
        TraditionalForm]]}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     SubsuperscriptBox["R", 
      RowBox[{
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Sfe", 3],
         Editable->False],
        TraditionalForm], "2"}], 
      OverscriptBox["q", "~"]], " ", 
     SubsuperscriptBox["g", "s", "2"]}], 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "-", 
   FractionBox[
    RowBox[{
     SuperscriptBox["SqrtEGl", "2"], " ", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["R", 
          RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
              SequenceForm["Sfe", 3], Editable -> False], TraditionalForm], 
            "1"}], 
          OverscriptBox["q", "~"]], ")"}]},
      "Conjugate"], " ", 
     SuperscriptBox[
      OverscriptBox["\[Gamma]", "_"], 
      FormBox["6",
       TraditionalForm]], " ", 
     RowBox[{"MQD", "(", 
      FormBox[
       InterpretationBox[
        RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
        SequenceForm["Gen", 3],
        Editable->False],
       TraditionalForm], ")"}], " ", "\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     SubsuperscriptBox["R", 
      RowBox[{
       FormBox[
        InterpretationBox[
         RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
         SequenceForm["Sfe", 3],
         Editable->False],
        TraditionalForm], "2"}], 
      OverscriptBox["q", "~"]], " ", 
     SubsuperscriptBox["g", "s", "2"]}], 
    RowBox[{"8", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "-", 
   RowBox[{
    FractionBox["1", "2"], " ", 
    SubscriptBox["\[Delta]", 
     SubscriptBox["m", 
      OverscriptBox["g", "~"]]], " ", 
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["6",
      TraditionalForm]], " ", 
    SuperscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Glu1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Glu2",
        TraditionalForm],
       TraditionalForm]}]]}], "-", 
   RowBox[{
    FractionBox["1", "2"], " ", 
    SubscriptBox["\[Delta]", 
     SubscriptBox["m", 
      OverscriptBox["g", "~"]]], " ", 
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["7",
      TraditionalForm]], " ", 
    SuperscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Glu1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Glu2",
        TraditionalForm],
       TraditionalForm]}]]}], "-", 
   RowBox[{
    FractionBox["1", "4"], " ", 
    SubscriptBox["m", 
     OverscriptBox["g", "~"]], " ", 
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["6",
      TraditionalForm]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"Re", "(", 
       SubscriptBox["\[Delta]", 
        OverscriptBox["g", "~"]], ")"}], "-", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", 
         OverscriptBox["g", "~"]], ")"}]}]}], ")"}], " ", 
    SuperscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Glu1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Glu2",
        TraditionalForm],
       TraditionalForm]}]]}], "-", 
   RowBox[{
    FractionBox["1", "4"], " ", 
    SubscriptBox["m", 
     OverscriptBox["g", "~"]], " ", 
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["7",
      TraditionalForm]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"Re", "(", 
       SubscriptBox["\[Delta]", 
        OverscriptBox["g", "~"]], ")"}], "-", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", 
         OverscriptBox["g", "~"]], ")"}]}]}], ")"}], " ", 
    SuperscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Glu1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Glu2",
        TraditionalForm],
       TraditionalForm]}]]}], "+", 
   RowBox[{
    FractionBox["1", "4"], " ", 
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
       TraditionalForm]]}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"Re", "(", 
       SubscriptBox["\[Delta]", 
        OverscriptBox["g", "~"]], ")"}], "-", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", 
         OverscriptBox["g", "~"]], ")"}]}]}], ")"}], " ", 
    SuperscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Glu1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Glu2",
        TraditionalForm],
       TraditionalForm]}]]}], "+", 
   RowBox[{
    FractionBox["1", "4"], " ", 
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
       TraditionalForm]]}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"Re", "(", 
       SubscriptBox["\[Delta]", 
        OverscriptBox["g", "~"]], ")"}], "-", 
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", 
         OverscriptBox["g", "~"]], ")"}]}]}], ")"}], " ", 
    SuperscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Glu1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Glu2",
        TraditionalForm],
       TraditionalForm]}]]}], "-", 
   RowBox[{
    FractionBox["1", "4"], " ", 
    SubscriptBox["m", 
     OverscriptBox["g", "~"]], " ", 
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["6",
      TraditionalForm]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", 
         OverscriptBox["g", "~"]], ")"}]}], "+", 
      RowBox[{"Re", "(", 
       SubscriptBox["\[Delta]", 
        OverscriptBox["g", "~"]], ")"}]}], ")"}], " ", 
    SuperscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Glu1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Glu2",
        TraditionalForm],
       TraditionalForm]}]]}], "-", 
   RowBox[{
    FractionBox["1", "4"], " ", 
    SubscriptBox["m", 
     OverscriptBox["g", "~"]], " ", 
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["7",
      TraditionalForm]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", 
         OverscriptBox["g", "~"]], ")"}]}], "+", 
      RowBox[{"Re", "(", 
       SubscriptBox["\[Delta]", 
        OverscriptBox["g", "~"]], ")"}]}], ")"}], " ", 
    SuperscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Glu1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Glu2",
        TraditionalForm],
       TraditionalForm]}]]}], "+", 
   RowBox[{
    FractionBox["1", "4"], " ", 
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
       TraditionalForm]]}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", 
         OverscriptBox["g", "~"]], ")"}]}], "+", 
      RowBox[{"Re", "(", 
       SubscriptBox["\[Delta]", 
        OverscriptBox["g", "~"]], ")"}]}], ")"}], " ", 
    SuperscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Glu1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Glu2",
        TraditionalForm],
       TraditionalForm]}]]}], "+", 
   RowBox[{
    FractionBox["1", "4"], " ", 
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
       TraditionalForm]]}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"\[ImaginaryI]", " ", 
       RowBox[{"Im", "(", 
        SubscriptBox["\[Delta]", 
         OverscriptBox["g", "~"]], ")"}]}], "+", 
      RowBox[{"Re", "(", 
       SubscriptBox["\[Delta]", 
        OverscriptBox["g", "~"]], ")"}]}], ")"}], " ", 
    SuperscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Glu1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Glu2",
        TraditionalForm],
       TraditionalForm]}]]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.914576309000933*^9, {3.914576526971516*^9, 3.914576560864656*^9}, 
   3.914577028874678*^9, 3.915604271898407*^9, 3.9156043794272947`*^9, 
   3.915604792045149*^9, 3.915604862008191*^9, {3.915605058421609*^9, 
   3.915605062622292*^9}, 3.91560524377412*^9, 3.91560603754948*^9, 
   3.915606092767136*^9, 3.915607694876915*^9, {3.9156078017952337`*^9, 
   3.915607820391342*^9}, 3.915607885140748*^9, 3.915611630949479*^9, 
   3.915613373861554*^9, 3.91563066089172*^9, 3.9156312249526873`*^9, 
   3.915631683437091*^9, {3.915635132981955*^9, 3.915635162124075*^9}, 
   3.915635272360783*^9, 3.915635313631538*^9, 3.9156353484443817`*^9, 
   3.915635429951648*^9, 3.915635564372849*^9, 3.915682313794813*^9, 
   3.915688077398243*^9, 3.915688226218601*^9, 3.9156888486186333`*^9, 
   3.9158567487006083`*^9, 3.915873382230098*^9, 3.91587354376493*^9, 
   3.915950164990975*^9, 3.916110393494076*^9, 3.9161155574063253`*^9, 
   3.916117383710971*^9, 3.916118547783809*^9, 3.916119337903301*^9, 
   3.9161215849144382`*^9, 3.916453220571208*^9, 3.916548231486442*^9, 
   3.9165484569699173`*^9, 3.916549567818125*^9, 3.9165496973846292`*^9, 
   3.916549797792575*^9, 3.9165514110649643`*^9, 3.916551543909491*^9, 
   3.916551614051148*^9, 3.916552124772284*^9, {3.916553817078163*^9, 
   3.916553821883088*^9}, 3.9166754874725857`*^9, 3.916676575072147*^9, 
   3.916677057802278*^9},
 CellLabel->
  "Out[112]=",ExpressionUUID->"a1dd3612-f236-421a-ad64-91c76cfa8fd5"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampGluinoSEDiv", "[", "3", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"ampGluinoSEDiv", "[", "2", "]"}], " ", "//", "\n", "\t", 
    "SUNSimplify"}], " ", "//", "\n", "\t", 
   RowBox[{
    RowBox[{"Collect2", "[", 
     RowBox[{"#", ",", " ", "DiracGamma", ",", " ", 
      RowBox[{"Factoring", "->", "Simplify"}]}], "]"}], "&"}]}]}]], "Code",
 CellChangeTimes->{{3.914576042299127*^9, 3.914576080351676*^9}, 
   3.914576346662568*^9, {3.914576688256481*^9, 3.914576691129487*^9}, {
   3.914577036467249*^9, 3.914577036597219*^9}, {3.91560683458986*^9, 
   3.915606883342495*^9}, {3.915606924375864*^9, 3.915606929498748*^9}, {
   3.9156308316909447`*^9, 3.9156308477848053`*^9}, {3.915635281678619*^9, 
   3.915635282602481*^9}, {3.915699068243824*^9, 3.9156990698677387`*^9}, {
   3.9165514224899263`*^9, 3.916551426111456*^9}},
 CellLabel->
  "In[113]:=",ExpressionUUID->"2c2e8317-99a7-4d5e-850a-e32bd591ab7d"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", 
    FractionBox[
     RowBox[{
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
      SuperscriptBox["\[Delta]", 
       RowBox[{
        FormBox[
         FormBox["Glu1",
          TraditionalForm],
         TraditionalForm], 
        FormBox[
         FormBox["Glu2",
          TraditionalForm],
         TraditionalForm]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
         SuperscriptBox["SqrtEGl", "2"], " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         RowBox[{"MQD", "(", 
          FormBox[
           InterpretationBox[
            RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
            SequenceForm["Gen", 3],
            Editable->False],
           TraditionalForm], ")"}], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "2"}], 
          OverscriptBox["q", "~"]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "1"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
         SuperscriptBox["SqrtEGl", "2"], " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         RowBox[{"MQU", "(", 
          FormBox[
           InterpretationBox[
            RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
            SequenceForm["Gen", 3],
            Editable->False],
           TraditionalForm], ")"}], " ", 
         SubsuperscriptBox["R", 
          RowBox[{
           FormBox[
            InterpretationBox[
             RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
             SequenceForm["Sfe", 3],
             Editable->False],
            TraditionalForm], "2"}], 
          OverscriptBox["q", "~"]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["R", 
              RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "1"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{"4", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["\[Delta]", 
          SubscriptBox["m", 
           OverscriptBox["g", "~"]]]}], "+", 
        RowBox[{"4", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["m", 
          OverscriptBox["g", "~"]], " ", 
         RowBox[{"Re", "(", 
          SubscriptBox["\[Delta]", 
           OverscriptBox["g", "~"]], ")"}]}]}], ")"}]}], 
     RowBox[{"8", " ", 
      SuperscriptBox["\[Pi]", "2"]}]]}], "-", 
   FractionBox[
    RowBox[{
     SuperscriptBox[
      OverscriptBox["\[Gamma]", "_"], 
      FormBox["7",
       TraditionalForm]], " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          TemplateBox[{"SqrtEGl"},
           "Conjugate"], ")"}], "2"], " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"MQD", "(", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Gen", 3],
              Editable->False],
             TraditionalForm], ")"}], " ", 
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "1"}], 
            OverscriptBox["q", "~"]], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "2"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"]}], "+", 
          RowBox[{
           RowBox[{"MQU", "(", 
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Gen", 3],
              Editable->False],
             TraditionalForm], ")"}], " ", 
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "1"}], 
            OverscriptBox["q", "~"]], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "2"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"]}]}], ")"}]}], "+", 
       RowBox[{"4", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", 
        SubscriptBox["\[Delta]", 
         SubscriptBox["m", 
          OverscriptBox["g", "~"]]]}], "+", 
       RowBox[{"4", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", 
        SubscriptBox["m", 
         OverscriptBox["g", "~"]], " ", 
        RowBox[{"Re", "(", 
         SubscriptBox["\[Delta]", 
          OverscriptBox["g", "~"]], ")"}]}]}], ")"}]}], 
    RowBox[{"8", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "+", 
   FractionBox[
    RowBox[{
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
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
        TraditionalForm]]}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "1"}], 
            OverscriptBox["q", "~"]], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "1"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"]}], "+", 
          RowBox[{
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "2"}], 
            OverscriptBox["q", "~"]], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "2"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"]}], "+", 
          RowBox[{
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "1"}], 
            OverscriptBox["q", "~"]], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "1"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"]}], "+", 
          RowBox[{
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "2"}], 
            OverscriptBox["q", "~"]], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "2"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"]}]}], ")"}]}], "+", 
       RowBox[{"16", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", 
        RowBox[{"Re", "(", 
         SubscriptBox["\[Delta]", 
          OverscriptBox["g", "~"]], ")"}]}]}], ")"}]}], 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "+", 
   FractionBox[
    RowBox[{
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
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
        TraditionalForm]]}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "1"}], 
            OverscriptBox["q", "~"]], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "1"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"]}], "+", 
          RowBox[{
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "2"}], 
            OverscriptBox["q", "~"]], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "2"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"]}], "+", 
          RowBox[{
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "1"}], 
            OverscriptBox["q", "~"]], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "1"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"]}], "+", 
          RowBox[{
           SubsuperscriptBox["R", 
            RowBox[{
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Sfe", 3],
               Editable->False],
              TraditionalForm], "2"}], 
            OverscriptBox["q", "~"]], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["R", 
                RowBox[{
                  FormBox[
                   InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                   TraditionalForm], "2"}], 
                OverscriptBox["q", "~"]], ")"}]},
            "Conjugate"]}]}], ")"}]}], "+", 
       RowBox[{"16", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", 
        RowBox[{"Re", "(", 
         SubscriptBox["\[Delta]", 
          OverscriptBox["g", "~"]], ")"}]}]}], ")"}]}], 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "-", 
   FractionBox[
    RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
     SubscriptBox["C", "A"], " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     SubscriptBox["m", 
      OverscriptBox["g", "~"]], " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]]}], 
    RowBox[{"4", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "+", 
   FractionBox[
    RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
     SubscriptBox["C", "A"], " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     RowBox[{"\[Gamma]", "\[CenterDot]", 
      FormBox[
       FormBox["p",
        TraditionalForm],
       TraditionalForm]}]}], 
    RowBox[{"16", " ", 
     SuperscriptBox["\[Pi]", "2"]}]]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.914576309046397*^9, {3.914576533078253*^9, 3.914576560911056*^9}, {
   3.914577032230495*^9, 3.914577037330236*^9}, 3.915604271929907*^9, 
   3.915604383083984*^9, 3.915604792087643*^9, 3.91560486835574*^9, 
   3.91560506551678*^9, 3.915605243816788*^9, 3.915606039965013*^9, 
   3.915606094564893*^9, 3.915606884191107*^9, 3.915606932105339*^9, 
   3.915607695700541*^9, {3.915607802677674*^9, 3.915607821142058*^9}, 
   3.9156078852896147`*^9, 3.9156116309909153`*^9, 3.915613373914799*^9, 
   3.9156306760508137`*^9, 3.915631224986623*^9, 3.915631683479349*^9, {
   3.915635136358076*^9, 3.9156351628234*^9}, 3.915635284246346*^9, 
   3.9156353509262943`*^9, 3.915635433526664*^9, 3.915635564430471*^9, 
   3.915682313838519*^9, 3.915688077437435*^9, 3.9156882280390368`*^9, 
   3.915688850211179*^9, 3.915856749154785*^9, 3.915873382292403*^9, 
   3.91587354416227*^9, 3.915950189765646*^9, 3.916110394137596*^9, 
   3.916115557900367*^9, 3.916117384265448*^9, 3.916118548335037*^9, 
   3.916119338501356*^9, 3.916121585414212*^9, 3.916453220727325*^9, 
   3.916548231742468*^9, 3.916548457101252*^9, 3.9165495678519993`*^9, 
   3.916549697524952*^9, 3.916549797990193*^9, 3.916551426801219*^9, 
   3.916551543990757*^9, 3.916551614127178*^9, 3.916552124887518*^9, 
   3.916553824279348*^9, 3.916675487577201*^9, 3.916676575170987*^9, 
   3.9166770579010677`*^9},
 CellLabel->
  "Out[113]=",ExpressionUUID->"1f2a3d81-0777-42f9-83a3-047be913a3c5"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ampGluinoSEDivPole", " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"SelectNotFree2", "[", 
         RowBox[{
          RowBox[{"ampGluinoSEDiv", "[", "3", "]"}], ",", " ", 
          RowBox[{"DiracGamma", "[", 
           RowBox[{
            RowBox[{"Momentum", "[", 
             RowBox[{"p", ",", " ", "D"}], "]"}], ",", " ", "D"}], "]"}]}], 
         "]"}], " ", "//", "\n", "\t", "DiracSimplify"}], " ", "//", " ", 
       RowBox[{
        RowBox[{"Collect2", "[", 
         RowBox[{"#", ",", " ", "SMP"}], "]"}], "&"}]}], " ", "//", "\n", 
      "\t", 
      RowBox[{
       RowBox[{"ReplaceAll", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{"SqrtEGl", " ", 
             RowBox[{"SqrtEGl", "\[Conjugate]"}]}], "->", "1"}], ",", " ", 
           RowBox[{
            RowBox[{"DiracGamma", "[", 
             RowBox[{
              RowBox[{"Momentum", "[", 
               RowBox[{"p", ",", " ", "D"}], "]"}], ",", " ", "D"}], "]"}], 
            " ", "->", " ", 
            RowBox[{
             RowBox[{"DiracGamma", "[", 
              RowBox[{
               RowBox[{"Momentum", "[", 
                RowBox[{"p", ",", " ", "D"}], "]"}], ",", " ", "D"}], "]"}], 
             ".", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"alpha", " ", 
                RowBox[{"DiracGamma", "[", "6", "]"}]}], " ", "+", " ", 
               RowBox[{"beta", " ", 
                RowBox[{"DiracGamma", "[", "7", "]"}]}]}], ")"}]}]}]}], 
          "}"}]}], "]"}], "&"}]}], " ", "//", "\n", "\t", "DiracSimplify"}], 
    " ", "//", " ", "Simplify"}], " ", "//", " ", 
   RowBox[{
    RowBox[{"ReplaceAll", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"alpha", "->", "1"}], ",", " ", 
        RowBox[{"beta", "->", "1"}]}], "}"}]}], "]"}], "&"}]}]}]], "Code",
 CellChangeTimes->{{3.915607054625533*^9, 3.915607095386076*^9}, {
   3.915628597373839*^9, 3.915628630310159*^9}, {3.915640965103493*^9, 
   3.915641067193727*^9}, {3.915641103132578*^9, 3.915641114960072*^9}, {
   3.9156822530445347`*^9, 3.91568228981182*^9}, {3.915682364194097*^9, 
   3.915682370496233*^9}, {3.915688254021814*^9, 3.915688277941984*^9}, {
   3.915688827684183*^9, 3.915688829425554*^9}, {3.915689088837331*^9, 
   3.915689104301497*^9}, {3.915689404018444*^9, 3.915689422172348*^9}, 
   3.915699085647545*^9, {3.915699135135043*^9, 3.915699156188718*^9}, {
   3.915699219535673*^9, 3.915699285872128*^9}, {3.915699353105693*^9, 
   3.915699372395504*^9}, {3.915699764894412*^9, 3.9156999892734327`*^9}, {
   3.916551696793499*^9, 3.916551704222341*^9}},
 CellLabel->
  "In[114]:=",ExpressionUUID->"dfb35e40-b03d-4575-a812-35c64c996cb5"],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{
    SuperscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Glu1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Glu2",
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
         TraditionalForm]]}]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["R", 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], "1"}], 
           OverscriptBox["q", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["R", 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], "1"}], 
               OverscriptBox["q", "~"]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["R", 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], "2"}], 
           OverscriptBox["q", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["R", 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], "2"}], 
               OverscriptBox["q", "~"]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["R", 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], "1"}], 
           OverscriptBox["q", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["R", 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], "1"}], 
               OverscriptBox["q", "~"]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["R", 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], "2"}], 
           OverscriptBox["q", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["R", 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], "2"}], 
               OverscriptBox["q", "~"]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{"2", " ", 
          SubscriptBox["C", "A"]}]}], ")"}]}], "+", 
      RowBox[{"16", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       RowBox[{"Re", "(", 
        SubscriptBox["\[Delta]", 
         OverscriptBox["g", "~"]], ")"}]}]}], ")"}]}], 
   RowBox[{"32", " ", 
    SuperscriptBox["\[Pi]", "2"]}]], TraditionalForm]], "Output",
 CellChangeTimes->{{3.9156999815617*^9, 3.91569999009326*^9}, 
   3.915856749479766*^9, 3.915873382354526*^9, 3.915873544480334*^9, 
   3.91595023176703*^9, 3.916110394475431*^9, 3.916115558215646*^9, 
   3.916117384584282*^9, 3.916118548663322*^9, 3.9161193388234787`*^9, 
   3.916121585744875*^9, 3.916453220829273*^9, 3.916548231849818*^9, 
   3.916548457203314*^9, 3.9165495678813887`*^9, 3.916549697630238*^9, 
   3.916549798095818*^9, 3.9165515440669203`*^9, 3.916551614202848*^9, 
   3.916551705911549*^9, 3.91655212498948*^9, 3.9165538252863607`*^9, 
   3.916675487684411*^9, 3.916676575248955*^9, 3.916677058001726*^9},
 CellLabel->
  "Out[114]=",ExpressionUUID->"1b6b51c6-5fb7-457e-8f3d-c945d00052d5"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"ampGluinoSEDivPoleR", " ", "=", " ", 
  RowBox[{"Coefficient", "[", 
   RowBox[{"ampGluinoSEDivPole", ",", " ", 
    RowBox[{
     RowBox[{"DiracGamma", "[", 
      RowBox[{
       RowBox[{"Momentum", "[", 
        RowBox[{"p", ",", " ", "D"}], "]"}], ",", " ", "D"}], "]"}], ".", 
     RowBox[{"DiracGamma", "[", "6", "]"}]}]}], "]"}]}], "\n", 
 RowBox[{"ampGluinoSEDivPoleL", " ", "=", " ", 
  RowBox[{"Coefficient", "[", 
   RowBox[{"ampGluinoSEDivPole", ",", " ", 
    RowBox[{
     RowBox[{"DiracGamma", "[", 
      RowBox[{
       RowBox[{"Momentum", "[", 
        RowBox[{"p", ",", " ", "D"}], "]"}], ",", " ", "D"}], "]"}], ".", 
     RowBox[{"DiracGamma", "[", "7", "]"}]}]}], "]"}]}]}], "Code",
 CellChangeTimes->{{3.915700084017263*^9, 3.915700161001513*^9}, {
  3.915700206705513*^9, 3.915700305339728*^9}, {3.91655171535495*^9, 
  3.916551724746313*^9}, {3.916551820669116*^9, 3.916551830861518*^9}, {
  3.916552181440339*^9, 3.916552184064481*^9}},
 CellLabel->
  "In[115]:=",ExpressionUUID->"3270dc19-aa86-4938-9c2a-f7039b6f3c62"],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{
    SuperscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Glu1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Glu2",
        TraditionalForm],
       TraditionalForm]}]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["R", 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], "1"}], 
           OverscriptBox["q", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["R", 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], "1"}], 
               OverscriptBox["q", "~"]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["R", 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], "2"}], 
           OverscriptBox["q", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["R", 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], "2"}], 
               OverscriptBox["q", "~"]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["R", 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], "1"}], 
           OverscriptBox["q", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["R", 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], "1"}], 
               OverscriptBox["q", "~"]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["R", 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], "2"}], 
           OverscriptBox["q", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["R", 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], "2"}], 
               OverscriptBox["q", "~"]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{"2", " ", 
          SubscriptBox["C", "A"]}]}], ")"}]}], "+", 
      RowBox[{"16", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       RowBox[{"Re", "(", 
        SubscriptBox["\[Delta]", 
         OverscriptBox["g", "~"]], ")"}]}]}], ")"}]}], 
   RowBox[{"32", " ", 
    SuperscriptBox["\[Pi]", "2"]}]], TraditionalForm]], "Output",
 CellChangeTimes->{3.916552184471572*^9, 3.916553826589122*^9, 
  3.916675487720595*^9, 3.916676575279745*^9, 3.916677058026969*^9},
 CellLabel->
  "Out[115]=",ExpressionUUID->"5bc529ee-5428-4c07-8fce-5ac6b16d8c24"],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{
    SuperscriptBox["\[Delta]", 
     RowBox[{
      FormBox[
       FormBox["Glu1",
        TraditionalForm],
       TraditionalForm], 
      FormBox[
       FormBox["Glu2",
        TraditionalForm],
       TraditionalForm]}]], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
       SubsuperscriptBox["g", "s", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["R", 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], "1"}], 
           OverscriptBox["q", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["R", 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], "1"}], 
               OverscriptBox["q", "~"]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["R", 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], "2"}], 
           OverscriptBox["q", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["R", 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], "2"}], 
               OverscriptBox["q", "~"]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["R", 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], "1"}], 
           OverscriptBox["q", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["R", 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], "1"}], 
               OverscriptBox["q", "~"]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["R", 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], "2"}], 
           OverscriptBox["q", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["R", 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], "2"}], 
               OverscriptBox["q", "~"]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{"2", " ", 
          SubscriptBox["C", "A"]}]}], ")"}]}], "+", 
      RowBox[{"16", " ", 
       SuperscriptBox["\[Pi]", "2"], " ", 
       RowBox[{"Re", "(", 
        SubscriptBox["\[Delta]", 
         OverscriptBox["g", "~"]], ")"}]}]}], ")"}]}], 
   RowBox[{"32", " ", 
    SuperscriptBox["\[Pi]", "2"]}]], TraditionalForm]], "Output",
 CellChangeTimes->{3.916552184471572*^9, 3.916553826589122*^9, 
  3.916675487720595*^9, 3.916676575279745*^9, 3.916677058027622*^9},
 CellLabel->
  "Out[116]=",ExpressionUUID->"7281250f-9332-4da8-9988-02ca15772f9d"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"ampGluinoSEDivMass", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{"SelectFree2", "[", 
    RowBox[{
     RowBox[{"ampGluinoSEDiv", "[", "3", "]"}], ",", " ", 
     RowBox[{"DiracGamma", "[", 
      RowBox[{
       RowBox[{"Momentum", "[", 
        RowBox[{"p", ",", " ", "D"}], "]"}], ",", " ", "D"}], "]"}]}], 
    "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"ampGluinoSEDivMass", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"SelectFree2", "[", 
      RowBox[{
       RowBox[{"ampGluinoSEDivMass", "[", "0", "]"}], ",", " ", 
       RowBox[{"DiracGamma", "[", 
        RowBox[{"6", "|", "7"}], "]"}]}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"DiracGamma", "[", "6", "]"}], "+", 
       RowBox[{"DiracGamma", "[", "7", "]"}]}], ")"}]}], " ", "+", " ", 
    RowBox[{"SelectNotFree2", "[", 
     RowBox[{
      RowBox[{"ampGluinoSEDivMass", "[", "0", "]"}], ",", " ", 
      RowBox[{"DiracGamma", "[", 
       RowBox[{"6", "|", "7"}], "]"}]}], "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"ampGluinoSEDivMass", "[", "2", "]"}], " ", "=", " ", 
  RowBox[{"Collect2", "[", 
   RowBox[{
    RowBox[{"ampGluinoSEDivMass", "[", "1", "]"}], ",", " ", "DiracGamma", 
    ",", " ", 
    RowBox[{"Factoring", "->", "Simplify"}]}], "]"}]}]}], "Code",
 CellChangeTimes->{{3.915950279742947*^9, 3.915950326948373*^9}, {
  3.916551728623939*^9, 3.916551732137765*^9}, {3.916554070165286*^9, 
  3.916554204225498*^9}, {3.9165542433308563`*^9, 3.916554246610512*^9}, {
  3.9165542937051477`*^9, 3.916554359586554*^9}, {3.916674073266365*^9, 
  3.91667421873626*^9}, {3.9166742508872004`*^9, 3.916674317844537*^9}},
 CellLabel->
  "In[117]:=",ExpressionUUID->"761226d2-319b-419b-9f6e-6c1c4df1d14a"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", 
    FractionBox[
     RowBox[{
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
      SuperscriptBox["\[Delta]", 
       RowBox[{
        FormBox[
         FormBox["Glu1",
          TraditionalForm],
         TraditionalForm], 
        FormBox[
         FormBox["Glu2",
          TraditionalForm],
         TraditionalForm]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SuperscriptBox["SqrtEGl", "2"], " ", 
            RowBox[{"MQD", "(", 
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Gen", 3],
               Editable->False],
              TraditionalForm], ")"}], " ", 
            SubsuperscriptBox["R", 
             RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
                SequenceForm["Sfe", 3],
                Editable->False],
               TraditionalForm], "2"}], 
             OverscriptBox["q", "~"]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["R", 
                 RowBox[{
                   FormBox[
                    InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                    TraditionalForm], "1"}], 
                 OverscriptBox["q", "~"]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SuperscriptBox["SqrtEGl", "2"], " ", 
            RowBox[{"MQU", "(", 
             FormBox[
              InterpretationBox[
               RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
               SequenceForm["Gen", 3],
               Editable->False],
              TraditionalForm], ")"}], " ", 
            SubsuperscriptBox["R", 
             RowBox[{
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
                SequenceForm["Sfe", 3],
                Editable->False],
               TraditionalForm], "2"}], 
             OverscriptBox["q", "~"]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["R", 
                 RowBox[{
                   FormBox[
                    InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                    TraditionalForm], "1"}], 
                 OverscriptBox["q", "~"]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{"2", " ", 
            SubscriptBox["C", "A"], " ", 
            SubscriptBox["m", 
             OverscriptBox["g", "~"]]}]}], ")"}]}], "+", 
        RowBox[{"4", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["\[Delta]", 
          SubscriptBox["m", 
           OverscriptBox["g", "~"]]]}], "+", 
        RowBox[{"4", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["m", 
          OverscriptBox["g", "~"]], " ", 
         RowBox[{"Re", "(", 
          SubscriptBox["\[Delta]", 
           OverscriptBox["g", "~"]], ")"}]}]}], ")"}]}], 
     RowBox[{"8", " ", 
      SuperscriptBox["\[Pi]", "2"]}]]}], "-", 
   FractionBox[
    RowBox[{
     SuperscriptBox[
      OverscriptBox["\[Gamma]", "_"], 
      FormBox["7",
       TraditionalForm]], " ", 
     SuperscriptBox["\[Delta]", 
      RowBox[{
       FormBox[
        FormBox["Glu1",
         TraditionalForm],
        TraditionalForm], 
       FormBox[
        FormBox["Glu2",
         TraditionalForm],
        TraditionalForm]}]], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           SuperscriptBox[
            RowBox[{"(", 
             TemplateBox[{"SqrtEGl"},
              "Conjugate"], ")"}], "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"MQD", "(", 
               FormBox[
                InterpretationBox[
                 RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
                 SequenceForm["Gen", 3],
                 Editable->False],
                TraditionalForm], ")"}], " ", 
              SubsuperscriptBox["R", 
               RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
                  SequenceForm["Sfe", 3],
                  Editable->False],
                 TraditionalForm], "1"}], 
               OverscriptBox["q", "~"]], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["R", 
                   RowBox[{
                    FormBox[
                    InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                    TraditionalForm], "2"}], 
                   OverscriptBox["q", "~"]], ")"}]},
               "Conjugate"]}], "+", 
             RowBox[{
              RowBox[{"MQU", "(", 
               FormBox[
                InterpretationBox[
                 RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
                 SequenceForm["Gen", 3],
                 Editable->False],
                TraditionalForm], ")"}], " ", 
              SubsuperscriptBox["R", 
               RowBox[{
                FormBox[
                 InterpretationBox[
                  RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
                  SequenceForm["Sfe", 3],
                  Editable->False],
                 TraditionalForm], "1"}], 
               OverscriptBox["q", "~"]], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["R", 
                   RowBox[{
                    FormBox[
                    InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                    TraditionalForm], "2"}], 
                   OverscriptBox["q", "~"]], ")"}]},
               "Conjugate"]}]}], ")"}]}], "+", 
          RowBox[{"2", " ", 
           SubscriptBox["C", "A"], " ", 
           SubscriptBox["m", 
            OverscriptBox["g", "~"]]}]}], ")"}]}], "+", 
       RowBox[{"4", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", 
        SubscriptBox["\[Delta]", 
         SubscriptBox["m", 
          OverscriptBox["g", "~"]]]}], "+", 
       RowBox[{"4", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", 
        SubscriptBox["m", 
         OverscriptBox["g", "~"]], " ", 
        RowBox[{"Re", "(", 
         SubscriptBox["\[Delta]", 
          OverscriptBox["g", "~"]], ")"}]}]}], ")"}]}], 
    RowBox[{"8", " ", 
     SuperscriptBox["\[Pi]", "2"]}]]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.915950321279469*^9, 3.915950327395687*^9}, 
   3.916110394652676*^9, 3.916115558358334*^9, 3.9161173847477913`*^9, 
   3.91611854881567*^9, 3.916119338973131*^9, 3.916121585811914*^9, 
   3.916453220864006*^9, 3.9165482319028378`*^9, 3.916548457256239*^9, 
   3.916549567932994*^9, 3.9165496977493067`*^9, 3.916549798141158*^9, 
   3.916551544146183*^9, 3.916551614269691*^9, 3.916551734258659*^9, 
   3.916552125044022*^9, 3.9165538351967697`*^9, {3.916554138323586*^9, 
   3.9165542047126102`*^9}, 3.916554247129325*^9, {3.916554329611261*^9, 
   3.91655436119417*^9}, {3.916674193232195*^9, 3.916674221283595*^9}, {
   3.916674257790113*^9, 3.916674320006928*^9}, 3.916675487771933*^9, 
   3.916676575339069*^9, 3.916677058078081*^9},
 CellLabel->
  "Out[119]=",ExpressionUUID->"b416bb49-bf97-4a8c-8367-651b06d7e8d4"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"ampGluinoSEDivMass", "[", "2", "]"}], " ", "/.", " ", 
   RowBox[{"solGluino", "[", "1", "]"}]}], " ", "//", " ", 
  RowBox[{
   RowBox[{"Collect2", "[", 
    RowBox[{"#", ",", " ", 
     RowBox[{"SMP", "[", "\"\<Delta\>\"", "]"}], ",", " ", 
     RowBox[{"Factoring", "->", "Simplify"}]}], "]"}], "&"}]}]], "Code",
 CellChangeTimes->{{3.916553947268544*^9, 3.9165539505892572`*^9}, {
  3.9166744156944847`*^9, 3.9166744910413303`*^9}, {3.916674616756948*^9, 
  3.916674621476859*^9}},
 CellLabel->
  "In[120]:=",ExpressionUUID->"677ab035-0c3c-42a1-a562-9e6f8efc2c25"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "ReplaceAll", "reps", 
    "\"\\!\\(\\*FormBox[RowBox[{\\\"{\\\", RowBox[{\\\"solGluino\\\", \\\"(\\\
\", \\\"1\\\", \\\")\\\"}], \\\"}\\\"}], TraditionalForm]\\) is neither a \
list of replacement rules nor a valid dispatch table, and so cannot be used \
for replacing.\"", 2, 120, 12, 33591135623197961147, "Local"},
   "MessageTemplate"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.916675487807446*^9, 3.916676575371482*^9, 
  3.916677058103033*^9},
 CellLabel->
  "During evaluation of \
In[120]:=",ExpressionUUID->"53d54549-276e-48c6-a817-85733bda9b2f"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "ReplaceAll", "reps", 
    "\"\\!\\(\\*FormBox[RowBox[{\\\"{\\\", RowBox[{\\\"solGluino\\\", \\\"(\\\
\", \\\"1\\\", \\\")\\\"}], \\\"}\\\"}], TraditionalForm]\\) is neither a \
list of replacement rules nor a valid dispatch table, and so cannot be used \
for replacing.\"", 2, 120, 13, 33591135623197961147, "Local"},
   "MessageTemplate"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.916675487807446*^9, 3.916676575371482*^9, 
  3.916677058103385*^9},
 CellLabel->
  "During evaluation of \
In[120]:=",ExpressionUUID->"ec405a44-c45a-48de-800f-f017257adff5"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "ReplaceAll", "reps", 
    "\"\\!\\(\\*FormBox[RowBox[{\\\"{\\\", RowBox[{\\\"solGluino\\\", \\\"(\\\
\", \\\"1\\\", \\\")\\\"}], \\\"}\\\"}], TraditionalForm]\\) is neither a \
list of replacement rules nor a valid dispatch table, and so cannot be used \
for replacing.\"", 2, 120, 14, 33591135623197961147, "Local"},
   "MessageTemplate"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.916675487807446*^9, 3.916676575371482*^9, 
  3.916677058106554*^9},
 CellLabel->
  "During evaluation of \
In[120]:=",ExpressionUUID->"d8f7761d-6de3-42e2-b17b-c481fb2f8d4b"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "General", "stop", 
    "\"Further output of \
\\!\\(\\*FormBox[StyleBox[RowBox[{\\\"ReplaceAll\\\", \\\"::\\\", \
\\\"reps\\\"}], \\\"MessageName\\\"], TraditionalForm]\\) will be suppressed \
during this calculation.\"", 2, 120, 15, 33591135623197961147, "Local"},
   "MessageTemplate"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.916675487807446*^9, 3.916676575371482*^9, 
  3.916677058109434*^9},
 CellLabel->
  "During evaluation of \
In[120]:=",ExpressionUUID->"51deb27b-44b3-40ba-8fdb-01402bf032bf"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    RowBox[{"-", 
     FractionBox[
      RowBox[{
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], " ", 
       SuperscriptBox["\[Delta]", 
        RowBox[{
         FormBox[
          FormBox["Glu1",
           TraditionalForm],
          TraditionalForm], 
         FormBox[
          FormBox["Glu2",
           TraditionalForm],
          TraditionalForm]}]], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
          SubsuperscriptBox["g", "s", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             SuperscriptBox["SqrtEGl", "2"], " ", 
             RowBox[{"MQD", "(", 
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
                SequenceForm["Gen", 3],
                Editable->False],
               TraditionalForm], ")"}], " ", 
             SubsuperscriptBox["R", 
              RowBox[{
               FormBox[
                InterpretationBox[
                 RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
                 SequenceForm["Sfe", 3],
                 Editable->False],
                TraditionalForm], "2"}], 
              OverscriptBox["q", "~"]], " ", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["R", 
                  RowBox[{
                    FormBox[
                    InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                    TraditionalForm], "1"}], 
                  OverscriptBox["q", "~"]], ")"}]},
              "Conjugate"]}], "+", 
            RowBox[{
             SuperscriptBox["SqrtEGl", "2"], " ", 
             RowBox[{"MQU", "(", 
              FormBox[
               InterpretationBox[
                RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
                SequenceForm["Gen", 3],
                Editable->False],
               TraditionalForm], ")"}], " ", 
             SubsuperscriptBox["R", 
              RowBox[{
               FormBox[
                InterpretationBox[
                 RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
                 SequenceForm["Sfe", 3],
                 Editable->False],
                TraditionalForm], "2"}], 
              OverscriptBox["q", "~"]], " ", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["R", 
                  RowBox[{
                    FormBox[
                    InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                    TraditionalForm], "1"}], 
                  OverscriptBox["q", "~"]], ")"}]},
              "Conjugate"]}], "+", 
            RowBox[{"2", " ", 
             SubscriptBox["C", "A"], " ", 
             SubscriptBox["m", 
              OverscriptBox["g", "~"]]}]}], ")"}]}], "+", 
         RowBox[{"4", " ", 
          SuperscriptBox["\[Pi]", "2"], " ", 
          SubscriptBox["\[Delta]", 
           SubscriptBox["m", 
            OverscriptBox["g", "~"]]]}], "+", 
         RowBox[{"4", " ", 
          SuperscriptBox["\[Pi]", "2"], " ", 
          SubscriptBox["m", 
           OverscriptBox["g", "~"]], " ", 
          RowBox[{"Re", "(", 
           SubscriptBox["\[Delta]", 
            OverscriptBox["g", "~"]], ")"}]}]}], ")"}]}], 
      RowBox[{"8", " ", 
       SuperscriptBox["\[Pi]", "2"]}]]}], "-", 
    FractionBox[
     RowBox[{
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
      SuperscriptBox["\[Delta]", 
       RowBox[{
        FormBox[
         FormBox["Glu1",
          TraditionalForm],
         TraditionalForm], 
        FormBox[
         FormBox["Glu2",
          TraditionalForm],
         TraditionalForm]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
         SubsuperscriptBox["g", "s", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SuperscriptBox[
             RowBox[{"(", 
              TemplateBox[{"SqrtEGl"},
               "Conjugate"], ")"}], "2"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"MQD", "(", 
                FormBox[
                 InterpretationBox[
                  RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
                  SequenceForm["Gen", 3],
                  Editable->False],
                 TraditionalForm], ")"}], " ", 
               SubsuperscriptBox["R", 
                RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
                   SequenceForm["Sfe", 3],
                   Editable->False],
                  TraditionalForm], "1"}], 
                OverscriptBox["q", "~"]], " ", 
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["R", 
                    RowBox[{
                    FormBox[
                    InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                    TraditionalForm], "2"}], 
                    OverscriptBox["q", "~"]], ")"}]},
                "Conjugate"]}], "+", 
              RowBox[{
               RowBox[{"MQU", "(", 
                FormBox[
                 InterpretationBox[
                  RowBox[{"\<\"Gen\"\>", "\[InvisibleSpace]", "3"}],
                  SequenceForm["Gen", 3],
                  Editable->False],
                 TraditionalForm], ")"}], " ", 
               SubsuperscriptBox["R", 
                RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
                   SequenceForm["Sfe", 3],
                   Editable->False],
                  TraditionalForm], "1"}], 
                OverscriptBox["q", "~"]], " ", 
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["R", 
                    RowBox[{
                    FormBox[
                    InterpretationBox[
                    RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                    SequenceForm["Sfe", 3], Editable -> False], 
                    TraditionalForm], "2"}], 
                    OverscriptBox["q", "~"]], ")"}]},
                "Conjugate"]}]}], ")"}]}], "+", 
           RowBox[{"2", " ", 
            SubscriptBox["C", "A"], " ", 
            SubscriptBox["m", 
             OverscriptBox["g", "~"]]}]}], ")"}]}], "+", 
        RowBox[{"4", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["\[Delta]", 
          SubscriptBox["m", 
           OverscriptBox["g", "~"]]]}], "+", 
        RowBox[{"4", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["m", 
          OverscriptBox["g", "~"]], " ", 
         RowBox[{"Re", "(", 
          SubscriptBox["\[Delta]", 
           OverscriptBox["g", "~"]], ")"}]}]}], ")"}]}], 
     RowBox[{"8", " ", 
      SuperscriptBox["\[Pi]", "2"]}]]}], "/.", "\[VeryThinSpace]", 
   RowBox[{"solGluino", "(", "1", ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.916553948186151*^9, 3.916553951134153*^9}, {
   3.916674418260777*^9, 3.9166744914664783`*^9}, 3.9166746219149857`*^9, 
   3.91667548784685*^9, 3.916676575381792*^9, 3.9166770581128597`*^9},
 CellLabel->
  "Out[120]=",ExpressionUUID->"61d80b54-dc3b-4a0c-894e-3dff07a52ff0"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"solGluino", "[", "1", "]"}], " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"Solve", "[", 
        RowBox[{
         RowBox[{"ampGluinoSEDivPole", "==", "0"}], ",", " ", 
         RowBox[{"Re", "[", "dGluino", "]"}]}], "]"}], " ", "//", "\n", "\t", 
       "Flatten"}], " ", "//", " ", 
      RowBox[{
       RowBox[{"ReplaceAll", "[", 
        RowBox[{"#", ",", 
         RowBox[{
          RowBox[{"Rule", "[", 
           RowBox[{"a_", ",", "b_"}], "]"}], ":>", 
          RowBox[{"Rule", "[", 
           RowBox[{"a", ",", 
            RowBox[{"SUNSimplify", "[", "b", "]"}]}], "]"}]}]}], "]"}], 
       "&"}]}], " ", "//", "\n", "\t", 
     RowBox[{
      RowBox[{"ReplaceAll", "[", 
       RowBox[{"#", ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}], "^", "2"}], " ", "->", 
         " ", 
         RowBox[{"4", "Pi", " ", 
          RowBox[{"SMP", "[", "\"\<alpha_s\>\"", "]"}]}]}]}], "]"}], 
      "&"}]}]}], ";"}], "\n", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{"solGluinoR", "[", "1", "]"}], " ", "=", " ", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"Solve", "[", 
         RowBox[{
          RowBox[{"ampGluinoSEDivPoleR", "==", "0"}], ",", " ", 
          RowBox[{"Re", "[", "dGluino", "]"}]}], "]"}], " ", "//", "\n", "\t",
         "Flatten"}], " ", "//", " ", 
       RowBox[{
        RowBox[{"ReplaceAll", "[", 
         RowBox[{"#", ",", 
          RowBox[{
           RowBox[{"Rule", "[", 
            RowBox[{"a_", ",", "b_"}], "]"}], ":>", 
           RowBox[{"Rule", "[", 
            RowBox[{"a", ",", 
             RowBox[{"SUNSimplify", "[", "b", "]"}]}], "]"}]}]}], "]"}], 
        "&"}]}], " ", "//", "\n", "\t", 
      RowBox[{
       RowBox[{"ReplaceAll", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}], "^", "2"}], " ", "->", 
          " ", 
          RowBox[{"4", "Pi", " ", 
           RowBox[{"SMP", "[", "\"\<alpha_s\>\"", "]"}]}]}]}], "]"}], 
       "&"}]}]}], ";"}], "*)"}]}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"solmGluino", "[", "1", "]"}], " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"Solve", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"ampGluinoSEDivMass", "[", "3", "]"}], " ", "/.", " ", 
            RowBox[{"solGluino", "[", "1", "]"}]}], ")"}], " ", "==", " ", 
          "0"}], ",", " ", "dmGluino"}], "]"}], " ", "//", "\n", "\t", 
       "Flatten"}], " ", "//", " ", 
      RowBox[{
       RowBox[{"ReplaceAll", "[", 
        RowBox[{"#", ",", 
         RowBox[{
          RowBox[{"Rule", "[", 
           RowBox[{"a_", ",", "b_"}], "]"}], ":>", 
          RowBox[{"Rule", "[", 
           RowBox[{"a", ",", 
            RowBox[{"SUNSimplify", "[", "b", "]"}]}], "]"}]}]}], "]"}], 
       "&"}]}], " ", "//", "\n", "\t", 
     RowBox[{
      RowBox[{"ReplaceAll", "[", 
       RowBox[{"#", ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}], "^", "2"}], " ", "->", 
         " ", 
         RowBox[{"4", "Pi", " ", 
          RowBox[{"SMP", "[", "\"\<alpha_s\>\"", "]"}]}]}]}], "]"}], 
      "&"}]}]}], ";"}], "\n"}], "\n", 
 RowBox[{"solGluinoMS", " ", "=", " ", 
  RowBox[{
   RowBox[{"Join", "[", 
    RowBox[{
     RowBox[{"solGluino", "[", "1", "]"}], ",", " ", 
     RowBox[{"solmGluino", "[", "1", "]"}]}], "]"}], " ", "//", " ", 
   "Simplify"}]}], "\n", 
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"solQMSbar1", " ", "=", " ", 
    RowBox[{
     RowBox[{"Join", "[", 
      RowBox[{
       RowBox[{"solL", "[", "1", "]"}], ",", " ", 
       RowBox[{"solR", "[", "1", "]"}]}], "]"}], " ", "//", " ", 
     "Simplify"}]}], "*)"}]}]}], "Code",
 CellChangeTimes->{{3.914576085071594*^9, 3.914576271429175*^9}, 
   3.914576362715526*^9, {3.915606889295372*^9, 3.9156069439428387`*^9}, {
   3.915607020810649*^9, 3.915607040957179*^9}, {3.915607101455134*^9, 
   3.9156073419584303`*^9}, {3.915607391068959*^9, 3.915607474856219*^9}, {
   3.91560770658748*^9, 3.9156077492295847`*^9}, 3.915607784870926*^9, {
   3.91561056342134*^9, 3.915610581246805*^9}, {3.9156106656814823`*^9, 
   3.915610759894559*^9}, {3.915630943212435*^9, 3.915631039526663*^9}, {
   3.915635446542345*^9, 3.915635458343183*^9}, {3.915635582748584*^9, 
   3.915635613127037*^9}, {3.915635662701167*^9, 3.9156357990640373`*^9}, {
   3.915640786314447*^9, 3.915640811106774*^9}, {3.915641187725995*^9, 
   3.915641192254242*^9}, {3.915641716581132*^9, 3.915641773181531*^9}, {
   3.915682195508872*^9, 3.9156821958693523`*^9}, {3.915685366318378*^9, 
   3.915685383898263*^9}, {3.915688576566821*^9, 3.915688714577341*^9}, {
   3.91568877734212*^9, 3.915688812015645*^9}, {3.915689323534189*^9, 
   3.91568932853456*^9}, {3.9157000170855007`*^9, 3.915700060556443*^9}, {
   3.915700318321312*^9, 3.915700322508253*^9}, {3.915857732684013*^9, 
   3.915857844272493*^9}, {3.916548240927082*^9, 3.916548368932444*^9}, {
   3.9165484711207047`*^9, 3.916548501764308*^9}, {3.916551748001598*^9, 
   3.916551801015386*^9}, {3.916553854111477*^9, 3.9165539077772303`*^9}, {
   3.9165540143181477`*^9, 3.9165540288047047`*^9}, {3.9166743643804693`*^9, 
   3.916674365416532*^9}, {3.9166744113959703`*^9, 3.916674412963608*^9}},
 CellLabel->
  "In[121]:=",ExpressionUUID->"55fc4c37-9eea-4730-8236-3542b1f9fadd"],

Cell[BoxData[
 FormBox[
  RowBox[{"{", 
   RowBox[{
    RowBox[{"Re", "(", 
     SubscriptBox["\[Delta]", 
      OverscriptBox["g", "~"]], ")"}], "\[Rule]", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
       SubscriptBox["\[Alpha]", "s"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["R", 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], "1"}], 
           OverscriptBox["q", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["R", 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], "1"}], 
               OverscriptBox["q", "~"]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["R", 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], "2"}], 
           OverscriptBox["q", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["R", 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], "2"}], 
               OverscriptBox["q", "~"]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["R", 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], "1"}], 
           OverscriptBox["q", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["R", 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], "1"}], 
               OverscriptBox["q", "~"]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["R", 
           RowBox[{
            FormBox[
             InterpretationBox[
              RowBox[{"\<\"Sfe\"\>", "\[InvisibleSpace]", "3"}],
              SequenceForm["Sfe", 3],
              Editable->False],
             TraditionalForm], "2"}], 
           OverscriptBox["q", "~"]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["R", 
               RowBox[{
                 FormBox[
                  InterpretationBox[
                   RowBox[{"\"Sfe\"", "\[InvisibleSpace]", "3"}], 
                   SequenceForm["Sfe", 3], Editable -> False], 
                  TraditionalForm], "2"}], 
               OverscriptBox["q", "~"]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{"2", " ", 
          SubscriptBox["C", "A"]}]}], ")"}]}], 
      RowBox[{"4", " ", "\[Pi]"}]]}]}], "}"}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.916548352443927*^9, 3.916548366930407*^9}, {
   3.916548457296846*^9, 3.916548482038422*^9}, 3.916548635433889*^9, 
   3.916549568083508*^9, 3.916549697908222*^9, 3.916549798277837*^9, 
   3.9165515442823353`*^9, 3.9165516143831263`*^9, 3.916551803397769*^9, 
   3.916552125556984*^9, {3.916553904820635*^9, 3.916553908210774*^9}, {
   3.916554017441657*^9, 3.916554029890815*^9}, {3.916554352460845*^9, 
   3.916554365776321*^9}, 3.916675487885108*^9, 3.916676575404248*^9, 
   3.916677058140807*^9},
 CellLabel->
  "Out[123]=",ExpressionUUID->"a2343ef9-141d-4d0d-a561-720cff74bdf8"]
}, Open  ]]
}, Closed]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1383, 855},
WindowMargins->{{-2.25, Automatic}, {Automatic, -22.5}},
Magnification:>1.35 Inherited,
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
Cell[580, 22, 265, 6, 213, "Title",ExpressionUUID->"6ed265d2-bf75-499b-939e-b38606ee57c8"],
Cell[848, 30, 282, 7, 46, "Text",ExpressionUUID->"b6e04ede-9349-47f5-81c1-12a6ab1ad69f"],
Cell[CellGroupData[{
Cell[1155, 41, 161, 3, 89, "Section",ExpressionUUID->"71dc81fc-87e4-4083-8208-de3a134a8225"],
Cell[1319, 46, 312, 7, 46, "Text",ExpressionUUID->"1ced22e6-0008-4974-a063-20d9ccf3e3c9"],
Cell[CellGroupData[{
Cell[1656, 57, 1366, 35, 393, "Code",ExpressionUUID->"f768582f-208b-4368-8c00-048b2134443a"],
Cell[CellGroupData[{
Cell[3047, 96, 3038, 77, 38, "Print",ExpressionUUID->"5cabeed1-50f5-469c-a44d-c88b00324fba"],
Cell[6088, 175, 2221, 58, 38, "Print",ExpressionUUID->"5de10987-b708-46fa-a6d3-de7261a6ed1e"],
Cell[8312, 235, 756, 16, 36, "Print",ExpressionUUID->"80551233-42eb-4cbe-8c12-419797586a32"],
Cell[9071, 253, 802, 18, 36, "Print",ExpressionUUID->"b4ca6048-fff9-40f3-90a3-3d26fc731020"],
Cell[9876, 273, 2406, 65, 38, "Print",ExpressionUUID->"fefbea2c-7dd1-4dfd-820d-0a1935e1c10b"],
Cell[12285, 340, 694, 15, 36, "Print",ExpressionUUID->"7853bb3f-41fb-4bd9-94d3-98d8bd319f97"],
Cell[12982, 357, 730, 16, 36, "Print",ExpressionUUID->"1fcbbd8e-9a3f-4f83-be51-b98cf98783ce"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[13761, 379, 631, 15, 150, "Code",ExpressionUUID->"c09a340c-f42d-4ecf-91c4-86797bb611e6"],
Cell[14395, 396, 1348, 24, 37, "Message",ExpressionUUID->"e8bb9d38-37d1-4e35-881b-983098cee361"],
Cell[15746, 422, 1363, 24, 60, "Message",ExpressionUUID->"badb0826-436c-4c05-8fc7-15630435ad9c"]
}, Open  ]],
Cell[17124, 449, 844, 19, 101, "Code",ExpressionUUID->"c27ce459-574d-4b02-af7e-05e95659f54a"],
Cell[17971, 470, 280, 6, 46, "Text",ExpressionUUID->"e5a0135f-7b78-4ce1-8c26-ab2e014a94cb"],
Cell[CellGroupData[{
Cell[18276, 480, 867, 21, 125, "Code",ExpressionUUID->"7b818ea2-6646-4c5e-875d-9558add8f116"],
Cell[19146, 503, 454, 8, 32, "Print",ExpressionUUID->"c1f196cf-13e7-4b08-9a78-113b0991c269"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[19649, 517, 170, 3, 89, "Section",ExpressionUUID->"ad9314ec-9090-42ad-90cf-1336cf856b8c"],
Cell[19822, 522, 151, 3, 46, "Text",ExpressionUUID->"c0da3a43-24af-4893-a041-b85d8dfa2346"],
Cell[19976, 527, 7347, 177, 1271, "Code",ExpressionUUID->"aadf60cb-ef0c-401f-99fd-ac472fac82f5"],
Cell[27326, 706, 9525, 257, 573, "Code",ExpressionUUID->"554cadc9-7de1-40ed-855d-c78d8033e1f0"],
Cell[36854, 965, 3394, 92, 241, "Code",ExpressionUUID->"eb374868-bb1c-49c6-a42d-5ec84eadfd3c"],
Cell[CellGroupData[{
Cell[40273, 1061, 868, 17, 72, "Code",ExpressionUUID->"e8bef7fa-dedb-4990-be3b-21d13eca2d16"],
Cell[41144, 1080, 13567, 303, 356, "Print",ExpressionUUID->"538c34d0-49ad-477c-9fff-058b7729223a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[54748, 1388, 573, 13, 72, "Code",ExpressionUUID->"78426748-8332-46ba-95d3-2bac398d524b"],
Cell[55324, 1403, 48796, 1049, 356, "Print",ExpressionUUID->"a2f41b8c-aa8b-481c-a97e-15756ba7adc0"]
}, Open  ]],
Cell[CellGroupData[{
Cell[104157, 2457, 571, 13, 72, "Code",ExpressionUUID->"0e70bfbc-61ca-435d-b239-9c539d7c2e78"],
Cell[104731, 2472, 20213, 441, 356, "Print",ExpressionUUID->"d25bd036-01b9-4d76-838b-76bb8c76818b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[124981, 2918, 598, 14, 72, "Code",ExpressionUUID->"136d7588-1922-4c16-8805-661bb1064f6b"],
Cell[125582, 2934, 98631, 1917, 356, "Print",ExpressionUUID->"750291c0-604c-4e56-bd7c-c74d77936c38"]
}, Open  ]],
Cell[CellGroupData[{
Cell[224250, 4856, 573, 13, 72, "Code",ExpressionUUID->"3e7f1631-1767-4067-beb7-1a581f038014"],
Cell[224826, 4871, 20804, 494, 356, "Print",ExpressionUUID->"9aa8b5e8-b63b-4a8d-860c-43a47ddc155e"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[245679, 5371, 168, 3, 89, "Section",ExpressionUUID->"bb5afc7a-27fa-4db9-85c0-1c24051ac8cb"],
Cell[245850, 5376, 152, 3, 46, "Text",ExpressionUUID->"779641a9-eb5b-4cf4-b503-53b94e2a6c0a"],
Cell[246005, 5381, 5506, 141, 670, "Code",ExpressionUUID->"722f744c-7e3a-45c6-a921-6c7b7916b84d"],
Cell[CellGroupData[{
Cell[251536, 5526, 165, 3, 72, "Subsection",ExpressionUUID->"7241d7c1-0b35-40e1-86ae-19afbd47b509"],
Cell[CellGroupData[{
Cell[251726, 5533, 3629, 74, 744, "Code",ExpressionUUID->"5ac34549-5324-4fe2-88d9-41a99bbbd953"],
Cell[255358, 5609, 14812, 457, 70, "Output",ExpressionUUID->"61f8b95f-9361-40b6-b0a6-3a0210f258a5"]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[270219, 6072, 168, 3, 49, "Subsection",ExpressionUUID->"573818b8-edd4-438e-9066-be7feb30ace4"],
Cell[CellGroupData[{
Cell[270412, 6079, 3266, 66, 801, "Code",ExpressionUUID->"a4497417-c2c8-429c-8389-d1fa41b30768"],
Cell[273681, 6147, 46290, 1479, 70, "Output",ExpressionUUID->"5b6090ca-ffd6-4f39-865c-ee3b64f1a6bc"]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[320020, 7632, 186, 3, 49, "Subsection",ExpressionUUID->"14fad89e-dd2c-4ef2-badf-ba7915157cc0"],
Cell[CellGroupData[{
Cell[320231, 7639, 7495, 160, 1157, "Code",ExpressionUUID->"988f0b85-13a4-4484-833c-46e347dd685b"],
Cell[327729, 7801, 22932, 677, 70, "Output",ExpressionUUID->"0d8d500f-7fc7-4b9c-ab72-be179b35b2a9"]
}, Open  ]],
Cell[CellGroupData[{
Cell[350698, 8483, 2533, 58, 427, "Code",ExpressionUUID->"f7e6a78c-a539-4669-9dcc-2671093a2f05"],
Cell[353234, 8543, 3349, 103, 70, "Output",ExpressionUUID->"d264668b-3b7a-40c8-b831-03d31346a44f"]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[356632, 8652, 215, 4, 49, "Subsection",ExpressionUUID->"234663d3-c35e-4472-aceb-ee1fa3d44550"],
Cell[CellGroupData[{
Cell[356872, 8660, 4816, 99, 770, "Code",ExpressionUUID->"d1d2234c-4ddb-4963-a0f0-293015f5ba60"],
Cell[361691, 8761, 39198, 1194, 70, "Output",ExpressionUUID->"4894ee23-2563-4518-9d40-bdac396ef0de"]
}, Open  ]]
}, Closed]]
}, Closed]],
Cell[CellGroupData[{
Cell[400950, 9962, 169, 3, 69, "Section",ExpressionUUID->"a75b00ae-7f3a-42c5-9ea8-228a5a55557a"],
Cell[CellGroupData[{
Cell[401144, 9969, 165, 3, 72, "Subsection",ExpressionUUID->"5fb3249a-2a16-4578-8abb-4407375a385c"],
Cell[401312, 9974, 151, 3, 46, "Text",ExpressionUUID->"fdebe3dc-fda7-4880-ba4b-d10189a5cb1c"],
Cell[401466, 9979, 1620, 30, 124, "Code",ExpressionUUID->"4dcc74a2-e6cc-47d2-9c5f-f7e955d1c8d1"],
Cell[403089, 10011, 196, 3, 46, "Text",ExpressionUUID->"07a229b4-97b9-4501-ae63-3860530369b7"],
Cell[403288, 10016, 892, 21, 72, "Code",ExpressionUUID->"fdf30683-fdbc-4649-8751-412388ff38e5"],
Cell[CellGroupData[{
Cell[404205, 10041, 1397, 29, 124, "Code",ExpressionUUID->"5ada759b-cf95-4642-b2b6-5cf7337a3f67"],
Cell[405605, 10072, 30636, 917, 70, "Output",ExpressionUUID->"2dd8c8de-3724-46ff-b3d9-65eddb91d1cf"]
}, Open  ]],
Cell[CellGroupData[{
Cell[436278, 10994, 2696, 63, 404, "Code",ExpressionUUID->"b54e4ebe-9448-42c1-962a-2a87d322a1b5"],
Cell[438977, 11059, 14921, 490, 70, "Output",ExpressionUUID->"bafef373-169e-4f50-93f9-fc1135c6fd62"]
}, Open  ]],
Cell[CellGroupData[{
Cell[453935, 11554, 906, 17, 124, "Code",ExpressionUUID->"6de71fd3-b077-4544-a30d-61cb2e5ee74f"],
Cell[454844, 11573, 14150, 414, 70, "Output",ExpressionUUID->"1fd4aeca-5316-4950-b449-78ad68bae98a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[469031, 11992, 2792, 65, 159, "Code",ExpressionUUID->"907c5da8-7214-4c70-afcb-e19ed56d7c3e"],
Cell[471826, 12059, 4620, 126, 70, "Output",ExpressionUUID->"6d5780ed-6337-4834-8552-a0a9930fee13"]
}, Open  ]],
Cell[476461, 12188, 1020, 24, 101, "Code",ExpressionUUID->"10ca052e-91e5-4f65-8a56-dfa3994d1575"],
Cell[CellGroupData[{
Cell[477506, 12216, 1593, 40, 130, "Code",ExpressionUUID->"a3656621-063f-4e23-80e7-f537481a0938"],
Cell[479102, 12258, 8665, 241, 70, "Output",ExpressionUUID->"9c6d1a4d-de51-4920-a47f-518ec12c1584"]
}, Open  ]],
Cell[CellGroupData[{
Cell[487804, 12504, 5439, 140, 377, "Code",ExpressionUUID->"cada339f-0f42-455e-bcff-a191a7599925"],
Cell[493246, 12646, 2576, 71, 70, "Output",ExpressionUUID->"d0321e07-fdc3-46ec-a012-82d50e1f626b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[495859, 12722, 371, 8, 69, "Code",ExpressionUUID->"01961dc9-3470-4ebb-9414-756f6f1e09ed"],
Cell[496233, 12732, 11939, 310, 70, "Output",ExpressionUUID->"6865f562-473a-49d2-ae0b-07aa829a53ae"]
}, Open  ]],
Cell[CellGroupData[{
Cell[508209, 13047, 787, 16, 72, "Code",ExpressionUUID->"9daa838c-bb6b-4d9d-a7c7-aee15e3f5dd4"],
Cell[508999, 13065, 8401, 220, 70, "Output",ExpressionUUID->"5cdbe384-a984-4812-b65b-3b5d43658cf8"]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[517449, 13291, 214, 4, 49, "Subsection",ExpressionUUID->"f328c725-2ea0-4d5a-9c3b-c07a7c864039"],
Cell[517666, 13297, 151, 3, 46, "Text",ExpressionUUID->"11d286f0-3f3b-49fb-8c28-826f34ff5975"],
Cell[517820, 13302, 2118, 58, 203, "Input",ExpressionUUID->"ff87d62e-a283-4665-b81b-a59840f7dace",
 InitializationCell->True],
Cell[519941, 13362, 196, 3, 46, "Text",ExpressionUUID->"44ca28b9-5698-4efc-b5d4-a956587dcbec"],
Cell[520140, 13367, 986, 22, 72, "Code",ExpressionUUID->"4c4f9408-71a2-4ba5-bc7e-5106b71ca576"],
Cell[CellGroupData[{
Cell[521151, 13393, 1440, 30, 124, "Code",ExpressionUUID->"86931454-35a8-4ca4-a11f-35955befc8bd"],
Cell[522594, 13425, 6166, 164, 109, "Output",ExpressionUUID->"94e53151-5c10-4ea3-8428-3e1ffbbafb73"]
}, Open  ]],
Cell[CellGroupData[{
Cell[528797, 13594, 1768, 41, 240, "Code",ExpressionUUID->"70231125-bf2a-4242-8b14-1a4418271719"],
Cell[530568, 13637, 4692, 152, 77, "Output",ExpressionUUID->"b96a4e30-f5ab-45b6-90f4-f13083ea4f9c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[535297, 13794, 1027, 20, 124, "Code",ExpressionUUID->"afb5464a-a41a-4a48-b9e4-c268aba615aa"],
Cell[536327, 13816, 3751, 107, 77, "Output",ExpressionUUID->"04e1df9e-2fbc-4b82-b76c-266e9108a4db"]
}, Open  ]],
Cell[CellGroupData[{
Cell[540115, 13928, 2362, 49, 127, "Code",ExpressionUUID->"1ce32f14-f969-49e3-bebb-b672335dfc7b"],
Cell[542480, 13979, 706, 17, 74, "Output",ExpressionUUID->"a7f4c6de-be75-4d52-81c4-3ab09946f912"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[543235, 14002, 162, 3, 72, "Subsection",ExpressionUUID->"3e3c5c03-0fc0-4050-bacd-6a7116b5eb41"],
Cell[543400, 14007, 1017, 22, 72, "Code",ExpressionUUID->"efe2fbe5-96fe-4c72-b76b-6e60e580a858"],
Cell[544420, 14031, 543, 11, 72, "Code",ExpressionUUID->"e5c5400c-bfd8-4a45-8758-964b45c82208"],
Cell[CellGroupData[{
Cell[544988, 14046, 663, 17, 72, "Code",ExpressionUUID->"51a41273-b623-439a-b1d0-e8cfc3bc6c25"],
Cell[545654, 14065, 24495, 745, 70, "Output",ExpressionUUID->"7ac62c0a-390b-4fd9-883e-22132d0e652b"]
}, Open  ]],
Cell[570164, 14813, 973, 24, 127, "Code",ExpressionUUID->"f50e7aad-d55f-4478-b7cd-6d9553d8ebeb"],
Cell[CellGroupData[{
Cell[571162, 14841, 3081, 72, 288, "Code",ExpressionUUID->"63607982-70f0-4cc6-958e-81f843ec5d7d"],
Cell[574246, 14915, 175749, 6088, 70, "Output",ExpressionUUID->"2c725a79-6fee-4fbe-87b9-9bca44146a47"]
}, Open  ]],
Cell[CellGroupData[{
Cell[750032, 21008, 1081, 27, 130, "Code",ExpressionUUID->"70a07223-4fc1-4b26-aa71-3e03e30980ee"],
Cell[751116, 21037, 16127, 506, 70, "Output",ExpressionUUID->"5e013ea1-6ce6-4732-936a-45f2ae2cf3eb"]
}, Open  ]],
Cell[CellGroupData[{
Cell[767280, 21548, 2520, 63, 185, "Code",ExpressionUUID->"4cc8cc03-7d33-4a8a-bb6b-e1998dccd993"],
Cell[769803, 21613, 13155, 433, 70, "Output",ExpressionUUID->"82ffe51a-e0df-4b1d-96b5-1411770de7bc"]
}, Open  ]],
Cell[CellGroupData[{
Cell[782995, 22051, 1580, 41, 143, "Code",ExpressionUUID->"49de38a0-94b6-4e86-a6fb-3ba3e1b566ff"],
Cell[784578, 22094, 8717, 249, 70, "Output",ExpressionUUID->"2734d34b-45ab-4e00-ac9f-e4f9216e7aca"]
}, Open  ]],
Cell[CellGroupData[{
Cell[793332, 22348, 2959, 68, 260, "Code",ExpressionUUID->"da34a509-0dd2-4530-82fd-f8244fe9e40c"],
Cell[796294, 22418, 547, 12, 70, "Message",ExpressionUUID->"4c3d88fd-f98e-4a06-9318-3bb49eb613b7"],
Cell[796844, 22432, 546, 12, 70, "Message",ExpressionUUID->"7c0f2c18-8d59-48c6-8b01-d4410ed5ac34"],
Cell[797393, 22446, 549, 12, 70, "Message",ExpressionUUID->"f966dbd1-ea5e-4691-b735-d5b1149fe993"],
Cell[797945, 22460, 540, 12, 70, "Message",ExpressionUUID->"9dfcbd75-5390-410f-8ac4-eedcb9bdc7d7"],
Cell[798488, 22474, 748, 14, 70, "Message",ExpressionUUID->"25ed9984-d922-4f98-89cf-80dba96b3f1c"],
Cell[799239, 22490, 1415, 22, 70, "Output",ExpressionUUID->"ad9ac052-8eea-4f5d-889f-f5e256571b77"]
}, Open  ]],
Cell[CellGroupData[{
Cell[800691, 22517, 463, 11, 42, "Input",ExpressionUUID->"35e6529c-1861-4b3b-8e0f-1b393100ab97"],
Cell[801157, 22530, 836, 14, 70, "Output",ExpressionUUID->"201b525c-aa6c-4180-9bb2-f7743568e5d8"]
}, Open  ]],
Cell[802008, 22547, 1121, 30, 101, "Code",ExpressionUUID->"efde68a8-05af-4acf-86f6-f506e397c36c"],
Cell[CellGroupData[{
Cell[803154, 22581, 2321, 63, 188, "Code",ExpressionUUID->"5ce67e2a-dbb9-4b4b-ac6e-b3d5e8e426e7"],
Cell[805478, 22646, 1287, 20, 70, "Output",ExpressionUUID->"9696cf68-74a7-49bf-ac3d-8f676a5c9caa"],
Cell[806768, 22668, 1287, 20, 70, "Output",ExpressionUUID->"6b738096-19dd-4c0c-8977-576353399503"]
}, Open  ]],
Cell[CellGroupData[{
Cell[808092, 22693, 3031, 81, 372, "Code",ExpressionUUID->"33bc48d5-628e-4396-9536-02fef67c724b"],
Cell[811126, 22776, 552, 12, 70, "Message",ExpressionUUID->"e4663f75-079e-4635-9255-5585cbe234e6"],
Cell[811681, 22790, 554, 12, 70, "Message",ExpressionUUID->"390c5cae-7067-4d07-8ca5-10903a38cfe2"],
Cell[812238, 22804, 553, 12, 70, "Message",ExpressionUUID->"b727213b-81f7-4066-a755-2a52a6e4431f"],
Cell[812794, 22818, 544, 12, 70, "Message",ExpressionUUID->"46112d16-1584-4cf1-b92c-ffcb353cf312"],
Cell[813341, 22832, 6770, 180, 70, "Output",ExpressionUUID->"29cb6f56-e39c-4f2f-8c57-51a2ab4b4d0f"]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[820160, 23018, 215, 4, 49, "Subsection",ExpressionUUID->"507c374a-0c02-4c1d-a73d-69a4a2d8ab36"],
Cell[820378, 23024, 151, 3, 46, "Text",ExpressionUUID->"c75236b9-7e4e-4342-80b2-103dbf3e85ed"],
Cell[820532, 23029, 1678, 32, 124, "Code",ExpressionUUID->"5668510c-a602-4854-8bb7-a63eef5e933c"],
Cell[822213, 23063, 196, 3, 46, "Text",ExpressionUUID->"eb2b04e9-e579-4a5e-9a68-46c8247cfac8"],
Cell[822412, 23068, 944, 22, 72, "Code",ExpressionUUID->"2c3f98e6-8f31-4e0c-8a7d-c2fae4a85aae"],
Cell[CellGroupData[{
Cell[823381, 23094, 1453, 31, 124, "Code",ExpressionUUID->"aad03992-a105-4ae6-951f-12fb8cfac234"],
Cell[824837, 23127, 42346, 1253, 70, "Output",ExpressionUUID->"d2f6fdd3-0bfe-4fb2-8b16-c06744d928a8"]
}, Open  ]],
Cell[CellGroupData[{
Cell[867220, 24385, 2375, 55, 295, "Code",ExpressionUUID->"bdc978de-93c3-440d-b51b-420a141ff265"],
Cell[869598, 24442, 26944, 900, 70, "Output",ExpressionUUID->"a1dd3612-f236-421a-ad64-91c76cfa8fd5"]
}, Open  ]],
Cell[CellGroupData[{
Cell[896579, 25347, 964, 19, 124, "Code",ExpressionUUID->"2c2e8317-99a7-4d5e-850a-e32bd591ab7d"],
Cell[897546, 25368, 17569, 493, 70, "Output",ExpressionUUID->"1f2a3d81-0777-42f9-83a3-047be913a3c5"]
}, Open  ]],
Cell[CellGroupData[{
Cell[915152, 25866, 2848, 67, 159, "Code",ExpressionUUID->"dfb35e40-b03d-4575-a812-35c64c996cb5"],
Cell[918003, 25935, 5283, 147, 70, "Output",ExpressionUUID->"1b6b51c6-5fb7-457e-8f3d-c945d00052d5"]
}, Open  ]],
Cell[CellGroupData[{
Cell[923323, 26087, 1070, 24, 101, "Code",ExpressionUUID->"3270dc19-aa86-4938-9c2a-f7039b6f3c62"],
Cell[924396, 26113, 4116, 116, 70, "Output",ExpressionUUID->"5bc529ee-5428-4c07-8fce-5ac6b16d8c24"],
Cell[928515, 26231, 4116, 116, 70, "Output",ExpressionUUID->"7281250f-9332-4da8-9988-02ca15772f9d"]
}, Open  ]],
Cell[CellGroupData[{
Cell[932668, 26352, 1783, 44, 130, "Code",ExpressionUUID->"761226d2-319b-419b-9f6e-6c1c4df1d14a"],
Cell[934454, 26398, 8135, 217, 70, "Output",ExpressionUUID->"b416bb49-bf97-4a8c-8367-651b06d7e8d4"]
}, Open  ]],
Cell[CellGroupData[{
Cell[942626, 26620, 615, 14, 72, "Code",ExpressionUUID->"677ab035-0c3c-42a1-a562-9e6f8efc2c25"],
Cell[943244, 26636, 616, 13, 70, "Message",ExpressionUUID->"53d54549-276e-48c6-a817-85733bda9b2f"],
Cell[943863, 26651, 616, 13, 70, "Message",ExpressionUUID->"ec405a44-c45a-48de-800f-f017257adff5"],
Cell[944482, 26666, 616, 13, 70, "Message",ExpressionUUID->"d8f7761d-6de3-42e2-b17b-c481fb2f8d4b"],
Cell[945101, 26681, 564, 13, 70, "Message",ExpressionUUID->"51deb27b-44b3-40ba-8fdb-01402bf032bf"],
Cell[945668, 26696, 7854, 211, 70, "Output",ExpressionUUID->"61d80b54-dc3b-4a0c-894e-3dff07a52ff0"]
}, Open  ]],
Cell[CellGroupData[{
Cell[953559, 26912, 5525, 139, 376, "Code",ExpressionUUID->"55fc4c37-9eea-4730-8236-3542b1f9fadd"],
Cell[959087, 27053, 4177, 109, 70, "Output",ExpressionUUID->"a2343ef9-141d-4d0d-a561-720cff74bdf8"]
}, Open  ]]
}, Closed]]
}, Open  ]]
}, Open  ]]
}
]
*)

