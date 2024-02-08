(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 14.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    575169,      16910]
NotebookOptionsPosition[    564679,      16732]
NotebookOutlinePosition[    565119,      16749]
CellTagsIndexPosition[    565076,      16746]
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
  3.914576548576517*^9, 3.915604269355105*^9, 3.915604787869217*^9, 
  3.915605241141739*^9, 3.915607882229287*^9, 3.915611628031833*^9, 
  3.915613370718861*^9, 3.9156312216540403`*^9, 3.915631679965994*^9, 
  3.915635560539963*^9, 3.915682310172346*^9, 3.9156880739682283`*^9, 
  3.9158567392197742`*^9, 3.915873378671754*^9, 3.915873532495327*^9, 
  3.916110380159029*^9, 3.916115544162375*^9, 3.9161173710378*^9, 
  3.916118534904964*^9, 3.916119322564987*^9, 3.916121573038685*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"9128bd07-84ea-4505-8c6d-66be065b058d"],

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
  3.914576548576517*^9, 3.915604269355105*^9, 3.915604787869217*^9, 
  3.915605241141739*^9, 3.915607882229287*^9, 3.915611628031833*^9, 
  3.915613370718861*^9, 3.9156312216540403`*^9, 3.915631679965994*^9, 
  3.915635560539963*^9, 3.915682310172346*^9, 3.9156880739682283`*^9, 
  3.9158567392197742`*^9, 3.915873378671754*^9, 3.915873532495327*^9, 
  3.916110380159029*^9, 3.916115544162375*^9, 3.9161173710378*^9, 
  3.916118534904964*^9, 3.916119322564987*^9, 3.91612157304397*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"d2eba197-4c93-4900-badd-c526edc42a51"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynCalc in your research, please evaluate \
FeynCalcHowToCite[] to learn how to cite this software.\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.914559435410506*^9, 3.914569505162786*^9, 
  3.914570046632012*^9, 3.914570421617712*^9, 3.914570669637253*^9, 
  3.914575077100466*^9, 3.914575342204976*^9, 3.914576296581914*^9, 
  3.914576548576517*^9, 3.915604269355105*^9, 3.915604787869217*^9, 
  3.915605241141739*^9, 3.915607882229287*^9, 3.915611628031833*^9, 
  3.915613370718861*^9, 3.9156312216540403`*^9, 3.915631679965994*^9, 
  3.915635560539963*^9, 3.915682310172346*^9, 3.9156880739682283`*^9, 
  3.9158567392197742`*^9, 3.915873378671754*^9, 3.915873532495327*^9, 
  3.916110380159029*^9, 3.916115544162375*^9, 3.9161173710378*^9, 
  3.916118534904964*^9, 3.916119322564987*^9, 3.9161215730459633`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"0771ee23-fe26-4d84-9519-a9b8fc397dff"],

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
  3.914576548576517*^9, 3.915604269355105*^9, 3.915604787869217*^9, 
  3.915605241141739*^9, 3.915607882229287*^9, 3.915611628031833*^9, 
  3.915613370718861*^9, 3.9156312216540403`*^9, 3.915631679965994*^9, 
  3.915635560539963*^9, 3.915682310172346*^9, 3.9156880739682283`*^9, 
  3.9158567392197742`*^9, 3.915873378671754*^9, 3.915873532495327*^9, 
  3.916110380159029*^9, 3.916115544162375*^9, 3.9161173710378*^9, 
  3.916118534904964*^9, 3.916119322564987*^9, 3.9161215730477324`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"399c52c2-afbc-4eba-bd35-03a057c7aefb"],

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
  3.914576548576517*^9, 3.915604269355105*^9, 3.915604787869217*^9, 
  3.915605241141739*^9, 3.915607882229287*^9, 3.915611628031833*^9, 
  3.915613370718861*^9, 3.9156312216540403`*^9, 3.915631679965994*^9, 
  3.915635560539963*^9, 3.915682310172346*^9, 3.9156880739682283`*^9, 
  3.9158567392197742`*^9, 3.915873378671754*^9, 3.915873532495327*^9, 
  3.916110380159029*^9, 3.916115544162375*^9, 3.9161173710378*^9, 
  3.916118534904964*^9, 3.916119322564987*^9, 3.9161215731498823`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"b651678f-00d9-4767-9725-4f0e599b6727"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynArts in your research, please cite\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.914559435410506*^9, 3.914569505162786*^9, 
  3.914570046632012*^9, 3.914570421617712*^9, 3.914570669637253*^9, 
  3.914575077100466*^9, 3.914575342204976*^9, 3.914576296581914*^9, 
  3.914576548576517*^9, 3.915604269355105*^9, 3.915604787869217*^9, 
  3.915605241141739*^9, 3.915607882229287*^9, 3.915611628031833*^9, 
  3.915613370718861*^9, 3.9156312216540403`*^9, 3.915631679965994*^9, 
  3.915635560539963*^9, 3.915682310172346*^9, 3.9156880739682283`*^9, 
  3.9158567392197742`*^9, 3.915873378671754*^9, 3.915873532495327*^9, 
  3.916110380159029*^9, 3.916115544162375*^9, 3.9161173710378*^9, 
  3.916118534904964*^9, 3.916119322564987*^9, 3.916121573152478*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"6da039b2-2e3e-4254-9352-ed504a333d63"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\" \[Bullet] T. Hahn, Comput. Phys. Commun., 140, 418-431, \
2001, arXiv:hep-ph/0012260\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.914559435410506*^9, 3.914569505162786*^9, 
  3.914570046632012*^9, 3.914570421617712*^9, 3.914570669637253*^9, 
  3.914575077100466*^9, 3.914575342204976*^9, 3.914576296581914*^9, 
  3.914576548576517*^9, 3.915604269355105*^9, 3.915604787869217*^9, 
  3.915605241141739*^9, 3.915607882229287*^9, 3.915611628031833*^9, 
  3.915613370718861*^9, 3.9156312216540403`*^9, 3.915631679965994*^9, 
  3.915635560539963*^9, 3.915682310172346*^9, 3.9156880739682283`*^9, 
  3.9158567392197742`*^9, 3.915873378671754*^9, 3.915873532495327*^9, 
  3.916110380159029*^9, 3.916115544162375*^9, 3.9161173710378*^9, 
  3.916118534904964*^9, 3.916119322564987*^9, 3.916121573154173*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"71b71d55-88cd-4513-99f8-a789b2b6493c"]
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
   "h", "shdw", 
    "\"Symbol \\!\\(\\*FormBox[\\\"\\\\\\\"h\\\\\\\"\\\", TraditionalForm]\\) \
appears in multiple contexts \\!\\(\\*FormBox[RowBox[{\\\"{\\\", RowBox[{\\\"\
\\\\\\\"XSec`\\\\\\\"\\\", \\\",\\\", \
\\\"\\\\\\\"GraphicsRasterInformationPatch`\\\\\\\"\\\"}], \\\"}\\\"}], \
TraditionalForm]\\); definitions in context \
\\!\\(\\*FormBox[\\\"\\\\\\\"XSec`\\\\\\\"\\\", TraditionalForm]\\) may \
shadow or be shadowed by other definitions.\"", 2, 9, 1, 24952508487970041248,
     "Local", "XSec`h"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.9156312221919622`*^9, 3.91563168051626*^9, 
  3.915635561164706*^9, 3.915682310754768*^9, 3.915688074625296*^9, 
  3.915856740461741*^9, 3.9158733798093777`*^9, 3.915873533834179*^9, 
  3.9161103814455147`*^9, 3.916115545583301*^9, 3.916117372421195*^9, 
  3.916118536284676*^9, 3.9161193238615313`*^9, 3.9161215742595882`*^9},
 CellLabel->
  "During evaluation of \
In[8]:=",ExpressionUUID->"05af30a3-6d1f-48a8-a591-882136f37fbd"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "h$", "shdw", 
    "\"Symbol \\!\\(\\*FormBox[\\\"\\\\\\\"h$\\\\\\\"\\\", \
TraditionalForm]\\) appears in multiple contexts \
\\!\\(\\*FormBox[RowBox[{\\\"{\\\", RowBox[{\\\"\\\\\\\"XSec`\\\\\\\"\\\", \\\
\",\\\", \\\"\\\\\\\"GraphicsRasterInformationPatch`\\\\\\\"\\\"}], \
\\\"}\\\"}], TraditionalForm]\\); definitions in context \
\\!\\(\\*FormBox[\\\"\\\\\\\"XSec`\\\\\\\"\\\", TraditionalForm]\\) may \
shadow or be shadowed by other definitions.\"", 2, 9, 2, 24952508487970041248,
     "Local", "XSec`h$"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.9156312221919622`*^9, 3.91563168051626*^9, 
  3.915635561164706*^9, 3.915682310754768*^9, 3.915688074625296*^9, 
  3.915856740461741*^9, 3.9158733798093777`*^9, 3.915873533834179*^9, 
  3.9161103814455147`*^9, 3.916115545583301*^9, 3.916117372421195*^9, 
  3.916118536284676*^9, 3.9161193238615313`*^9, 3.9161215742898808`*^9},
 CellLabel->
  "During evaluation of \
In[8]:=",ExpressionUUID->"a10ec013-c199-4bee-9e57-9a19e325ed61"],

Cell[BoxData[
 FormBox[
  TemplateBox[{
   "g", "shdw", 
    "\"Symbol \\!\\(\\*FormBox[\\\"\\\\\\\"g\\\\\\\"\\\", TraditionalForm]\\) \
appears in multiple contexts \\!\\(\\*FormBox[RowBox[{\\\"{\\\", RowBox[{\\\"\
\\\\\\\"XSec`\\\\\\\"\\\", \\\",\\\", \
\\\"\\\\\\\"GraphicsRasterInformationPatch`\\\\\\\"\\\"}], \\\"}\\\"}], \
TraditionalForm]\\); definitions in context \
\\!\\(\\*FormBox[\\\"\\\\\\\"XSec`\\\\\\\"\\\", TraditionalForm]\\) may \
shadow or be shadowed by other definitions.\"", 2, 9, 3, 24952508487970041248,
     "Local", "XSec`g"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.9156312221919622`*^9, 3.91563168051626*^9, 
  3.915635561164706*^9, 3.915682310754768*^9, 3.915688074625296*^9, 
  3.915856740461741*^9, 3.9158733798093777`*^9, 3.915873533834179*^9, 
  3.9161103814455147`*^9, 3.916115545583301*^9, 3.916117372421195*^9, 
  3.916118536284676*^9, 3.9161193238615313`*^9, 3.916121574332039*^9},
 CellLabel->
  "During evaluation of \
In[8]:=",ExpressionUUID->"e41adfe5-8aee-4c5f-b285-17c18f214b3d"],

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
or be shadowed by other definitions.\"", 2, 10, 4, 24952508487970041248, 
    "Local", "FeynCalc`Index"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.9156312221919622`*^9, 3.91563168051626*^9, 
  3.915635561164706*^9, 3.915682310754768*^9, 3.915688074625296*^9, 
  3.915856740461741*^9, 3.9158733798093777`*^9, 3.915873533834179*^9, 
  3.9161103814455147`*^9, 3.916115545583301*^9, 3.916117372421195*^9, 
  3.916118536284676*^9, 3.9161193238615313`*^9, 3.916121574402193*^9},
 CellLabel->
  "During evaluation of \
In[8]:=",ExpressionUUID->"896195be-d5e3-44a5-ac54-b60f56d9690f"],

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
or be shadowed by other definitions.\"", 2, 10, 5, 24952508487970041248, 
    "Local", "FeynCalc`IndexDelta"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.9156312221919622`*^9, 3.91563168051626*^9, 
  3.915635561164706*^9, 3.915682310754768*^9, 3.915688074625296*^9, 
  3.915856740461741*^9, 3.9158733798093777`*^9, 3.915873533834179*^9, 
  3.9161103814455147`*^9, 3.916115545583301*^9, 3.916117372421195*^9, 
  3.916118536284676*^9, 3.9161193238615313`*^9, 3.9161215744477367`*^9},
 CellLabel->
  "During evaluation of \
In[8]:=",ExpressionUUID->"a3d4b588-6b29-4f4f-b949-262c1f7874df"]
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
  3.914575352809062*^9, 3.914576307417729*^9, 3.914576559248646*^9, 
  3.915604270298394*^9, 3.915604789094827*^9, 3.9156052420538197`*^9, 
  3.915607883303196*^9, 3.915611628922361*^9, 3.9156133717058573`*^9, 
  3.915631222533489*^9, 3.91563168085079*^9, 3.915635561550962*^9, 
  3.915682311099091*^9, 3.915688074977667*^9, 3.9158567413264627`*^9, 
  3.915873380820497*^9, 3.915873534854128*^9, 3.9161103825595837`*^9, 
  3.916115546682644*^9, 3.91611737342612*^9, 3.9161185373437767`*^9, 
  3.916119324885859*^9, 3.9161215752583437`*^9},
 CellLabel->
  "During evaluation of \
In[14]:=",ExpressionUUID->"b4b3657f-ef46-43c5-a695-a1630c02986c"]
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
 CellLabel->"In[17]:=",ExpressionUUID->"86e63125-c621-4e47-9582-81b20677c7be"],

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
   3.91587330280555*^9}, {3.915873467061159*^9, 3.91587350502133*^9}},
 CellLabel->"In[25]:=",ExpressionUUID->"6430845d-dd98-413d-9ff1-f0b6e5eb4bba"],

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
   RowBox[{"diag3", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"diagQuarkZVertex", "[", "1", "]"}], "[", 
     RowBox[{"[", "0", "]"}], "]"}], "[", 
    RowBox[{
     RowBox[{"Sequence", "@@", 
      RowBox[{"diagQuarkZVertex", "[", "1", "]"}]}], ",", " ", 
     RowBox[{"Sequence", "@@", 
      RowBox[{"diagQuarkZVertexCT", "[", "1", "]"}]}]}], "]"}]}], ";"}], "\n", 
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
  3.914574832833165*^9, 3.914574838531204*^9}, {3.9156290048506947`*^9, 
  3.915629025849493*^9}, {3.915873310804772*^9, 3.915873339731573*^9}},
 CellLabel->"In[31]:=",ExpressionUUID->"f633392b-8a16-43bf-bbbc-0babf081b3d4"],

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
 CellLabel->"In[34]:=",ExpressionUUID->"bfc21cdb-a808-4fb6-9737-542ec93ca509"],

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
 CellChangeTimes->{3.915873538695175*^9, 3.916110386294306*^9, 
  3.916115550404728*^9, 3.9161173771184587`*^9, 3.916118541076413*^9, 
  3.916119328608059*^9, 3.916121578841161*^9},
 CellLabel->
  "During evaluation of \
In[34]:=",ExpressionUUID->"3429b3d4-30a0-409d-9b0e-df4b0bc332cd"]
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
 CellLabel->"In[35]:=",ExpressionUUID->"49647fd4-1c06-4e9f-b447-c893ba307761"],

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
  3.916115550650394*^9, 3.9161173772860126`*^9, 3.916118541342497*^9, 
  3.9161193288022623`*^9, 3.916121578997409*^9},
 CellLabel->
  "During evaluation of \
In[35]:=",ExpressionUUID->"2db1dc7f-52ea-4cf9-8893-f65a89fd5340"]
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
 CellLabel->"In[36]:=",ExpressionUUID->"362d2f96-9292-414c-bac4-400c7c9a3a66"],

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
1:eJxFlgs41OkexwcrjsK4nfCfmb8a8x9/rUvn6YImfnZ1pSJDrEIuKXIGXVwq
TWuOnBwqWtfKaKm22eyoyCLJdek2Ipcui6Q6UgdtSyX2/T9nn3f/zzPPPJ/n
/b/v//e+7+/3/f4WhEg2h6uzWKxi9GP+//9wIHlkFj3zgaXyND8pJ0Ca+/TH
uftMgSVn+9SICTj/Dy9zkw+IPc8KmkkCZkN2loSlmQFrYPPfpzQImGNU9L6Z
Zw4si1tJR9UJMJz9PbXyOmK4bZVCEGDf0HIkdyOB1pO2dW8goLpf/fHAr4hB
3OaTS8DkAjLOO4wDLPuM0M7fCDh15Zy21WOGu+tWhXBAV5Kl4whcYEnDciYe
ccD/scRfcBKxRdaR7/254DZmmR95B3F9Vm5/LxfmrYt+sm8cMevmuNCbB6LQ
makfWDxgxfhIljSi/74lzgGf0Lhnv7mtJQkes5K6+iHE7CrF81gSVr/ad+9x
LbP+9q7piyScECxt9z2GWP5um0krCfqzezO3ejLjFfsH20lQf+4TEWnExGdv
sPwaCcqM1BheL4pfaljBlpFQ32+T/sX3iC2qL38rIuHHEg43LAHx2LRuyQAP
ej7aNrG3IlbOPbp7Lw+8f/HSBi/E9f3padNc6FLJ+8O/QQw9pYJkLlzxV8sw
S2TOR7b05xkOdBUf1fyijBmPM21K4UDWxtdFvVPMfM797ww5IE0vDfLzQ/HB
+0YDJQHtc82qgtqZ/YyLEoMJ8Ch3tp9xR+dSn79BJCTAOP31YE4f4mDbB51z
CPDsSY7WlpBofqHpeRYB5Tba4jcaFmg/jeGTxgQ8TVilWbUJ8dh+9ZdfEWDd
7hB0Og+xtHYsIY2AHby0f8c9YXjiqeIZAeKk5TnrzRag+ROBBRs4kK7gvD2y
AbEqYs75Jg6cHHUNfxiPeKwk4dJXXPBVbbST5CKOebRmWQMX1Jw7zcYUiOs7
+K0reVDkcf38ngpmfnrjHCUPhm3v9WVeY97f+FLTmIT0UpvWdZeY8c4XceEk
yF/108Z5iFkXY9rkJLTR3xypOMx8zygqsZGEqPbYcMdQxFKtdRp30PvDriO9
boiVGgXa1SSsMGrVfUYhZrN5npkkzHhmOp+dy6yntL+xnoSVIXXGju/RflUl
/3Wa4MGuoHzxxWHEJ/QeFabxYLF79Nc5vyJWbmmXGPLghnyb86ZBxOxu945T
XMiXngq8+pY5z1h3GxMutBQ0tn2phdYfUDPRyufA39aIzRXWiD1lgTUCDvB5
0YYlfoiDHT671RMwMbU3y+wEE79Pl2Y0Abomh0+W3GfmpwTm2BFwI+L4WZnJ
QhQfjJzRIeCDc5jL1SDE9rauFbPmsGck1fejgmG9WbE+AUsuNubNm0Ks7A9Q
ORAQ3OymUeTKR/nQfG5rElrvpwiHb1MR25trCDoIYL9PulTdhDg4fGCXIwci
D/Wn5XxELL+w+hLK05/LRw/WU5YoHp+qh4u4UKK9PWLjWsSgZidTcKHhiuzA
7UDE8mVDi614YDf3X2tXRjIcv/rgaR64sK4l8qMQn5ifsU2DBMMLKs+4EMQx
95aG+ZHAOdQ4P80Lsf3X9PNcEpIimme4Tsx45WbyJglnOKF6S3mIWa7joeh+
E0YZ/ePj8cf3T4+3D/Lx/FmZk9qzZj5ef6tE9Cq+jI+/37/Y7qeMM3wcn9Oo
e+qTU3wc/7rBpOsN3/Hx/iodD8iWFPPx/ruGzuaVX//rfG46GaW49P11fvoS
i/hdmpb4fHdOynxWrbDE518ryms9lGiJ78dUWDMdXGeJ78/NTRTxTkuA71dT
PfEHTbEA37/0cmG9h1yA86NGFrP9wIgA58/uHuk/A+wpnF+p745Fv5BQOP98
72W9CbhA4fyMKVUMix9SOH+veomWdU5ROL8HoqKKPQyEOP9r3c/dUvKEuD7W
FmfV7logxPXDztih2GIuxPUlOub6ukVHiOsvqTD21vbfKFyfzn0OE9w+Ctdv
75w6E2ENhes7VS+zoOU0hetf2VCavF5KYX3o1bDofh1BYf14s/qBQ6UPhfVl
3qXFVKw7hfXnUdFa//+sp7A+xZd9+UJfTGH9WsgpV53YSWF9Cx69UWCdRmH9
ewNDBslXKKyPlnG/7Kp4QWH9NLoXvz+DL8T62qLXKg+NEGL9LdxT/XGNUoj1
ubVuUmE4LcT6rZJC24G1Vljf31I6x5dkW2H9f5A98JL1yAr7Q/aOd3yVOY39
o4qyUXV609hf7FbpKLNTaOw/mYTo8+eLNPanIpfDjnsaaexf+jI79t0HNPa3
Tdo9n4J6aOx/upJXZyY7aOyPCwtix+8y8//0z/zpndWHymjsr/LS2taxbBr7
b8JH8Z31+2nsz+O7m6s6ttDYv5X+wwVdTjT2d9+pJtOsBTT2/87RVjmpR+P+
4MPh4eDN6jTuH7wvSDUUs1a4v3i3ps1glRaN+w/fvdFX281o3J/cmVnjHb2c
xv1LZHFl0lAQjfsb2+yyT1FZNO5/DgaMre6+S+P+6PTB5KzjbGvcP/XGc1yu
+Vnj/up/u2W1liXWuP/6PcRe88yYNe7PPlTfvnx3xSLcv5116Ynbl7II93dV
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
  3.9161155507359533`*^9, 3.91611737747501*^9, 3.916118541469939*^9, 
  3.91611932894452*^9, 3.916121579092065*^9},
 CellLabel->
  "During evaluation of \
In[36]:=",ExpressionUUID->"c9657a05-881e-47fb-9557-31cf7847d261"]
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
 CellLabel->"In[37]:=",ExpressionUUID->"32414df4-8bf0-42dd-8f92-43b424c9e7f7"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Obtain the amplitudes", "Section",
 CellChangeTimes->{{3.9145749146702127`*^9, 
  3.914574919955998*^9}},ExpressionUUID->"31906d6a-5de6-4240-9209-\
aeea9f556a12"],

Cell["Some text.", "Text",
 CellChangeTimes->{{3.9145749282223186`*^9, 
  3.914574929643838*^9}},ExpressionUUID->"c10a10ba-bf40-4daa-957e-\
960bd700d3ff"],

Cell[BoxData[{
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
   RowBox[{
    RowBox[{"MakeBoxes", "[", 
     RowBox[{"ZsW", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
    RowBox[{"SubscriptBox", "[", 
     RowBox[{"\"\<Z\>\"", ",", " ", "\"\<sW\>\""}], "]"}]}], ";"}], 
  "\n"}], "\n", 
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
    RowBox[{"\"\<\[Delta]\>\"", ",", " ", "\"\<W\>\""}], "]"}]}], 
  ";"}]}], "Code",
 CellChangeTimes->{{3.915681621426889*^9, 3.915681663773157*^9}, {
  3.9156817008049603`*^9, 3.9156818056752787`*^9}, {3.915681837012416*^9, 
  3.915681862466351*^9}, {3.916118725229847*^9, 3.916118759579762*^9}},
 CellLabel->"In[38]:=",ExpressionUUID->"55739353-23ab-4cab-b56b-1a7f2233b389"],

Cell[CellGroupData[{

Cell["Quark self-energy", "Subsection",
 CellChangeTimes->{{3.915608126174597*^9, 
  3.9156081307360687`*^9}},ExpressionUUID->"84e2646c-101f-46ea-bcd6-\
ef457318a593"],

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
       RowBox[{"SMP", "[", "\"\<m_u\>\"", "]"}], "->", "0"}]}]}], "\n", "]"}],
    " ", "+", " ", 
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
         RowBox[{"SMP", "[", "\"\<m_u\>\"", "]"}], "->", "0"}]}], "}"}]}]}], 
    "\n", "]"}]}]}]], "Code",
 CellChangeTimes->{{3.914574932395079*^9, 3.9145750642106*^9}, {
   3.914575114114571*^9, 3.914575140895885*^9}, {3.914575213933047*^9, 
   3.914575230956373*^9}, 3.9145752957831707`*^9, {3.914575403525599*^9, 
   3.914575408291696*^9}, {3.914575627947624*^9, 3.914575639390836*^9}, {
   3.9145763894920387`*^9, 3.914576423833235*^9}, {3.914576914638637*^9, 
   3.914576993535039*^9}, 3.915635215915537*^9, {3.915681825635068*^9, 
   3.915681829061543*^9}, {3.915681883861487*^9, 3.915681908480117*^9}, {
   3.915702181919441*^9, 3.915702185075617*^9}, {3.915873346706002*^9, 
   3.915873349275494*^9}},
 CellLabel->"In[48]:=",ExpressionUUID->"6a53bd45-a3ce-4cb3-ac6b-7451c467ae24"],

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
          TraditionalForm]]}]}], "-", 
      RowBox[{"\[ImaginaryI]", " ", "Zm", " ", 
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
          TraditionalForm]}]]}], "-", 
      RowBox[{"\[ImaginaryI]", " ", "Zm", " ", 
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
   3.916119329699098*^9, 3.916121579699279*^9},
 CellLabel->"Out[48]=",ExpressionUUID->"dd22c94f-9212-4e4e-9014-e9726fa26be1"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Quark-Z vertex", "Subsection",
 CellChangeTimes->{{3.91560816314998*^9, 3.915608167175212*^9}, 
   3.9156082095571537`*^9},ExpressionUUID->"4ac70dc3-304b-4d20-86a2-\
891645457196"],

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
   3.915682034879884*^9}, {3.9158733523414307`*^9, 3.915873354658993*^9}, {
   3.9159360724108763`*^9, 3.915936084450366*^9}, {3.915936115163972*^9, 
   3.915936172123221*^9}, {3.915936369856352*^9, 3.915936370334353*^9}, {
   3.91611720058468*^9, 3.9161172045495872`*^9}, {3.91611877701705*^9, 
   3.916118835161071*^9}, {3.916119092163919*^9, 3.916119121584826*^9}, {
   3.91611927248796*^9, 3.916119278006371*^9}, {3.916121508916226*^9, 
   3.916121528539864*^9}},
 CellLabel->"In[49]:=",ExpressionUUID->"9374b929-5289-4bf5-ab50-be52cd4e871b"],

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
   3.91563556388868*^9, 3.9156413315054812`*^9, 3.915641404898898*^9, 
   3.915682313378707*^9, 3.915688077194109*^9, 3.915856746059937*^9, 
   3.91587338172038*^9, 3.915873540734838*^9, 3.915936173838512*^9, 
   3.9159363727704153`*^9, 3.915936413493268*^9, 3.916110388469509*^9, 
   3.916115552650399*^9, 3.916117212958735*^9, 3.916117379293599*^9, 
   3.916118543366666*^9, 3.9161191232767277`*^9, 3.916119333311144*^9, 
   3.916121580776116*^9},
 CellLabel->"Out[49]=",ExpressionUUID->"7e468318-5296-48e3-b4a2-ce5ff880464f"]
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
  3.9161165205142593`*^9}, {3.916116555840255*^9, 3.916116599870655*^9}, {
  3.91611711237746*^9, 3.91611717945485*^9}},
 CellLabel->"In[50]:=",ExpressionUUID->"fef7a2c1-f7a2-4e99-b096-c54bd2cdeace"],

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
   3.91612158112492*^9},
 CellLabel->"Out[50]=",ExpressionUUID->"b593a8fb-09cb-4e44-8fe6-f716031ad83b"]
}, Open  ]]
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
   3.915685190552537*^9, {3.915688060501205*^9, 3.9156880733942747`*^9}, {
   3.915688193665931*^9, 3.915688205910771*^9}, 3.915688995660984*^9, 
   3.915689049143714*^9, {3.915695805549962*^9, 3.91569580750732*^9}, {
   3.915695932185074*^9, 3.915695939898809*^9}, {3.9156961539744577`*^9, 
   3.91569617780539*^9}, {3.915698851346374*^9, 3.9156988714267187`*^9}, 
   3.916115650454897*^9, {3.9161157876150293`*^9, 3.916115818703369*^9}, {
   3.9161158597151213`*^9, 3.916115896549749*^9}},
 CellLabel->"In[51]:=",ExpressionUUID->"4dcc74a2-e6cc-47d2-9c5f-f7e955d1c8d1"],

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
 CellLabel->"In[52]:=",ExpressionUUID->"fdf30683-fdbc-4649-8751-412388ff38e5"],

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
 CellLabel->"In[53]:=",ExpressionUUID->"5ada759b-cf95-4642-b2b6-5cf7337a3f67"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", 
    FractionBox["1", 
     RowBox[{"32", " ", 
      SuperscriptBox["\[Pi]", "2"]}]]}], 
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
     RowBox[{"2", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
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
     RowBox[{"2", " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
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
     RowBox[{"2", " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
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
     RowBox[{"2", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
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
     RowBox[{"2", " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
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
     RowBox[{"2", " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
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
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{"\<\"\[CapitalDelta]\"\>", "+", 
           TagBox["\[DoubledGamma]",
            Function[{}, EulerGamma]], "-", 
           RowBox[{"log", "(", 
            RowBox[{"4", " ", "\[Pi]"}], ")"}]}], ")"}], " ", 
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
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "1"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{"16", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubscriptBox["Z", "qL"], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{"16", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["Z", "qL"]}]}], ")"}]}], "-", 
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
         RowBox[{"(", 
          RowBox[{
           SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{"\<\"\[CapitalDelta]\"\>", "+", 
           TagBox["\[DoubledGamma]",
            Function[{}, EulerGamma]], "-", 
           RowBox[{"log", "(", 
            RowBox[{"4", " ", "\[Pi]"}], ")"}]}], ")"}], " ", 
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
                  SequenceForm["Sfe", 3], Editable -> False], 
                 TraditionalForm], "2"}], 
              OverscriptBox["q", "~"]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{"16", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubscriptBox["Z", "qR"], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{"16", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", 
         SubscriptBox["C", "A"], " ", 
         SubscriptBox["Z", "qR"]}]}], ")"}]}], "-", 
     RowBox[{"2", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
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
     RowBox[{"2", " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
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
     RowBox[{"2", " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
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
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
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
     RowBox[{"2", " ", 
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
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
     RowBox[{"2", " ", 
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
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
     RowBox[{"32", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", "Zm", " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
      SubscriptBox["C", "A"]}], "+", 
     RowBox[{"32", " ", 
      SuperscriptBox["\[Pi]", "2"], " ", "Zm", " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["7",
        TraditionalForm]], " ", 
      SubscriptBox["C", "A"]}], "-", 
     RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      SubsuperscriptBox["g", "s", "2"], " ", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}]}], "+", 
     RowBox[{
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      RowBox[{"(", 
       RowBox[{"-", 
        SubsuperscriptBox["C", "A", "2"]}], ")"}], " ", 
      SubsuperscriptBox["g", "s", "2"], " ", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}]}], "+", 
     RowBox[{
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      SubsuperscriptBox["g", "s", "2"], " ", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}]}], "+", 
     RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["g", "s", "2"], " ", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}]}], "+", 
     RowBox[{
      TagBox["\[DoubledGamma]",
       Function[{}, EulerGamma]], " ", 
      SubsuperscriptBox["g", "s", "2"], " ", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}]}], "-", 
     RowBox[{
      RowBox[{"log", "(", 
       RowBox[{"4", " ", "\[Pi]"}], ")"}], " ", 
      SubsuperscriptBox["g", "s", "2"], " ", 
      RowBox[{"\[Gamma]", "\[CenterDot]", 
       FormBox[
        FormBox["p",
         TraditionalForm],
        TraditionalForm]}]}]}], ")"}]}], TraditionalForm]], "Output",
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
   3.916121583300811*^9},
 CellLabel->"Out[53]=",ExpressionUUID->"3b24d1b9-ee20-401e-8aa6-0bc524d9c7e7"]
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
 CellLabel->"In[54]:=",ExpressionUUID->"b54e4ebe-9448-42c1-962a-2a87d322a1b5"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", 
    FractionBox[
     RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
      SuperscriptBox["SqrtEGl", "2"], " ", 
      SuperscriptBox[
       OverscriptBox["\[Gamma]", "_"], 
       FormBox["6",
        TraditionalForm]], " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      SubsuperscriptBox["g", "s", "2"], " ", 
      SubscriptBox["m", 
       OverscriptBox["g", "~"]], " ", 
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
       "Conjugate"]}], 
     RowBox[{"16", " ", 
      SuperscriptBox["\[Pi]", "2"]}]]}], "+", 
   FractionBox[
    RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox["SqrtEGl", "2"], " ", 
     SuperscriptBox[
      OverscriptBox["\[Gamma]", "_"], 
      FormBox["6",
       TraditionalForm]], " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     SubscriptBox["m", 
      OverscriptBox["g", "~"]], " ", 
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
      "Conjugate"]}], 
    RowBox[{"16", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "-", 
   FractionBox[
    RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox[
      OverscriptBox["\[Gamma]", "_"], 
      FormBox["7",
       TraditionalForm]], " ", 
     SubsuperscriptBox["C", "A", "2"], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       TemplateBox[{"SqrtEGl"},
        "Conjugate"], ")"}], "2"], " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     SubscriptBox["m", 
      OverscriptBox["g", "~"]], " ", 
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
      "Conjugate"]}], 
    RowBox[{"16", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "+", 
   FractionBox[
    RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
     SuperscriptBox[
      OverscriptBox["\[Gamma]", "_"], 
      FormBox["7",
       TraditionalForm]], " ", 
     SuperscriptBox[
      RowBox[{"(", 
       TemplateBox[{"SqrtEGl"},
        "Conjugate"], ")"}], "2"], " ", 
     SubsuperscriptBox["g", "s", "2"], " ", 
     SubscriptBox["m", 
      OverscriptBox["g", "~"]], " ", 
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
      "Conjugate"]}], 
    RowBox[{"16", " ", 
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
      "Conjugate"]}], 
    RowBox[{"32", " ", 
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
      "Conjugate"]}], 
    RowBox[{"32", " ", 
     SuperscriptBox["\[Pi]", "2"]}]], "-", 
   RowBox[{"dQm", " ", 
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["6",
      TraditionalForm]], " ", 
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
       TraditionalForm]}]]}], "-", 
   RowBox[{"dQm", " ", 
    SuperscriptBox[
     OverscriptBox["\[Gamma]", "_"], 
     FormBox["7",
      TraditionalForm]], " ", 
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
       TraditionalForm]}]]}], "+", 
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
        SubscriptBox["\[Delta]", "qR"], ")"}]}]}], ")"}]}], "+", 
   FractionBox[
    RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
     SubsuperscriptBox["C", "A", "2"], " ", 
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
     SuperscriptBox["\[Pi]", "2"]}]], "-", 
   FractionBox[
    RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
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
  3.914576309000933*^9, {3.914576526971516*^9, 3.914576560864656*^9}, 
   3.914577028874678*^9, 3.915604271898407*^9, 3.9156043794272947`*^9, 
   3.915604792045149*^9, 3.915604862008191*^9, {3.915605058421609*^9, 
   3.915605062622292*^9}, 3.91560524377412*^9, 3.91560603754948*^9, 
   3.915606092767136*^9, 3.915607694876915*^9, {3.9156078017952337`*^9, 
   3.915607820391342*^9}, 3.915607885140748*^9, 3.915611630949479*^9, 
   3.915613373861554*^9, 3.91563066089172*^9, 3.9156312249526873`*^9, 
   3.915631683437091*^9, {3.915635132981955*^9, 3.915635162124075*^9}, 
   3.915635272360783*^9, 3.915635313631538*^9, 3.9156353484443817`*^9, 
   3.9156354299516487`*^9, 3.915635564372849*^9, 3.915682313794813*^9, 
   3.915688077398243*^9, 3.915688226218601*^9, 3.9156888486186333`*^9, 
   3.9158567487006083`*^9, 3.915873382230098*^9, 3.91587354376493*^9, 
   3.915950164990975*^9, 3.916110393494076*^9, 3.9161155574063253`*^9, 
   3.916117383710971*^9, 3.9161185477838097`*^9, 3.9161193379033012`*^9, 
   3.9161215849144382`*^9},
 CellLabel->"Out[54]=",ExpressionUUID->"2c1f2791-521d-4da7-873f-61160d8d1f04"]
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
 CellLabel->"In[55]:=",ExpressionUUID->"6de71fd3-b077-4544-a30d-61cb2e5ee74f"],

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
         RowBox[{"(", 
          RowBox[{
           SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
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
        RowBox[{"16", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", "dQm", " ", 
         SubscriptBox["C", "A"]}]}], ")"}]}], 
     RowBox[{"16", " ", 
      SuperscriptBox["\[Pi]", "2"]}]]}], "-", 
   FractionBox[
    RowBox[{
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
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
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
       RowBox[{"16", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", "dQm", " ", 
        SubscriptBox["C", "A"]}]}], ")"}]}], 
    RowBox[{"16", " ", 
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
   3.9156078852896147`*^9, 3.9156116309909153`*^9, 3.9156133739147997`*^9, 
   3.9156306760508137`*^9, 3.915631224986623*^9, 3.915631683479349*^9, {
   3.915635136358076*^9, 3.9156351628234*^9}, 3.915635284246346*^9, 
   3.9156353509262943`*^9, 3.9156354335266647`*^9, 3.915635564430471*^9, 
   3.915682313838519*^9, 3.915688077437435*^9, 3.9156882280390368`*^9, 
   3.915688850211179*^9, 3.915856749154785*^9, 3.9158733822924023`*^9, 
   3.91587354416227*^9, 3.915950189765646*^9, 3.916110394137596*^9, 
   3.916115557900367*^9, 3.916117384265448*^9, 3.916118548335037*^9, 
   3.916119338501356*^9, 3.916121585414212*^9},
 CellLabel->"Out[55]=",ExpressionUUID->"46e2aaa5-10c8-4bc1-91ec-60eee98404d4"]
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
   3.9156285973738394`*^9, 3.915628630310159*^9}, {3.915640965103493*^9, 
   3.915641067193727*^9}, {3.915641103132578*^9, 3.915641114960072*^9}, {
   3.9156822530445347`*^9, 3.91568228981182*^9}, {3.915682364194097*^9, 
   3.915682370496233*^9}, {3.915688254021814*^9, 3.915688277941984*^9}, {
   3.915688827684183*^9, 3.915688829425554*^9}, {3.915689088837331*^9, 
   3.915689104301497*^9}, {3.915689404018444*^9, 3.915689422172348*^9}, 
   3.915699085647545*^9, {3.915699135135043*^9, 3.915699156188718*^9}, {
   3.915699219535673*^9, 3.915699285872128*^9}, {3.915699353105693*^9, 
   3.915699372395504*^9}, {3.915699764894412*^9, 3.9156999892734327`*^9}},
 CellLabel->"In[56]:=",ExpressionUUID->"907c5da8-7214-4c70-afcb-e19ed56d7c3e"],

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
   3.915856749479766*^9, 3.915873382354526*^9, 3.9158735444803333`*^9, 
   3.91595023176703*^9, 3.916110394475431*^9, 3.916115558215646*^9, 
   3.916117384584282*^9, 3.916118548663322*^9, 3.9161193388234787`*^9, 
   3.916121585744875*^9},
 CellLabel->"Out[56]=",ExpressionUUID->"e34bc99a-18c3-4362-9800-534592e6ffd5"]
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
  3.915700206705513*^9, 3.915700305339728*^9}},
 CellLabel->"In[57]:=",ExpressionUUID->"10ca052e-91e5-4f65-8a56-dfa3994d1575"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ampQuarkSEDivMass", " ", "=", " ", 
  RowBox[{"SelectFree2", "[", 
   RowBox[{
    RowBox[{"ampQuarkSEDiv", "[", "3", "]"}], ",", " ", 
    RowBox[{"DiracGamma", "[", 
     RowBox[{
      RowBox[{"Momentum", "[", 
       RowBox[{"p", ",", " ", "D"}], "]"}], ",", " ", "D"}], "]"}]}], 
   "]"}]}]], "Code",
 CellChangeTimes->{{3.915950279742947*^9, 3.915950326948373*^9}},
 CellLabel->"In[59]:=",ExpressionUUID->"a3656621-063f-4e23-80e7-f537481a0938"],

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
         RowBox[{"(", 
          RowBox[{
           SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
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
        RowBox[{"16", " ", 
         SuperscriptBox["\[Pi]", "2"], " ", "dQm", " ", 
         SubscriptBox["C", "A"]}]}], ")"}]}], 
     RowBox[{"16", " ", 
      SuperscriptBox["\[Pi]", "2"]}]]}], "-", 
   FractionBox[
    RowBox[{
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
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
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
       RowBox[{"16", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", "dQm", " ", 
        SubscriptBox["C", "A"]}]}], ")"}]}], 
    RowBox[{"16", " ", 
     SuperscriptBox["\[Pi]", "2"]}]]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.915950321279469*^9, 3.915950327395687*^9}, 
   3.916110394652676*^9, 3.916115558358334*^9, 3.9161173847477913`*^9, 
   3.91611854881567*^9, 3.916119338973131*^9, 3.916121585811914*^9},
 CellLabel->"Out[59]=",ExpressionUUID->"062a0015-cd95-4373-a721-936e90f9b4b2"]
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
          RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}], "^", "2"}], " ", "->", 
         " ", 
         RowBox[{"4", "Pi", " ", 
          RowBox[{"SMP", "[", "\"\<alpha_s\>\"", "]"}]}]}]}], "]"}], 
      "&"}]}]}], ";"}], "\n"}], "\n", 
 RowBox[{"solQMS", " ", "=", " ", 
  RowBox[{
   RowBox[{"Join", "[", 
    RowBox[{
     RowBox[{"solL", "[", "1", "]"}], ",", " ", 
     RowBox[{"solR", "[", "1", "]"}]}], "]"}], " ", "//", " ", 
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
   3.915635446542345*^9, 3.915635458343183*^9}, {3.9156355827485843`*^9, 
   3.915635613127037*^9}, {3.915635662701167*^9, 3.9156357990640373`*^9}, {
   3.915640786314447*^9, 3.915640811106774*^9}, {3.915641187725995*^9, 
   3.915641192254242*^9}, {3.915641716581132*^9, 3.915641773181531*^9}, {
   3.915682195508872*^9, 3.9156821958693523`*^9}, {3.915685366318378*^9, 
   3.915685383898263*^9}, {3.915688576566821*^9, 3.915688714577341*^9}, {
   3.91568877734212*^9, 3.915688812015645*^9}, {3.915689323534189*^9, 
   3.91568932853456*^9}, {3.9157000170855007`*^9, 3.9157000605564427`*^9}, {
   3.915700318321312*^9, 3.915700322508253*^9}, {3.915857732684013*^9, 
   3.915857844272493*^9}},
 CellLabel->"In[60]:=",ExpressionUUID->"cada339f-0f42-455e-bcff-a191a7599925"],

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

 CellChangeTimes->{{3.915635771860265*^9, 3.915635799509789*^9}, 
   3.915640812762032*^9, 3.915641148229494*^9, 3.915641194089767*^9, {
   3.915641751526886*^9, 3.9156417735121093`*^9}, 3.915682313928561*^9, 
   3.915682385893148*^9, 3.915685385100065*^9, 3.915688077502264*^9, 
   3.915688547457078*^9, {3.915688700852228*^9, 3.915688715662401*^9}, 
   3.915688812970982*^9, 3.915688852830406*^9, 3.915689112188326*^9, 
   3.915689330772335*^9, {3.915700051476929*^9, 3.9157000609751463`*^9}, 
   3.9157003246200743`*^9, 3.915856749643478*^9, {3.915857772896677*^9, 
   3.915857830717572*^9}, 3.915873382428108*^9, 3.915873544601499*^9, 
   3.916110394749173*^9, 3.91611555844571*^9, 3.916117384904397*^9, 
   3.916118548924512*^9, 3.916119339125306*^9, 3.916121585870199*^9},
 CellLabel->"Out[62]=",ExpressionUUID->"957fcf5c-d62e-4336-91d0-d5e6149f2fa5"]
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
  3.9158578542912273`*^9, 3.915857913552359*^9}, {3.915857967497065*^9, 
  3.915857969447301*^9}, {3.9158586925930758`*^9, 3.915858709477475*^9}},
 CellLabel->"In[63]:=",ExpressionUUID->"9daa838c-bb6b-4d9d-a7c7-aee15e3f5dd4"],

Cell[BoxData[
 FormBox[
  RowBox[{"-", 
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
       RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
        SuperscriptBox["SqrtEGl", "2"], " ", 
        SuperscriptBox[
         OverscriptBox["\[Gamma]", "_"], 
         FormBox["6",
          TraditionalForm]], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
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
        SuperscriptBox[
         OverscriptBox["\[Gamma]", "_"], 
         FormBox["7",
          TraditionalForm]], " ", 
        RowBox[{"(", 
         RowBox[{
          SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
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
       RowBox[{"16", " ", 
        SuperscriptBox["\[Pi]", "2"], " ", "dQm", " ", 
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
        SubscriptBox["C", "A"]}]}], ")"}]}], 
    RowBox[{"16", " ", 
     SuperscriptBox["\[Pi]", "2"]}]]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.915688757816604*^9, {3.915689138692966*^9, 3.915689221800954*^9}, {
   3.915689261218237*^9, 3.915689287029525*^9}, 3.915689334830427*^9, 
   3.91570043000041*^9, 3.915700525662709*^9, 3.9158567497367563`*^9, 
   3.915857858701914*^9, {3.915857905169881*^9, 3.91585791417981*^9}, 
   3.915857969698925*^9, 3.915873382536457*^9, 3.915873544696945*^9, 
   3.9161103948464727`*^9, 3.916115558649684*^9, 3.916117385005475*^9, 
   3.91611854911483*^9, 3.916119339228056*^9, 3.916121585954502*^9},
 CellLabel->"Out[63]=",ExpressionUUID->"687c68c7-df7f-45f8-a40b-9aa3f9e57134"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Z self energy", "Subsection",
 CellChangeTimes->{{3.915630290843486*^9, 
  3.915630294621457*^9}},ExpressionUUID->"93a72804-b81c-4438-b0a4-\
32981ed263f2"],

Cell[BoxData[""], "Code",
 CellChangeTimes->{{3.915630305510481*^9, 3.915630308192253*^9}},
 CellLabel->"In[64]:=",ExpressionUUID->"bb90550d-4fb2-4ffb-9979-bda3214a651d"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Quark-Z Vertex", "Subsection",
 CellChangeTimes->{{3.915611514701611*^9, 
  3.915611525902963*^9}},ExpressionUUID->"15c532cf-fac6-4a85-97ec-\
8ffb7a7165e6"],

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
   3.9156325700149193`*^9, 3.915632571869291*^9}, 3.9156831866885343`*^9, {
   3.91611843398995*^9, 3.91611844909301*^9}},
 CellLabel->"In[65]:=",ExpressionUUID->"f72b6533-441a-426f-86bd-8e29b4edf772"],

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
 CellLabel->"In[66]:=",ExpressionUUID->"aa2e8af8-5d90-4222-bdf3-736455a2f4e5"],

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
 CellLabel->"In[67]:=",ExpressionUUID->"dbb476a4-f2ef-481a-87da-31ea866e3c03"],

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
   3.9161104006752863`*^9, 3.916115564498179*^9, 3.91611724259923*^9, 
   3.916117391615541*^9, 3.916118555761177*^9, 3.9161193470231857`*^9, 
   3.916121594413684*^9},
 CellLabel->"Out[67]=",ExpressionUUID->"5aaa6cc3-33be-4e63-acd2-3633d9d4609a"]
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
 CellChangeTimes->{{3.915612186515546*^9, 3.9156122255437593`*^9}, {
  3.915613497758166*^9, 3.915613531390083*^9}},
 CellLabel->"In[68]:=",ExpressionUUID->"4e729b8b-0fe2-4ce3-87f9-3b761c8eddb0"],

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
   3.916117553786203*^9, 3.9161176800999327`*^9}, {3.916117721203251*^9, 
   3.916117735949998*^9}, {3.916119144990655*^9, 3.916119175364462*^9}, 
   3.9161192410945272`*^9},
 CellLabel->"In[69]:=",ExpressionUUID->"f3b445fc-01a5-40ac-b370-4ff7ca11436c"],

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
   3.915629157102873*^9, 3.915631227770936*^9, 3.9156314950117283`*^9, 
   3.915631686446389*^9, 3.915631879657734*^9, 3.91563223791636*^9, 
   3.915632575671973*^9, {3.915641480544816*^9, 3.915641521702964*^9}, 
   3.915682316579461*^9, 3.9156827985632963`*^9, 3.915683194428071*^9, 
   3.9156880807137194`*^9, 3.9158567566231813`*^9, 3.915873382776114*^9, 
   3.915873551563777*^9, 3.9159362225728292`*^9, 3.9159364426176567`*^9, 
   3.9161104009271097`*^9, 3.9161155647826138`*^9, 3.916117250203578*^9, 
   3.9161173923213263`*^9, 3.916117462825108*^9, 3.916117520128313*^9, 
   3.916117559954739*^9, {3.916117599928557*^9, 3.916117623076332*^9}, 
   3.916117654825272*^9, 3.916117737288501*^9, 3.91611855659424*^9, 
   3.916119349099558*^9, 3.9161216007099123`*^9},
 CellLabel->"Out[69]=",ExpressionUUID->"dee83130-28a5-49f9-b54e-b4dd2e427ace"]
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
 CellLabel->"In[70]:=",ExpressionUUID->"0439de31-0764-4e73-9dff-dd9fdbd1f7f7"],

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
   3.9161185568118467`*^9, 3.916119350129468*^9, 3.916121601803604*^9},
 CellLabel->"Out[70]=",ExpressionUUID->"7d8e58d9-f08a-49d8-a60d-ec4cf66ce3e1"]
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

 CellChangeTimes->{{3.915613618193549*^9, 3.9156136260795913`*^9}, {
  3.9156138045044727`*^9, 3.9156138417637043`*^9}, {3.915613875706743*^9, 
  3.915613889753516*^9}, {3.915619725472468*^9, 3.9156197766590347`*^9}, {
  3.915619813582859*^9, 3.915619857758165*^9}, {3.915683309827927*^9, 
  3.915683391237526*^9}, {3.916119417342548*^9, 3.916119419021706*^9}},
 CellLabel->"In[71]:=",ExpressionUUID->"b6b13a79-1428-403c-8faa-d94cb78fc264"],

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
   3.9156315003737993`*^9, 3.9156316865820107`*^9, 3.915631883472949*^9, 
   3.915632240286264*^9, 3.915632576873663*^9, 3.915641636130825*^9, 
   3.9156823166810412`*^9, 3.915682892017921*^9, 3.9156831985129027`*^9, {
   3.91568331891085*^9, 3.9156833919766*^9}, 3.915688081107032*^9, 
   3.915856757244693*^9, 3.915873382889217*^9, 3.915873552185988*^9, 
   3.915936225647572*^9, 3.915936445100854*^9, 3.9161104011922493`*^9, 
   3.916115565063842*^9, 3.916117257448292*^9, 3.916117392716569*^9, 
   3.916117781361541*^9, 3.916118557123432*^9, 3.916119350429536*^9, 
   3.916119419940524*^9, 3.9161216021849422`*^9},
 CellLabel->"Out[71]=",ExpressionUUID->"5be319f0-c1bc-4150-9caf-613e0189ab5a"]
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
 CellLabel->"In[72]:=",ExpressionUUID->"46b94108-d530-494d-a3bd-f183d6dd2719"],

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
   3.9161172621618967`*^9, 3.916117392970892*^9, 3.916117799878509*^9, 
   3.9161185572737503`*^9, 3.91611935056497*^9, 3.916119429611795*^9, 
   3.916121602349457*^9},
 CellLabel->"Out[73]=",ExpressionUUID->"94f950cd-9dec-4906-8d80-a121b3799f1f"]
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
   3.9156323043892922`*^9, 3.915632304804735*^9}, {3.915641666752344*^9, 
   3.915641688588024*^9}, {3.915641806192504*^9, 3.915641814242326*^9}, {
   3.91564185131516*^9, 3.915641876528761*^9}, {3.915682941812112*^9, 
   3.9156829981842127`*^9}, {3.915858005489416*^9, 3.9158580065318117`*^9}, {
   3.915858125156466*^9, 3.915858128051385*^9}, 3.916117841340642*^9},
 CellLabel->"In[74]:=",ExpressionUUID->"d5386e78-a3e6-4fc9-9eb9-7588422df705"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", 
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
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]]}], "\<\"e\"\>", " ", 
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
     RowBox[{"4", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      SubscriptBox["\[Alpha]", "s"], " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
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
     RowBox[{"4", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      SubscriptBox["\[Alpha]", "s"], " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
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
       "Conjugate"]}], "-", 
     RowBox[{"3", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      SubscriptBox["\[Alpha]", "s"], " ", 
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
     RowBox[{"4", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubscriptBox["\[Alpha]", "s"], " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
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
     RowBox[{"4", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubscriptBox["\[Alpha]", "s"], " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
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
     RowBox[{"3", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubscriptBox["\[Alpha]", "s"], " ", 
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
     RowBox[{"32", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
     RowBox[{"32", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
     RowBox[{"24", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
     RowBox[{"16", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
     RowBox[{"16", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
     RowBox[{"12", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
     RowBox[{"16", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "4"]}], "+", 
     RowBox[{"16", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "4"]}], "-", 
     RowBox[{"12", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}]}], ")"}]}], 
  TraditionalForm]], "Output",
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
   3.9158733830077133`*^9, 3.915873552571293*^9, 3.9159362285688677`*^9, 
   3.9159364491776123`*^9, 3.916110401440959*^9, 3.916115565357217*^9, 
   3.916117270246111*^9, 3.916117393329343*^9, 3.916117819064905*^9, 
   3.916117854843932*^9, 3.9161185574230843`*^9, 3.916119350851529*^9, 
   3.916119437086424*^9, 3.91612160257123*^9},
 CellLabel->"Out[74]=",ExpressionUUID->"05aaaaa1-1594-4ea0-9e23-a89eac87b15c"]
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
 CellLabel->"In[75]:=",ExpressionUUID->"01a0f136-e226-4bbc-8f5e-e905c57f37d6"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox[
    RowBox[{"\<\"e\"\>", " ", 
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
              SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"4", " ", "\[Pi]", " ", 
              SubscriptBox["C", "A"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"2", " ", 
                 SubscriptBox["\[Delta]", "e"]}], "+", 
                SubscriptBox["\[Delta]", "W"]}], ")"}]}], "-", 
             RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
              RowBox[{"(", 
               RowBox[{
                SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
              SubscriptBox["\[Alpha]", "s"], " ", 
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
               "Conjugate"]}]}], ")"}]}], "+", 
          RowBox[{"3", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
              RowBox[{"(", 
               RowBox[{
                SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
              SubscriptBox["\[Alpha]", "s"], " ", 
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
             RowBox[{"4", " ", "\[Pi]", " ", 
              SubscriptBox["C", "A"], " ", 
              RowBox[{"(", 
               RowBox[{
                SubscriptBox["\[Delta]", "W"], "-", 
                RowBox[{"2", " ", 
                 SubscriptBox["\[Delta]", "e"]}]}], ")"}]}]}], ")"}]}]}], 
         ")"}]}], "+", 
       RowBox[{"4", " ", "\[Pi]", " ", 
        SubscriptBox["C", "A"], " ", 
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
         ")"}]}]}], ")"}]}], 
    RowBox[{"48", " ", "\[Pi]", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"sin", "("}], 
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], "+", 
   FractionBox[
    RowBox[{"\<\"e\"\>", " ", 
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
       SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
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
          RowBox[{"4", " ", "\[Pi]", " ", 
           SubscriptBox["C", "A"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"2", " ", 
              SubscriptBox["\[Delta]", "e"]}], "+", 
             SubscriptBox["\[Delta]", "W"]}], ")"}]}], "-", 
          RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
           SubscriptBox["\[Alpha]", "s"], " ", 
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
            "Conjugate"]}]}], ")"}]}], "-", 
       RowBox[{"4", " ", "\[Pi]", " ", 
        SubscriptBox["C", "A"], " ", 
        SubscriptBox["\[Delta]", "W"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}]}], ")"}]}], 
    RowBox[{"12", " ", "\[Pi]", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        RowBox[{"cos", "("}], 
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "3"]}]]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.915858105781809*^9, 3.915858132391477*^9}, 
   3.915873383068246*^9, 3.915873553208068*^9, 3.9159362434986353`*^9, 
   3.9159364578575773`*^9, 3.9161104016226254`*^9, 3.9161155655924463`*^9, 
   3.916117285903023*^9, 3.91611739361619*^9, 3.9161178963933*^9, 
   3.9161185576093473`*^9, 3.916119351164302*^9, 3.916119447560454*^9, 
   3.916121602927001*^9},
 CellLabel->"Out[75]=",ExpressionUUID->"61802ac9-9d05-4ee9-9ab3-56294e68dc14"]
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
 CellChangeTimes->{{3.9161179669197817`*^9, 3.916118088568331*^9}},
 CellLabel->"In[76]:=",ExpressionUUID->"b7a9d1b9-1501-4140-8ca5-fcae37fed90f"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"solL", "[", "5", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"Solve", "[", 
     RowBox[{
      RowBox[{"ampQZVertexDivL", " ", "==", " ", "0"}], ",", " ", "de"}], 
     "]"}], " ", "//", " ", "Flatten"}], " ", "//", " ", "Simplify"}]}], "\n", 
 RowBox[{
  RowBox[{"solR", "[", "5", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"Solve", "[", 
     RowBox[{
      RowBox[{"ampQZVertexDivR", " ", "==", " ", "0"}], ",", " ", "de"}], 
     "]"}], " ", "//", " ", "Flatten"}], " ", "//", " ", "Simplify"}]}], "\n", 
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
   3.915632136479946*^9, 3.9156321680382543`*^9, {3.915632310098738*^9, 
   3.915632345923936*^9}, {3.9156830627848*^9, 3.915683062868291*^9}, {
   3.9161180938952312`*^9, 3.916118129182473*^9}},
 CellLabel->"In[78]:=",ExpressionUUID->"77830a5f-7dd5-431d-86f9-926efbc70067"],

Cell[BoxData[
 FormBox[
  RowBox[{"{", 
   RowBox[{
    SubscriptBox["\[Delta]", "e"], "\[Rule]", 
    RowBox[{
     FractionBox[
      RowBox[{
       SubscriptBox["\[Delta]", "W"], " ", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"sin", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], 
      RowBox[{"2", " ", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{
          RowBox[{"cos", "("}], 
          SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}]], "-", 
     FractionBox[
      RowBox[{
       RowBox[{"4", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"sin", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"4", " ", "\[Pi]", " ", 
           SubscriptBox["C", "A"], " ", 
           SubscriptBox["\[Delta]", "W"]}], "-", 
          RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
           SubscriptBox["\[Alpha]", "s"], " ", 
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
            "Conjugate"]}]}], ")"}]}], "+", 
       RowBox[{"3", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
           SubscriptBox["\[Alpha]", "s"], " ", 
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
          RowBox[{"4", " ", "\[Pi]", " ", 
           SubscriptBox["C", "A"], " ", 
           SubscriptBox["\[Delta]", "W"]}]}], ")"}]}]}], 
      RowBox[{"8", " ", "\[Pi]", " ", 
       SubscriptBox["C", "A"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"4", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{"sin", "("}], 
             SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", "3"}], 
        ")"}]}]]}]}], "}"}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.915632026939797*^9, 3.91563204079486*^9}, 
   3.915632092662122*^9, 3.915632168952011*^9, {3.915632242613202*^9, 
   3.915632257555408*^9}, 3.915632351538498*^9, 3.915632578255994*^9, 
   3.91564191629659*^9, 3.915682316791788*^9, 3.915683070908189*^9, 
   3.915683205301784*^9, 3.915688081696908*^9, 3.91585675833086*^9, 
   3.915873383133428*^9, 3.915873553948072*^9, 3.915936262452305*^9, 
   3.9159364599031677`*^9, 3.916110401731659*^9, 3.916115565786027*^9, 
   3.916117303054174*^9, 3.916117393971449*^9, 3.91611790990711*^9, {
   3.916118114484117*^9, 3.916118129979144*^9}, 3.9161185577419167`*^9, 
   3.916119351437003*^9, 3.9161194641539593`*^9, 3.9161216031596527`*^9},
 CellLabel->"Out[78]=",ExpressionUUID->"2eef31cd-26bb-4de8-acb4-1cc168f7e437"],

Cell[BoxData[
 FormBox[
  RowBox[{"{", 
   RowBox[{
    SubscriptBox["\[Delta]", "e"], "\[Rule]", 
    RowBox[{
     FractionBox["1", "8"], " ", 
     RowBox[{"(", 
      RowBox[{
       FractionBox[
        RowBox[{"\<\"\[CapitalDelta]\"\>", " ", 
         RowBox[{"(", 
          RowBox[{
           SubsuperscriptBox["C", "A", "2"], "-", "1"}], ")"}], " ", 
         SubscriptBox["\[Alpha]", "s"], " ", 
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
          "Conjugate"]}], 
        RowBox[{"\[Pi]", " ", 
         SubscriptBox["C", "A"]}]], "+", 
       FractionBox[
        RowBox[{"4", " ", 
         SubscriptBox["\[Delta]", "W"], " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            RowBox[{"sin", "("}], 
            SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"cos", "("}], 
           SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]], "-", 
       RowBox[{"4", " ", 
        SubscriptBox["\[Delta]", "W"]}]}], ")"}]}]}], "}"}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.915632026939797*^9, 3.91563204079486*^9}, 
   3.915632092662122*^9, 3.915632168952011*^9, {3.915632242613202*^9, 
   3.915632257555408*^9}, 3.915632351538498*^9, 3.915632578255994*^9, 
   3.91564191629659*^9, 3.915682316791788*^9, 3.915683070908189*^9, 
   3.915683205301784*^9, 3.915688081696908*^9, 3.91585675833086*^9, 
   3.915873383133428*^9, 3.915873553948072*^9, 3.915936262452305*^9, 
   3.9159364599031677`*^9, 3.916110401731659*^9, 3.916115565786027*^9, 
   3.916117303054174*^9, 3.916117393971449*^9, 3.91611790990711*^9, {
   3.916118114484117*^9, 3.916118129979144*^9}, 3.9161185577419167`*^9, 
   3.916119351437003*^9, 3.9161194641539593`*^9, 3.916121603235388*^9},
 CellLabel->"Out[79]=",ExpressionUUID->"d9c76be4-9d72-445a-a094-91ae6e2b95c7"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ampQZVertexDiv", "[", "5", "]"}], "/.", 
  RowBox[{
   RowBox[{"Im", "[", 
    RowBox[{"SMP", "[", "\"\<d_psi\>\"", "]"}], "]"}], "->", 
   "dpsiL"}]}]], "Code",
 CellChangeTimes->{3.9156321804389963`*^9},
 CellLabel->"In[80]:=",ExpressionUUID->"5d820335-5819-4297-8064-b83a5828425e"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", 
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
        SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]]}], "\<\"e\"\>", " ", 
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
     RowBox[{"4", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      SubscriptBox["\[Alpha]", "s"], " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
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
     RowBox[{"4", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      SubscriptBox["\[Alpha]", "s"], " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
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
       "Conjugate"]}], "-", 
     RowBox[{"3", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubsuperscriptBox["C", "A", "2"], " ", 
      SubscriptBox["\[Alpha]", "s"], " ", 
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
     RowBox[{"4", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubscriptBox["\[Alpha]", "s"], " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
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
     RowBox[{"4", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubscriptBox["\[Alpha]", "s"], " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"], " ", 
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
     RowBox[{"3", " ", "\<\"\[CapitalDelta]\"\>", " ", 
      SubscriptBox["\[Alpha]", "s"], " ", 
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
     RowBox[{"32", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
     RowBox[{"32", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
     RowBox[{"24", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
     RowBox[{"16", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
     RowBox[{"16", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "-", 
     RowBox[{"12", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}], "+", 
     RowBox[{"16", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "4"]}], "+", 
     RowBox[{"16", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "4"]}], "-", 
     RowBox[{"12", " ", "\[Pi]", " ", 
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
         SubscriptBox["\[Theta]", "W"], ")"}], ")"}], "2"]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.915632180930476*^9, 3.9156823168376627`*^9, 
  3.91568808192652*^9, 3.9158567587401743`*^9, 3.91587338319538*^9, 
  3.915873554282963*^9, 3.916110401998032*^9, 3.9161155659451637`*^9, 
  3.9161173944776573`*^9, 3.916118557873011*^9, 3.916119351597136*^9, 
  3.9161216033791018`*^9},
 CellLabel->"Out[80]=",ExpressionUUID->"ee04f22e-7621-45d9-a506-6bd1333d3af7"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1915.5, 1055.25},
WindowMargins->{{1437.75, Automatic}, {Automatic, -22.5}},
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
Cell[580, 22, 265, 6, 131, "Title",ExpressionUUID->"6ed265d2-bf75-499b-939e-b38606ee57c8"],
Cell[848, 30, 282, 7, 46, "Text",ExpressionUUID->"b6e04ede-9349-47f5-81c1-12a6ab1ad69f"],
Cell[CellGroupData[{
Cell[1155, 41, 161, 3, 89, "Section",ExpressionUUID->"71dc81fc-87e4-4083-8208-de3a134a8225"],
Cell[1319, 46, 312, 7, 46, "Text",ExpressionUUID->"1ced22e6-0008-4974-a063-20d9ccf3e3c9"],
Cell[CellGroupData[{
Cell[1656, 57, 1366, 35, 393, "Code",ExpressionUUID->"f768582f-208b-4368-8c00-048b2134443a"],
Cell[CellGroupData[{
Cell[3047, 96, 3293, 78, 38, "Print",ExpressionUUID->"9128bd07-84ea-4505-8c6d-66be065b058d"],
Cell[6343, 176, 2475, 59, 38, "Print",ExpressionUUID->"d2eba197-4c93-4900-badd-c526edc42a51"],
Cell[8821, 237, 1013, 17, 36, "Print",ExpressionUUID->"0771ee23-fe26-4d84-9519-a9b8fc397dff"],
Cell[9837, 256, 1059, 19, 36, "Print",ExpressionUUID->"399c52c2-afbc-4eba-bd35-03a057c7aefb"],
Cell[10899, 277, 2663, 66, 38, "Print",ExpressionUUID->"b651678f-00d9-4767-9725-4f0e599b6727"],
Cell[13565, 345, 949, 16, 36, "Print",ExpressionUUID->"6da039b2-2e3e-4254-9352-ed504a333d63"],
Cell[14517, 363, 985, 17, 36, "Print",ExpressionUUID->"71b71d55-88cd-4513-99f8-a789b2b6493c"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[15551, 386, 631, 15, 150, "Code",ExpressionUUID->"c09a340c-f42d-4ecf-91c4-86797bb611e6"],
Cell[16185, 403, 1067, 20, 37, "Message",ExpressionUUID->"05af30a3-6d1f-48a8-a591-882136f37fbd"],
Cell[17255, 425, 1070, 20, 37, "Message",ExpressionUUID->"a10ec013-c199-4bee-9e57-9a19e325ed61"],
Cell[18328, 447, 1065, 20, 37, "Message",ExpressionUUID->"e41adfe5-8aee-4c5f-b285-17c18f214b3d"],
Cell[19396, 469, 1068, 20, 37, "Message",ExpressionUUID->"896195be-d5e3-44a5-ac54-b60f56d9690f"],
Cell[20467, 491, 1085, 20, 37, "Message",ExpressionUUID->"a3d4b588-6b29-4f4f-b949-262c1f7874df"]
}, Open  ]],
Cell[21567, 514, 844, 19, 101, "Code",ExpressionUUID->"c27ce459-574d-4b02-af7e-05e95659f54a"],
Cell[22414, 535, 280, 6, 46, "Text",ExpressionUUID->"e5a0135f-7b78-4ce1-8c26-ab2e014a94cb"],
Cell[CellGroupData[{
Cell[22719, 545, 867, 21, 125, "Code",ExpressionUUID->"7b818ea2-6646-4c5e-875d-9558add8f116"],
Cell[23589, 568, 827, 13, 32, "Print",ExpressionUUID->"b4b3657f-ef46-43c5-a695-a1630c02986c"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[24465, 587, 172, 3, 89, "Section",ExpressionUUID->"68d0844d-6266-4689-85b5-bdbd19865d1e"],
Cell[24640, 592, 151, 3, 46, "Text",ExpressionUUID->"50360045-3565-4530-bddf-f6188de982be"],
Cell[24794, 597, 7347, 177, 1271, "Code",ExpressionUUID->"86e63125-c621-4e47-9582-81b20677c7be"],
Cell[32144, 776, 7456, 201, 407, "Code",ExpressionUUID->"6430845d-dd98-413d-9ff1-f0b6e5eb4bba"],
Cell[39603, 979, 2491, 67, 186, "Code",ExpressionUUID->"f633392b-8a16-43bf-bbbc-0babf081b3d4"],
Cell[CellGroupData[{
Cell[42119, 1050, 868, 17, 72, "Code",ExpressionUUID->"bfc21cdb-a808-4fb6-9737-542ec93ca509"],
Cell[42990, 1069, 13290, 299, 356, "Print",ExpressionUUID->"3429b3d4-30a0-409d-9b0e-df4b0bc332cd"]
}, Open  ]],
Cell[CellGroupData[{
Cell[56317, 1373, 573, 13, 72, "Code",ExpressionUUID->"49647fd4-1c06-4e9f-b447-c893ba307761"],
Cell[56893, 1388, 48516, 1045, 356, "Print",ExpressionUUID->"2db1dc7f-52ea-4cf9-8893-f65a89fd5340"]
}, Open  ]],
Cell[CellGroupData[{
Cell[105446, 2438, 571, 13, 72, "Code",ExpressionUUID->"362d2f96-9292-414c-bac4-400c7c9a3a66"],
Cell[106020, 2453, 19936, 437, 356, "Print",ExpressionUUID->"c9657a05-881e-47fb-9557-31cf7847d261"]
}, Open  ]],
Cell[125971, 2893, 549, 13, 72, "Code",ExpressionUUID->"32414df4-8bf0-42dd-8f92-43b424c9e7f7"]
}, Open  ]],
Cell[CellGroupData[{
Cell[126557, 2911, 168, 3, 89, "Section",ExpressionUUID->"31906d6a-5de6-4240-9209-aeea9f556a12"],
Cell[126728, 2916, 154, 3, 46, "Text",ExpressionUUID->"c10a10ba-bf40-4daa-957e-960bd700d3ff"],
Cell[126885, 2921, 2656, 67, 358, "Code",ExpressionUUID->"55739353-23ab-4cab-b56b-1a7f2233b389"],
Cell[CellGroupData[{
Cell[129566, 2992, 167, 3, 72, "Subsection",ExpressionUUID->"84e2646c-101f-46ea-bcd6-ef457318a593"],
Cell[CellGroupData[{
Cell[129758, 2999, 3529, 73, 744, "Code",ExpressionUUID->"6a53bd45-a3ce-4cb3-ac6b-7451c467ae24"],
Cell[133290, 3074, 13401, 417, 162, "Output",ExpressionUUID->"dd22c94f-9212-4e4e-9014-e9726fa26be1"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[146740, 3497, 186, 3, 72, "Subsection",ExpressionUUID->"4ac70dc3-304b-4d20-86a2-891645457196"],
Cell[CellGroupData[{
Cell[146951, 3504, 7501, 160, 1157, "Code",ExpressionUUID->"9374b929-5289-4bf5-ab50-be52cd4e871b"],
Cell[154455, 3666, 22654, 673, 283, "Output",ExpressionUUID->"7e468318-5296-48e3-b4a2-ce5ff880464f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[177146, 4344, 2535, 58, 427, "Code",ExpressionUUID->"fef7a2c1-f7a2-4e99-b096-c54bd2cdeace"],
Cell[179684, 4404, 3061, 99, 79, "Output",ExpressionUUID->"b593a8fb-09cb-4e44-8fe6-f716031ad83b"]
}, Open  ]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[182806, 4510, 169, 3, 89, "Section",ExpressionUUID->"a75b00ae-7f3a-42c5-9ea8-228a5a55557a"],
Cell[CellGroupData[{
Cell[183000, 4517, 165, 3, 72, "Subsection",ExpressionUUID->"5fb3249a-2a16-4578-8abb-4407375a385c"],
Cell[183168, 4522, 151, 3, 46, "Text",ExpressionUUID->"fdebe3dc-fda7-4880-ba4b-d10189a5cb1c"],
Cell[183322, 4527, 1624, 30, 124, "Code",ExpressionUUID->"4dcc74a2-e6cc-47d2-9c5f-f7e955d1c8d1"],
Cell[184949, 4559, 196, 3, 46, "Text",ExpressionUUID->"07a229b4-97b9-4501-ae63-3860530369b7"],
Cell[185148, 4564, 892, 21, 72, "Code",ExpressionUUID->"fdf30683-fdbc-4649-8751-412388ff38e5"],
Cell[CellGroupData[{
Cell[186065, 4589, 1397, 29, 124, "Code",ExpressionUUID->"5ada759b-cf95-4642-b2b6-5cf7337a3f67"],
Cell[187465, 4620, 20832, 609, 229, "Output",ExpressionUUID->"3b24d1b9-ee20-401e-8aa6-0bc524d9c7e7"]
}, Open  ]],
Cell[CellGroupData[{
Cell[208334, 5234, 2696, 63, 404, "Code",ExpressionUUID->"b54e4ebe-9448-42c1-962a-2a87d322a1b5"],
Cell[211033, 5299, 16887, 561, 271, "Output",ExpressionUUID->"2c1f2791-521d-4da7-873f-61160d8d1f04"]
}, Open  ]],
Cell[CellGroupData[{
Cell[227957, 5865, 906, 17, 124, "Code",ExpressionUUID->"6de71fd3-b077-4544-a30d-61cb2e5ee74f"],
Cell[228866, 5884, 9625, 287, 157, "Output",ExpressionUUID->"46e2aaa5-10c8-4bc1-91ec-60eee98404d4"]
}, Open  ]],
Cell[CellGroupData[{
Cell[238528, 6176, 2794, 65, 159, "Code",ExpressionUUID->"907c5da8-7214-4c70-afcb-e19ed56d7c3e"],
Cell[241325, 6243, 4339, 122, 84, "Output",ExpressionUUID->"e34bc99a-18c3-4362-9800-534592e6ffd5"]
}, Open  ]],
Cell[245679, 6368, 971, 23, 101, "Code",ExpressionUUID->"10ca052e-91e5-4f65-8a56-dfa3994d1575"],
Cell[CellGroupData[{
Cell[246675, 6395, 474, 11, 72, "Code",ExpressionUUID->"a3656621-063f-4e23-80e7-f537481a0938"],
Cell[247152, 6408, 4087, 122, 84, "Output",ExpressionUUID->"062a0015-cd95-4373-a721-936e90f9b4b2"]
}, Open  ]],
Cell[CellGroupData[{
Cell[251276, 6535, 3840, 96, 294, "Code",ExpressionUUID->"cada339f-0f42-455e-bcff-a191a7599925"],
Cell[255119, 6633, 3267, 80, 84, "Output",ExpressionUUID->"957fcf5c-d62e-4336-91d0-d5e6149f2fa5"]
}, Open  ]],
Cell[CellGroupData[{
Cell[258423, 6718, 791, 16, 72, "Code",ExpressionUUID->"9daa838c-bb6b-4d9d-a7c7-aee15e3f5dd4"],
Cell[259217, 6736, 4012, 112, 84, "Output",ExpressionUUID->"687c68c7-df7f-45f8-a40b-9aa3f9e57134"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[263278, 6854, 161, 3, 72, "Subsection",ExpressionUUID->"93a72804-b81c-4438-b0a4-32981ed263f2"],
Cell[263442, 6859, 170, 2, 69, "Code",ExpressionUUID->"bb90550d-4fb2-4ffb-9979-bda3214a651d"]
}, Open  ]],
Cell[CellGroupData[{
Cell[263649, 6866, 162, 3, 72, "Subsection",ExpressionUUID->"15c532cf-fac6-4a85-97ec-8ffb7a7165e6"],
Cell[263814, 6871, 1019, 22, 72, "Code",ExpressionUUID->"f72b6533-441a-426f-86bd-8e29b4edf772"],
Cell[264836, 6895, 543, 11, 72, "Code",ExpressionUUID->"aa2e8af8-5d90-4222-bdf3-736455a2f4e5"],
Cell[CellGroupData[{
Cell[265404, 6910, 663, 17, 72, "Code",ExpressionUUID->"dbb476a4-f2ef-481a-87da-31ea866e3c03"],
Cell[266070, 6929, 24218, 741, 263, "Output",ExpressionUUID->"5aaa6cc3-33be-4e63-acd2-3633d9d4609a"]
}, Open  ]],
Cell[290303, 7673, 975, 24, 127, "Code",ExpressionUUID->"4e729b8b-0fe2-4ce3-87f9-3b761c8eddb0"],
Cell[CellGroupData[{
Cell[291303, 7701, 3083, 72, 288, "Code",ExpressionUUID->"f3b445fc-01a5-40ac-b370-4ff7ca11436c"],
Cell[294389, 7775, 175480, 6084, 2335, "Output",ExpressionUUID->"dee83130-28a5-49f9-b54e-b4dd2e427ace"]
}, Open  ]],
Cell[CellGroupData[{
Cell[469906, 13864, 1081, 27, 130, "Code",ExpressionUUID->"0439de31-0764-4e73-9dff-dd9fdbd1f7f7"],
Cell[470990, 13893, 15842, 502, 191, "Output",ExpressionUUID->"7d8e58d9-f08a-49d8-a60d-ec4cf66ce3e1"]
}, Open  ]],
Cell[CellGroupData[{
Cell[486869, 14400, 2522, 63, 185, "Code",ExpressionUUID->"b6b13a79-1428-403c-8faa-d94cb78fc264"],
Cell[489394, 14465, 12872, 429, 210, "Output",ExpressionUUID->"5be319f0-c1bc-4150-9caf-613e0189ab5a"]
}, Open  ]],
Cell[CellGroupData[{
Cell[502303, 14899, 1580, 41, 143, "Code",ExpressionUUID->"46b94108-d530-494d-a3bd-f183d6dd2719"],
Cell[503886, 14942, 8425, 244, 194, "Output",ExpressionUUID->"94f950cd-9dec-4906-8d80-a121b3799f1f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[512348, 15191, 2959, 67, 260, "Code",ExpressionUUID->"d5386e78-a3e6-4fc9-9eb9-7588422df705"],
Cell[515310, 15260, 15543, 475, 190, "Output",ExpressionUUID->"05aaaaa1-1594-4ea0-9e23-a89eac87b15c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[530890, 15740, 459, 10, 42, "Input",ExpressionUUID->"01a0f136-e226-4bbc-8f5e-e905c57f37d6"],
Cell[531352, 15752, 8315, 237, 160, "Output",ExpressionUUID->"61802ac9-9d05-4ee9-9ab3-56294e68dc14"]
}, Open  ]],
Cell[539682, 15992, 1119, 29, 101, "Code",ExpressionUUID->"b7a9d1b9-1501-4140-8ca5-fcae37fed90f"],
Cell[CellGroupData[{
Cell[540826, 16025, 1721, 44, 159, "Code",ExpressionUUID->"77830a5f-7dd5-431d-86f9-926efbc70067"],
Cell[542550, 16071, 4315, 110, 85, "Output",ExpressionUUID->"2eef31cd-26bb-4de8-acb4-1cc168f7e437"],
Cell[546868, 16183, 2542, 63, 94, "Output",ExpressionUUID->"d9c76be4-9d72-445a-a094-91ae6e2b95c7"]
}, Open  ]],
Cell[CellGroupData[{
Cell[549447, 16251, 319, 8, 69, "Code",ExpressionUUID->"5d820335-5819-4297-8064-b83a5828425e"],
Cell[549769, 16261, 14858, 465, 190, "Output",ExpressionUUID->"ee04f22e-7621-45d9-a506-6bd1333d3af7"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

