(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 14.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    639183,      17537]
NotebookOptionsPosition[    624892,      17295]
NotebookOutlinePosition[    625299,      17311]
CellTagsIndexPosition[    625256,      17308]
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
   OverscriptBox["q", "_"], TraditionalForm]],ExpressionUUID->
  "3d78edb2-e90a-4046-a767-6c71df141f10"],
 "\[Rule]",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubsuperscriptBox[
     OverscriptBox["\[Chi]", "~"], "i", "0"], 
    SubsuperscriptBox[
     OverscriptBox["\[Chi]", "~"], "j", "0"]}], TraditionalForm]],
  ExpressionUUID->"eb476270-9faa-47c6-b10a-3babcf132286"]
}], "Title",
 CellChangeTimes->{{3.914476161192134*^9, 3.914476286383162*^9}, 
   3.92060595553071*^9},ExpressionUUID->"3113a770-5abe-44cf-abcb-\
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
 CellChangeTimes->{{3.917849082772398*^9, 3.917849097116674*^9}, 
   3.917849200066637*^9, 3.917849445640594*^9, 3.9179345895281687`*^9, 
   3.918017548782918*^9, 3.918034064119865*^9, 3.9180918247107067`*^9, 
   3.918092129668906*^9, 3.918092172097555*^9, 3.918094145785714*^9, 
   3.918094270953313*^9, 3.918094406453402*^9, 3.920605787764384*^9, 
   3.9206058555401793`*^9, 3.920606005544156*^9, 3.920621462042815*^9, 
   3.920621515653374*^9, {3.921031138596541*^9, 3.921031156370984*^9}, 
   3.921031716296237*^9, 3.921031946769711*^9, 3.921032405579625*^9, 
   3.921032879302751*^9, 3.921033265049292*^9, 3.923635205338397*^9, 
   3.923725211725302*^9, 3.923725525198943*^9, 3.923729640751399*^9, 
   3.923964921713274*^9, 3.923974018036261*^9, 3.923980343814158*^9, 
   3.924077707287982*^9, 3.924077916551435*^9, 3.924081723580306*^9, 
   3.924141106559239*^9, 3.924145883226729*^9, 3.924156476349082*^9, 
   3.924156592797999*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"efd6ecfb-6822-4506-bca8-233fed11228c"],

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
 CellChangeTimes->{{3.917849082772398*^9, 3.917849097116674*^9}, 
   3.917849200066637*^9, 3.917849445640594*^9, 3.9179345895281687`*^9, 
   3.918017548782918*^9, 3.918034064119865*^9, 3.9180918247107067`*^9, 
   3.918092129668906*^9, 3.918092172097555*^9, 3.918094145785714*^9, 
   3.918094270953313*^9, 3.918094406453402*^9, 3.920605787764384*^9, 
   3.9206058555401793`*^9, 3.920606005544156*^9, 3.920621462042815*^9, 
   3.920621515653374*^9, {3.921031138596541*^9, 3.921031156370984*^9}, 
   3.921031716296237*^9, 3.921031946769711*^9, 3.921032405579625*^9, 
   3.921032879302751*^9, 3.921033265049292*^9, 3.923635205338397*^9, 
   3.923725211725302*^9, 3.923725525198943*^9, 3.923729640751399*^9, 
   3.923964921713274*^9, 3.923974018036261*^9, 3.923980343814158*^9, 
   3.924077707287982*^9, 3.924077916551435*^9, 3.924081723580306*^9, 
   3.924141106559239*^9, 3.924145883226729*^9, 3.924156476349082*^9, 
   3.924156592801127*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"25a982b6-df66-4cc6-8a22-6e0c60d83987"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynCalc in your research, please evaluate \
FeynCalcHowToCite[] to learn how to cite this software.\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{{3.917849082772398*^9, 3.917849097116674*^9}, 
   3.917849200066637*^9, 3.917849445640594*^9, 3.9179345895281687`*^9, 
   3.918017548782918*^9, 3.918034064119865*^9, 3.9180918247107067`*^9, 
   3.918092129668906*^9, 3.918092172097555*^9, 3.918094145785714*^9, 
   3.918094270953313*^9, 3.918094406453402*^9, 3.920605787764384*^9, 
   3.9206058555401793`*^9, 3.920606005544156*^9, 3.920621462042815*^9, 
   3.920621515653374*^9, {3.921031138596541*^9, 3.921031156370984*^9}, 
   3.921031716296237*^9, 3.921031946769711*^9, 3.921032405579625*^9, 
   3.921032879302751*^9, 3.921033265049292*^9, 3.923635205338397*^9, 
   3.923725211725302*^9, 3.923725525198943*^9, 3.923729640751399*^9, 
   3.923964921713274*^9, 3.923974018036261*^9, 3.923980343814158*^9, 
   3.924077707287982*^9, 3.924077916551435*^9, 3.924081723580306*^9, 
   3.924141106559239*^9, 3.924145883226729*^9, 3.924156476349082*^9, 
   3.9241565928025618`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"29eb7fc4-5151-4962-ab48-b7e4d222e87d"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"Please keep in mind that the proper academic attribution of \
our work is crucial to ensure the future development of this package!\"\>", 
   "Text",
   StripOnInput->False,
   FontSlant->Italic], TraditionalForm]], "Print",
 CellChangeTimes->{{3.917849082772398*^9, 3.917849097116674*^9}, 
   3.917849200066637*^9, 3.917849445640594*^9, 3.9179345895281687`*^9, 
   3.918017548782918*^9, 3.918034064119865*^9, 3.9180918247107067`*^9, 
   3.918092129668906*^9, 3.918092172097555*^9, 3.918094145785714*^9, 
   3.918094270953313*^9, 3.918094406453402*^9, 3.920605787764384*^9, 
   3.9206058555401793`*^9, 3.920606005544156*^9, 3.920621462042815*^9, 
   3.920621515653374*^9, {3.921031138596541*^9, 3.921031156370984*^9}, 
   3.921031716296237*^9, 3.921031946769711*^9, 3.921032405579625*^9, 
   3.921032879302751*^9, 3.921033265049292*^9, 3.923635205338397*^9, 
   3.923725211725302*^9, 3.923725525198943*^9, 3.923729640751399*^9, 
   3.923964921713274*^9, 3.923974018036261*^9, 3.923980343814158*^9, 
   3.924077707287982*^9, 3.924077916551435*^9, 3.924081723580306*^9, 
   3.924141106559239*^9, 3.924145883226729*^9, 3.924156476349082*^9, 
   3.9241565928038692`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"219b2f7b-9d97-48ac-8375-0284ebcc112e"],

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
 CellChangeTimes->{{3.917849082772398*^9, 3.917849097116674*^9}, 
   3.917849200066637*^9, 3.917849445640594*^9, 3.9179345895281687`*^9, 
   3.918017548782918*^9, 3.918034064119865*^9, 3.9180918247107067`*^9, 
   3.918092129668906*^9, 3.918092172097555*^9, 3.918094145785714*^9, 
   3.918094270953313*^9, 3.918094406453402*^9, 3.920605787764384*^9, 
   3.9206058555401793`*^9, 3.920606005544156*^9, 3.920621462042815*^9, 
   3.920621515653374*^9, {3.921031138596541*^9, 3.921031156370984*^9}, 
   3.921031716296237*^9, 3.921031946769711*^9, 3.921032405579625*^9, 
   3.921032879302751*^9, 3.921033265049292*^9, 3.923635205338397*^9, 
   3.923725211725302*^9, 3.923725525198943*^9, 3.923729640751399*^9, 
   3.923964921713274*^9, 3.923974018036261*^9, 3.923980343814158*^9, 
   3.924077707287982*^9, 3.924077916551435*^9, 3.924081723580306*^9, 
   3.924141106559239*^9, 3.924145883226729*^9, 3.924156476349082*^9, 
   3.9241565928414583`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"71b4dedf-b9f3-413c-94e0-d2ee86d6d919"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynArts in your research, please cite\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{{3.917849082772398*^9, 3.917849097116674*^9}, 
   3.917849200066637*^9, 3.917849445640594*^9, 3.9179345895281687`*^9, 
   3.918017548782918*^9, 3.918034064119865*^9, 3.9180918247107067`*^9, 
   3.918092129668906*^9, 3.918092172097555*^9, 3.918094145785714*^9, 
   3.918094270953313*^9, 3.918094406453402*^9, 3.920605787764384*^9, 
   3.9206058555401793`*^9, 3.920606005544156*^9, 3.920621462042815*^9, 
   3.920621515653374*^9, {3.921031138596541*^9, 3.921031156370984*^9}, 
   3.921031716296237*^9, 3.921031946769711*^9, 3.921032405579625*^9, 
   3.921032879302751*^9, 3.921033265049292*^9, 3.923635205338397*^9, 
   3.923725211725302*^9, 3.923725525198943*^9, 3.923729640751399*^9, 
   3.923964921713274*^9, 3.923974018036261*^9, 3.923980343814158*^9, 
   3.924077707287982*^9, 3.924077916551435*^9, 3.924081723580306*^9, 
   3.924141106559239*^9, 3.924145883226729*^9, 3.924156476349082*^9, 
   3.924156592843405*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"98f15000-92be-417b-b6d3-349cad0aff33"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\" \[Bullet] T. Hahn, Comput. Phys. Commun., 140, 418-431, \
2001, arXiv:hep-ph/0012260\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{{3.917849082772398*^9, 3.917849097116674*^9}, 
   3.917849200066637*^9, 3.917849445640594*^9, 3.9179345895281687`*^9, 
   3.918017548782918*^9, 3.918034064119865*^9, 3.9180918247107067`*^9, 
   3.918092129668906*^9, 3.918092172097555*^9, 3.918094145785714*^9, 
   3.918094270953313*^9, 3.918094406453402*^9, 3.920605787764384*^9, 
   3.9206058555401793`*^9, 3.920606005544156*^9, 3.920621462042815*^9, 
   3.920621515653374*^9, {3.921031138596541*^9, 3.921031156370984*^9}, 
   3.921031716296237*^9, 3.921031946769711*^9, 3.921032405579625*^9, 
   3.921032879302751*^9, 3.921033265049292*^9, 3.923635205338397*^9, 
   3.923725211725302*^9, 3.923725525198943*^9, 3.923729640751399*^9, 
   3.923964921713274*^9, 3.923974018036261*^9, 3.923980343814158*^9, 
   3.924077707287982*^9, 3.924077916551435*^9, 3.924081723580306*^9, 
   3.924141106559239*^9, 3.924145883226729*^9, 3.924156476349082*^9, 
   3.924156592844672*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"da7b4ba0-3d9a-4c38-baa1-b13e0d341ffc"],

Cell["Successfully patched FeynArts.", "Print",
 CellChangeTimes->{{3.917849082772398*^9, 3.917849097116674*^9}, 
   3.917849200066637*^9, 3.917849445640594*^9, 3.9179345895281687`*^9, 
   3.918017548782918*^9, 3.918034064119865*^9, 3.9180918247107067`*^9, 
   3.918092129668906*^9, 3.918092172097555*^9, 3.918094145785714*^9, 
   3.918094270953313*^9, 3.918094406453402*^9, 3.920605787764384*^9, 
   3.9206058555401793`*^9, 3.920606005544156*^9, 3.920621462042815*^9, 
   3.920621515653374*^9, {3.921031138596541*^9, 3.921031156370984*^9}, 
   3.921031716296237*^9, 3.921031946769711*^9, 3.921032405579625*^9, 
   3.921032879302751*^9, 3.921033265049292*^9, 3.923635205338397*^9, 
   3.923725211725302*^9, 3.923725525198943*^9, 3.923729640751399*^9, 
   3.923964921713274*^9, 3.923974018036261*^9, 3.923980343814158*^9, 
   3.924077707287982*^9, 3.924077916551435*^9, 3.924081723580306*^9, 
   3.924141106559239*^9, 3.924145883226729*^9, 3.924156476349082*^9, 
   3.924156592940103*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"0077bb90-d825-4d31-9a2f-bf79ecb1ddce"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"$EwinoRoot", " ", "=", " ", 
   RowBox[{"ParentDirectory", "[", 
    RowBox[{"NotebookDirectory", "[", "]"}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"AppendTo", "[", 
   RowBox[{"$Path", ",", 
    RowBox[{"FileNameJoin", "[", 
     RowBox[{"{", 
      RowBox[{"$EwinoRoot", ",", " ", "\"\<include\>\""}], "}"}], "]"}]}], 
   "]"}], ";"}], "\n", 
 RowBox[{"<<", " ", "XSec`"}], "\n", 
 RowBox[{"<<", " ", "TreeLevel`"}], "\[IndentingNewLine]", 
 RowBox[{"<<", " ", "CalcTools`"}]}], "Code",
 CellChangeTimes->{
  3.91447635123787*^9, {3.914476624408684*^9, 3.9144766387867937`*^9}, 
   3.914478375354082*^9, 3.914485345161674*^9, {3.920605804183002*^9, 
   3.920605834353628*^9}},
 CellLabel->"In[9]:=",ExpressionUUID->"cc6ff964-d048-45bc-be5a-ea7e51f04364"],

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
or be shadowed by other definitions.\"", 2, 12, 1, 33640153587208760266, 
    "Local", "FeynCalc`IndexDelta"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.9241564768395033`*^9, 3.9241565933188887`*^9},
 CellLabel->
  "During evaluation of \
In[9]:=",ExpressionUUID->"6ac60f83-1b71-4cdd-a27b-7c3433f77495"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"ResultsDir", " ", "=", " ", 
   RowBox[{"FileNameJoin", "[", 
    RowBox[{"{", 
     RowBox[{
     "$EwinoRoot", ",", " ", "\"\<results\>\"", ",", " ", "\"\<LO\>\""}], 
     "}"}], "]"}]}], ";"}]], "Code",
 CellChangeTimes->{{3.914478341430852*^9, 3.9144783876264887`*^9}, 
   3.914479041127266*^9, {3.9144825969413*^9, 3.914482605641466*^9}, {
   3.920605838220278*^9, 3.920605839942795*^9}},
 CellLabel->"In[14]:=",ExpressionUUID->"aea92a0e-64bf-4b68-917a-d10ba669d15b"]
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
 InitializationCell->False,
 CellChangeTimes->{
  3.914476809872698*^9, {3.914645528516932*^9, 3.914645548367996*^9}, {
   3.914648821230119*^9, 3.914648837653592*^9}, {3.914649133437988*^9, 
   3.914649152850586*^9}},
 CellLabel->"In[15]:=",ExpressionUUID->"cc16bb95-c627-4203-b579-2002f02b5044"],

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
 CellChangeTimes->{{3.917849083152671*^9, 3.917849098331381*^9}, 
   3.917849201609568*^9, 3.9178494472422943`*^9, 3.917934590333005*^9, 
   3.918017550119442*^9, 3.918034065033696*^9, 3.918091825544072*^9, 
   3.918092130979578*^9, 3.918092173279336*^9, 3.918094146982212*^9, 
   3.918094272148118*^9, 3.918094408094592*^9, 3.920605788934015*^9, 
   3.920605856814494*^9, 3.920606006622362*^9, 3.920621462989044*^9, 
   3.920621517160618*^9, {3.921031138945534*^9, 3.921031157171234*^9}, 
   3.921031717874296*^9, 3.921031948357204*^9, 3.92103240719359*^9, 
   3.9210328804828987`*^9, 3.921033266324669*^9, 3.923635206141563*^9, 
   3.923725213350569*^9, 3.923725526907801*^9, 3.923729641980723*^9, 
   3.923964922515085*^9, 3.923974019252157*^9, 3.923980345009309*^9, 
   3.92407770869463*^9, 3.924077918179972*^9, 3.924081725302984*^9, 
   3.924141107368987*^9, 3.924145883600275*^9, 3.924156477108041*^9, 
   3.924156593582095*^9},
 CellLabel->
  "During evaluation of \
In[15]:=",ExpressionUUID->"48acfebf-8b25-4547-a4f9-7760f1f73a66"]
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
 InitializationCell->False,
 CellChangeTimes->{{3.914476857258984*^9, 3.9144768622636633`*^9}, 
   3.9144777990256243`*^9, 3.914478757914375*^9, {3.914482167437733*^9, 
   3.914482189235042*^9}, {3.914483193508616*^9, 3.914483216979*^9}, {
   3.915036452854926*^9, 3.915036500647919*^9}},
 CellLabel->"In[17]:=",ExpressionUUID->"f495b4e2-7d04-4f0e-81e0-efbc9664e28e"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"tempPrefactor", " ", "=", " ", 
   RowBox[{
    SuperscriptBox[
     RowBox[{"SMP", "[", "\"\<g_W\>\"", "]"}], "2"], 
    RowBox[{"FeynCalc`IndexDelta", "[", 
     RowBox[{"a", ",", "b"}], "]"}]}]}], ";"}], "\n", 
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
 InitializationCell->False,
 CellChangeTimes->{{3.914477655181172*^9, 3.914477668233265*^9}, {
   3.914478047387411*^9, 3.914478051457137*^9}, {3.914478106436209*^9, 
   3.914478108087481*^9}, {3.914479110257681*^9, 3.914479117748647*^9}, {
   3.914482185163767*^9, 3.914482185165958*^9}, {3.9144832169807587`*^9, 
   3.914483216982397*^9}, 3.917690721073666*^9},
 CellLabel->"In[18]:=",ExpressionUUID->"10140aeb-b31b-4b2d-b756-899697c815c6"],

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

Cell[CellGroupData[{

Cell[BoxData[{
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
     RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], "2"], "->", 
    "DZ"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Mt", "[", "0", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"FeynAmpDenominatorExplicit", "[", 
     RowBox[{
      RowBox[{"Part", "[", 
       RowBox[{
        RowBox[{"M0", "[", "0", "]"}], ",", "2"}], "]"}], "//.", 
      "QSimplifyRules"}], "]"}], "/.", 
    RowBox[{
     SuperscriptBox[
      RowBox[{"MSf", "[", 
       RowBox[{"a_", ",", "t_", ",", "g_"}], "]"}], "2"], "->", 
     RowBox[{"DSf", "[", 
      RowBox[{"a", ",", "t", ",", "g"}], "]"}]}]}], "/.", 
   RowBox[{
    RowBox[{"Index", "[", 
     RowBox[{"Sfermion", ",", "5"}], "]"}], "->", 
    "A"}]}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Mu", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"FeynAmpDenominatorExplicit", "[", 
      RowBox[{
       RowBox[{"Part", "[", 
        RowBox[{
         RowBox[{"M0", "[", "0", "]"}], ",", "3"}], "]"}], "//.", 
       "QSimplifyRules"}], "]"}], "/.", 
     RowBox[{
      SuperscriptBox[
       RowBox[{"MSf", "[", 
        RowBox[{"a_", ",", "t_", ",", "g_"}], "]"}], "2"], "->", 
      RowBox[{"DSf", "[", 
       RowBox[{"a", ",", "t", ",", "g"}], "]"}]}]}], "/.", 
    RowBox[{
     RowBox[{"Index", "[", 
      RowBox[{"Sfermion", ",", "5"}], "]"}], "->", "A"}]}]}], "\n"}], "\n", 
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
 InitializationCell->False,
 CellChangeTimes->{
  3.91447805502232*^9, {3.914478171507217*^9, 3.914478171969941*^9}, {
   3.9144821851674347`*^9, 3.9144822643969603`*^9}, {3.914483216983844*^9, 
   3.9144832169897623`*^9}, {3.921031279145545*^9, 3.921031286643804*^9}, {
   3.921031318622803*^9, 3.921031319837438*^9}, {3.923635197397664*^9, 
   3.923635199853901*^9}},
 CellLabel->"In[22]:=",ExpressionUUID->"36440b80-fc3f-4d7b-8c26-ddfba8b0a672"],

Cell[BoxData[
 FormBox[
  RowBox[{"-", 
   RowBox[{
    FractionBox["1", 
     RowBox[{"s", "-", 
      SubscriptBox["\[CapitalDelta]", "Z"]}]], 
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
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         RowBox[{"\[ImaginaryI]", " ", 
          SubscriptBox["g", "W"], " ", 
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
           RowBox[{"a", "b"}]], " ", 
          SubsuperscriptBox["C", "qqZ", "L"]}]}], "-", 
        RowBox[{"\[ImaginaryI]", " ", 
         SubscriptBox["g", "W"], " ", 
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
          RowBox[{"a", "b"}]], " ", 
         SubsuperscriptBox["C", "qqZ", "R"]}]}], ")"}], ".", 
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
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        FormBox["\<\"\[CurlyPhi]\"\>",
         TraditionalForm], 
        FormBox["\<\"(\"\>",
         TraditionalForm], 
        FormBox[
         FormBox[
          SubscriptBox["p", "j"],
          TraditionalForm],
         TraditionalForm], 
        FormBox["\<\",\"\>",
         TraditionalForm], 
        FormBox[
         SubscriptBox["m", "j"],
         TraditionalForm], 
        FormBox["\<\")\"\>",
         TraditionalForm]}], ")"}], ".", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         RowBox[{"\[ImaginaryI]", " ", 
          SubscriptBox["g", "W"], " ", 
          RowBox[{
           SuperscriptBox["\[Gamma]", 
            FormBox[
             FormBox["\[Nu]",
              TraditionalForm],
             TraditionalForm]], ".", 
           SuperscriptBox[
            OverscriptBox["\[Gamma]", "_"], 
            FormBox["6",
             TraditionalForm]]}], " ", 
          SubsuperscriptBox["O", 
           RowBox[{"i", "j"}], 
           RowBox[{"\[Prime]\[Prime]", "L"}]]}]}], "-", 
        RowBox[{"\[ImaginaryI]", " ", 
         SubscriptBox["g", "W"], " ", 
         RowBox[{
          SuperscriptBox["\[Gamma]", 
           FormBox[
            FormBox["\[Nu]",
             TraditionalForm],
            TraditionalForm]], ".", 
          SuperscriptBox[
           OverscriptBox["\[Gamma]", "_"], 
           FormBox["7",
            TraditionalForm]]}], " ", 
         SubsuperscriptBox["O", 
          RowBox[{"i", "j"}], 
          RowBox[{"\[Prime]\[Prime]", "R"}]]}]}], ")"}], ".", 
      RowBox[{"(", 
       RowBox[{
        FormBox["\<\"\[CurlyPhi]\"\>",
         TraditionalForm], 
        FormBox["\<\"(\"\>",
         TraditionalForm], 
        FormBox[
         RowBox[{"-", 
          FormBox[
           SubscriptBox["p", "i"],
           TraditionalForm]}],
         TraditionalForm], 
        FormBox["\<\",\"\>",
         TraditionalForm], 
        FormBox[
         SubscriptBox["m", "i"],
         TraditionalForm], 
        FormBox["\<\")\"\>",
         TraditionalForm]}], ")"}]}]}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.923635206411762*^9, 3.9237252135886106`*^9, 
  3.923725527143996*^9, 3.923729642364795*^9, 3.9239649228485413`*^9, 
  3.923974019613866*^9, 3.923980345447011*^9, 3.924077709083644*^9, 
  3.924077918424774*^9, 3.924081725550391*^9, 3.924141107617244*^9, 
  3.9241458838298283`*^9, 3.924156477348187*^9, 3.9241565938378077`*^9},
 CellLabel->"Out[22]=",ExpressionUUID->"2bb2affb-327a-4c14-97d2-ab9e6b8ed952"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{"t", "-", 
     SubscriptBox["\[CapitalDelta]", "A"]}]], 
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
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", 
       RowBox[{"\[ImaginaryI]", " ", 
        SqrtBox["2"], " ", 
        SuperscriptBox[
         OverscriptBox["\[Gamma]", "_"], 
         FormBox["6",
          TraditionalForm]], " ", 
        SubscriptBox["g", "W"], " ", 
        SubscriptBox["\[Delta]", 
         RowBox[{"a", "b"}]], " ", 
        SubsuperscriptBox["C", 
         RowBox[{"u", 
          SubscriptBox[
           OverscriptBox["u", "~"], "A"], 
          SubsuperscriptBox[
           OverscriptBox["\[Chi]", "~"], "j", "0"]}], "L"]}]}], "-", 
      RowBox[{"\[ImaginaryI]", " ", 
       SqrtBox["2"], " ", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], " ", 
       SubscriptBox["g", "W"], " ", 
       SubscriptBox["\[Delta]", 
        RowBox[{"a", "b"}]], " ", 
       SubsuperscriptBox["C", 
        RowBox[{"u", 
         SubscriptBox[
          OverscriptBox["u", "~"], "A"], 
         SubsuperscriptBox[
          OverscriptBox["\[Chi]", "~"], "j", "0"]}], "R"]}]}], ")"}], ".", 
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
       SubscriptBox["m", "j"],
       TraditionalForm], 
      FormBox["\<\")\"\>",
       TraditionalForm]}], ")"}]}], " ", 
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
       SubscriptBox["m", "i"],
       TraditionalForm], 
      FormBox["\<\")\"\>",
       TraditionalForm]}], ")"}], ".", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", 
       RowBox[{
        FractionBox["1", 
         RowBox[{"3", " ", 
          SqrtBox["2"], " ", 
          SubscriptBox["m", "W"], " ", 
          SubscriptBox["s", "\[Beta]"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"cos", "("}], 
            SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], 
        RowBox[{"\[ImaginaryI]", " ", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]], " ", 
         SubscriptBox["g", "W"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubscriptBox["m", "W"], " ", 
            SubscriptBox["s", "\[Beta]"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"6", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"cos", "("}], 
                 SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["C", 
                    RowBox[{"u", 
                    SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"], 
                    
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"]}], "L"], ")"}]},
                "Conjugate"]}], "-", 
              RowBox[{
               SubsuperscriptBox["R", 
                RowBox[{"A", "1"}], 
                SubscriptBox[
                 OverscriptBox["u", "~"], "1"]], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"sin", "("}], 
                 SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
               TemplateBox[{
                 RowBox[{"(", 
                   SubscriptBox["N", 
                    RowBox[{"i", ",", "1"}]], ")"}]},
                "Conjugate"]}]}], ")"}]}], "+", 
           RowBox[{
            SubscriptBox["m", "W"], " ", 
            SubscriptBox["s", "\[Beta]"], " ", 
            SubsuperscriptBox["R", 
             RowBox[{"A", "1"}], 
             SubscriptBox[
              OverscriptBox["u", "~"], "1"]], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"sin", "("}], 
              SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubscriptBox["N", 
                 RowBox[{"i", ",", "1"}]], ")"}]},
             "Conjugate"]}]}], ")"}]}]}]}], "-", 
      RowBox[{"\[ImaginaryI]", " ", 
       SqrtBox["2"], " ", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], " ", 
       SubscriptBox["g", "W"], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["C", 
            RowBox[{"u", 
              SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"]}], "R"], ")"}]},
        "Conjugate"]}]}], ")"}], ".", 
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
       TraditionalForm]}], ")"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.923635206411762*^9, 3.9237252135886106`*^9, 
  3.923725527143996*^9, 3.923729642364795*^9, 3.9239649228485413`*^9, 
  3.923974019613866*^9, 3.923980345447011*^9, 3.924077709083644*^9, 
  3.924077918424774*^9, 3.924081725550391*^9, 3.924141107617244*^9, 
  3.9241458838298283`*^9, 3.924156477348187*^9, 3.924156593858696*^9},
 CellLabel->"Out[23]=",ExpressionUUID->"b94186ec-f02e-40cf-a9f0-104c2a5987a9"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", 
    FractionBox["1", 
     RowBox[{"u", "-", 
      SubscriptBox["\[CapitalDelta]", "A"]}]]}], 
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
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", 
       RowBox[{"\[ImaginaryI]", " ", 
        SqrtBox["2"], " ", 
        SuperscriptBox[
         OverscriptBox["\[Gamma]", "_"], 
         FormBox["6",
          TraditionalForm]], " ", 
        SubscriptBox["g", "W"], " ", 
        SubscriptBox["\[Delta]", 
         RowBox[{"a", "b"}]], " ", 
        SubsuperscriptBox["C", 
         RowBox[{"u", 
          SubscriptBox[
           OverscriptBox["u", "~"], "A"], 
          SubsuperscriptBox[
           OverscriptBox["\[Chi]", "~"], "i", "0"]}], "L"]}]}], "-", 
      RowBox[{"\[ImaginaryI]", " ", 
       SqrtBox["2"], " ", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["7",
         TraditionalForm]], " ", 
       SubscriptBox["g", "W"], " ", 
       SubscriptBox["\[Delta]", 
        RowBox[{"a", "b"}]], " ", 
       SubsuperscriptBox["C", 
        RowBox[{"u", 
         SubscriptBox[
          OverscriptBox["u", "~"], "A"], 
         SubsuperscriptBox[
          OverscriptBox["\[Chi]", "~"], "i", "0"]}], "R"]}]}], ")"}], ".", 
    RowBox[{"(", 
     RowBox[{
      FormBox["\<\"\[CurlyPhi]\"\>",
       TraditionalForm], 
      FormBox["\<\"(\"\>",
       TraditionalForm], 
      FormBox[
       RowBox[{"-", 
        FormBox[
         SubscriptBox["p", "i"],
         TraditionalForm]}],
       TraditionalForm], 
      FormBox["\<\",\"\>",
       TraditionalForm], 
      FormBox[
       SubscriptBox["m", "i"],
       TraditionalForm], 
      FormBox["\<\")\"\>",
       TraditionalForm]}], ")"}]}], " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      FormBox["\<\"\[CurlyPhi]\"\>",
       TraditionalForm], 
      FormBox["\<\"(\"\>",
       TraditionalForm], 
      FormBox[
       FormBox[
        SubscriptBox["p", "j"],
        TraditionalForm],
       TraditionalForm], 
      FormBox["\<\",\"\>",
       TraditionalForm], 
      FormBox[
       SubscriptBox["m", "j"],
       TraditionalForm], 
      FormBox["\<\")\"\>",
       TraditionalForm]}], ")"}], ".", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", 
       RowBox[{
        FractionBox["1", 
         RowBox[{"3", " ", 
          SqrtBox["2"], " ", 
          SubscriptBox["m", "W"], " ", 
          SubscriptBox["s", "\[Beta]"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"cos", "("}], 
            SubscriptBox["\[Theta]", "W"], ")"}], ")"}]}]], 
        RowBox[{"\[ImaginaryI]", " ", 
         SuperscriptBox[
          OverscriptBox["\[Gamma]", "_"], 
          FormBox["7",
           TraditionalForm]], " ", 
         SubscriptBox["g", "W"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubscriptBox["m", "W"], " ", 
            SubscriptBox["s", "\[Beta]"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"6", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"cos", "("}], 
                 SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["C", 
                    RowBox[{"u", 
                    SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"], 
                    
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], "L"], ")"}]},
                "Conjugate"]}], "-", 
              RowBox[{
               SubsuperscriptBox["R", 
                RowBox[{"A", "1"}], 
                SubscriptBox[
                 OverscriptBox["u", "~"], "1"]], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"sin", "("}], 
                 SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
               TemplateBox[{
                 RowBox[{"(", 
                   SubscriptBox["N", 
                    RowBox[{"j", ",", "1"}]], ")"}]},
                "Conjugate"]}]}], ")"}]}], "+", 
           RowBox[{
            SubscriptBox["m", "W"], " ", 
            SubscriptBox["s", "\[Beta]"], " ", 
            SubsuperscriptBox["R", 
             RowBox[{"A", "1"}], 
             SubscriptBox[
              OverscriptBox["u", "~"], "1"]], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"sin", "("}], 
              SubscriptBox["\[Theta]", "W"], ")"}], ")"}], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubscriptBox["N", 
                 RowBox[{"j", ",", "1"}]], ")"}]},
             "Conjugate"]}]}], ")"}]}]}]}], "-", 
      RowBox[{"\[ImaginaryI]", " ", 
       SqrtBox["2"], " ", 
       SuperscriptBox[
        OverscriptBox["\[Gamma]", "_"], 
        FormBox["6",
         TraditionalForm]], " ", 
       SubscriptBox["g", "W"], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["C", 
            RowBox[{"u", 
              SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], "R"], ")"}]},
        "Conjugate"]}]}], ")"}], ".", 
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
       TraditionalForm]}], ")"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.923635206411762*^9, 3.9237252135886106`*^9, 
  3.923725527143996*^9, 3.923729642364795*^9, 3.9239649228485413`*^9, 
  3.923974019613866*^9, 3.923980345447011*^9, 3.924077709083644*^9, 
  3.924077918424774*^9, 3.924081725550391*^9, 3.924141107617244*^9, 
  3.9241458838298283`*^9, 3.924156477348187*^9, 3.924156593881562*^9},
 CellLabel->"Out[24]=",ExpressionUUID->"3b33a9e1-9e05-49ed-b5b4-a993328da468"]
}, Open  ]],

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
 InitializationCell->False,
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
 CellLabel->"In[28]:=",ExpressionUUID->"f02d3fee-ced5-4933-85ed-21304906c288"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"Ms", "[", "0", "]"}], " ", "//", " ", "DiracSimplify"}], " ", "//",
    " ", "Expand"}], " ", "//", " ", 
  RowBox[{
   RowBox[{"ReplaceRepeated", "[", 
    RowBox[{"#", ",", " ", "SuperChargeRules"}], "]"}], "&"}]}]], "Code",
 CellChangeTimes->{{3.923737827287941*^9, 3.923737880686247*^9}, {
  3.923738067570517*^9, 3.923738067655628*^9}, {3.923739102638994*^9, 
  3.923739102707303*^9}, {3.92396768160516*^9, 3.923967704634063*^9}},
 CellLabel->"In[29]:=",ExpressionUUID->"f9303044-0f3f-4fb2-9745-f461c544025c"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", 
    FractionBox[
     RowBox[{
      SubsuperscriptBox["g", "W", "2"], " ", 
      SubscriptBox["\[Delta]", 
       RowBox[{"a", "b"}]], " ", 
      SubsuperscriptBox["Z", 
       RowBox[{
        SubsuperscriptBox[
         OverscriptBox["\[Chi]", "~"], "i", "0"], 
        SubsuperscriptBox[
         OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
       RowBox[{"L", "R"}]], " ", 
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
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
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
          FormBox[
           SubscriptBox["k", "i"],
           TraditionalForm],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}], " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FormBox["\<\"\[CurlyPhi]\"\>",
          TraditionalForm], 
         FormBox["\<\"(\"\>",
          TraditionalForm], 
         FormBox[
          FormBox[
           SubscriptBox["p", "j"],
           TraditionalForm],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", "j"],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}], ".", 
       SuperscriptBox["\[Gamma]", 
        FormBox[
         FormBox["\[Mu]",
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
           FormBox[
            SubscriptBox["p", "i"],
            TraditionalForm]}],
          TraditionalForm], 
         FormBox["\<\",\"\>",
          TraditionalForm], 
         FormBox[
          SubscriptBox["m", "i"],
          TraditionalForm], 
         FormBox["\<\")\"\>",
          TraditionalForm]}], ")"}]}]}], 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", 
      FractionBox["1", 
       RowBox[{"s", "-", 
        SubscriptBox["\[CapitalDelta]", "Z"]}]]}]]}], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["g", "W", "2"], " ", 
     SubscriptBox["\[Delta]", 
      RowBox[{"a", "b"}]], " ", 
     SubsuperscriptBox["Z", 
      RowBox[{
       SubsuperscriptBox[
        OverscriptBox["\[Chi]", "~"], "i", "0"], 
       SubsuperscriptBox[
        OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
      RowBox[{"R", "L"}]], " ", 
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
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
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
         FormBox[
          SubscriptBox["k", "i"],
          TraditionalForm],
         TraditionalForm], 
        FormBox["\<\")\"\>",
         TraditionalForm]}], ")"}]}], " ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        FormBox["\<\"\[CurlyPhi]\"\>",
         TraditionalForm], 
        FormBox["\<\"(\"\>",
         TraditionalForm], 
        FormBox[
         FormBox[
          SubscriptBox["p", "j"],
          TraditionalForm],
         TraditionalForm], 
        FormBox["\<\",\"\>",
         TraditionalForm], 
        FormBox[
         SubscriptBox["m", "j"],
         TraditionalForm], 
        FormBox["\<\")\"\>",
         TraditionalForm]}], ")"}], ".", 
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
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
          FormBox[
           SubscriptBox["p", "i"],
           TraditionalForm]}],
         TraditionalForm], 
        FormBox["\<\",\"\>",
         TraditionalForm], 
        FormBox[
         SubscriptBox["m", "i"],
         TraditionalForm], 
        FormBox["\<\")\"\>",
         TraditionalForm]}], ")"}]}]}], 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", 
     FractionBox["1", 
      RowBox[{"s", "-", 
       SubscriptBox["\[CapitalDelta]", "Z"]}]]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["g", "W", "2"], " ", 
     SubscriptBox["\[Delta]", 
      RowBox[{"a", "b"}]], " ", 
     SubsuperscriptBox["Z", 
      RowBox[{
       SubsuperscriptBox[
        OverscriptBox["\[Chi]", "~"], "i", "0"], 
       SubsuperscriptBox[
        OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
      RowBox[{"L", "L"}]], " ", 
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
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
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
         FormBox[
          SubscriptBox["k", "i"],
          TraditionalForm],
         TraditionalForm], 
        FormBox["\<\")\"\>",
         TraditionalForm]}], ")"}]}], " ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        FormBox["\<\"\[CurlyPhi]\"\>",
         TraditionalForm], 
        FormBox["\<\"(\"\>",
         TraditionalForm], 
        FormBox[
         FormBox[
          SubscriptBox["p", "j"],
          TraditionalForm],
         TraditionalForm], 
        FormBox["\<\",\"\>",
         TraditionalForm], 
        FormBox[
         SubscriptBox["m", "j"],
         TraditionalForm], 
        FormBox["\<\")\"\>",
         TraditionalForm]}], ")"}], ".", 
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
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
          FormBox[
           SubscriptBox["p", "i"],
           TraditionalForm]}],
         TraditionalForm], 
        FormBox["\<\",\"\>",
         TraditionalForm], 
        FormBox[
         SubscriptBox["m", "i"],
         TraditionalForm], 
        FormBox["\<\")\"\>",
         TraditionalForm]}], ")"}]}]}], 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", 
     FractionBox["1", 
      RowBox[{"s", "-", 
       SubscriptBox["\[CapitalDelta]", "Z"]}]]}]], "-", 
   FractionBox[
    RowBox[{
     SubsuperscriptBox["g", "W", "2"], " ", 
     SubscriptBox["\[Delta]", 
      RowBox[{"a", "b"}]], " ", 
     SubsuperscriptBox["Z", 
      RowBox[{
       SubsuperscriptBox[
        OverscriptBox["\[Chi]", "~"], "i", "0"], 
       SubsuperscriptBox[
        OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
      RowBox[{"R", "R"}]], " ", 
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
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
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
         FormBox[
          SubscriptBox["k", "i"],
          TraditionalForm],
         TraditionalForm], 
        FormBox["\<\")\"\>",
         TraditionalForm]}], ")"}]}], " ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        FormBox["\<\"\[CurlyPhi]\"\>",
         TraditionalForm], 
        FormBox["\<\"(\"\>",
         TraditionalForm], 
        FormBox[
         FormBox[
          SubscriptBox["p", "j"],
          TraditionalForm],
         TraditionalForm], 
        FormBox["\<\",\"\>",
         TraditionalForm], 
        FormBox[
         SubscriptBox["m", "j"],
         TraditionalForm], 
        FormBox["\<\")\"\>",
         TraditionalForm]}], ")"}], ".", 
      SuperscriptBox["\[Gamma]", 
       FormBox[
        FormBox["\[Mu]",
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
          FormBox[
           SubscriptBox["p", "i"],
           TraditionalForm]}],
         TraditionalForm], 
        FormBox["\<\",\"\>",
         TraditionalForm], 
        FormBox[
         SubscriptBox["m", "i"],
         TraditionalForm], 
        FormBox["\<\")\"\>",
         TraditionalForm]}], ")"}]}]}], 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", 
     FractionBox["1", 
      RowBox[{"s", "-", 
       SubscriptBox["\[CapitalDelta]", "Z"]}]]}]]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.92373784633515*^9, 3.92373788132345*^9}, 
   3.923738068316761*^9, 3.923739103400594*^9, 3.923964923362499*^9, {
   3.923967696210162*^9, 3.923967704959983*^9}, 3.923974019763491*^9, 
   3.92398034559896*^9, 3.924077709235262*^9, 3.924077918653017*^9, 
   3.924081725782617*^9, 3.924141107836532*^9, 3.924145883985384*^9, 
   3.924156477502225*^9, 3.924156593983513*^9},
 CellLabel->"Out[29]=",ExpressionUUID->"965b8a9e-f544-40b0-af85-76010b5e0bb5"]
}, Open  ]]
}, Closed]],

Cell[CellGroupData[{

Cell["Differential Cross-Section", "Section",
 CellChangeTimes->{{3.914478187386982*^9, 3.914478200695622*^9}, {
  3.917848371730124*^9, 
  3.917848377280966*^9}},ExpressionUUID->"db7b6bd3-aba9-4133-abee-\
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
 InitializationCell->False,
 CellChangeTimes->{{3.914478223959435*^9, 3.91447823348039*^9}, {
  3.914482202505398*^9, 3.914482310106049*^9}, {3.914483216995234*^9, 
  3.914483216999861*^9}, {3.914484848854403*^9, 3.914484866621359*^9}},
 CellLabel->"In[30]:=",ExpressionUUID->"4fd47e62-1465-4ae8-a527-695c73775065"],

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
  ";"}], "\n", 
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{"Iss", "[", "1", "]"}], " ", "=", " ", 
     RowBox[{
      RowBox[{"Iss", "[", "0", "]"}], "/.", "Convert2Den"}]}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Itt", "[", "1", "]"}], " ", "=", " ", 
     RowBox[{
      RowBox[{"Itt", "[", "0", "]"}], "/.", "Convert2Den"}]}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Iuu", "[", "1", "]"}], " ", "=", " ", 
     RowBox[{
      RowBox[{"Iuu", "[", "0", "]"}], "/.", "Convert2Den"}]}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Ist", "[", "1", "]"}], " ", "=", " ", 
     RowBox[{
      RowBox[{"Ist", "[", "0", "]"}], "/.", "Convert2Den"}]}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Isu", "[", "1", "]"}], " ", "=", " ", 
     RowBox[{
      RowBox[{"Isu", "[", "0", "]"}], "/.", "Convert2Den"}]}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Itu", "[", "1", "]"}], " ", "=", " ", 
     RowBox[{
      RowBox[{"Itu", "[", "0", "]"}], "/.", "Convert2Den"}]}], ";"}], 
   "*)"}]}]}], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.914478554149143*^9, 3.9144785545566273`*^9}, {
  3.914482275319641*^9, 3.914482310107552*^9}, {3.914483217000917*^9, 
  3.914483217003812*^9}, {3.914484848859966*^9, 3.914484866627086*^9}, {
  3.923965018208392*^9, 3.923965051362944*^9}, {3.923969604433581*^9, 
  3.923969610820647*^9}},
 CellLabel->"In[36]:=",ExpressionUUID->"295fa500-9c88-4314-9ced-4708b80f6228"],

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
 InitializationCell->False,
 CellChangeTimes->{{3.9144786687802477`*^9, 3.914478712035016*^9}, {
  3.914482275322111*^9, 3.914482310109229*^9}, {3.914483209804621*^9, 
  3.9144832170095673`*^9}, {3.914484848864836*^9, 3.914484866633925*^9}},
 CellLabel->"In[42]:=",ExpressionUUID->"49386eef-cb3a-49d4-8239-c6b69a372a74"],

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
        RowBox[{"Itt", "[", "2", "]"}], "/", "CommonPrefactor"}], "]"}], "/.", 
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
       RowBox[{"MEW", "[", "i", "]"}], "*", 
       RowBox[{"MEW", "[", "j", "]"}]}], ",", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"t", "-", 
         SuperscriptBox[
          RowBox[{"MEW", "[", "i", "]"}], "2"]}], ")"}], 
       RowBox[{"(", 
        RowBox[{"t", "-", 
         SuperscriptBox[
          RowBox[{"MEW", "[", "j", "]"}], "2"]}], ")"}]}], ",", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"u", "-", 
         SuperscriptBox[
          RowBox[{"MEW", "[", "i", "]"}], "2"]}], ")"}], 
       RowBox[{"(", 
        RowBox[{"u", "-", 
         SuperscriptBox[
          RowBox[{"MEW", "[", "j", "]"}], "2"]}], ")"}]}], ",", 
      RowBox[{
       RowBox[{"t", "*", "u"}], "-", 
       RowBox[{
        SuperscriptBox[
         RowBox[{"MEW", "[", "i", "]"}], "2"], "*", 
        SuperscriptBox[
         RowBox[{"MEW", "[", "j", "]"}], "2"]}]}]}], "}"}], ",", 
    "\[IndentingNewLine]", "\t", "FullSimplify"}], "\[IndentingNewLine]", 
   "]"}]}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{
  3.914478729366748*^9, {3.914481914567452*^9, 3.914481925745757*^9}, 
   3.914482275323966*^9, {3.914483185215821*^9, 3.9144831870014353`*^9}, {
   3.920605864085781*^9, 3.92060586409802*^9}, {3.921031251660905*^9, 
   3.921031252090783*^9}},
 CellLabel->"In[49]:=",ExpressionUUID->"3f2bc887-6a25-44af-844f-f468f45193db"],

Cell[BoxData[
 FormBox[
  RowBox[{"4", " ", 
   SubsuperscriptBox["g", "W", "4"], " ", 
   SubsuperscriptBox["\[Delta]", 
    RowBox[{"a", "b"}], "2"], " ", 
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
      SubsuperscriptBox["Q", 
       RowBox[{
        OverscriptBox["u", "~"], "B"}], 
       RowBox[{"L", "R"}]], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", 
           RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
           RowBox[{"L", "R"}]], ")"}]},
       "Conjugate"]}], "+", 
     RowBox[{
      SubsuperscriptBox["Q", 
       RowBox[{
        OverscriptBox["u", "~"], "B"}], 
       RowBox[{"R", "L"}]], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", 
           RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
           RowBox[{"R", "L"}]], ")"}]},
       "Conjugate"]}], "+", 
     RowBox[{
      SubsuperscriptBox["Q", 
       RowBox[{
        OverscriptBox["u", "~"], "B"}], 
       RowBox[{"L", "L"}]], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", 
           RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
           RowBox[{"L", "L"}]], ")"}]},
       "Conjugate"]}], "+", 
     RowBox[{
      SubsuperscriptBox["Q", 
       RowBox[{
        OverscriptBox["u", "~"], "B"}], 
       RowBox[{"R", "R"}]], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", 
           RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
           RowBox[{"R", "R"}]], ")"}]},
       "Conjugate"]}]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.9206060109021273`*^9, 3.920621467295268*^9, 3.920621521497144*^9, {
   3.921031143754483*^9, 3.921031162017382*^9}, 3.921031255493813*^9, 
   3.92103195381131*^9, 3.9210324127088127`*^9, 3.921032886157899*^9, 
   3.921033271973312*^9, 3.923635211757175*^9, 3.923725218936304*^9, 
   3.923725532475964*^9, 3.923729647594315*^9, 3.923964928547698*^9, 
   3.923965056401445*^9, 3.923969615474012*^9, 3.923974024896591*^9, 
   3.923980350834052*^9, 3.9240777138223553`*^9, 3.924077923820595*^9, 
   3.924081731005184*^9, 3.9241411129560847`*^9, 3.924145889245371*^9, 
   3.924156482742982*^9, 3.924156599212616*^9},
 CellLabel->"Out[49]=",ExpressionUUID->"1d6e7cf1-14b1-4a9b-9062-f27ffef49efd"]
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
        RowBox[{"MEW", "[", "i", "]"}], "*", 
        RowBox[{"MEW", "[", "j", "]"}]}], ",", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"t", "-", 
          SuperscriptBox[
           RowBox[{"MEW", "[", "i", "]"}], "2"]}], ")"}], 
        RowBox[{"(", 
         RowBox[{"t", "-", 
          SuperscriptBox[
           RowBox[{"MEW", "[", "j", "]"}], "2"]}], ")"}]}], ",", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"u", "-", 
          SuperscriptBox[
           RowBox[{"MEW", "[", "i", "]"}], "2"]}], ")"}], 
        RowBox[{"(", 
         RowBox[{"u", "-", 
          SuperscriptBox[
           RowBox[{"MEW", "[", "j", "]"}], "2"]}], ")"}]}], ",", 
       RowBox[{
        RowBox[{"t", "*", "u"}], "-", 
        RowBox[{
         SuperscriptBox[
          RowBox[{"MEW", "[", "i", "]"}], "2"], "*", 
         SuperscriptBox[
          RowBox[{"MEW", "[", "j", "]"}], "2"]}]}]}], "}"}], ",", 
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
             RowBox[{"Expand", "[", "#1", "]"}], "//.", "SuperChargeRules"}], 
            "]"}], "&"}], ")"}]}], "\[IndentingNewLine]", "\t", "]"}], "&"}], 
      ")"}]}], "\[IndentingNewLine]", "]"}]}], ";"}]}], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.914482400793735*^9, 3.914482456226188*^9}, {
   3.914483159715218*^9, 3.91448317182053*^9}, {3.914483217014831*^9, 
   3.91448321701833*^9}, {3.914484848873647*^9, 3.91448486664227*^9}, 
   3.9177618248692627`*^9, {3.920605864391706*^9, 3.920605864403495*^9}},
 CellLabel->"In[50]:=",ExpressionUUID->"213691d6-4bdd-4d4f-8a41-03c7acde6dac"],

Cell["\<\
Show that the total amplitude can be written as effective charges in front of \
four different kinematic terms.\
\>", "Text",
 CellChangeTimes->{{3.914482461846875*^9, 
  3.9144824896031485`*^9}},ExpressionUUID->"9857bd9e-f705-4970-8451-\
41d0c5407f3f"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", "\[IndentingNewLine]", "\t", 
  RowBox[{
   RowBox[{
    RowBox[{"Itot", "[", "1", "]"}], " ", "//", " ", 
    RowBox[{
     RowBox[{"SelectFree2", "[", 
      RowBox[{"#", ",", " ", "DiracTrace"}], "]"}], "&"}]}], ",", 
   "\[IndentingNewLine]", "\t", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"s", "*", 
      RowBox[{"MEW", "[", "i", "]"}], "*", 
      RowBox[{"MEW", "[", "j", "]"}]}], ",", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SuperscriptBox[
         RowBox[{"MEW", "[", "i", "]"}], "2"]}], ")"}], 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SuperscriptBox[
         RowBox[{"MEW", "[", "j", "]"}], "2"]}], ")"}]}], ",", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SuperscriptBox[
         RowBox[{"MEW", "[", "i", "]"}], "2"]}], ")"}], 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SuperscriptBox[
         RowBox[{"MEW", "[", "j", "]"}], "2"]}], ")"}]}], ",", 
     RowBox[{
      RowBox[{"t", "*", "u"}], "-", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"MEW", "[", "i", "]"}], "2"], "*", 
       SuperscriptBox[
        RowBox[{"MEW", "[", "j", "]"}], "2"]}]}]}], "}"}], ",", 
   "\[IndentingNewLine]", "\t", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"Isolate", "[", 
      RowBox[{
       RowBox[{"#1", "//", "Simplify"}], ",", 
       RowBox[{"IsolateNames", "->", "Q"}]}], "]"}], "&"}], ")"}]}], 
  "\[IndentingNewLine]", "]"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.91448249628335*^9, 3.914482497179042*^9}, {
  3.914483155907583*^9, 3.914483157644485*^9}, {3.920605864410475*^9, 
  3.92060586442139*^9}, {3.923965159677277*^9, 3.923965167533299*^9}, {
  3.923966483540626*^9, 3.923966507581973*^9}},
 CellLabel->"In[52]:=",ExpressionUUID->"c5ea0e72-1190-4ac8-9c32-2f35ebbff4ab"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"Q", "(", "961", ")"}],
     HoldForm], " ", "s", " ", 
    SubscriptBox["m", "i"], " ", 
    SubscriptBox["m", "j"]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"Q", "(", "971", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"t", " ", "u"}], "-", 
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"Q", "(", "965", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{"t", "-", 
      SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{"t", "-", 
      SubsuperscriptBox["m", "j", "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"Q", "(", "969", ")"}],
     HoldForm], " ", 
    RowBox[{"(", 
     RowBox[{"u", "-", 
      SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{"u", "-", 
      SubsuperscriptBox["m", "j", "2"]}], ")"}]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849087410779*^9, 3.917849102715042*^9}, 
   3.9178492058367157`*^9, 3.91784945158249*^9, 3.917934594569837*^9, 
   3.9180175544303226`*^9, 3.918034069345376*^9, 3.918091829771579*^9, 
   3.918092135338085*^9, 3.91809217763344*^9, 3.9180941515043497`*^9, 
   3.918094276625725*^9, 3.918094412382401*^9, 3.92060579426553*^9, 
   3.9206058673875093`*^9, 3.9206060111100693`*^9, 3.920621467422662*^9, 
   3.920621521624471*^9, {3.92103114457414*^9, 3.921031162804592*^9}, 
   3.921031953918459*^9, 3.921032412830855*^9, 3.921032886282193*^9, 
   3.921033272091413*^9, 3.923635211883836*^9, 3.923725219076788*^9, 
   3.923725532728361*^9, 3.923729647710758*^9, 3.923964928682701*^9, 
   3.923965073163104*^9, 3.923965168301487*^9, 3.923966490263083*^9, 
   3.923969622641699*^9, 3.923974025009921*^9, 3.923980350952197*^9, 
   3.9240777139724298`*^9, 3.924077924456587*^9, 3.924081731756598*^9, 
   3.924141113616466*^9, 3.924145889953746*^9, 3.924156483418013*^9, 
   3.92415659987878*^9},
 CellLabel->"Out[52]=",ExpressionUUID->"7ab96658-8da8-4a90-a958-f5959cadecd1"]
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
  RowBox[{"DiffXSecPrefactor", " ", "=", " ", 
   RowBox[{
    RowBox[{
     FractionBox["CommonPrefactor", 
      RowBox[{"64", " ", "Pi", " ", 
       RowBox[{"CA", "^", "2"}], " ", 
       SuperscriptBox["s", "2"]}]], 
     RowBox[{"IdenticalPartFactor", "[", 
      RowBox[{"i", ",", "j"}], "]"}]}], " ", "/.", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       SuperscriptBox[
        RowBox[{"FeynCalc`IndexDelta", "[", 
         RowBox[{"a", ",", "b"}], "]"}], "p_"], "->", "CA"}], ",", 
      RowBox[{
       RowBox[{"SMP", "[", "\"\<g_W\>\"", "]"}], "->", 
       RowBox[{"Sqrt", "[", 
        RowBox[{"4", "\[Pi]", " ", "alphaW"}], "]"}]}]}], "}"}]}]}], 
  ";"}], "\n", 
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
         RowBox[{"a", ",", "b"}], "]"}], "p_"], "->", "CA"}], ",", 
      RowBox[{
       RowBox[{"SMP", "[", "\"\<g_W\>\"", "]"}], "->", 
       RowBox[{"Sqrt", "[", 
        RowBox[{"4", "\[Pi]", " ", "alphaW"}], "]"}]}]}], "}"}]}]}], 
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
 InitializationCell->False,
 CellChangeTimes->{{3.914482658148389*^9, 3.914482716911396*^9}, {
   3.914483052358073*^9, 3.914483054964551*^9}, {3.9144832098075*^9, 
   3.914483217020318*^9}, {3.914484261058823*^9, 3.914484289117308*^9}, {
   3.914484407817083*^9, 3.914484425117964*^9}, {3.914484848879524*^9, 
   3.91448486664678*^9}, 3.914649051885324*^9, 3.915341427359592*^9, {
   3.9164853175666103`*^9, 3.916485353077631*^9}, {3.916485423924047*^9, 
   3.916485429618887*^9}, {3.91648546500614*^9, 3.916485552848844*^9}, {
   3.916485608189851*^9, 3.916485638010289*^9}, {3.917848400598485*^9, 
   3.917848411985121*^9}, {3.91784902212743*^9, 3.917849029054782*^9}, 
   3.917849424090184*^9},
 CellLabel->"In[53]:=",ExpressionUUID->"023e21e7-f598-4047-a226-039e1e3bfc04"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SuperscriptBox["s", "2"]}]], 
   SubsuperscriptBox["\[Alpha]", "W", "2"], " ", "\[Pi]", " ", 
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
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      SuperscriptBox[
       TemplateBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]]},
        "Abs"], "2"]}], "+", 
     RowBox[{
      SuperscriptBox[
       TemplateBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "R"}]]},
        "Abs"], "2"], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}]}], "+", 
     RowBox[{
      SuperscriptBox[
       TemplateBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]]},
        "Abs"], "2"], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}]}], "+", 
     RowBox[{
      SuperscriptBox[
       TemplateBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "R"}]]},
        "Abs"], "2"], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", 
           RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
           RowBox[{"L", "R"}]], ")"}]},
       "Conjugate"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", 
           RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
           RowBox[{"R", "L"}]], ")"}]},
       "Conjugate"], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "B", "*"]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"t", " ", "u"}], "-", 
        RowBox[{
         SubsuperscriptBox["m", "i", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}], "+", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}], "-", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "R"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
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
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", 
                 RowBox[{
                   SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                   SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"L", "L"}]]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", 
                 RowBox[{
                   SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                   SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
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
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"L", "L"}]]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                 RowBox[{"L", "R"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"L", "R"}]]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                 RowBox[{"R", "L"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"R", "L"}]]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubscriptBox["\[CapitalDelta]", "B"]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"t", " ", "u"}], "-", 
        RowBox[{
         SubsuperscriptBox["m", "i", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"]}]}], ")"}], " ", 
      SubsuperscriptBox["Q", 
       RowBox[{
        OverscriptBox["u", "~"], "A"}], 
       RowBox[{"R", "L"}]], " ", 
      SubsuperscriptBox["Q", 
       RowBox[{
        OverscriptBox["u", "~"], "B"}], 
       RowBox[{"L", "R"}]]}], "+", 
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
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "B", "*"]}]]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubscriptBox["\[CapitalDelta]", "B"]}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "R"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"R", "L"}]]}]}], ")"}]}], "+", 
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
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "B"}], 
             RowBox[{"L", "L"}]]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"L", "R"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "B"}], 
             RowBox[{"L", "R"}]]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"R", "L"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "B"}], 
             RowBox[{"R", "L"}]]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "B"}], 
             RowBox[{"R", "R"}]]}]}], ")"}]}], "-", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", 
                 RowBox[{
                   SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                   SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                 RowBox[{"L", "R"}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", 
                 RowBox[{
                   SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                   SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                 RowBox[{"R", "L"}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"]}]}], ")"}], " ", 
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]]}]}], ")"}]}], "+", 
     RowBox[{"s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Z", 
                   RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                   RowBox[{"L", "L"}]], ")"}]},
               "Conjugate"], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                   RowBox[{"L", "L"}]], ")"}]},
               "Conjugate"]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Z", 
                   RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"]}]}], ")"}], " ", 
           FractionBox["1", 
            RowBox[{"t", "-", 
             SubscriptBox["\[CapitalDelta]", "A"]}]]}], ")"}]}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Q", 
                  RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                  RowBox[{"L", "L"}]], ")"}]},
              "Conjugate"]}], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"]}], "-", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"]}]}], ")"}], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "B", "*"]}]], " ", 
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Z", 
             RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"L", "R"}]]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Z", 
             RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"R", "L"}]]}]}], ")"}]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "R"}]]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", 
                 RowBox[{
                   SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                   SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                 RowBox[{"L", "R"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"L", "L"}]]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", 
                 RowBox[{
                   SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                   SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                 RowBox[{"R", "L"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"R", "R"}]]}]}], ")"}]}], "-", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"L", "L"}]], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"L", "L"}]]}], "+", 
           RowBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"R", "R"}]], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
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
            RowBox[{"-", 
             SubsuperscriptBox["Q", 
              RowBox[{
               OverscriptBox["u", "~"], "A"}], 
              RowBox[{"L", "L"}]]}], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "B"}], 
             RowBox[{"L", "L"}]]}], "-", 
           RowBox[{
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"R", "R"}]], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "B"}], 
             RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849087481048*^9, 3.917849102787835*^9}, 
   3.917849205908598*^9, 3.917849451671725*^9, 3.917934594642124*^9, 
   3.918017554503026*^9, 3.918034069416588*^9, 3.918091829843813*^9, 
   3.918092135414506*^9, 3.91809217770448*^9, 3.918094151575941*^9, 
   3.918094276697606*^9, 3.918094412454122*^9, 3.920605794347734*^9, 
   3.920605867442416*^9, 3.920606011181473*^9, 3.920621467509972*^9, 
   3.920621521709971*^9, {3.921031144586849*^9, 3.921031162823579*^9}, 
   3.9210319539990273`*^9, 3.921032412915929*^9, 3.921032886369111*^9, 
   3.921033272174856*^9, 3.923635211995792*^9, 3.923725219159624*^9, 
   3.923725532984315*^9, 3.923729647794878*^9, 3.923964928796315*^9, 
   3.923974025091127*^9, 3.923980351035967*^9, 3.924077713992198*^9, 
   3.92407792452001*^9, 3.924081731837672*^9, 3.9241411136580467`*^9, 
   3.92414588996492*^9, 3.924156483432432*^9, 3.9241565998925133`*^9},
 CellLabel->"Out[54]=",ExpressionUUID->"7e5ccf10-1a06-4720-bdc4-049030103046"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"DiffXSecPrefactor", " ", 
    RowBox[{"Collect", "[", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"ReplaceAll", "[", 
       RowBox[{
        FractionBox["DiffXSec", "DiffXSecPrefactor"], ",", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"DSf", "[", "args__", "]"}], "->", 
           RowBox[{
            RowBox[{"MSf", "[", "args", "]"}], "^", "2"}]}], 
          RowBox[{"(*", 
           RowBox[{",", " ", 
            RowBox[{"DZ", "->", 
             RowBox[{
              RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], "^", "2"}]}]}], 
           "*)"}], ",", " ", 
          RowBox[{
           RowBox[{"DSfC", "[", "args__", "]"}], "->", 
           RowBox[{
            RowBox[{"MSf", "[", "args", "]"}], "^", "2"}]}]}], "}"}]}], "]"}],
       ",", "\[IndentingNewLine]", "\t", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"s", "*", 
         RowBox[{"MEW", "[", "i", "]"}], "*", 
         RowBox[{"MEW", "[", "j", "]"}]}], ",", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"t", "-", 
           SuperscriptBox[
            RowBox[{"MEW", "[", "i", "]"}], "2"]}], ")"}], 
         RowBox[{"(", 
          RowBox[{"t", "-", 
           SuperscriptBox[
            RowBox[{"MEW", "[", "j", "]"}], "2"]}], ")"}]}], ",", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"u", "-", 
           SuperscriptBox[
            RowBox[{"MEW", "[", "i", "]"}], "2"]}], ")"}], 
         RowBox[{"(", 
          RowBox[{"u", "-", 
           SuperscriptBox[
            RowBox[{"MEW", "[", "j", "]"}], "2"]}], ")"}]}], ",", 
        RowBox[{
         RowBox[{"t", "*", "u"}], "-", 
         RowBox[{
          SuperscriptBox[
           RowBox[{"MEW", "[", "i", "]"}], "2"], "*", 
          SuperscriptBox[
           RowBox[{"MEW", "[", "j", "]"}], "2"]}]}]}], "}"}], ",", 
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
     "\[IndentingNewLine]", "]"}]}], " ", "//", " ", 
   RowBox[{
    RowBox[{"Refine", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"Assumptions", "->", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"SMP", "[", "_", "]"}], "\[Element]", "Reals"}], ",", " ", 
         RowBox[{
          RowBox[{"MSf", "[", "__", "]"}], "\[Element]", "Reals"}]}], 
        "}"}]}]}], "]"}], "&"}]}], ";"}], "\n", 
 RowBox[{"%", " ", "//.", " ", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{
     RowBox[{"a_", "+", 
      RowBox[{"a_", "\[Conjugate]"}]}], " ", "->", " ", 
     RowBox[{"2", 
      RowBox[{"Re", "[", "a", "]"}]}]}], ",", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"a_", " ", "b_"}], "+", 
      RowBox[{
       RowBox[{"a_", "\[Conjugate]"}], 
       RowBox[{"b_", "\[Conjugate]"}]}]}], " ", "->", " ", 
     RowBox[{"2", 
      RowBox[{"Re", "[", 
       RowBox[{"a", " ", "b"}], "]"}]}]}], ",", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"a_", " ", 
       RowBox[{"b_", "\[Conjugate]"}]}], "+", 
      RowBox[{
       RowBox[{"a_", "\[Conjugate]"}], "b_"}]}], " ", "->", " ", 
     RowBox[{"2", 
      RowBox[{"Re", "[", 
       RowBox[{"a", " ", 
        RowBox[{"b", "\[Conjugate]"}]}], "]"}]}]}], ",", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"a_", "^", "2"}], "+", 
      RowBox[{
       RowBox[{"a_", "\[Conjugate]"}], "^", "2"}]}], " ", "->", " ", 
     RowBox[{"2", 
      RowBox[{"Re", "[", 
       RowBox[{"a", "^", "2"}], "]"}]}]}]}], "}"}]}]}], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917407778161088*^9, 3.9174077871790648`*^9}, {
   3.91740782188387*^9, 3.917407893043601*^9}, {3.917407957259192*^9, 
   3.917408069076126*^9}, {3.917409998705933*^9, 3.917410032866406*^9}, {
   3.9174103977147083`*^9, 3.917410420430912*^9}, {3.9206058644315157`*^9, 
   3.920605864445901*^9}, 3.923969827275889*^9},
 CellLabel->"In[56]:=",ExpressionUUID->"2fc2d697-9537-40fc-91a2-909f061b1cb0"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SuperscriptBox["s", "2"], " ", 
     SubscriptBox["C", "A"]}]], "\[Pi]", " ", 
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
        RowBox[{"-", 
         RowBox[{
          FractionBox["1", 
           RowBox[{"t", "-", 
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["u", "~"], 
              RowBox[{"1", ",", "A"}]], "2"]}]], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"2", " ", 
             RowBox[{"Re", "(", 
              RowBox[{
               SubsuperscriptBox["Q", 
                RowBox[{
                 OverscriptBox["u", "~"], "A"}], 
                RowBox[{"L", "L"}]], " ", 
               SubsuperscriptBox["Z", 
                RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                RowBox[{"L", "R"}]]}], ")"}]}], "+", 
            RowBox[{"2", " ", 
             RowBox[{"Re", "(", 
              RowBox[{
               SubsuperscriptBox["Q", 
                RowBox[{
                 OverscriptBox["u", "~"], "A"}], 
                RowBox[{"R", "R"}]], " ", 
               SubsuperscriptBox["Z", 
                RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                RowBox[{"R", "L"}]]}], ")"}]}]}], ")"}]}]}], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "R"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "L"}]]},
          "Abs"], "2"], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "A"}]], "2"]}]], " ", 
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "B"}]], "2"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "B"}], 
             RowBox[{"L", "R"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"L", "R"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "B"}], 
             RowBox[{"R", "L"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"R", "L"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "B"}], 
             RowBox[{"L", "L"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "B"}], 
             RowBox[{"R", "R"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
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
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "A"}]], "2"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"2", " ", 
            RowBox[{"Re", "(", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                   RowBox[{"L", "L"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Z", 
               RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "L"}]]}], ")"}]}], "+", 
           RowBox[{"2", " ", 
            RowBox[{"Re", "(", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Z", 
               RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "R"}]]}], ")"}]}]}], ")"}]}], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "L"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "R"}]]},
          "Abs"], "2"], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "A"}]], "2"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "B"}]], "2"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"L", "R"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                 RowBox[{"L", "R"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"R", "L"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                 RowBox[{"R", "L"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"L", "L"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"R", "R"}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"]}]}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{"s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         RowBox[{"(", 
          RowBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "R"}]], "-", 
           RowBox[{
            FractionBox["1", 
             RowBox[{"t", "-", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "2"]}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         RowBox[{"(", 
          RowBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "L"}]], "-", 
           RowBox[{
            FractionBox["1", 
             RowBox[{"t", "-", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "2"]}]], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "A"}]], "2"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Z", 
             RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"L", "R"}]]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Z", 
             RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"R", "L"}]]}]}], ")"}]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         RowBox[{"(", 
          RowBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "L"}]], "+", 
           RowBox[{
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"L", "L"}]], " ", 
            FractionBox["1", 
             RowBox[{"u", "-", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "2"]}]]}]}], ")"}]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "A"}]], "2"]}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"]}], "-", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "A"}]], "2"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"L", "L"}]], " ", 
            SubsuperscriptBox["Z", 
             RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"L", "L"}]]}], "+", 
           RowBox[{
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"R", "R"}]], " ", 
            SubsuperscriptBox["Z", 
             RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
        RowBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "A"}]], "2"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "B"}]], "2"]}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Q", 
                  RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                  RowBox[{"L", "L"}]], ")"}]},
              "Conjugate"]}], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"]}], "-", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"], " ", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                 RowBox[{"R", "R"}]], ")"}]},
             "Conjugate"]}], "-", 
           RowBox[{
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"L", "L"}]], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "B"}], 
             RowBox[{"L", "L"}]]}], "-", 
           RowBox[{
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "A"}], 
             RowBox[{"R", "R"}]], " ", 
            SubsuperscriptBox["Q", 
             RowBox[{
              OverscriptBox["u", "~"], "B"}], 
             RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"t", " ", "u"}], "-", 
        RowBox[{
         SubsuperscriptBox["m", "i", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           SubsuperscriptBox["Q", 
            RowBox[{
             OverscriptBox["u", "~"], "A"}], 
            RowBox[{"R", "L"}]], " ", 
           SubsuperscriptBox["Q", 
            RowBox[{
             OverscriptBox["u", "~"], "B"}], 
            RowBox[{"L", "R"}]]}], ")"}]}], "+", 
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           SubsuperscriptBox["Q", 
            RowBox[{
             OverscriptBox["u", "~"], "A"}], 
            RowBox[{"L", "R"}]], " ", 
           SubsuperscriptBox["Q", 
            RowBox[{
             OverscriptBox["u", "~"], "B"}], 
            RowBox[{"R", "L"}]]}], ")"}]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849087571072*^9, 3.917849102880729*^9}, 
   3.917849205996833*^9, 3.917849451768791*^9, 3.917934594738974*^9, 
   3.918017554590153*^9, 3.918034069506214*^9, 3.9180918299333057`*^9, 
   3.91809213550322*^9, 3.918092177793957*^9, 3.918094151665794*^9, 
   3.918094276786579*^9, 3.9180944125449753`*^9, 3.920605794697803*^9, 
   3.920605870881114*^9, 3.92060601127757*^9, 3.920621467618347*^9, 
   3.920621521812585*^9, {3.921031144737561*^9, 3.921031162962987*^9}, 
   3.921031954091632*^9, 3.921032413025668*^9, 3.921032886484538*^9, 
   3.921033272284023*^9, 3.9236352121178102`*^9, 3.923725219273499*^9, 
   3.923725533246955*^9, 3.923729647904175*^9, 3.923964928919385*^9, 
   3.923969829054356*^9, 3.9239740252032557`*^9, 3.923980351147919*^9, 
   3.924077714110846*^9, 3.9240779246415*^9, 3.92408173222407*^9, 
   3.924141114061467*^9, 3.924145890453986*^9, 3.924156483848733*^9, 
   3.924156600307067*^9},
 CellLabel->"Out[57]=",ExpressionUUID->"85f13fa6-27ee-4e26-99b6-420253cc4394"]
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
        RowBox[{
         RowBox[{
          RowBox[{"Qtu", "[", "_", "]"}], "[", "__", "]"}], "[", "__", "]"}], 
        " ", "->", " ", "0"}]}], " ", "//", " ", "CollectEffCharges"}], " ", "//",
      " ", "FRH"}], ")"}]}]}], "\n", 
 RowBox[{"SqXSecDiff", " ", "=", " ", 
  RowBox[{"DiffXSecPrefactor", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"DiffXSec", "/", "DiffXSecPrefactor"}], " ", "/.", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"Zij", "[", "\"\<NN\>\"", "]"}], "[", "_", "]"}], " ", "->", 
        " ", "0"}]}], " ", "//", " ", "CollectEffCharges"}], " ", "//", " ", 
     "FRH"}], ")"}]}]}], "\n", 
 RowBox[{"InterferenceXSecDiff", " ", "=", " ", 
  RowBox[{"DiffXSecPrefactor", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"DiffXSec", " ", "/", " ", "DiffXSecPrefactor"}], " ", "//", 
        "\n", "\t", 
        RowBox[{
         RowBox[{"SelectNotFree2", "[", 
          RowBox[{"#", ",", " ", "Zij"}], "]"}], "&"}]}], " ", "//", " ", 
       RowBox[{
        RowBox[{"SelectNotFree2", "[", 
         RowBox[{"#", ",", " ", "Qtu"}], "]"}], "&"}]}], " ", "//", "\n", 
      "\t", "CollectEffCharges"}], " ", "//", " ", "FRH"}], 
    ")"}]}]}]}], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.9164850929771347`*^9, 3.916485303318562*^9}, {
   3.916485360092846*^9, 3.916485397220058*^9}, {3.920621485438217*^9, 
   3.920621485610534*^9}, {3.923969684112688*^9, 3.923969749398849*^9}, 
   3.924145875235421*^9},
 CellLabel->"In[58]:=",ExpressionUUID->"337361d3-737c-405b-9f1f-de884e445225"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SuperscriptBox["s", "2"], " ", 
     SubscriptBox["C", "A"]}]], "\[Pi]", " ", 
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
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "R"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "L"}]]},
          "Abs"], "2"]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "L"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "R"}]]},
          "Abs"], "2"]}], ")"}]}], "+", 
     RowBox[{"s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"]}]}], ")"}]}]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849087588623*^9, 3.917849102898104*^9}, 
   3.917849206014545*^9, 3.917849451910785*^9, 3.917934594757008*^9, 
   3.918017554617216*^9, 3.918034069525277*^9, 3.918091829974326*^9, 
   3.9180921355360823`*^9, 3.918092177819182*^9, 3.918094151861235*^9, 
   3.918094276974653*^9, 3.918094412735838*^9, 3.920605794716247*^9, 
   3.920605871063072*^9, 3.920606011349285*^9, 3.920621467742443*^9, 
   3.920621521930957*^9, {3.92103114488337*^9, 3.9210311630939207`*^9}, 
   3.9210319541537313`*^9, 3.921032413221746*^9, 3.921032886700717*^9, 
   3.921033272499303*^9, 3.923635212279229*^9, 3.923725219507127*^9, 
   3.923725533327531*^9, 3.9237296480851207`*^9, 3.923964929049747*^9, 
   3.923969694593489*^9, 3.923969750474859*^9, 3.923974025242915*^9, 
   3.923980351254821*^9, 3.924077714131823*^9, 3.92407792470192*^9, 
   3.924081732301036*^9, 3.924141114114883*^9, 3.924145890488204*^9, 
   3.9241564838703613`*^9, 3.924156600328977*^9},
 CellLabel->"Out[58]=",ExpressionUUID->"0dc46f5e-04bc-49f7-93c4-b762f2694747"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SuperscriptBox["s", "2"]}]], 
   SubsuperscriptBox["\[Alpha]", "W", "2"], " ", "\[Pi]", " ", 
   SuperscriptBox[
    RowBox[{"(", 
     FractionBox["1", "2"], ")"}], 
    TemplateBox[{
      RowBox[{"i", ",", "j"}]},
     "KroneckerDeltaSeq"]], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "s"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"]}], "-", 
     RowBox[{"s", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "B", "*"]}]], " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"]}], "+", 
     RowBox[{"s", " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
      SubscriptBox["m", "i"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]]}]}], ")"}], " ", 
      SubscriptBox["m", "j"]}], "+", 
     RowBox[{"s", " ", 
      SubscriptBox["m", "i"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "R"}]]}]}], ")"}], " ", 
      SubscriptBox["m", "j"]}], "+", 
     RowBox[{"s", " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
      SubscriptBox["m", "i"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]]}]}], ")"}], " ", 
      SubscriptBox["m", "j"]}], "-", 
     RowBox[{"s", " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
      SubscriptBox["m", "i"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "R"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]]}]}], ")"}], " ", 
      SubscriptBox["m", "j"]}], "-", 
     RowBox[{"s", " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubscriptBox["\[CapitalDelta]", "B"]}]], " ", 
      SubscriptBox["m", "i"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"R", "R"}]]}]}], ")"}], " ", 
      SubscriptBox["m", "j"]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "R"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "L"}]]},
          "Abs"], "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}]}], "-", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "L"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "R"}]]},
          "Abs"], "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "B", "*"]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"t", " ", "u"}], "-", 
        RowBox[{
         SubsuperscriptBox["m", "i", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}], "+", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
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
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}], "-", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "R"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubscriptBox["\[CapitalDelta]", "B"]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"t", " ", "u"}], "-", 
        RowBox[{
         SubsuperscriptBox["m", "i", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "L"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "R"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"R", "L"}]]}]}], ")"}]}], "+", 
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
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"R", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849087588623*^9, 3.917849102898104*^9}, 
   3.917849206014545*^9, 3.917849451910785*^9, 3.917934594757008*^9, 
   3.918017554617216*^9, 3.918034069525277*^9, 3.918091829974326*^9, 
   3.9180921355360823`*^9, 3.918092177819182*^9, 3.918094151861235*^9, 
   3.918094276974653*^9, 3.918094412735838*^9, 3.920605794716247*^9, 
   3.920605871063072*^9, 3.920606011349285*^9, 3.920621467742443*^9, 
   3.920621521930957*^9, {3.92103114488337*^9, 3.9210311630939207`*^9}, 
   3.9210319541537313`*^9, 3.921032413221746*^9, 3.921032886700717*^9, 
   3.921033272499303*^9, 3.923635212279229*^9, 3.923725219507127*^9, 
   3.923725533327531*^9, 3.9237296480851207`*^9, 3.923964929049747*^9, 
   3.923969694593489*^9, 3.923969750474859*^9, 3.923974025242915*^9, 
   3.923980351254821*^9, 3.924077714131823*^9, 3.92407792470192*^9, 
   3.924081732301036*^9, 3.924141114114883*^9, 3.924145890488204*^9, 
   3.9241564838703613`*^9, 3.9241566003626413`*^9},
 CellLabel->"Out[59]=",ExpressionUUID->"cf9f0599-486a-4a0f-8c5f-5487b6ed5abb"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SuperscriptBox["s", "2"], " ", 
     SubscriptBox["C", "A"]}]], "\[Pi]", " ", 
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
      RowBox[{"-", "s"}], " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"]}]}], ")"}]}], "+", 
     RowBox[{"s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]]}]}], ")"}]}], "+", 
     RowBox[{"s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"]}]}], ")"}]}], "-", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"]}]}], ")"}]}], "+", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"]}]}], ")"}]}], "-", 
     RowBox[{"s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}], "-", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849087588623*^9, 3.917849102898104*^9}, 
   3.917849206014545*^9, 3.917849451910785*^9, 3.917934594757008*^9, 
   3.918017554617216*^9, 3.918034069525277*^9, 3.918091829974326*^9, 
   3.9180921355360823`*^9, 3.918092177819182*^9, 3.918094151861235*^9, 
   3.918094276974653*^9, 3.918094412735838*^9, 3.920605794716247*^9, 
   3.920605871063072*^9, 3.920606011349285*^9, 3.920621467742443*^9, 
   3.920621521930957*^9, {3.92103114488337*^9, 3.9210311630939207`*^9}, 
   3.9210319541537313`*^9, 3.921032413221746*^9, 3.921032886700717*^9, 
   3.921033272499303*^9, 3.923635212279229*^9, 3.923725219507127*^9, 
   3.923725533327531*^9, 3.9237296480851207`*^9, 3.923964929049747*^9, 
   3.923969694593489*^9, 3.923969750474859*^9, 3.923974025242915*^9, 
   3.923980351254821*^9, 3.924077714131823*^9, 3.92407792470192*^9, 
   3.924081732301036*^9, 3.924141114114883*^9, 3.924145890488204*^9, 
   3.9241564838703613`*^9, 3.924156600409672*^9},
 CellLabel->"Out[60]=",ExpressionUUID->"12ba4c34-606a-409e-8204-b69019653b84"]
}, Open  ]]
}, Closed]],

Cell[CellGroupData[{

Cell["Integrated Cross-Section", "Section",
 CellChangeTimes->{{3.914483093739622*^9, 3.91448311179278*^9}, {
  3.917848661019471*^9, 
  3.917848663957313*^9}},ExpressionUUID->"e6d77a07-eeec-44aa-b43b-\
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
           RowBox[{"MEW", "[", "i", "]"}], "2"], "+", 
          SuperscriptBox[
           RowBox[{"MEW", "[", "j", "]"}], "2"], "-", "s", "-", "t"}]}], 
        "}"}]}], "//", "Expand"}], ",", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"Den", "[", "args1__", "]"}], 
      RowBox[{"Den", "[", "args2__", "]"}]}], ",", "\[IndentingNewLine]", 
     "\t", "Simplify"}], "\[IndentingNewLine]", "]"}]}], ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.914483136160664*^9, 3.914483152235705*^9}, 
   3.9144832170235043`*^9, {3.914484848882606*^9, 3.914484866650016*^9}, {
   3.920605864453521*^9, 3.920605864455366*^9}},
 CellLabel->"In[61]:=",ExpressionUUID->"397c4165-053c-4434-b0b3-1dc17d856bb6"],

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
 InitializationCell->False,
 CellChangeTimes->{{3.914483257605521*^9, 3.914483273965103*^9}, {
  3.914484854920312*^9, 3.9144848666512833`*^9}, {3.91464906239988*^9, 
  3.914649065848443*^9}, {3.916126410626989*^9, 3.916126413641904*^9}},
 CellLabel->"In[62]:=",ExpressionUUID->"bf9d0b1a-94a4-4976-8666-fab9971a81ed"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1006", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1038", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1008", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "998", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1014", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "996", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1036", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1024", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1026", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1042", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1012", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1022", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "u"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1004", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
           RowBox[{"1", ",", "A"}]], "t"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1016", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
           RowBox[{"1", ",", "A"}]], "t"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1032", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
           RowBox[{"1", ",", "A"}]], "t"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1002", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
           RowBox[{"1", ",", "A"}]], "u"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1030", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
           RowBox[{"1", ",", "A"}]], "u"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1046", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
           RowBox[{"1", ",", "A"}]], "u"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "994", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "t"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1044", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "t"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1018", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "t"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1020", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "u"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1034", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "u"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1000", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "u"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1040", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "0"]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1028", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "1"]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1010", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "2"]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849087921958*^9, 3.917849103258693*^9}, 
   3.917849206377264*^9, 3.917849452166193*^9, 3.917934595086159*^9, 
   3.918017554930148*^9, 3.9180340698938513`*^9, 3.9180918303311043`*^9, 
   3.918092135868602*^9, 3.918092178146939*^9, 3.918094152106079*^9, 
   3.918094277225201*^9, 3.91809441297922*^9, 3.920605795071419*^9, 
   3.9206058712035227`*^9, 3.920606011719994*^9, 3.920621468089837*^9, 
   3.92062152219499*^9, {3.921031145520409*^9, 3.921031163667551*^9}, 
   3.921031954543226*^9, 3.921032413537662*^9, 3.921032887019594*^9, 
   3.921033272816442*^9, 3.923635212812372*^9, 3.92372522004312*^9, 
   3.923725534516123*^9, 3.923729648609063*^9, 3.923964929584105*^9, 
   3.923974025832543*^9, 3.9239803517489367`*^9, 3.924077714809569*^9, 
   3.9240779252253737`*^9, 3.924081732810123*^9, 3.924141114601759*^9, 
   3.924145891058651*^9, 3.92415648437599*^9, 3.924156600831807*^9},
 CellLabel->"Out[62]=",ExpressionUUID->"194ef827-37d1-4bee-a9ea-127de0b93980"]
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
 InitializationCell->False,
 CellChangeTimes->{{3.914483284713757*^9, 3.914483290896813*^9}, {
   3.914558444408209*^9, 3.914558453002076*^9}, 3.915468894882674*^9},
 CellLabel->"In[64]:=",ExpressionUUID->"c3aa978d-ccf6-4348-9406-9146fd7afbd9"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    SubsuperscriptBox["m", "i", "2"], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
            RowBox[{"L", "L"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "B"}], 
        RowBox[{"L", "L"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
            RowBox[{"L", "R"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "B"}], 
        RowBox[{"L", "R"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
            RowBox[{"R", "L"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "B"}], 
        RowBox[{"R", "L"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
            RowBox[{"R", "R"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "B"}], 
        RowBox[{"R", "R"}]]}]}], ")"}], " ", 
    SubsuperscriptBox["m", "j", "2"]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]]},
            "Abs"], "2"]}], "-", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"L", "R"}]]},
           "Abs"], "2"], "-", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"R", "L"}]]},
           "Abs"], "2"], "-", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"R", "R"}]]},
           "Abs"], "2"]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"]}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]]},
            "Abs"], "2"]}], "-", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"L", "R"}]]},
           "Abs"], "2"], "-", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"R", "L"}]]},
           "Abs"], "2"], "-", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"R", "R"}]]},
           "Abs"], "2"]}], ")"}], " ", 
       SubsuperscriptBox["m", "j", "2"]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]]},
            "Abs"], "2"]}], "+", 
         RowBox[{"2", " ", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "R"}]]},
            "Abs"], "2"]}]}], ")"}]}]}], ")"}], " ", 
    SubsuperscriptBox["T", "0", "1"]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox[
       TemplateBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]]},
        "Abs"], "2"], "+", 
      SuperscriptBox[
       TemplateBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "R"}]]},
        "Abs"], "2"], "+", 
      SuperscriptBox[
       TemplateBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]]},
        "Abs"], "2"], "+", 
      SuperscriptBox[
       TemplateBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "R"}]]},
        "Abs"], "2"]}], ")"}], " ", 
    SubsuperscriptBox["T", "0", "2"]}], "+", 
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
               SubsuperscriptBox["Z", 
                RowBox[{
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "i", "0"], 
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                RowBox[{"L", "R"}]], ")"}]},
            "Conjugate"]}], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"], " ", 
       SubsuperscriptBox["m", "j", "2"]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", 
                RowBox[{
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "i", "0"], 
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "t"], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"]}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "j", "2"]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "t"], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"L", "R"}]], ")"}]},
         "Conjugate"]}], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
            RowBox[{"L", "L"}]], ")"}]},
        "Conjugate"]}], "-", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "L"}]], ")"}]},
        "Conjugate"], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
            RowBox[{"R", "R"}]], ")"}]},
        "Conjugate"]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "t"], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
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
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
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
               SubsuperscriptBox["Q", 
                RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                RowBox[{"R", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
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
               SubsuperscriptBox["Q", 
                RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                RowBox[{"R", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "j", "2"]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"]}]}], ")"}]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
            RowBox[{"R", "L"}]], ")"}]},
        "Conjugate"], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
            RowBox[{"L", "R"}]], ")"}]},
        "Conjugate"]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
            RowBox[{"L", "R"}]], ")"}]},
        "Conjugate"], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
            RowBox[{"R", "L"}]], ")"}]},
        "Conjugate"]}]}], ")"}], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
           RowBox[{"1", ",", "A"}]], "u"], ")"}]},
      "Conjugate"], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["Q", 
             RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
             RowBox[{"L", "L"}]], ")"}]},
         "Conjugate"]}], " ", 
       SubsuperscriptBox["Z", 
        RowBox[{
         SubsuperscriptBox[
          OverscriptBox["\[Chi]", "~"], "i", "0"], 
         SubsuperscriptBox[
          OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
        RowBox[{"L", "L"}]]}], "-", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
            RowBox[{"R", "R"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Z", 
        RowBox[{
         SubsuperscriptBox[
          OverscriptBox["\[Chi]", "~"], "i", "0"], 
         SubsuperscriptBox[
          OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
        RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
   RowBox[{
    SubsuperscriptBox["T", "0", "0"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"L", "L"}]]},
           "Abs"], "2"], "+", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"R", "R"}]]},
           "Abs"], "2"]}], ")"}], " ", 
       SuperscriptBox["s", "2"]}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]]},
            "Abs"], "2"]}], "-", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"R", "R"}]]},
           "Abs"], "2"]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"], " ", "s"}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]]},
            "Abs"], "2"]}], "-", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"R", "R"}]]},
           "Abs"], "2"]}], ")"}], " ", 
       SubsuperscriptBox["m", "j", "2"], " ", "s"}], "+", 
      RowBox[{
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "R"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"L", "L"}]]},
           "Abs"], "2"], "+", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"L", "R"}]]},
           "Abs"], "2"], "+", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"R", "L"}]]},
           "Abs"], "2"], "+", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"R", "R"}]]},
           "Abs"], "2"]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"], " ", 
       SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
           RowBox[{"1", ",", "A"}]], "u"], ")"}]},
      "Conjugate"], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "2"}], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
           RowBox[{"1", ",", "A"}]], "u"], ")"}]},
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
               SubsuperscriptBox["Q", 
                RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       SuperscriptBox["s", "2"]}], "+", 
      RowBox[{
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", 
                RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "L"}]]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", 
                RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "u"], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"L", "L"}]], ")"}]},
         "Conjugate"]}], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "A"}], 
        RowBox[{"L", "L"}]]}], "-", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "R"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "A"}], 
        RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "u"], ")"}]},
       "Conjugate"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
            RowBox[{"L", "L"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "A"}], 
        RowBox[{"L", "L"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
            RowBox[{"L", "R"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "A"}], 
        RowBox[{"L", "R"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
            RowBox[{"R", "L"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "A"}], 
        RowBox[{"R", "L"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
            RowBox[{"R", "R"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "A"}], 
        RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
           RowBox[{"1", ",", "A"}]], "t"], ")"}]},
      "Conjugate"], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["Z", 
         RowBox[{
          SubsuperscriptBox[
           OverscriptBox["\[Chi]", "~"], "i", "0"], 
          SubsuperscriptBox[
           OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
         RowBox[{"L", "R"}]]}], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "A"}], 
        RowBox[{"L", "L"}]]}], "-", 
      RowBox[{
       SubsuperscriptBox["Z", 
        RowBox[{
         SubsuperscriptBox[
          OverscriptBox["\[Chi]", "~"], "i", "0"], 
         SubsuperscriptBox[
          OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
        RowBox[{"R", "L"}]], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "A"}], 
        RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "u"], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "2"}], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "u"], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", 
                RowBox[{
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "i", "0"], 
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       SuperscriptBox["s", "2"]}], "+", 
      RowBox[{
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", 
                RowBox[{
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "i", "0"], 
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                RowBox[{"L", "R"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", 
                RowBox[{
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "i", "0"], 
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "u"], ")"}]},
       "Conjugate"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "R"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
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
               SubsuperscriptBox["Q", 
                RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", 
                RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", "s"}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "R"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "u"], ")"}]},
       "Conjugate"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", 
                RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
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
               SubsuperscriptBox["Q", 
                RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "R"}]]}], "+", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "L"}]]}], "+", 
         RowBox[{"2", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
           RowBox[{"1", ",", "A"}]], "t"], ")"}]},
      "Conjugate"], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "R"}]], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "L"}]], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"]}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "R"}]], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "L"}]], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
           RowBox[{"1", ",", "A"}]], "t"], ")"}]},
      "Conjugate"], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["Z", 
            RowBox[{
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "R"}]]}], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "L"}]], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "j", "2"]}], "+", 
      RowBox[{"s", " ", 
       SubscriptBox["m", "i"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["Z", 
            RowBox[{
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "L"}]]}], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "R"}]], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       SubscriptBox["m", "j"]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "A"}], 
        RowBox[{"R", "L"}]], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "B"}], 
        RowBox[{"L", "R"}]]}], "+", 
      RowBox[{
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "A"}], 
        RowBox[{"L", "R"}]], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "B"}], 
        RowBox[{"R", "L"}]]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["Q", 
            RowBox[{
             OverscriptBox["u", "~"], "A"}], 
            RowBox[{"R", "L"}]]}], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "R"}]], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"R", "L"}]]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "i", "2"]}], "+", 
      RowBox[{
       SubsuperscriptBox["m", "j", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["Q", 
            RowBox[{
             OverscriptBox["u", "~"], "A"}], 
            RowBox[{"R", "L"}]]}], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "R"}]], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"R", "L"}]]}]}], ")"}]}], "+", 
      RowBox[{"s", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "L"}]], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"L", "R"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "R"}]], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"R", "L"}]]}]}], ")"}]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
            RowBox[{"L", "L"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "B"}], 
        RowBox[{"L", "L"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
            RowBox[{"L", "R"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "B"}], 
        RowBox[{"L", "R"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
            RowBox[{"R", "L"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "B"}], 
        RowBox[{"R", "L"}]]}], "+", 
      RowBox[{
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
            RowBox[{"R", "R"}]], ")"}]},
        "Conjugate"], " ", 
       SubsuperscriptBox["Q", 
        RowBox[{
         OverscriptBox["u", "~"], "B"}], 
        RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", 
                RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"R", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
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
               SubsuperscriptBox["Q", 
                RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"L", "R"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"R", "L"}]]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "A"}]], "t"], ")"}]},
       "Conjugate"], ",", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
            RowBox[{"1", ",", "B"}]], "u"], ")"}]},
       "Conjugate"]}], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SubsuperscriptBox["m", "i", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "L"}]], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"L", "R"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "R"}]], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"R", "L"}]]}]}], ")"}], " ", 
       SubsuperscriptBox["m", "j", "2"]}], "+", 
      RowBox[{"s", " ", 
       SubscriptBox["m", "i"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       SubscriptBox["m", "j"]}]}], ")"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849088129176*^9, 3.917849103456495*^9}, 
   3.917849206576509*^9, 3.91784945236657*^9, 3.917934595284071*^9, 
   3.918017555126854*^9, 3.918034070090948*^9, 3.918091830530243*^9, 
   3.918092136069223*^9, 3.9180921783439713`*^9, 3.918094152309999*^9, 
   3.918094277422153*^9, 3.918094413180188*^9, 3.9206057953317537`*^9, 
   3.92060587123678*^9, 3.920606011916312*^9, 3.920621468295923*^9, 
   3.920621522395996*^9, {3.921031146292849*^9, 3.921031164428187*^9}, 
   3.921031954700561*^9, 3.921032413734516*^9, 3.921032887223543*^9, 
   3.921033273014329*^9, 3.9236352135749073`*^9, 3.923725220816897*^9, 
   3.923725535475349*^9, 3.923729649358789*^9, 3.923964930345114*^9, 
   3.923974026582032*^9, 3.923980352498991*^9, 3.924077715349163*^9, 
   3.924077925959814*^9, 3.924081733541876*^9, 3.9241411152462397`*^9, 
   3.924145891837879*^9, 3.92415648514789*^9, 3.9241566016044483`*^9},
 CellLabel->"Out[64]=",ExpressionUUID->"d009daa5-1b97-442b-b9b3-82ef5f282533"]
}, Open  ]],

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
   "\[IndentingNewLine]", "]"}]}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.914483543976324*^9, 3.914483576762061*^9}, {
   3.914484854926929*^9, 3.914484866657395*^9}, {3.914484992758549*^9, 
   3.914484992979399*^9}, {3.915436697379691*^9, 3.915436749623456*^9}, 
   3.915436784604378*^9, {3.915436833628914*^9, 3.915436902565397*^9}, {
   3.9154387114389877`*^9, 3.915438717387163*^9}, {3.915438840056538*^9, 
   3.915438841033923*^9}, {3.91546425955687*^9, 3.915464374881392*^9}, {
   3.916394198112276*^9, 3.916394239969701*^9}, {3.917848160045405*^9, 
   3.917848160441675*^9}},
 CellLabel->"In[65]:=",ExpressionUUID->"9185987c-c286-49a9-8e2c-abd135038383"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1127", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
              RowBox[{"1", ",", "A"}]], "t"], ")"}]},
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
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
              RowBox[{"1", ",", "A"}]], "t"], ")"}]},
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
     RowBox[{"KK", "(", "1119", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
              RowBox[{"1", ",", "A"}]], "u"], ")"}]},
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
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
              RowBox[{"1", ",", "A"}]], "u"], ")"}]},
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
     RowBox[{"KK", "(", "1116", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "t"]}], "+", 
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
        SubsuperscriptBox["\[CapitalDelta]", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "t"]}], "+", 
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
     RowBox[{"KK", "(", "1133", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "u"]}], "+", 
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
        SubsuperscriptBox["\[CapitalDelta]", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "u"]}], "+", 
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
     RowBox[{"KK", "(", "1135", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
              RowBox[{"1", ",", "B"}]], "t"], ")"}]},
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
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
              RowBox[{"1", ",", "B"}]], "t"], ")"}]},
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
     RowBox[{"KK", "(", "1141", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
              RowBox[{"1", ",", "B"}]], "u"], ")"}]},
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
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
              RowBox[{"1", ",", "B"}]], "u"], ")"}]},
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
     RowBox[{"KK", "(", "1146", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "u"]}], "+", 
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
        SubsuperscriptBox["\[CapitalDelta]", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "u"]}], "+", 
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
     RowBox[{"KK", "(", "1105", ")"}],
     HoldForm], " ", "p"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849088298848*^9, 3.917849103619972*^9}, 
   3.917849206739781*^9, 3.917849452529353*^9, 3.917934595458016*^9, 
   3.918017555300414*^9, 3.918034070272192*^9, 3.918091830696734*^9, 
   3.918092136233817*^9, 3.918092178507402*^9, 3.918094152474908*^9, 
   3.918094277588174*^9, 3.918094413345615*^9, 3.920605795517699*^9, 
   3.920605871325342*^9, 3.920606012086236*^9, 3.92062146846926*^9, 
   3.920621522565356*^9, {3.921031146763466*^9, 3.921031164854167*^9}, 
   3.921031954891113*^9, 3.921032413910675*^9, 3.921032887403118*^9, 
   3.921033273189919*^9, 3.92363521377773*^9, 3.923725221019121*^9, 
   3.923725535680631*^9, 3.923729649555223*^9, 3.923964930547188*^9, 
   3.923974026777925*^9, 3.923980352693787*^9, 3.924077715581382*^9, 
   3.924077926162988*^9, 3.924081733736813*^9, 3.9241411154401083`*^9, 
   3.9241458920740128`*^9, 3.9241564853396597`*^9, 3.924156601798312*^9},
 CellLabel->"Out[65]=",ExpressionUUID->"2adf43f1-3c4c-4eae-8128-f33b16ab7f98"]
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
 InitializationCell->False,
 CellChangeTimes->{{3.91448371611512*^9, 3.914483722539014*^9}, {
   3.914484854928886*^9, 3.91448486666013*^9}, {3.914484999523102*^9, 
   3.91448503414028*^9}, {3.915436511069714*^9, 3.9154366004059277`*^9}, {
   3.915436971984971*^9, 3.915436973537427*^9}, {3.915438749629553*^9, 
   3.9154387605839643`*^9}, {3.915438879833042*^9, 3.915438948813096*^9}, 
   3.915439036477599*^9, {3.916394260088276*^9, 3.916394272677437*^9}},
 CellLabel->"In[66]:=",ExpressionUUID->"84fccf6c-3854-43dd-a418-82c19a1daeb5"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1158", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
              RowBox[{"1", ",", "A"}]], "t"], ")"}]},
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
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
              RowBox[{"1", ",", "A"}]], "t"], ")"}]},
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
     RowBox[{"KK", "(", "1153", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
              RowBox[{"1", ",", "A"}]], "u"], ")"}]},
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
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
              RowBox[{"1", ",", "A"}]], "u"], ")"}]},
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
     RowBox[{"KK", "(", "1116", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "t"]}], "+", 
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
        SubsuperscriptBox["\[CapitalDelta]", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "t"]}], "+", 
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
     RowBox[{"KK", "(", "1164", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "u"]}], "+", 
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
        SubsuperscriptBox["\[CapitalDelta]", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "u"]}], "+", 
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
     RowBox[{"KK", "(", "1105", ")"}],
     HoldForm], " ", "p"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849088406578*^9, 3.917849103724911*^9}, 
   3.917849206844336*^9, 3.917849452633369*^9, 3.917934595563115*^9, 
   3.918017555406353*^9, 3.918034070379689*^9, 3.918091830802798*^9, 
   3.918092136339941*^9, 3.918092178611723*^9, 3.918094152581631*^9, 
   3.918094277694794*^9, 3.9180944134521313`*^9, 3.920605795629885*^9, 
   3.920605871392045*^9, 3.920606012194145*^9, 3.920621468579637*^9, 
   3.920621522673569*^9, {3.921031147016559*^9, 3.921031165075799*^9}, 
   3.921031955008855*^9, 3.921032414023678*^9, 3.921032887516696*^9, 
   3.9210332733016644`*^9, 3.923635213897991*^9, 3.923725221137185*^9, 
   3.923725535802413*^9, 3.923729649672287*^9, 3.923964930666979*^9, 
   3.923974026892876*^9, 3.923980352809238*^9, 3.924077715706543*^9, 
   3.924077926289082*^9, 3.924081733861216*^9, 3.924141115564069*^9, 
   3.924145892238799*^9, 3.9241564854622297`*^9, 3.92415660192074*^9},
 CellLabel->"Out[67]=",ExpressionUUID->"213744ba-62d1-4b7a-8b71-4951dbdf52b7"]
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
         RowBox[{"MEW", "[", "_", "]"}], "\[Element]", "PositiveReals"}], ",",
         " ", 
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
 InitializationCell->False,
 CellChangeTimes->{{3.9144838213496*^9, 3.914483885654633*^9}, {
   3.91448485493497*^9, 3.914484866666297*^9}, {3.914485039896947*^9, 
   3.914485043477662*^9}, {3.915436999009956*^9, 3.915437004584453*^9}, {
   3.915438963031749*^9, 3.915439030506975*^9}, {3.915439092878931*^9, 
   3.915439100922414*^9}, {3.915439253598371*^9, 3.915439258760292*^9}, {
   3.915439367650406*^9, 3.915439456619598*^9}, {3.916456669528307*^9, 
   3.91645666959293*^9}, 3.9206058644694347`*^9},
 CellLabel->"In[68]:=",ExpressionUUID->"a9c2b922-9999-415d-a638-4a936907ff55"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1158", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
              RowBox[{"1", ",", "A"}]], "t"], ")"}]},
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
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
              RowBox[{"1", ",", "A"}]], "t"], ")"}]},
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
     RowBox[{"KK", "(", "1153", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
              RowBox[{"1", ",", "A"}]], "u"], ")"}]},
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
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
              RowBox[{"1", ",", "A"}]], "u"], ")"}]},
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
     RowBox[{"KK", "(", "1173", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "t"]}], "+", 
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
        SubsuperscriptBox["\[CapitalDelta]", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "t"]}], "+", 
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
     RowBox[{"KK", "(", "1181", ")"}],
     HoldForm], " ", 
    RowBox[{"dLog", "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["\[CapitalDelta]", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "u"]}], "+", 
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
        SubsuperscriptBox["\[CapitalDelta]", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "u"]}], "+", 
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
     RowBox[{"KK", "(", "1105", ")"}],
     HoldForm], " ", "p"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849088534584*^9, 3.917849103850478*^9}, 
   3.917849206969125*^9, 3.91784945275839*^9, 3.917934595688435*^9, 
   3.9180175555345497`*^9, 3.918034070505773*^9, 3.918091830930079*^9, 
   3.918092136466298*^9, 3.918092178737693*^9, 3.918094152726369*^9, 
   3.918094277822132*^9, 3.918094413578566*^9, 3.920605795816787*^9, 
   3.920605871509095*^9, 3.92060601232843*^9, 3.920621468715996*^9, 
   3.92062152280473*^9, {3.921031147616919*^9, 3.921031165612219*^9}, 
   3.921031955151518*^9, 3.921032414157173*^9, 3.9210328876954*^9, 
   3.921033273486145*^9, 3.923635214037948*^9, 3.923725221267973*^9, 
   3.9237255359337053`*^9, 3.923729649798054*^9, 3.923964930808346*^9, 
   3.923974027016253*^9, 3.923980352933655*^9, 3.92407771584712*^9, 
   3.924077926425653*^9, 3.924081733994223*^9, 3.9241411156983*^9, 
   3.924145892417355*^9, 3.924156485595151*^9, 3.924156602053267*^9},
 CellLabel->"Out[69]=",ExpressionUUID->"bddecb9d-7257-4230-9c80-09da9a4db3c8"],

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
 CellChangeTimes->{3.9210319731465273`*^9, 3.921032414196052*^9, 
  3.921032887732526*^9, 3.921033273524803*^9, 3.923635214055861*^9, 
  3.92372522128602*^9, 3.923725535958493*^9, 3.923729649815392*^9, 
  3.923964930825119*^9, 3.923974027034404*^9, 3.923980352950696*^9, 
  3.9240777203748617`*^9, 3.924077926454447*^9, 3.924081734010372*^9, 
  3.924141115724258*^9, 3.924145892434168*^9, 3.9241564856119623`*^9, 
  3.9241566020694036`*^9},
 CellLabel->
  "During evaluation of \
In[68]:=",ExpressionUUID->"ba993d15-3deb-476a-82f4-7b12c197a74f"]
}, Open  ]],

Cell["\<\
Now if the full, integrated squared amplitude is real, we can replace the \
complex log-terms with their real parts.
This step also includes rewriting the u-term dLogarithm using that dLog(z, w) \
= -dLog(-w, -z) such that it will simplify
to be the same as the t-term dLogarithm.\
\>", "Text",
 CellChangeTimes->{{3.914483893642917*^9, 3.914483927793371*^9}, 
   3.915097860412076*^9, {3.9164958950308433`*^9, 
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
 InitializationCell->False,
 CellChangeTimes->{{3.914483933326947*^9, 3.914483985607267*^9}, {
  3.9144840339212027`*^9, 3.9144841391520357`*^9}, {3.914484854938463*^9, 
  3.914484866668542*^9}, {3.914485049311189*^9, 3.914485049713643*^9}, {
  3.915437063122219*^9, 3.9154370802047873`*^9}, {3.915439670076644*^9, 
  3.915439794516908*^9}, {3.916457586779192*^9, 3.916457601985408*^9}, {
  3.916465168527013*^9, 3.916465242711532*^9}, {3.91646544095215*^9, 
  3.916465562043861*^9}, {3.916495999605297*^9, 3.91649601216367*^9}},
 CellLabel->"In[71]:=",ExpressionUUID->"a8cd05b4-5749-429f-8a09-09100b2d1a24"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"2", " ", 
    RowBox[{"Re", "(", 
     RowBox[{
      TagBox[
       RowBox[{"KK", "(", "1116", ")"}],
       HoldForm], " ", 
      RowBox[{"dLog", "(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox[
            OverscriptBox["u", "~"], 
            RowBox[{"1", ",", "A"}]], "t"]}], "+", 
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
          SubsuperscriptBox["\[CapitalDelta]", 
           SubscriptBox[
            OverscriptBox["u", "~"], 
            RowBox[{"1", ",", "A"}]], "t"]}], "+", 
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
       RowBox[{"KK", "(", "1164", ")"}],
       HoldForm], " ", 
      RowBox[{"dLog", "(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox[
           OverscriptBox["u", "~"], 
           RowBox[{"1", ",", "A"}]], "u"], "+", 
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
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox[
           OverscriptBox["u", "~"], 
           RowBox[{"1", ",", "A"}]], "u"], "+", 
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
    TagBox[
     RowBox[{"KK", "(", "1105", ")"}],
     HoldForm], " ", "p"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849088591772*^9, 3.917849103908987*^9}, 
   3.917849207023387*^9, 3.917849452827918*^9, 3.917934595751986*^9, 
   3.918017555605608*^9, 3.918034070565223*^9, 3.918091831007972*^9, 
   3.91809213653832*^9, 3.918092178802136*^9, 3.918094152860971*^9, 
   3.918094277928437*^9, 3.918094413680071*^9, 3.920605871597693*^9, 
   3.920606012402699*^9, 3.920621468789795*^9, 3.920621522881996*^9, 
   3.921031973216289*^9, 3.921032414253124*^9, 3.921032887768873*^9, 
   3.921033273567071*^9, 3.923635214109558*^9, 3.9237252213448157`*^9, 
   3.92372553600181*^9, 3.923729649847959*^9, 3.923964930858558*^9, 
   3.9239740270718946`*^9, 3.923980352971683*^9, 3.924077720437025*^9, 
   3.924077926514141*^9, 3.924081734085677*^9, 3.9241411157661657`*^9, 
   3.924145892456511*^9, 3.924156485629889*^9, 3.924156602086808*^9},
 CellLabel->"Out[71]=",ExpressionUUID->"31713b7d-bcf6-4e5e-b4bb-059d0394c0d7"]
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
 InitializationCell->False,
 CellChangeTimes->{{3.9150358080527487`*^9, 3.915035896812783*^9}, {
  3.915036382190834*^9, 3.915036392317747*^9}},
 CellLabel->"In[72]:=",ExpressionUUID->"cfcb6d40-48a0-4a93-b161-1b5e167c7546"],

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
       RowBox[{"MEW", "[", "i", "]"}], "2"], "+", 
      SuperscriptBox[
       RowBox[{"MEW", "[", "j", "]"}], "2"], "-", "s", "-", 
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
       RowBox[{"MEW", "[", "_", "]"}], " ", "\[Element]", " ", 
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
 InitializationCell->False,
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
   3.916465771051126*^9}, 3.916465804487742*^9, {3.920605864476585*^9, 
   3.920605864479579*^9}},
 CellLabel->"In[74]:=",ExpressionUUID->"cf05098a-c654-4851-9767-0d7f27e0f162"],

Cell["\<\
Now  we  can  compute  the  total  cross  section  and write it to \
\[OpenCurlyDoubleQuote]results/LO/xsec.m\[CloseCurlyDoubleQuote].\
\>", "Text",
 CellChangeTimes->{{3.914484188373827*^9, 3.914484217035375*^9}, {
   3.9150983857175503`*^9, 3.915098388004359*^9}, 3.9153414282784758`*^9, {
   3.916495814504194*^9, 3.916495820050031*^9}, {3.916495856824998*^9, 
   3.916495860644672*^9}},ExpressionUUID->"6477fda9-da4f-4eed-bd85-\
8b91789df1b9"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"XSecPrefactor", " ", "=", " ", 
   RowBox[{
    RowBox[{
     FractionBox[
      RowBox[{"CommonPrefactor", " ", "p", " ", 
       RowBox[{"Sqrt", "[", "s", "]"}]}], 
      RowBox[{"64", "\[Pi]", " ", 
       SuperscriptBox["CA", "2"], 
       SuperscriptBox["s", "2"]}]], 
     RowBox[{"IdenticalPartFactor", "[", 
      RowBox[{"i", ",", "j"}], "]"}]}], "/.", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       SuperscriptBox[
        RowBox[{"FeynCalc`IndexDelta", "[", 
         RowBox[{"a", ",", "b"}], "]"}], "p_"], "->", "CA"}], ",", 
      RowBox[{
       RowBox[{"SMP", "[", "\"\<g_W\>\"", "]"}], "->", 
       RowBox[{"Sqrt", "[", 
        RowBox[{"4", "\[Pi]", " ", "alphaW"}], "]"}]}]}], "}"}]}]}], 
  ";"}], "\n", 
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
           FractionBox[
            RowBox[{"ItotIntegrals", "[", "5", "]"}], 
            RowBox[{"p", " ", 
             RowBox[{"Sqrt", "[", "s", "]"}]}]], " ", "//", "\n", "\t", 
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
 InitializationCell->False,
 CellChangeTimes->{{3.914484227260388*^9, 3.914484241040538*^9}, {
   3.914484371319018*^9, 3.9144844019547167`*^9}, {3.914484543561909*^9, 
   3.914484544324559*^9}, 3.914484657861101*^9, {3.914484854948985*^9, 
   3.914484871848958*^9}, {3.914485115336622*^9, 3.914485115716895*^9}, 
   3.91451026857612*^9, {3.915088224264974*^9, 3.9150882498644137`*^9}, {
   3.915097979155436*^9, 3.91509798468182*^9}, 3.915341430996359*^9, {
   3.915469309206528*^9, 3.9154693427197237`*^9}, {3.916465806339134*^9, 
   3.916465894027197*^9}, {3.916465925592322*^9, 3.916465993540413*^9}, {
   3.916466025089882*^9, 3.91646608857436*^9}, {3.916466134887974*^9, 
   3.916466384810376*^9}, {3.9164962583681173`*^9, 3.9164962697026978`*^9}, {
   3.91762513825146*^9, 3.917625183284705*^9}, {3.9176860910247393`*^9, 
   3.9176860953578997`*^9}, {3.917686224669352*^9, 3.9176862287917643`*^9}, {
   3.917848009224709*^9, 3.917848021573044*^9}, 3.9178490669846783`*^9, 
   3.924156460538993*^9, 3.9241565703614264`*^9},
 CellLabel->"In[77]:=",ExpressionUUID->"cc067aff-7f1b-4d41-9980-5e2652cb2b8b"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SuperscriptBox["s", 
      RowBox[{"3", "/", "2"}]]}]], 
   SubsuperscriptBox["\[Alpha]", "W", "2"], " ", "p", " ", "\[Pi]", " ", 
   SuperscriptBox[
    RowBox[{"(", 
     FractionBox["1", "2"], ")"}], 
    TemplateBox[{
      RowBox[{"i", ",", "j"}]},
     "KroneckerDeltaSeq"]], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      FractionBox["1", "3"], " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "L"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "R"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "L"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "R"}]]},
          "Abs"], "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         SubsuperscriptBox["m", "i", "4"]}], "-", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"s", "-", 
           RowBox[{"2", " ", 
            SubsuperscriptBox["m", "j", "2"]}]}], ")"}], " ", 
         SubsuperscriptBox["m", "i", "2"]}], "-", 
        SubsuperscriptBox["m", "j", "4"], "+", 
        RowBox[{"2", " ", 
         SuperscriptBox["s", "2"]}], "-", 
        RowBox[{"s", " ", 
         SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}], "+", 
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
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "t"]}], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}]}], ")"}]}], ",", 
         RowBox[{
          FractionBox["1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"], "-", "s", "-", 
            RowBox[{"2", " ", 
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "t"]}], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}]}], ")"}]}]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          FractionBox[
           RowBox[{"2", " ", 
            SqrtBox["s"], " ", 
            SubscriptBox["m", "i"], " ", 
            SubscriptBox["m", "j"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["Z", 
                    RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                    RowBox[{"L", "L"}]], ")"}]},
                "Conjugate"], " ", 
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["Q", 
                    RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                    RowBox[{"L", "L"}]], ")"}]},
                "Conjugate"]}], "+", 
              RowBox[{
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["Z", 
                    RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                    RowBox[{"R", "R"}]], ")"}]},
                "Conjugate"], " ", 
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["Q", 
                    RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                    RowBox[{"R", "R"}]], ")"}]},
                "Conjugate"]}], "-", 
              RowBox[{
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["Z", 
                    RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                    RowBox[{"L", "R"}]], ")"}]},
                "Conjugate"], " ", 
               SubsuperscriptBox["Q", 
                RowBox[{
                 OverscriptBox["u", "~"], "A"}], 
                RowBox[{"L", "L"}]]}], "-", 
              RowBox[{
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["Z", 
                    RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                    RowBox[{"R", "L"}]], ")"}]},
                "Conjugate"], " ", 
               SubsuperscriptBox["Q", 
                RowBox[{
                 OverscriptBox["u", "~"], "A"}], 
                RowBox[{"R", "R"}]]}]}], ")"}]}], "p"]}], "+", 
         RowBox[{
          FractionBox["1", 
           RowBox[{"p", " ", 
            SqrtBox["s"]}]], 
          RowBox[{"2", " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", "i", "2"], "-", 
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "t"]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "t"], "-", 
             SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Z", 
                   RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                   RowBox[{"L", "R"}]], ")"}]},
               "Conjugate"], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                   RowBox[{"L", "L"}]], ")"}]},
               "Conjugate"]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Z", 
                   RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                   RowBox[{"R", "L"}]], ")"}]},
               "Conjugate"], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"]}], "-", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Z", 
                   RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                   RowBox[{"L", "L"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", 
               RowBox[{
                OverscriptBox["u", "~"], "A"}], 
               RowBox[{"L", "L"}]]}], "-", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Z", 
                   RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", 
               RowBox[{
                OverscriptBox["u", "~"], "A"}], 
               RowBox[{"R", "R"}]]}]}], ")"}]}]}], "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"2", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 SubsuperscriptBox["m", "j", "2"], "-", 
                 SubsuperscriptBox["\[CapitalDelta]", 
                  SubscriptBox[
                   OverscriptBox["u", "~"], 
                   RowBox[{"1", ",", "A"}]], "t"]}], ")"}], " ", 
               SubsuperscriptBox["m", "i", "2"]}], "+", 
              RowBox[{
               SubsuperscriptBox["\[CapitalDelta]", 
                SubscriptBox[
                 OverscriptBox["u", "~"], 
                 RowBox[{"1", ",", "A"}]], "t"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  SubsuperscriptBox["m", "j", "2"]}], "+", "s", "+", 
                 SubsuperscriptBox["\[CapitalDelta]", 
                  SubscriptBox[
                   OverscriptBox["u", "~"], 
                   RowBox[{"1", ",", "A"}]], "t"]}], ")"}]}]}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["Q", 
                    RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                    RowBox[{"R", "L"}]], ")"}]},
                "Conjugate"], " ", 
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["Q", 
                    RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                    RowBox[{"L", "R"}]], ")"}]},
                "Conjugate"]}], "+", 
              RowBox[{
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["Q", 
                    RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                    RowBox[{"L", "R"}]], ")"}]},
                "Conjugate"], " ", 
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["Q", 
                    RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                    RowBox[{"R", "L"}]], ")"}]},
                "Conjugate"]}], "+", 
              RowBox[{
               SubsuperscriptBox["Q", 
                RowBox[{
                 OverscriptBox["u", "~"], "A"}], 
                RowBox[{"R", "L"}]], " ", 
               SubsuperscriptBox["Q", 
                RowBox[{
                 OverscriptBox["u", "~"], "B"}], 
                RowBox[{"L", "R"}]]}], "+", 
              RowBox[{
               SubsuperscriptBox["Q", 
                RowBox[{
                 OverscriptBox["u", "~"], "A"}], 
                RowBox[{"L", "R"}]], " ", 
               SubsuperscriptBox["Q", 
                RowBox[{
                 OverscriptBox["u", "~"], "B"}], 
                RowBox[{"R", "L"}]]}]}], ")"}]}], ")"}], "/", 
          RowBox[{"(", 
           RowBox[{"p", " ", 
            SqrtBox["s"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", 
               SubsuperscriptBox["m", "i", "2"]}], "-", 
              SubsuperscriptBox["m", "j", "2"], "+", "s", "+", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["\[CapitalDelta]", 
                   SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
                    RowBox[{"1", ",", "B"}]], "t"], ")"}]},
               "Conjugate"], "+", 
              SubsuperscriptBox["\[CapitalDelta]", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "t"]}], ")"}]}], ")"}]}], "+", 
         RowBox[{
          FractionBox["1", 
           RowBox[{"p", " ", 
            SqrtBox["s"], " ", 
            RowBox[{"(", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["\[CapitalDelta]", 
                   SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
                    RowBox[{"1", ",", "B"}]], "t"], ")"}]},
               "Conjugate"], "-", 
              SubsuperscriptBox["\[CapitalDelta]", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "t"]}], ")"}]}]], 
          RowBox[{"2", " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", "i", "2"], "-", 
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "t"]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "t"], "-", 
             SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                   RowBox[{"L", "L"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", 
               RowBox[{
                OverscriptBox["u", "~"], "A"}], 
               RowBox[{"L", "L"}]]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                   RowBox[{"L", "R"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", 
               RowBox[{
                OverscriptBox["u", "~"], "A"}], 
               RowBox[{"L", "R"}]]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                   RowBox[{"R", "L"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", 
               RowBox[{
                OverscriptBox["u", "~"], "A"}], 
               RowBox[{"R", "L"}]]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", 
               RowBox[{
                OverscriptBox["u", "~"], "A"}], 
               RowBox[{"R", "R"}]]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                   RowBox[{"L", "L"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", 
               RowBox[{
                OverscriptBox["u", "~"], "B"}], 
               RowBox[{"L", "L"}]]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                   RowBox[{"L", "R"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", 
               RowBox[{
                OverscriptBox["u", "~"], "B"}], 
               RowBox[{"L", "R"}]]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                   RowBox[{"R", "L"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", 
               RowBox[{
                OverscriptBox["u", "~"], "B"}], 
               RowBox[{"R", "L"}]]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"], " ", 
              SubsuperscriptBox["Q", 
               RowBox[{
                OverscriptBox["u", "~"], "B"}], 
               RowBox[{"R", "R"}]]}]}], ")"}]}]}], "+", 
         FractionBox[
          RowBox[{"2", " ", 
           SqrtBox["s"], " ", 
           SubscriptBox["m", "i"], " ", 
           SubscriptBox["m", "j"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                   RowBox[{"L", "L"}]], ")"}]},
               "Conjugate"], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                   RowBox[{"L", "L"}]], ")"}]},
               "Conjugate"]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"], " ", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", 
                   RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"]}], "+", 
             RowBox[{
              SubsuperscriptBox["Q", 
               RowBox[{
                OverscriptBox["u", "~"], "A"}], 
               RowBox[{"L", "L"}]], " ", 
              SubsuperscriptBox["Q", 
               RowBox[{
                OverscriptBox["u", "~"], "B"}], 
               RowBox[{"L", "L"}]]}], "+", 
             RowBox[{
              SubsuperscriptBox["Q", 
               RowBox[{
                OverscriptBox["u", "~"], "A"}], 
               RowBox[{"R", "R"}]], " ", 
              SubsuperscriptBox["Q", 
               RowBox[{
                OverscriptBox["u", "~"], "B"}], 
               RowBox[{"R", "R"}]]}]}], ")"}]}], 
          RowBox[{"p", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "i", "2"]}], "-", 
             SubsuperscriptBox["m", "j", "2"], "+", "s", "+", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["\[CapitalDelta]", 
                  SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
                   RowBox[{"1", ",", "B"}]], "t"], ")"}]},
              "Conjugate"], "+", 
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "t"]}], ")"}]}]]}], ")"}]}], ")"}], 
     "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        SubsuperscriptBox["m", "i", "2"], "+", 
        SubsuperscriptBox["m", "j", "2"], "+", "s", "-", 
        RowBox[{"2", " ", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox[
           OverscriptBox["u", "~"], 
           RowBox[{"1", ",", "A"}]], "t"]}]}], ")"}]}], "+", 
     RowBox[{"2", " ", "s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         SubsuperscriptBox["m", "i", "2"]}], "-", 
        SubsuperscriptBox["m", "j", "2"], "-", "s", "+", 
        RowBox[{"2", " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
               RowBox[{"1", ",", "A"}]], "t"], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         SubsuperscriptBox["m", "i", "2"]}], "-", 
        SubsuperscriptBox["m", "j", "2"], "-", "s", "+", 
        RowBox[{"2", " ", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox[
           OverscriptBox["u", "~"], 
           RowBox[{"1", ",", "A"}]], "t"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        SubsuperscriptBox["m", "i", "2"], "+", 
        SubsuperscriptBox["m", "j", "2"], "+", "s", "-", 
        RowBox[{"2", " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
               RowBox[{"1", ",", "A"}]], "t"], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "R"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", 
           RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
           RowBox[{"L", "R"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{"(", 
       RowBox[{
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["Q", 
             RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
             RowBox[{"R", "L"}]], ")"}]},
         "Conjugate"], "+", 
        SubsuperscriptBox["Q", 
         RowBox[{
          OverscriptBox["u", "~"], "B"}], 
         RowBox[{"L", "R"}]]}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", 
           RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
           RowBox[{"R", "L"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{"(", 
       RowBox[{
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["Q", 
             RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
             RowBox[{"L", "R"}]], ")"}]},
         "Conjugate"], "+", 
        SubsuperscriptBox["Q", 
         RowBox[{
          OverscriptBox["u", "~"], "B"}], 
         RowBox[{"R", "L"}]]}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "L"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "R"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"R", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849089140643*^9, 3.917849104439649*^9}, 
   3.917849207552886*^9, 3.917849453346538*^9, 3.917934596303325*^9, 
   3.9180175561585493`*^9, 3.918034071095357*^9, 3.918091831569539*^9, 
   3.918092137094125*^9, 3.918092179340008*^9, 3.918094153440708*^9, 
   3.918094278459939*^9, 3.918094414217546*^9, 3.920605872254586*^9, 
   3.920606012928896*^9, 3.920621469324795*^9, 3.920621523410701*^9, 
   3.921031973836546*^9, 3.921032414822313*^9, 3.921032888361304*^9, 
   3.921033274151608*^9, 3.923635214698309*^9, 3.923725221916939*^9, 
   3.923725536666092*^9, 3.923729650380391*^9, 3.923964931425054*^9, 
   3.923974027607416*^9, 3.923980353497764*^9, 3.924077720985575*^9, 
   3.924077927111807*^9, 3.924081734723735*^9, 3.924141116320402*^9, 
   3.9241458929728727`*^9, 3.924156486101632*^9, 3.924156602559222*^9},
 CellLabel->"Out[78]=",ExpressionUUID->"e499dcd6-6585-46ed-a630-4e7185f27600"]
}, Open  ]],

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
                  RowBox[{"MEW", "[", "i", "]"}], "^", "2"}], "+", 
                 RowBox[{
                  RowBox[{"MEW", "[", "j", "]"}], "^", "2"}]}], ")"}]}], "-", 
              
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"MEW", "[", "i", "]"}], "^", "2"}], "-", 
                 RowBox[{
                  RowBox[{"MEW", "[", "j", "]"}], "^", "2"}]}], ")"}], "^", 
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
 InitializationCell->False,
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
   3.916467296839998*^9}, {3.916981257117246*^9, 3.916981257888476*^9}, {
   3.9176866195125027`*^9, 3.917686624053633*^9}, {3.920605864496073*^9, 
   3.920605864505148*^9}},
 CellLabel->"In[80]:=",ExpressionUUID->"119efc26-3621-4842-a9da-e214aeb673c1"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SuperscriptBox["s", 
      RowBox[{"3", "/", "2"}]]}]], 
   SubsuperscriptBox["\[Alpha]", "W", "2"], " ", "p", " ", "\[Pi]", " ", 
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
       RowBox[{
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "L"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "R"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "L"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "R"}]]},
          "Abs"], "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         SubsuperscriptBox["m", "i", "4"]}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"2", " ", 
            SubsuperscriptBox["m", "j", "2"]}], "+", "s"}], ")"}], " ", 
         SubsuperscriptBox["m", "i", "2"]}], "+", 
        FractionBox[
         RowBox[{"8", " ", 
          SuperscriptBox["p", "2"], " ", "s"}], "3"], "+", 
        RowBox[{
         SubsuperscriptBox["m", "j", "2"], " ", 
         RowBox[{"(", 
          RowBox[{"s", "-", 
           SubsuperscriptBox["m", "j", "2"]}], ")"}]}]}], ")"}]}], "+", 
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
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "t"]}], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}]}], ")"}]}], ",", 
         RowBox[{
          FractionBox["1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"], "-", "s", "-", 
            RowBox[{"2", " ", 
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "t"]}], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}]}], ")"}]}]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         FractionBox[
          RowBox[{"4", " ", 
           SqrtBox["s"], " ", 
           SubscriptBox["m", "i"], " ", 
           SubscriptBox["m", "j"], " ", 
           RowBox[{"Re", "(", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{"0", "\[InvisibleApplication]", 
                 RowBox[{"(", 
                  RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
               "\[InvisibleApplication]", 
               RowBox[{"(", 
                RowBox[{"A", ",", "L", ",", "L"}], ")"}]}], " ", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"0", "\[InvisibleApplication]", 
                 RowBox[{"(", 
                  RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
               "\[InvisibleApplication]", 
               RowBox[{"(", 
                RowBox[{"B", ",", "L", ",", "L"}], ")"}]}]}], "+", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{"0", "\[InvisibleApplication]", 
                 RowBox[{"(", 
                  RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
               "\[InvisibleApplication]", 
               RowBox[{"(", 
                RowBox[{"A", ",", "R", ",", "R"}], ")"}]}], " ", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"0", "\[InvisibleApplication]", 
                 RowBox[{"(", 
                  RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
               "\[InvisibleApplication]", 
               RowBox[{"(", 
                RowBox[{"B", ",", "R", ",", "R"}], ")"}]}]}]}], ")"}]}], 
          RowBox[{"p", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "i", "2"]}], "-", 
             SubsuperscriptBox["m", "j", "2"], "+", "s", "+", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["\[CapitalDelta]", 
                  SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
                   RowBox[{"1", ",", "B"}]], "t"], ")"}]},
              "Conjugate"], "+", 
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "t"]}], ")"}]}]], "+", 
         RowBox[{
          FractionBox["1", 
           RowBox[{"p", " ", 
            SqrtBox["s"], " ", 
            RowBox[{"(", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["\[CapitalDelta]", 
                   SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
                    RowBox[{"1", ",", "B"}]], "t"], ")"}]},
               "Conjugate"], "-", 
              SubsuperscriptBox["\[CapitalDelta]", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "t"]}], ")"}]}]], 
          RowBox[{"4", " ", 
           RowBox[{"Re", "(", 
            RowBox[{
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  RowBox[{
                    RowBox[{"(", 
                    RowBox[{"0", "\[InvisibleApplication]", 
                    RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
                    "\[InvisibleApplication]", 
                    RowBox[{"(", 
                    RowBox[{"B", ",", "L", ",", "L"}], ")"}]}], ")"}]},
               "Conjugate"], " ", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"0", "\[InvisibleApplication]", 
                 RowBox[{"(", 
                  RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
               "\[InvisibleApplication]", 
               RowBox[{"(", 
                RowBox[{"A", ",", "L", ",", "L"}], ")"}]}]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  RowBox[{
                    RowBox[{"(", 
                    RowBox[{"0", "\[InvisibleApplication]", 
                    RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
                    "\[InvisibleApplication]", 
                    RowBox[{"(", 
                    RowBox[{"B", ",", "L", ",", "R"}], ")"}]}], ")"}]},
               "Conjugate"], " ", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"0", "\[InvisibleApplication]", 
                 RowBox[{"(", 
                  RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
               "\[InvisibleApplication]", 
               RowBox[{"(", 
                RowBox[{"A", ",", "L", ",", "R"}], ")"}]}]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  RowBox[{
                    RowBox[{"(", 
                    RowBox[{"0", "\[InvisibleApplication]", 
                    RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
                    "\[InvisibleApplication]", 
                    RowBox[{"(", 
                    RowBox[{"B", ",", "R", ",", "L"}], ")"}]}], ")"}]},
               "Conjugate"], " ", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"0", "\[InvisibleApplication]", 
                 RowBox[{"(", 
                  RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
               "\[InvisibleApplication]", 
               RowBox[{"(", 
                RowBox[{"A", ",", "R", ",", "L"}], ")"}]}]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  RowBox[{
                    RowBox[{"(", 
                    RowBox[{"0", "\[InvisibleApplication]", 
                    RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
                    "\[InvisibleApplication]", 
                    RowBox[{"(", 
                    RowBox[{"B", ",", "R", ",", "R"}], ")"}]}], ")"}]},
               "Conjugate"], " ", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"0", "\[InvisibleApplication]", 
                 RowBox[{"(", 
                  RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
               "\[InvisibleApplication]", 
               RowBox[{"(", 
                RowBox[{"A", ",", "R", ",", "R"}], ")"}]}]}]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", "i", "2"], "-", 
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "t"]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "t"], "-", 
             SubsuperscriptBox["m", "j", "2"]}], ")"}]}]}], "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"4", " ", 
            RowBox[{"Re", "(", 
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"0", "\[InvisibleApplication]", 
                  RowBox[{"(", 
                   RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
                "\[InvisibleApplication]", 
                RowBox[{"(", 
                 RowBox[{"A", ",", "R", ",", "L"}], ")"}]}], " ", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"0", "\[InvisibleApplication]", 
                  RowBox[{"(", 
                   RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
                "\[InvisibleApplication]", 
                RowBox[{"(", 
                 RowBox[{"B", ",", "L", ",", "R"}], ")"}]}]}], "+", 
              RowBox[{
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"0", "\[InvisibleApplication]", 
                  RowBox[{"(", 
                   RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
                "\[InvisibleApplication]", 
                RowBox[{"(", 
                 RowBox[{"A", ",", "L", ",", "R"}], ")"}]}], " ", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"0", "\[InvisibleApplication]", 
                  RowBox[{"(", 
                   RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
                "\[InvisibleApplication]", 
                RowBox[{"(", 
                 RowBox[{"B", ",", "R", ",", "L"}], ")"}]}]}]}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 SubsuperscriptBox["m", "j", "2"], "-", 
                 SubsuperscriptBox["\[CapitalDelta]", 
                  SubscriptBox[
                   OverscriptBox["u", "~"], 
                   RowBox[{"1", ",", "A"}]], "t"]}], ")"}], " ", 
               SubsuperscriptBox["m", "i", "2"]}], "+", 
              RowBox[{
               SubsuperscriptBox["\[CapitalDelta]", 
                SubscriptBox[
                 OverscriptBox["u", "~"], 
                 RowBox[{"1", ",", "A"}]], "t"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  SubsuperscriptBox["m", "j", "2"]}], "+", "s", "+", 
                 SubsuperscriptBox["\[CapitalDelta]", 
                  SubscriptBox[
                   OverscriptBox["u", "~"], 
                   RowBox[{"1", ",", "A"}]], "t"]}], ")"}]}]}], ")"}]}], 
           ")"}], "/", 
          RowBox[{"(", 
           RowBox[{"p", " ", 
            SqrtBox["s"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", 
               SubsuperscriptBox["m", "i", "2"]}], "-", 
              SubsuperscriptBox["m", "j", "2"], "+", "s", "+", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["\[CapitalDelta]", 
                   SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
                    RowBox[{"1", ",", "B"}]], "t"], ")"}]},
               "Conjugate"], "+", 
              SubsuperscriptBox["\[CapitalDelta]", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "t"]}], ")"}]}], ")"}]}], "-", 
         RowBox[{
          FractionBox["1", "p"], "2", " ", 
          SqrtBox["s"], " ", 
          SubscriptBox["m", "i"], " ", 
          SubscriptBox["m", "j"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             TemplateBox[{
               RowBox[{"(", 
                 RowBox[{
                   RowBox[{"(", 
                    RowBox[{"0", "\[InvisibleApplication]", 
                    RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
                   "\[InvisibleApplication]", 
                   RowBox[{"(", 
                    RowBox[{"A", ",", "L", ",", "L"}], ")"}]}], ")"}]},
              "Conjugate"], " ", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Z", 
                  RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                  RowBox[{"L", "L"}]], ")"}]},
              "Conjugate"]}], "+", 
            RowBox[{
             TemplateBox[{
               RowBox[{"(", 
                 RowBox[{
                   RowBox[{"(", 
                    RowBox[{"0", "\[InvisibleApplication]", 
                    RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
                   "\[InvisibleApplication]", 
                   RowBox[{"(", 
                    RowBox[{"A", ",", "R", ",", "R"}], ")"}]}], ")"}]},
              "Conjugate"], " ", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Z", 
                  RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                  RowBox[{"R", "R"}]], ")"}]},
              "Conjugate"]}], "-", 
            RowBox[{
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Z", 
                  RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                  RowBox[{"L", "R"}]], ")"}]},
              "Conjugate"], " ", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"0", "\[InvisibleApplication]", 
                RowBox[{"(", 
                 RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
              "\[InvisibleApplication]", 
              RowBox[{"(", 
               RowBox[{"A", ",", "L", ",", "L"}], ")"}]}]}], "-", 
            RowBox[{
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Z", 
                  RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                  RowBox[{"R", "L"}]], ")"}]},
              "Conjugate"], " ", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"0", "\[InvisibleApplication]", 
                RowBox[{"(", 
                 RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
              "\[InvisibleApplication]", 
              RowBox[{"(", 
               RowBox[{"A", ",", "R", ",", "R"}], ")"}]}]}]}], ")"}]}], "+", 
         RowBox[{
          FractionBox["1", 
           RowBox[{"p", " ", 
            SqrtBox["s"]}]], "2", " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", "i", "2"], "-", 
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox[
              OverscriptBox["u", "~"], 
              RowBox[{"1", ",", "A"}]], "t"]}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox[
              OverscriptBox["u", "~"], 
              RowBox[{"1", ",", "A"}]], "t"], "-", 
            SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             TemplateBox[{
               RowBox[{"(", 
                 RowBox[{
                   RowBox[{"(", 
                    RowBox[{"0", "\[InvisibleApplication]", 
                    RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
                   "\[InvisibleApplication]", 
                   RowBox[{"(", 
                    RowBox[{"A", ",", "L", ",", "L"}], ")"}]}], ")"}]},
              "Conjugate"], " ", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Z", 
                  RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                  RowBox[{"L", "R"}]], ")"}]},
              "Conjugate"]}], "+", 
            RowBox[{
             TemplateBox[{
               RowBox[{"(", 
                 RowBox[{
                   RowBox[{"(", 
                    RowBox[{"0", "\[InvisibleApplication]", 
                    RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
                   "\[InvisibleApplication]", 
                   RowBox[{"(", 
                    RowBox[{"A", ",", "R", ",", "R"}], ")"}]}], ")"}]},
              "Conjugate"], " ", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Z", 
                  RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                  RowBox[{"R", "L"}]], ")"}]},
              "Conjugate"]}], "-", 
            RowBox[{
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Z", 
                  RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                  RowBox[{"L", "L"}]], ")"}]},
              "Conjugate"], " ", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"0", "\[InvisibleApplication]", 
                RowBox[{"(", 
                 RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
              "\[InvisibleApplication]", 
              RowBox[{"(", 
               RowBox[{"A", ",", "L", ",", "L"}], ")"}]}]}], "-", 
            RowBox[{
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["Z", 
                  RowBox[{
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "i", "0"], 
                    SubsuperscriptBox[
                    OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                  RowBox[{"R", "R"}]], ")"}]},
              "Conjugate"], " ", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"0", "\[InvisibleApplication]", 
                RowBox[{"(", 
                 RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
              "\[InvisibleApplication]", 
              RowBox[{"(", 
               RowBox[{"A", ",", "R", ",", "R"}], ")"}]}]}]}], ")"}]}]}], 
        ")"}]}], ")"}], "+", 
     RowBox[{"4", " ", "s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]]}]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             RowBox[{
               RowBox[{"(", 
                 RowBox[{"0", "\[InvisibleApplication]", 
                   RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
               "\[InvisibleApplication]", 
               RowBox[{"(", 
                 RowBox[{"A", ",", "L", ",", "L"}], ")"}]}], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             RowBox[{
               RowBox[{"(", 
                 RowBox[{"0", "\[InvisibleApplication]", 
                   RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
               "\[InvisibleApplication]", 
               RowBox[{"(", 
                 RowBox[{"A", ",", "R", ",", "R"}], ")"}]}], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        SubsuperscriptBox["m", "i", "2"], "+", 
        SubsuperscriptBox["m", "j", "2"], "+", "s", "-", 
        RowBox[{"2", " ", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox[
           OverscriptBox["u", "~"], 
           RowBox[{"1", ",", "A"}]], "t"]}]}], ")"}]}], "-", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        SubsuperscriptBox["m", "i", "2"], "+", 
        SubsuperscriptBox["m", "j", "2"], "+", "s", "-", 
        RowBox[{"2", " ", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox[
           OverscriptBox["u", "~"], 
           RowBox[{"1", ",", "A"}]], "t"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"0", "\[InvisibleApplication]", 
            RowBox[{"(", 
             RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
          "\[InvisibleApplication]", 
          RowBox[{"(", 
           RowBox[{"A", ",", "L", ",", "L"}], ")"}]}]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"0", "\[InvisibleApplication]", 
            RowBox[{"(", 
             RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
          "\[InvisibleApplication]", 
          RowBox[{"(", 
           RowBox[{"A", ",", "R", ",", "R"}], ")"}]}]}]}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      TemplateBox[{
        RowBox[{"(", 
          RowBox[{
            RowBox[{"(", 
              RowBox[{"0", "\[InvisibleApplication]", 
                RowBox[{"(", 
                  RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
            "\[InvisibleApplication]", 
            RowBox[{"(", 
              RowBox[{"A", ",", "L", ",", "R"}], ")"}]}], ")"}]},
       "Conjugate"], " ", 
      RowBox[{"(", 
       RowBox[{
        TemplateBox[{
          RowBox[{"(", 
            RowBox[{
              RowBox[{"(", 
                RowBox[{"0", "\[InvisibleApplication]", 
                  RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
              "\[InvisibleApplication]", 
              RowBox[{"(", 
                RowBox[{"B", ",", "R", ",", "L"}], ")"}]}], ")"}]},
         "Conjugate"], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"0", "\[InvisibleApplication]", 
           RowBox[{"(", 
            RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
         "\[InvisibleApplication]", 
         RowBox[{"(", 
          RowBox[{"B", ",", "L", ",", "R"}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      TemplateBox[{
        RowBox[{"(", 
          RowBox[{
            RowBox[{"(", 
              RowBox[{"0", "\[InvisibleApplication]", 
                RowBox[{"(", 
                  RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
            "\[InvisibleApplication]", 
            RowBox[{"(", 
              RowBox[{"A", ",", "R", ",", "L"}], ")"}]}], ")"}]},
       "Conjugate"], " ", 
      RowBox[{"(", 
       RowBox[{
        TemplateBox[{
          RowBox[{"(", 
            RowBox[{
              RowBox[{"(", 
                RowBox[{"0", "\[InvisibleApplication]", 
                  RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
              "\[InvisibleApplication]", 
              RowBox[{"(", 
                RowBox[{"B", ",", "L", ",", "R"}], ")"}]}], ")"}]},
         "Conjugate"], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"0", "\[InvisibleApplication]", 
           RowBox[{"(", 
            RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
         "\[InvisibleApplication]", 
         RowBox[{"(", 
          RowBox[{"B", ",", "R", ",", "L"}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                RowBox[{
                  RowBox[{"(", 
                    RowBox[{"0", "\[InvisibleApplication]", 
                    RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
                  "\[InvisibleApplication]", 
                  RowBox[{"(", 
                    RowBox[{"B", ",", "L", ",", "L"}], ")"}]}], ")"}]},
             "Conjugate"], " ", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"0", "\[InvisibleApplication]", 
               RowBox[{"(", 
                RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
             "\[InvisibleApplication]", 
             RowBox[{"(", 
              RowBox[{"A", ",", "L", ",", "L"}], ")"}]}]}], "+", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                RowBox[{
                  RowBox[{"(", 
                    RowBox[{"0", "\[InvisibleApplication]", 
                    RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
                  "\[InvisibleApplication]", 
                  RowBox[{"(", 
                    RowBox[{"B", ",", "R", ",", "R"}], ")"}]}], ")"}]},
             "Conjugate"], " ", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"0", "\[InvisibleApplication]", 
               RowBox[{"(", 
                RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
             "\[InvisibleApplication]", 
             RowBox[{"(", 
              RowBox[{"A", ",", "R", ",", "R"}], ")"}]}]}]}], ")"}]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             RowBox[{
               RowBox[{"(", 
                 RowBox[{"0", "\[InvisibleApplication]", 
                   RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
               "\[InvisibleApplication]", 
               RowBox[{"(", 
                 RowBox[{"B", ",", "L", ",", "R"}], ")"}]}], ")"}]},
          "Conjugate"], " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"0", "\[InvisibleApplication]", 
            RowBox[{"(", 
             RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
          "\[InvisibleApplication]", 
          RowBox[{"(", 
           RowBox[{"A", ",", "L", ",", "R"}], ")"}]}]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             RowBox[{
               RowBox[{"(", 
                 RowBox[{"0", "\[InvisibleApplication]", 
                   RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
               "\[InvisibleApplication]", 
               RowBox[{"(", 
                 RowBox[{"B", ",", "R", ",", "L"}], ")"}]}], ")"}]},
          "Conjugate"], " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"0", "\[InvisibleApplication]", 
            RowBox[{"(", 
             RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
          "\[InvisibleApplication]", 
          RowBox[{"(", 
           RowBox[{"A", ",", "R", ",", "L"}], ")"}]}]}], "+", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{"0", "\[InvisibleApplication]", 
            RowBox[{"(", 
             RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
          "\[InvisibleApplication]", 
          RowBox[{"(", 
           RowBox[{"A", ",", "R", ",", "L"}], ")"}]}], " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"0", "\[InvisibleApplication]", 
            RowBox[{"(", 
             RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
          "\[InvisibleApplication]", 
          RowBox[{"(", 
           RowBox[{"B", ",", "L", ",", "R"}], ")"}]}]}], "+", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{"0", "\[InvisibleApplication]", 
            RowBox[{"(", 
             RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
          "\[InvisibleApplication]", 
          RowBox[{"(", 
           RowBox[{"A", ",", "L", ",", "R"}], ")"}]}], " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"0", "\[InvisibleApplication]", 
            RowBox[{"(", 
             RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
          "\[InvisibleApplication]", 
          RowBox[{"(", 
           RowBox[{"B", ",", "R", ",", "L"}], ")"}]}]}]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        SubsuperscriptBox["m", "i", "2"], "+", 
        SubsuperscriptBox["m", "j", "2"], "+", "s", "-", 
        RowBox[{"2", " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
               RowBox[{"1", ",", "A"}]], "t"], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{"0", "\[InvisibleApplication]", 
            RowBox[{"(", 
             RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
          "\[InvisibleApplication]", 
          RowBox[{"(", 
           RowBox[{"A", ",", "L", ",", "L"}], ")"}]}], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{"0", "\[InvisibleApplication]", 
            RowBox[{"(", 
             RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
          "\[InvisibleApplication]", 
          RowBox[{"(", 
           RowBox[{"A", ",", "R", ",", "R"}], ")"}]}], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]]}]}], ")"}]}], "-", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        SubsuperscriptBox["m", "i", "2"], "+", 
        SubsuperscriptBox["m", "j", "2"], "+", "s", "-", 
        RowBox[{"2", " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
               RowBox[{"1", ",", "A"}]], "t"], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             RowBox[{
               RowBox[{"(", 
                 RowBox[{"0", "\[InvisibleApplication]", 
                   RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
               "\[InvisibleApplication]", 
               RowBox[{"(", 
                 RowBox[{"A", ",", "L", ",", "L"}], ")"}]}], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             RowBox[{
               RowBox[{"(", 
                 RowBox[{"0", "\[InvisibleApplication]", 
                   RowBox[{"(", 
                    RowBox[{"3", ",", "1"}], ")"}]}], ")"}], 
               "\[InvisibleApplication]", 
               RowBox[{"(", 
                 RowBox[{"A", ",", "R", ",", "R"}], ")"}]}], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849089176304*^9, 3.917849104473507*^9}, 
   3.917849207588268*^9, 3.917849453380934*^9, 3.917934596356243*^9, 
   3.918017556197446*^9, 3.918034071137789*^9, 3.9180918316168222`*^9, 
   3.918092137129489*^9, 3.918092179378058*^9, 3.91809415348706*^9, 
   3.918094278495564*^9, 3.918094414252778*^9, 3.920605872314917*^9, 
   3.920606012970998*^9, 3.920621469370377*^9, 3.920621523447778*^9, 
   3.921031973903126*^9, 3.921032414893819*^9, 3.921032888442532*^9, 
   3.921033274222924*^9, 3.923635214777518*^9, 3.923725222133916*^9, 
   3.923725536733535*^9, 3.923729650501071*^9, 3.923964931534999*^9, 
   3.9239740277124043`*^9, 3.923980353612797*^9, 3.924077721062084*^9, 
   3.924077927214704*^9, 3.924081734804831*^9, 3.924141116386546*^9, 
   3.924145893050742*^9, 3.9241564861947002`*^9, 3.924156602651585*^9},
 CellLabel->"Out[80]=",ExpressionUUID->"600edc3f-c9f2-4fef-abf4-18bd0c2df77f"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"SquarkXSec", " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{"XSecPrefactor", " ", "*", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"TotXSec", "/", "XSecPrefactor"}], " ", "//.", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"Zij", "[", "\"\<NN\>\"", "]"}], "[", "__", "]"}], " ", 
             "->", " ", "0"}]}], " ", "//", "\n", "\t", 
           RowBox[{
            RowBox[{"ReplaceAll", "[", 
             RowBox[{"#", ",", " ", 
              RowBox[{
               RowBox[{"Re", "[", "arg_", "]"}], " ", "->", " ", 
               RowBox[{"R", " ", "arg"}]}]}], "]"}], "&"}]}], " ", "//", "\n",
           "\t", "Expand"}], " ", "//", "\n", "\t", "CollectEffCharges"}], 
        " ", "//", "\n", "\t", 
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
      ")"}]}], " ", "//", " ", "FRH"}], " ", "//", "\n", "\t", 
   RowBox[{
    RowBox[{"ReplaceAll", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{
       RowBox[{"R", " ", "coeff_"}], " ", "->", " ", 
       RowBox[{"Re", "[", "coeff", "]"}]}]}], "]"}], "&"}]}]}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.914746873197792*^9, 3.9147468939449778`*^9}, {
   3.91503660056435*^9, 3.915036603624197*^9}, {3.9150967768941097`*^9, 
   3.915096802688496*^9}, {3.915096847045466*^9, 3.915096925220744*^9}, {
   3.915096962097036*^9, 3.915096972642489*^9}, {3.915097031837044*^9, 
   3.9150970333905973`*^9}, {3.91509745908696*^9, 3.915097472801931*^9}, {
   3.915097506788953*^9, 3.915097587482009*^9}, {3.915111768186862*^9, 
   3.915111771741173*^9}, 3.915111812232143*^9, {3.915469130433546*^9, 
   3.91546913578074*^9}, 3.915469179500188*^9, {3.915469604349071*^9, 
   3.915469608055275*^9}, {3.916457694808525*^9, 3.9164578974010763`*^9}, {
   3.916466506869784*^9, 3.916466634071942*^9}, {3.916466728568258*^9, 
   3.91646677110816*^9}, {3.917686593899653*^9, 3.917686603783105*^9}, {
   3.917934637169525*^9, 3.917934726980419*^9}, 3.917935782886382*^9, 
   3.920621485477308*^9},
 CellLabel->"In[81]:=",ExpressionUUID->"0bc5fa96-2082-46ed-95ec-6a841ef74b66"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SuperscriptBox["s", 
      RowBox[{"3", "/", "2"}]], " ", 
     SubscriptBox["C", "A"]}]], "\[Pi]", " ", "p", " ", 
   SubsuperscriptBox["\[Alpha]", "W", "2"], " ", 
   SuperscriptBox[
    RowBox[{"(", 
     FractionBox["1", "2"], ")"}], 
    TemplateBox[{
      RowBox[{"i", ",", "j"}]},
     "KroneckerDeltaSeq"]], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"4", " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SqrtBox["s"], " ", 
          SubscriptBox["m", "i"], " ", 
          SubscriptBox["m", "j"], " ", 
          RowBox[{"Re", "(", 
           RowBox[{
            RowBox[{
             SubsuperscriptBox["Q", 
              RowBox[{
               OverscriptBox["u", "~"], "A"}], 
              RowBox[{"L", "L"}]], " ", 
             SubsuperscriptBox["Q", 
              RowBox[{
               OverscriptBox["u", "~"], "B"}], 
              RowBox[{"L", "L"}]]}], "+", 
            RowBox[{
             SubsuperscriptBox["Q", 
              RowBox[{
               OverscriptBox["u", "~"], "A"}], 
              RowBox[{"R", "R"}]], " ", 
             SubsuperscriptBox["Q", 
              RowBox[{
               OverscriptBox["u", "~"], "B"}], 
              RowBox[{"R", "R"}]]}]}], ")"}], " ", 
          RowBox[{"dLog", "(", 
           RowBox[{
            RowBox[{
             FractionBox["1", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"-", 
                RowBox[{"2", " ", 
                 SubsuperscriptBox["\[CapitalDelta]", 
                  SubscriptBox[
                   OverscriptBox["u", "~"], 
                   RowBox[{"1", ",", "A"}]], "t"]}]}], "+", 
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
                 SubsuperscriptBox["\[CapitalDelta]", 
                  SubscriptBox[
                   OverscriptBox["u", "~"], 
                   RowBox[{"1", ",", "A"}]], "t"]}]}], "+", 
               SubsuperscriptBox["m", "i", "2"], "+", 
               SubsuperscriptBox["m", "j", "2"], "-", 
               RowBox[{"2", " ", "p", " ", 
                SqrtBox["s"]}], "-", "s"}], ")"}]}]}], ")"}]}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{"p", " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox[
              OverscriptBox["u", "~"], 
              RowBox[{"1", ",", "A"}]], "t"], "+", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["\[CapitalDelta]", 
                 SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
                  RowBox[{"1", ",", "B"}]], "t"], ")"}]},
             "Conjugate"], "-", 
            SubsuperscriptBox["m", "i", "2"], "-", 
            SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}], ")"}]}], 
       ")"}]}], "+", 
     RowBox[{"2", " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           FractionBox["1", 
            RowBox[{"p", " ", 
             SqrtBox["s"], " ", 
             RowBox[{"(", 
              RowBox[{
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["\[CapitalDelta]", 
                    SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
                    RowBox[{"1", ",", "B"}]], "t"], ")"}]},
                "Conjugate"], "-", 
               SubsuperscriptBox["\[CapitalDelta]", 
                SubscriptBox[
                 OverscriptBox["u", "~"], 
                 RowBox[{"1", ",", "A"}]], "t"]}], ")"}]}]], 
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              SubsuperscriptBox["m", "i", "2"], "-", 
              SubsuperscriptBox["\[CapitalDelta]", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "t"]}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              SubsuperscriptBox["\[CapitalDelta]", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "t"], "-", 
              SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
            RowBox[{"dLog", "(", 
             RowBox[{
              RowBox[{
               FractionBox["1", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  RowBox[{"2", " ", 
                   SubsuperscriptBox["\[CapitalDelta]", 
                    SubscriptBox[
                    OverscriptBox["u", "~"], 
                    RowBox[{"1", ",", "A"}]], "t"]}]}], "+", 
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
                   SubsuperscriptBox["\[CapitalDelta]", 
                    SubscriptBox[
                    OverscriptBox["u", "~"], 
                    RowBox[{"1", ",", "A"}]], "t"]}]}], "+", 
                 SubsuperscriptBox["m", "i", "2"], "+", 
                 SubsuperscriptBox["m", "j", "2"], "-", 
                 RowBox[{"2", " ", "p", " ", 
                  SqrtBox["s"]}], "-", "s"}], ")"}]}]}], ")"}]}]}], ")"}]}], 
        "+", "2"}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "L"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "R"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"R", "L"}]]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                SubsuperscriptBox["m", "i", "2"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  SubsuperscriptBox["m", "j", "2"], "-", 
                  SubsuperscriptBox["\[CapitalDelta]", 
                   SubscriptBox[
                    OverscriptBox["u", "~"], 
                    RowBox[{"1", ",", "A"}]], "t"]}], ")"}]}], "+", 
               RowBox[{
                SubsuperscriptBox["\[CapitalDelta]", 
                 SubscriptBox[
                  OverscriptBox["u", "~"], 
                  RowBox[{"1", ",", "A"}]], "t"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  SubsuperscriptBox["\[CapitalDelta]", 
                   SubscriptBox[
                    OverscriptBox["u", "~"], 
                    RowBox[{"1", ",", "A"}]], "t"], "-", 
                  SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}]}], 
              ")"}], " ", 
             RowBox[{"dLog", "(", 
              RowBox[{
               RowBox[{
                FractionBox["1", "2"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"-", 
                   RowBox[{"2", " ", 
                    SubsuperscriptBox["\[CapitalDelta]", 
                    SubscriptBox[
                    OverscriptBox["u", "~"], 
                    RowBox[{"1", ",", "A"}]], "t"]}]}], "+", 
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
                    SubsuperscriptBox["\[CapitalDelta]", 
                    SubscriptBox[
                    OverscriptBox["u", "~"], 
                    RowBox[{"1", ",", "A"}]], "t"]}]}], "+", 
                  SubsuperscriptBox["m", "i", "2"], "+", 
                  SubsuperscriptBox["m", "j", "2"], "-", 
                  RowBox[{"2", " ", "p", " ", 
                   SqrtBox["s"]}], "-", "s"}], ")"}]}]}], ")"}]}], ")"}], "/", 
           RowBox[{"(", 
            RowBox[{"p", " ", 
             SqrtBox["s"], " ", 
             RowBox[{"(", 
              RowBox[{
               SubsuperscriptBox["\[CapitalDelta]", 
                SubscriptBox[
                 OverscriptBox["u", "~"], 
                 RowBox[{"1", ",", "A"}]], "t"], "+", 
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["\[CapitalDelta]", 
                    SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
                    RowBox[{"1", ",", "B"}]], "t"], ")"}]},
                "Conjugate"], "-", 
               SubsuperscriptBox["m", "i", "2"], "-", 
               SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}], ")"}]}],
           ")"}]}], "+", "2"}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.917849104525088*^9, 3.917849207640424*^9, 3.917849453433605*^9, 
   3.917934596408975*^9, {3.91793468406785*^9, 3.917934713659691*^9}, 
   3.917934746702561*^9, 3.918017556344748*^9, 3.918034071291041*^9, 
   3.9180918317656393`*^9, 3.918092137278235*^9, 3.918092179524929*^9, 
   3.9180941536382923`*^9, 3.918094278643601*^9, 3.9180944144007187`*^9, 
   3.9206058723596277`*^9, 3.920606013124065*^9, 3.92062146956802*^9, 
   3.920621523598612*^9, 3.921031974061301*^9, 3.921032415058387*^9, 
   3.921032888608958*^9, 3.92103327438306*^9, 3.923635214943788*^9, 
   3.923725222301158*^9, 3.923725536896707*^9, 3.923729650662714*^9, 
   3.923964931701078*^9, 3.9239740278799*^9, 3.923980353773177*^9, 
   3.92407772123072*^9, 3.924077927379622*^9, 3.924081734967787*^9, 
   3.924141116550667*^9, 3.924145893243655*^9, 3.924156486360857*^9, 
   3.924156602817534*^9},
 CellLabel->"Out[81]=",ExpressionUUID->"68ab55bf-7516-4a4b-bc62-106c95669ea1"]
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
       RowBox[{
        RowBox[{"Zij", "[", "\"\<NN\>\"", "]"}], "[", "_", "]"}], "^", "2"}], 
      " ", "->", " ", "0"}], ",", " ", 
     RowBox[{
      RowBox[{"Abs", "[", 
       RowBox[{
        RowBox[{"Zij", "[", "\"\<NN\>\"", "]"}], "[", "_", "]"}], "]"}], " ", 
      "->", " ", "0"}], ",", " ", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"Zij", "[", "\"\<NN\>\"", "]"}], "[", "_", "]"}], 
        "\[Conjugate]"}], "^", "2"}], " ", "->", " ", "0"}], ",", " ", 
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
  RowBox[{
   RowBox[{
    RowBox[{"XSecPrefactor", " ", "*", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"%", " ", "//", "\n", "\t", 
           RowBox[{
            RowBox[{"ReplaceAll", "[", 
             RowBox[{"#", ",", " ", 
              RowBox[{
               RowBox[{"Re", "[", "arg_", "]"}], " ", "->", " ", 
               RowBox[{"R", " ", "arg"}]}]}], "]"}], "&"}]}], " ", "//", "\n",
           "\t", "Expand"}], " ", "//", "\n", "\t", "CollectEffCharges"}], 
        " ", "//", "\n", "\t", 
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
      ")"}]}], " ", "//", " ", "FRH"}], " ", "//", "\n", "\t", 
   RowBox[{
    RowBox[{"ReplaceAll", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{
       RowBox[{"R", " ", "coeff_"}], " ", "->", " ", 
       RowBox[{"Re", "[", "coeff", "]"}]}]}], "]"}], "&"}]}]}]}], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.914746916474818*^9, 3.914746993910339*^9}, {
   3.914747150386434*^9, 3.914747296680312*^9}, {3.91474734559478*^9, 
   3.914747404170086*^9}, {3.915097189384449*^9, 3.915097216575899*^9}, {
   3.9151113380826*^9, 3.915111348164782*^9}, {3.915192300819622*^9, 
   3.915192305413743*^9}, {3.915469185529615*^9, 3.915469214119226*^9}, {
   3.915469650483439*^9, 3.915469692923979*^9}, {3.916457924892618*^9, 
   3.916457926667034*^9}, {3.916466625456874*^9, 3.916466627190196*^9}, 
   3.916466775671522*^9, {3.917686532100993*^9, 3.917686546868423*^9}, {
   3.917935794183327*^9, 3.9179358110333853`*^9}, {3.917935866164417*^9, 
   3.917935876444417*^9}, {3.920621485486478*^9, 3.920621485491724*^9}},
 CellLabel->"In[82]:=",ExpressionUUID->"32a9a206-aabb-41a4-9652-02a7dc12aae2"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SubscriptBox["C", "A"], " ", 
     SuperscriptBox["s", 
      RowBox[{"3", "/", "2"}]]}]], 
   SubsuperscriptBox["\[Alpha]", "W", "2"], " ", "p", " ", "\[Pi]", " ", 
   SuperscriptBox[
    RowBox[{"(", 
     FractionBox["1", "2"], ")"}], 
    TemplateBox[{
      RowBox[{"i", ",", "j"}]},
     "KroneckerDeltaSeq"]], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      FractionBox["1", "3"], " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "L"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "R"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "L"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "R"}]]},
          "Abs"], "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         SubsuperscriptBox["m", "i", "4"]}], "-", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"s", "-", 
           RowBox[{"2", " ", 
            SubsuperscriptBox["m", "j", "2"]}]}], ")"}], " ", 
         SubsuperscriptBox["m", "i", "2"]}], "-", 
        SubsuperscriptBox["m", "j", "4"], "+", 
        RowBox[{"2", " ", 
         SuperscriptBox["s", "2"]}], "-", 
        RowBox[{"s", " ", 
         SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}], "+", 
     RowBox[{"4", " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SqrtBox["s"], " ", 
          RowBox[{"dLog", "(", 
           RowBox[{
            RowBox[{
             FractionBox["1", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               SubsuperscriptBox["m", "i", "2"], "+", 
               SubsuperscriptBox["m", "j", "2"], "-", "s", "-", 
               RowBox[{"2", " ", 
                SubsuperscriptBox["\[CapitalDelta]", 
                 SubscriptBox[
                  OverscriptBox["u", "~"], 
                  RowBox[{"1", ",", "A"}]], "t"]}], "+", 
               RowBox[{"2", " ", "p", " ", 
                SqrtBox["s"]}]}], ")"}]}], ",", 
            RowBox[{
             FractionBox["1", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               SubsuperscriptBox["m", "i", "2"], "+", 
               SubsuperscriptBox["m", "j", "2"], "-", "s", "-", 
               RowBox[{"2", " ", 
                SubsuperscriptBox["\[CapitalDelta]", 
                 SubscriptBox[
                  OverscriptBox["u", "~"], 
                  RowBox[{"1", ",", "A"}]], "t"]}], "-", 
               RowBox[{"2", " ", "p", " ", 
                SqrtBox["s"]}]}], ")"}]}]}], ")"}], " ", 
          SubscriptBox["m", "i"], " ", 
          SubscriptBox["m", "j"], " ", 
          RowBox[{"Re", "(", 
           RowBox[{
            RowBox[{
             SubsuperscriptBox["Q", 
              RowBox[{
               OverscriptBox["u", "~"], "A"}], 
              RowBox[{"L", "L"}]], " ", 
             SubsuperscriptBox["Q", 
              RowBox[{
               OverscriptBox["u", "~"], "B"}], 
              RowBox[{"L", "L"}]]}], "+", 
            RowBox[{
             SubsuperscriptBox["Q", 
              RowBox[{
               OverscriptBox["u", "~"], "A"}], 
              RowBox[{"R", "R"}]], " ", 
             SubsuperscriptBox["Q", 
              RowBox[{
               OverscriptBox["u", "~"], "B"}], 
              RowBox[{"R", "R"}]]}]}], ")"}]}], ")"}], "/", 
        RowBox[{"(", 
         RowBox[{"p", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             SubsuperscriptBox["m", "i", "2"]}], "-", 
            SubsuperscriptBox["m", "j", "2"], "+", "s", "+", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["\[CapitalDelta]", 
                 SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
                  RowBox[{"1", ",", "B"}]], "t"], ")"}]},
             "Conjugate"], "+", 
            SubsuperscriptBox["\[CapitalDelta]", 
             SubscriptBox[
              OverscriptBox["u", "~"], 
              RowBox[{"1", ",", "A"}]], "t"]}], ")"}]}], ")"}]}], ")"}]}], 
     "+", 
     RowBox[{"4", " ", "s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]]}]}], ")"}]}], "-", 
     RowBox[{"2", " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        FractionBox["1", "p"], 
        SqrtBox["s"], " ", 
        RowBox[{"dLog", "(", 
         RowBox[{
          RowBox[{
           FractionBox["1", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", "i", "2"], "+", 
             SubsuperscriptBox["m", "j", "2"], "-", "s", "-", 
             RowBox[{"2", " ", 
              SubsuperscriptBox["\[CapitalDelta]", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "t"]}], "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}]}], ",", 
          RowBox[{
           FractionBox["1", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", "i", "2"], "+", 
             SubsuperscriptBox["m", "j", "2"], "-", "s", "-", 
             RowBox[{"2", " ", 
              SubsuperscriptBox["\[CapitalDelta]", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "t"]}], "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}]}]}], ")"}], " ", 
        SubscriptBox["m", "i"], " ", 
        SubscriptBox["m", "j"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", 
                RowBox[{
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "i", "0"], 
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", 
                RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"]}], "+", 
          RowBox[{
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", 
                RowBox[{
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "i", "0"], 
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                RowBox[{"R", "R"}]], ")"}]},
            "Conjugate"], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", 
                RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                RowBox[{"R", "R"}]], ")"}]},
            "Conjugate"]}], "-", 
          RowBox[{
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", 
                RowBox[{
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "i", "0"], 
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                RowBox[{"L", "R"}]], ")"}]},
            "Conjugate"], " ", 
           SubsuperscriptBox["Q", 
            RowBox[{
             OverscriptBox["u", "~"], "A"}], 
            RowBox[{"L", "L"}]]}], "-", 
          RowBox[{
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", 
                RowBox[{
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "i", "0"], 
                  SubsuperscriptBox[
                   OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
                RowBox[{"R", "L"}]], ")"}]},
            "Conjugate"], " ", 
           SubsuperscriptBox["Q", 
            RowBox[{
             OverscriptBox["u", "~"], "A"}], 
            RowBox[{"R", "R"}]]}]}], ")"}]}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           FractionBox["1", 
            RowBox[{"p", " ", 
             SqrtBox["s"], " ", 
             RowBox[{"(", 
              RowBox[{
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["\[CapitalDelta]", 
                    SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
                    RowBox[{"1", ",", "B"}]], "t"], ")"}]},
                "Conjugate"], "-", 
               SubsuperscriptBox["\[CapitalDelta]", 
                SubscriptBox[
                 OverscriptBox["u", "~"], 
                 RowBox[{"1", ",", "A"}]], "t"]}], ")"}]}]], 
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
                  SubsuperscriptBox["\[CapitalDelta]", 
                   SubscriptBox[
                    OverscriptBox["u", "~"], 
                    RowBox[{"1", ",", "A"}]], "t"]}], "+", 
                 RowBox[{"2", " ", "p", " ", 
                  SqrtBox["s"]}]}], ")"}]}], ",", 
              RowBox[{
               FractionBox["1", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubsuperscriptBox["m", "i", "2"], "+", 
                 SubsuperscriptBox["m", "j", "2"], "-", "s", "-", 
                 RowBox[{"2", " ", 
                  SubsuperscriptBox["\[CapitalDelta]", 
                   SubscriptBox[
                    OverscriptBox["u", "~"], 
                    RowBox[{"1", ",", "A"}]], "t"]}], "-", 
                 RowBox[{"2", " ", "p", " ", 
                  SqrtBox["s"]}]}], ")"}]}]}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              SubsuperscriptBox["m", "i", "2"], "-", 
              SubsuperscriptBox["\[CapitalDelta]", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "t"]}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              SubsuperscriptBox["\[CapitalDelta]", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "t"], "-", 
              SubsuperscriptBox["m", "j", "2"]}], ")"}]}]}], ")"}]}], "+", 
        "2"}], ")"}], " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           RowBox[{"(", 
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
                   SubsuperscriptBox["\[CapitalDelta]", 
                    SubscriptBox[
                    OverscriptBox["u", "~"], 
                    RowBox[{"1", ",", "A"}]], "t"]}], "+", 
                  RowBox[{"2", " ", "p", " ", 
                   SqrtBox["s"]}]}], ")"}]}], ",", 
               RowBox[{
                FractionBox["1", "2"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  SubsuperscriptBox["m", "i", "2"], "+", 
                  SubsuperscriptBox["m", "j", "2"], "-", "s", "-", 
                  RowBox[{"2", " ", 
                   SubsuperscriptBox["\[CapitalDelta]", 
                    SubscriptBox[
                    OverscriptBox["u", "~"], 
                    RowBox[{"1", ",", "A"}]], "t"]}], "-", 
                  RowBox[{"2", " ", "p", " ", 
                   SqrtBox["s"]}]}], ")"}]}]}], ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  SubsuperscriptBox["m", "j", "2"], "-", 
                  SubsuperscriptBox["\[CapitalDelta]", 
                   SubscriptBox[
                    OverscriptBox["u", "~"], 
                    RowBox[{"1", ",", "A"}]], "t"]}], ")"}], " ", 
                SubsuperscriptBox["m", "i", "2"]}], "+", 
               RowBox[{
                SubsuperscriptBox["\[CapitalDelta]", 
                 SubscriptBox[
                  OverscriptBox["u", "~"], 
                  RowBox[{"1", ",", "A"}]], "t"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"-", 
                   SubsuperscriptBox["m", "j", "2"]}], "+", "s", "+", 
                  SubsuperscriptBox["\[CapitalDelta]", 
                   SubscriptBox[
                    OverscriptBox["u", "~"], 
                    RowBox[{"1", ",", "A"}]], "t"]}], ")"}]}]}], ")"}]}], 
            ")"}], "/", 
           RowBox[{"(", 
            RowBox[{"p", " ", 
             SqrtBox["s"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"-", 
                SubsuperscriptBox["m", "i", "2"]}], "-", 
               SubsuperscriptBox["m", "j", "2"], "+", "s", "+", 
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["\[CapitalDelta]", 
                    SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
                    RowBox[{"1", ",", "B"}]], "t"], ")"}]},
                "Conjugate"], "+", 
               SubsuperscriptBox["\[CapitalDelta]", 
                SubscriptBox[
                 OverscriptBox["u", "~"], 
                 RowBox[{"1", ",", "A"}]], "t"]}], ")"}]}], ")"}]}], ")"}]}], 
        "+", "2"}], ")"}], " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "L"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "R"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"R", "L"}]]}]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        SubsuperscriptBox["m", "i", "2"], "+", 
        SubsuperscriptBox["m", "j", "2"], "+", "s", "+", 
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           FractionBox["1", 
            RowBox[{"p", " ", 
             SqrtBox["s"]}]], 
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
                  SubsuperscriptBox["\[CapitalDelta]", 
                   SubscriptBox[
                    OverscriptBox["u", "~"], 
                    RowBox[{"1", ",", "A"}]], "t"]}], "+", 
                 RowBox[{"2", " ", "p", " ", 
                  SqrtBox["s"]}]}], ")"}]}], ",", 
              RowBox[{
               FractionBox["1", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubsuperscriptBox["m", "i", "2"], "+", 
                 SubsuperscriptBox["m", "j", "2"], "-", "s", "-", 
                 RowBox[{"2", " ", 
                  SubsuperscriptBox["\[CapitalDelta]", 
                   SubscriptBox[
                    OverscriptBox["u", "~"], 
                    RowBox[{"1", ",", "A"}]], "t"]}], "-", 
                 RowBox[{"2", " ", "p", " ", 
                  SqrtBox["s"]}]}], ")"}]}]}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              SubsuperscriptBox["m", "i", "2"], "-", 
              SubsuperscriptBox["\[CapitalDelta]", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "t"]}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              SubsuperscriptBox["\[CapitalDelta]", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "t"], "-", 
              SubsuperscriptBox["m", "j", "2"]}], ")"}]}]}], ")"}]}], "-", 
        RowBox[{"2", " ", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox[
           OverscriptBox["u", "~"], 
           RowBox[{"1", ",", "A"}]], "t"]}]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         SubsuperscriptBox["m", "i", "2"]}], "-", 
        SubsuperscriptBox["m", "j", "2"], "-", "s", "+", 
        RowBox[{"2", " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
               RowBox[{"1", ",", "A"}]], "t"], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         SubsuperscriptBox["m", "i", "2"]}], "-", 
        SubsuperscriptBox["m", "j", "2"], "-", "s", "+", 
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           FractionBox["1", 
            RowBox[{"p", " ", 
             SqrtBox["s"]}]], 
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
                  SubsuperscriptBox["\[CapitalDelta]", 
                   SubscriptBox[
                    OverscriptBox["u", "~"], 
                    RowBox[{"1", ",", "A"}]], "t"]}], "+", 
                 RowBox[{"2", " ", "p", " ", 
                  SqrtBox["s"]}]}], ")"}]}], ",", 
              RowBox[{
               FractionBox["1", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 SubsuperscriptBox["m", "i", "2"], "+", 
                 SubsuperscriptBox["m", "j", "2"], "-", "s", "-", 
                 RowBox[{"2", " ", 
                  SubsuperscriptBox["\[CapitalDelta]", 
                   SubscriptBox[
                    OverscriptBox["u", "~"], 
                    RowBox[{"1", ",", "A"}]], "t"]}], "-", 
                 RowBox[{"2", " ", "p", " ", 
                  SqrtBox["s"]}]}], ")"}]}]}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              SubsuperscriptBox["m", "i", "2"], "-", 
              SubsuperscriptBox["\[CapitalDelta]", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "t"]}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              SubsuperscriptBox["m", "j", "2"], "-", 
              SubsuperscriptBox["\[CapitalDelta]", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "t"]}], ")"}]}]}], ")"}]}], "+", 
        RowBox[{"2", " ", 
         SubsuperscriptBox["\[CapitalDelta]", 
          SubscriptBox[
           OverscriptBox["u", "~"], 
           RowBox[{"1", ",", "A"}]], "t"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        SubsuperscriptBox["m", "i", "2"], "+", 
        SubsuperscriptBox["m", "j", "2"], "+", "s", "-", 
        RowBox[{"2", " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["\[CapitalDelta]", 
              SubscriptBox["\!\(\*OverscriptBox[\(u\), \(~\)]\)", 
               RowBox[{"1", ",", "A"}]], "t"], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "R"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.917849104592415*^9, 3.917849207708568*^9, 
  3.917849453502214*^9, 3.917934596480356*^9, 3.9179358122701807`*^9, 
  3.917935877947945*^9, 3.918017556439938*^9, 3.918034071388266*^9, 
  3.918091831860509*^9, 3.918092137375699*^9, 3.918092179619026*^9, 
  3.918094153732733*^9, 3.918094278737913*^9, 3.918094414495898*^9, 
  3.920605872405076*^9, 3.920606013223256*^9, 3.920621469682482*^9, 
  3.920621523696817*^9, 3.921031974218634*^9, 3.921032415315778*^9, 
  3.921032888932453*^9, 3.92103327472296*^9, 3.923635215200614*^9, 
  3.923725222558172*^9, 3.923725537105473*^9, 3.923729650913246*^9, 
  3.9239649319581203`*^9, 3.923974028128691*^9, 3.9239803540230913`*^9, 
  3.924077721438504*^9, 3.9240779275915613`*^9, 3.924081735151325*^9, 
  3.924141116733238*^9, 3.924145893460534*^9, 3.9241564865425577`*^9, 
  3.92415660299995*^9},
 CellLabel->"Out[83]=",ExpressionUUID->"dba337c9-b6a5-4f07-9ec0-d7e3ee89acbb"]
}, Open  ]]
}, Closed]],

Cell[CellGroupData[{

Cell["Integrated Cross-Section non-BW", "Section",
 CellChangeTimes->{{3.914483093739622*^9, 3.91448311179278*^9}, {
  3.917066404003852*^9, 3.9170664079557943`*^9}, {3.917848665722604*^9, 
  3.917848669003229*^9}},ExpressionUUID->"79a2df7e-bcdb-4ad8-873d-\
f1d952727da1"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ItotIntegralsNBW", "[", "0", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"ItotIntegrals", "[", "0", "]"}], " ", "//", " ", "FRH"}], " ", "//",
     "\n", "\t", 
    RowBox[{
     RowBox[{"ReplaceAll", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"tMass", "[", "args__", "]"}], "\[Conjugate]"}], "|", 
           RowBox[{"tMass", "[", "args__", "]"}]}], " ", "->", " ", 
          RowBox[{
           RowBox[{"MSf", "[", "args", "]"}], "^", "2"}]}], ",", " ", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"uMass", "[", "args__", "]"}], "\[Conjugate]"}], "|", 
           RowBox[{"uMass", "[", "args__", "]"}]}], " ", "->", " ", 
          RowBox[{
           RowBox[{
            RowBox[{"MEW", "[", "i", "]"}], "^", "2"}], "+", 
           RowBox[{
            RowBox[{"MEW", "[", "j", "]"}], "^", "2"}], "-", "s", "-", 
           RowBox[{
            RowBox[{"MSf", "[", "args", "]"}], "^", "2"}]}]}]}], "}"}]}], 
      "]"}], "&"}]}], " ", "//", "\n", "\t", 
   RowBox[{
    RowBox[{"Collect2", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"tIntegral", "[", "__", "]"}], ",", " ", 
      RowBox[{"Factoring", " ", "->", " ", "Isolate"}]}], "]"}], 
    "&"}]}]}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917083552327509*^9, 3.9170836212401447`*^9}, {
  3.917083689578334*^9, 3.917083701031442*^9}, {3.917084070208206*^9, 
  3.917084151657811*^9}, {3.917084498774638*^9, 3.917084499165453*^9}, {
  3.9206058645119753`*^9, 3.9206058645128927`*^9}},
 CellLabel->"In[84]:=",ExpressionUUID->"63cd6937-646b-4d7e-9135-e0422782fb29"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1228", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1224", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1217", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1223", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1236", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1225", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1218", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1237", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1232", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1222", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "B"}]], "2"], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1229", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "B"}]], "2"], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1235", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "B"}]], "2"], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1227", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     RowBox[{
      RowBox[{"-", 
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["u", "~"], 
         RowBox[{"1", ",", "A"}]], "2"]}], "+", 
      SubsuperscriptBox["m", "i", "2"], "+", 
      SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1234", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     RowBox[{
      RowBox[{"-", 
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["u", "~"], 
         RowBox[{"1", ",", "A"}]], "2"]}], "+", 
      SubsuperscriptBox["m", "i", "2"], "+", 
      SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1231", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     RowBox[{
      RowBox[{"-", 
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["u", "~"], 
         RowBox[{"1", ",", "A"}]], "2"]}], "+", 
      SubsuperscriptBox["m", "i", "2"], "+", 
      SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1220", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     SubsuperscriptBox["m", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "2"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1243", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     SubsuperscriptBox["m", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "2"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1241", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     SubsuperscriptBox["m", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "2"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1239", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "0"]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1221", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "1"]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1238", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "2"]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.917849104739363*^9, 3.917849207856947*^9, 
  3.917849453650459*^9, 3.917934596632194*^9, 3.918017556604964*^9, 
  3.918034071542239*^9, 3.918091831921539*^9, 3.918092137436466*^9, 
  3.918092179680758*^9, 3.918094153793585*^9, 3.918094278800381*^9, 
  3.918094414558882*^9, 3.9206058724922657`*^9, 3.9206060132870197`*^9, 
  3.9206214697474613`*^9, 3.920621523759094*^9, 3.921031974377435*^9, 
  3.921032415434873*^9, 3.9210328890028067`*^9, 3.921033274791504*^9, 
  3.923635215260509*^9, 3.923725222618147*^9, 3.923725537166893*^9, 
  3.923729650975116*^9, 3.923964932025791*^9, 3.923974028188519*^9, 
  3.923980354083597*^9, 3.924077721542144*^9, 3.924077927654174*^9, 
  3.924081735227982*^9, 3.924141116796143*^9, 3.9241458935357723`*^9, 
  3.9241564866036386`*^9, 3.9241566030623617`*^9},
 CellLabel->"Out[84]=",ExpressionUUID->"91f0c50f-9867-4582-a4d7-573f8d287221"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"SelectFree2", "[", 
           RowBox[{
            RowBox[{"ItotIntegralsNBW", "[", "0", "]"}], ",", " ", 
            RowBox[{"tIntegral", "[", 
             RowBox[{
              RowBox[{"0", "|", "1", "|", "2"}], ",", " ", "m1_", ",", " ", 
              "m2_"}], "]"}]}], "]"}], " ", "//", " ", "FreeTIntegralsNBW"}], 
         " ", "//", "\n", "\t", "Expand"}], " ", "//", "\n", "\t", 
        RowBox[{
         RowBox[{"ReplaceAll", "[", 
          RowBox[{"#", ",", " ", 
           RowBox[{
            RowBox[{"Log", "[", 
             FractionBox[
              RowBox[{
               RowBox[{"-", 
                RowBox[{
                 RowBox[{"MSf", "[", "args__", "]"}], "^", "2"}]}], "+", 
               "numrem_"}], 
              RowBox[{
               RowBox[{"-", 
                RowBox[{
                 RowBox[{"MSf", "[", "args__", "]"}], "^", "2"}]}], "+", 
               "denrem_"}]], "]"}], "->", 
            RowBox[{"-", 
             RowBox[{"Log", "[", 
              FractionBox[
               RowBox[{
                RowBox[{
                 RowBox[{"MSf", "[", "args", "]"}], "^", "2"}], "-", 
                "denrem"}], 
               RowBox[{
                RowBox[{
                 RowBox[{"MSf", "[", "args", "]"}], "^", "2"}], "-", 
                "numrem"}]], "]"}]}]}]}], "]"}], "&"}]}], " ", "//", "\n", 
       "\t", "Simplify"}], " ", "//", "\n", "\t", "Expand"}], " ", "//", "\n",
      "\t", 
     RowBox[{
      RowBox[{"ReplaceAll", "[", 
       RowBox[{"#", ",", " ", 
        RowBox[{
         RowBox[{"Log", "[", 
          FractionBox[
           RowBox[{
            RowBox[{
             RowBox[{"-", "2"}], 
             RowBox[{
              RowBox[{"MSf", "[", "args__", "]"}], "^", "2"}]}], "+", 
            "numrem_"}], 
           RowBox[{
            RowBox[{
             RowBox[{"-", "2"}], 
             RowBox[{
              RowBox[{"MSf", "[", "args__", "]"}], "^", "2"}]}], "+", 
            "denrem_"}]], "]"}], "->", 
         RowBox[{"Log", "[", 
          FractionBox[
           RowBox[{
            RowBox[{
             RowBox[{"MSf", "[", "args", "]"}], "^", "2"}], "-", 
            RowBox[{"numrem", "/", "2"}]}], 
           RowBox[{
            RowBox[{
             RowBox[{"MSf", "[", "args", "]"}], "^", "2"}], "-", 
            RowBox[{"denrem", "/", "2"}]}]], "]"}]}]}], "]"}], "&"}]}], " ", "//",
     "\n", "\t", 
    RowBox[{
     RowBox[{"Collect2", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{"{", 
        RowBox[{"p", ",", " ", 
         RowBox[{"Log", "[", "_", "]"}]}], "}"}], ",", " ", 
       RowBox[{"Factoring", " ", "->", " ", "CollectEffCharges"}]}], "]"}], 
     "&"}]}], " ", "//", "\n", "\t", "FRH"}], "\n", "\t"}], "\n", 
 RowBox[{"SelectNotFree2", "[", 
  RowBox[{
   RowBox[{"ItotIntegralsNBW", "[", "0", "]"}], ",", " ", 
   RowBox[{"tIntegral", "[", 
    RowBox[{
     RowBox[{"0", "|", "1", "|", "2"}], ",", " ", "m1_", ",", " ", "m2_"}], 
    "]"}]}], "]"}]}], "Code",
 CellChangeTimes->{{3.923981140003743*^9, 3.923981153141905*^9}, {
  3.923981184013856*^9, 3.923981196409017*^9}, {3.923981376847821*^9, 
  3.923981611052167*^9}, {3.923981644914287*^9, 3.923981649316241*^9}, {
  3.9239817119399796`*^9, 3.923981750426309*^9}, {3.923981802603599*^9, 
  3.923981818116599*^9}},
 CellLabel->"In[85]:=",ExpressionUUID->"391b503a-6be1-488c-a43c-95ebb0290002"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"p", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       SqrtBox["s"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          RowBox[{"2", " ", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "A"}]], "2"]}]}], "+", 
         SubsuperscriptBox["m", "i", "2"], "+", 
         SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "L"}]]}], "-", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "R"}]]}], "-", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "R"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "L"}]]}]}], ")"}]}], "+", 
      RowBox[{
       FractionBox["1", "3"], " ", 
       SqrtBox["s"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          RowBox[{
           SubsuperscriptBox["m", "i", "2"], " ", 
           RowBox[{"(", 
            RowBox[{"s", "-", 
             RowBox[{"2", " ", 
              SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}]}], "-", 
         SubsuperscriptBox["m", "i", "4"], "-", 
         RowBox[{"s", " ", 
          SubsuperscriptBox["m", "j", "2"]}], "-", 
         SubsuperscriptBox["m", "j", "4"], "+", 
         RowBox[{"2", " ", 
          SuperscriptBox["s", "2"]}]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"L", "R"}]]},
           "Abs"], "2"], "+", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"R", "L"}]]},
           "Abs"], "2"], "+", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"L", "L"}]]},
           "Abs"], "2"], "+", 
         SuperscriptBox[
          TemplateBox[{
            SubsuperscriptBox["Z", 
             RowBox[{
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "i", "0"], 
               SubsuperscriptBox[
                OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"R", "R"}]]},
           "Abs"], "2"]}], ")"}]}], "+", 
      RowBox[{"2", " ", 
       SuperscriptBox["s", 
        RowBox[{"3", "/", "2"}]], " ", 
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "L"}]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "R"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "L"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "R"}]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"]}]}], ")"}]}]}], ")"}]}], "+", 
   RowBox[{
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["u", "~"], 
         RowBox[{"1", ",", "A"}]], "2"], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["m", "i", "2"]}], "-", 
          SubsuperscriptBox["m", "j", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], ")"}]}]}], 
      RowBox[{
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["u", "~"], 
         RowBox[{"1", ",", "A"}]], "2"], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["m", "i", "2"]}], "-", 
          SubsuperscriptBox["m", "j", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], ")"}]}]}]], ")"}], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         SubsuperscriptBox["m", "i", "2"], "-", 
         SubsuperscriptBox["m", 
          SubscriptBox[
           OverscriptBox["u", "~"], 
           RowBox[{"1", ",", "A"}]], "2"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         SubsuperscriptBox["m", 
          SubscriptBox[
           OverscriptBox["u", "~"], 
           RowBox[{"1", ",", "A"}]], "2"], "-", 
         SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "R"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"]}]}], ")"}]}], "+", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         SubsuperscriptBox["m", "i", "2"], "-", 
         SubsuperscriptBox["m", 
          SubscriptBox[
           OverscriptBox["u", "~"], 
           RowBox[{"1", ",", "A"}]], "2"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         SubsuperscriptBox["m", "j", "2"], "-", 
         SubsuperscriptBox["m", 
          SubscriptBox[
           OverscriptBox["u", "~"], 
           RowBox[{"1", ",", "A"}]], "2"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "R"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "L"}]]}]}], ")"}]}], "+", 
      RowBox[{"s", " ", 
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          RowBox[{
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", 
                RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                RowBox[{"L", "L"}]], ")"}]},
            "Conjugate"], " ", 
           SubsuperscriptBox["Z", 
            RowBox[{
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "R"}]]}]}], "-", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "L"}]]}], "-", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "R"}]], ")"}]},
           "Conjugate"]}], "-", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "L"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", 
               RowBox[{
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "i", "0"], 
                 SubsuperscriptBox[
                  OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "R"}]]}]}], ")"}]}]}], ")"}]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.923981203160686*^9, 3.92398138332605*^9, 3.923981438591745*^9, {
   3.923981473701328*^9, 3.923981549963255*^9}, {3.923981592363212*^9, 
   3.923981611613234*^9}, 3.923981649638112*^9, {3.92398171547845*^9, 
   3.923981751284627*^9}, 3.923981818916045*^9, 3.924077721809509*^9, 
   3.92407792796588*^9, 3.924081735512263*^9, 3.924141117084797*^9, 
   3.9241458938639727`*^9, 3.9241564868932533`*^9, 3.924156603354391*^9},
 CellLabel->"Out[85]=",ExpressionUUID->"2adafb46-e089-4dfa-a5d5-6bd1c1937d38"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1228", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1224", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1217", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1223", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1236", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1225", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1218", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1237", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1232", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "B"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1222", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "B"}]], "2"], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1229", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "B"}]], "2"], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1235", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "B"}]], "2"], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"]}], ")"}]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.923981203160686*^9, 3.92398138332605*^9, 3.923981438591745*^9, {
   3.923981473701328*^9, 3.923981549963255*^9}, {3.923981592363212*^9, 
   3.923981611613234*^9}, 3.923981649638112*^9, {3.92398171547845*^9, 
   3.923981751284627*^9}, 3.923981818916045*^9, 3.924077721809509*^9, 
   3.92407792796588*^9, 3.924081735512263*^9, 3.924141117084797*^9, 
   3.9241458938639727`*^9, 3.9241564868932533`*^9, 3.92415660337405*^9},
 CellLabel->"Out[86]=",ExpressionUUID->"2255b7d9-1d80-4105-8b15-b04f45875829"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"tIntegral", "[", 
    RowBox[{"0", ",", " ", 
     RowBox[{
      RowBox[{"MSf", "[", 
       RowBox[{"A", ",", "3", ",", "1"}], "]"}], "^", "2"}], ",", " ", 
     RowBox[{
      RowBox[{"MSf", "[", 
       RowBox[{"A", ",", "3", ",", "1"}], "]"}], "^", "2"}]}], "]"}], " ", "//",
    " ", "FreeTIntegralsNBW"}], " ", "//", " ", "Factor2"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"tIntegral", "[", 
    RowBox[{"0", ",", " ", 
     RowBox[{
      RowBox[{"-", 
       RowBox[{
        RowBox[{"MSf", "[", 
         RowBox[{"A", ",", "3", ",", "1"}], "]"}], "^", "2"}]}], "-", 
      RowBox[{"(", 
       RowBox[{"s", "-", 
        RowBox[{
         RowBox[{"MEW", "[", "i", "]"}], "^", "2"}], "-", 
        RowBox[{
         RowBox[{"MEW", "[", "j", "]"}], "^", "2"}]}], ")"}]}], ",", " ", 
     RowBox[{
      RowBox[{"-", 
       RowBox[{
        RowBox[{"MSf", "[", 
         RowBox[{"A", ",", "3", ",", "1"}], "]"}], "^", "2"}]}], "-", 
      RowBox[{"(", 
       RowBox[{"s", "-", 
        RowBox[{
         RowBox[{"MEW", "[", "i", "]"}], "^", "2"}], "-", 
        RowBox[{
         RowBox[{"MEW", "[", "j", "]"}], "^", "2"}]}], ")"}]}]}], "]"}], " ", 
   "//", " ", "FreeTIntegralsNBW"}], " ", "//", " ", "Factor2"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"tIntegral", "[", 
     RowBox[{"0", ",", " ", 
      RowBox[{
       RowBox[{"MSf", "[", 
        RowBox[{"A", ",", "3", ",", "1"}], "]"}], "^", "2"}], ",", " ", 
      RowBox[{
       RowBox[{"-", 
        RowBox[{
         RowBox[{"MSf", "[", 
          RowBox[{"A", ",", "3", ",", "1"}], "]"}], "^", "2"}]}], "-", 
       RowBox[{"(", 
        RowBox[{"s", "-", 
         RowBox[{
          RowBox[{"MEW", "[", "i", "]"}], "^", "2"}], "-", 
         RowBox[{
          RowBox[{"MEW", "[", "j", "]"}], "^", "2"}]}], ")"}]}]}], "]"}], " ",
     "//", " ", "FreeTIntegralsNBW"}], " ", "//", " ", "FullSimplify"}], " ", 
  "//", " ", "Factor2"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"tIntegral", "[", 
     RowBox[{"0", ",", " ", 
      RowBox[{
       RowBox[{"-", 
        RowBox[{
         RowBox[{"MSf", "[", 
          RowBox[{"A", ",", "3", ",", "1"}], "]"}], "^", "2"}]}], "-", 
       RowBox[{"(", 
        RowBox[{"s", "-", 
         RowBox[{
          RowBox[{"MEW", "[", "i", "]"}], "^", "2"}], "-", 
         RowBox[{
          RowBox[{"MEW", "[", "j", "]"}], "^", "2"}]}], ")"}]}], ",", " ", 
      RowBox[{
       RowBox[{"MSf", "[", 
        RowBox[{"A", ",", "3", ",", "1"}], "]"}], "^", "2"}]}], "]"}], " ", "//",
     " ", "FreeTIntegralsNBW"}], " ", "//", " ", "FullSimplify"}], " ", "//", 
  " ", "Factor2"}]}], "Code",
 CellChangeTimes->{{3.923996888533302*^9, 3.923997180136718*^9}, {
  3.923997288331508*^9, 3.923997292277296*^9}},
 CellLabel->"In[87]:=",ExpressionUUID->"c234c08b-4072-4ab8-bbb3-7850c20b6ea5"],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{"2", " ", "p", " ", 
    SqrtBox["s"]}], 
   RowBox[{
    RowBox[{"-", 
     RowBox[{
      SubsuperscriptBox["m", "i", "2"], " ", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"]}]}], "-", 
    RowBox[{
     SubsuperscriptBox["m", "j", "2"], " ", 
     SubsuperscriptBox["m", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "2"]}], "+", 
    RowBox[{"s", " ", 
     SubsuperscriptBox["m", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "2"]}], "+", 
    SubsuperscriptBox["m", 
     SubscriptBox[
      OverscriptBox["u", "~"], 
      RowBox[{"1", ",", "A"}]], "4"], "+", 
    RowBox[{
     SubsuperscriptBox["m", "i", "2"], " ", 
     SubsuperscriptBox["m", "j", "2"]}]}]], TraditionalForm]], "Output",
 CellChangeTimes->{{3.9239969050917883`*^9, 3.923996927951713*^9}, {
   3.9239969932858553`*^9, 3.923997071420749*^9}, {3.923997102443532*^9, 
   3.923997180933636*^9}, 3.923997292549588*^9, 3.924077721871025*^9, 
   3.9240779281480913`*^9, 3.924081735737442*^9, 3.924141117163631*^9, 
   3.924145893905879*^9, 3.924156486923937*^9, 3.924156603384735*^9},
 CellLabel->"Out[87]=",ExpressionUUID->"32aee55c-d194-4e5c-9a78-1bb6762b7a71"],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{"2", " ", "p", " ", 
    SqrtBox["s"]}], 
   RowBox[{
    RowBox[{"-", 
     RowBox[{
      SubsuperscriptBox["m", "i", "2"], " ", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"]}]}], "-", 
    RowBox[{
     SubsuperscriptBox["m", "j", "2"], " ", 
     SubsuperscriptBox["m", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "2"]}], "+", 
    RowBox[{"s", " ", 
     SubsuperscriptBox["m", 
      SubscriptBox[
       OverscriptBox["u", "~"], 
       RowBox[{"1", ",", "A"}]], "2"]}], "+", 
    SubsuperscriptBox["m", 
     SubscriptBox[
      OverscriptBox["u", "~"], 
      RowBox[{"1", ",", "A"}]], "4"], "+", 
    RowBox[{
     SubsuperscriptBox["m", "i", "2"], " ", 
     SubsuperscriptBox["m", "j", "2"]}]}]], TraditionalForm]], "Output",
 CellChangeTimes->{{3.9239969050917883`*^9, 3.923996927951713*^9}, {
   3.9239969932858553`*^9, 3.923997071420749*^9}, {3.923997102443532*^9, 
   3.923997180933636*^9}, 3.923997292549588*^9, 3.924077721871025*^9, 
   3.9240779281480913`*^9, 3.924081735737442*^9, 3.924141117163631*^9, 
   3.924145893905879*^9, 3.924156486923937*^9, 3.9241566033883543`*^9},
 CellLabel->"Out[88]=",ExpressionUUID->"cdb43bab-5710-4b80-ae7d-3f9c5e9b4242"],

Cell[BoxData[
 FormBox[
  RowBox[{"-", 
   FractionBox[
    RowBox[{
     RowBox[{"log", "(", 
      RowBox[{"1", "-", 
       FractionBox[
        RowBox[{"4", " ", "p", " ", 
         SqrtBox["s"]}], 
        RowBox[{
         RowBox[{"-", 
          RowBox[{"2", " ", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "A"}]], "2"]}]}], "+", 
         SubsuperscriptBox["m", "i", "2"], "+", 
         SubsuperscriptBox["m", "j", "2"], "+", 
         RowBox[{"2", " ", "p", " ", 
          SqrtBox["s"]}], "-", "s"}]]}], ")"}], "-", 
     RowBox[{"log", "(", 
      RowBox[{"1", "-", 
       FractionBox[
        RowBox[{"4", " ", "p", " ", 
         SqrtBox["s"]}], 
        RowBox[{
         RowBox[{"2", " ", 
          SubsuperscriptBox["m", 
           SubscriptBox[
            OverscriptBox["u", "~"], 
            RowBox[{"1", ",", "A"}]], "2"]}], "-", 
         SubsuperscriptBox["m", "i", "2"], "-", 
         SubsuperscriptBox["m", "j", "2"], "+", 
         RowBox[{"2", " ", "p", " ", 
          SqrtBox["s"]}], "+", "s"}]]}], ")"}]}], 
    RowBox[{
     RowBox[{"2", " ", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"]}], "-", 
     SubsuperscriptBox["m", "i", "2"], "-", 
     SubsuperscriptBox["m", "j", "2"], "+", "s"}]]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.9239969050917883`*^9, 3.923996927951713*^9}, {
   3.9239969932858553`*^9, 3.923997071420749*^9}, {3.923997102443532*^9, 
   3.923997180933636*^9}, 3.923997292549588*^9, 3.924077721871025*^9, 
   3.9240779281480913`*^9, 3.924081735737442*^9, 3.924141117163631*^9, 
   3.924145893905879*^9, 3.924156486923937*^9, 3.924156603557706*^9},
 CellLabel->"Out[89]=",ExpressionUUID->"8e2579cc-a24a-4cd5-88a4-90ec746db786"],

Cell[BoxData[
 FormBox[
  RowBox[{"-", 
   FractionBox[
    RowBox[{
     RowBox[{"log", "(", 
      RowBox[{"1", "-", 
       FractionBox[
        RowBox[{"4", " ", "p", " ", 
         SqrtBox["s"]}], 
        RowBox[{
         RowBox[{"-", 
          RowBox[{"2", " ", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "A"}]], "2"]}]}], "+", 
         SubsuperscriptBox["m", "i", "2"], "+", 
         SubsuperscriptBox["m", "j", "2"], "+", 
         RowBox[{"2", " ", "p", " ", 
          SqrtBox["s"]}], "-", "s"}]]}], ")"}], "-", 
     RowBox[{"log", "(", 
      RowBox[{"1", "-", 
       FractionBox[
        RowBox[{"4", " ", "p", " ", 
         SqrtBox["s"]}], 
        RowBox[{
         RowBox[{"2", " ", 
          SubsuperscriptBox["m", 
           SubscriptBox[
            OverscriptBox["u", "~"], 
            RowBox[{"1", ",", "A"}]], "2"]}], "-", 
         SubsuperscriptBox["m", "i", "2"], "-", 
         SubsuperscriptBox["m", "j", "2"], "+", 
         RowBox[{"2", " ", "p", " ", 
          SqrtBox["s"]}], "+", "s"}]]}], ")"}]}], 
    RowBox[{
     RowBox[{"2", " ", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["u", "~"], 
        RowBox[{"1", ",", "A"}]], "2"]}], "-", 
     SubsuperscriptBox["m", "i", "2"], "-", 
     SubsuperscriptBox["m", "j", "2"], "+", "s"}]]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.9239969050917883`*^9, 3.923996927951713*^9}, {
   3.9239969932858553`*^9, 3.923997071420749*^9}, {3.923997102443532*^9, 
   3.923997180933636*^9}, 3.923997292549588*^9, 3.924077721871025*^9, 
   3.9240779281480913`*^9, 3.924081735737442*^9, 3.924141117163631*^9, 
   3.924145893905879*^9, 3.924156486923937*^9, 3.92415660356691*^9},
 CellLabel->"Out[90]=",ExpressionUUID->"75b363a7-cc57-4975-9bbc-2178febbc13a"]
}, Open  ]],

Cell[TextData[{
 "Write out the analytic results for all the ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["T", "d", "p"], TraditionalForm]],ExpressionUUID->
  "af033a06-4f04-40df-b793-efa4f2d90851"],
 "-integrals and collect into the possible terms dependent on the t-limits t1 \
and t0."
}], "Text",
 CellChangeTimes->{{3.914483530107016*^9, 3.914483535426284*^9}, {
  3.914483582975358*^9, 
  3.9144836539690943`*^9}},ExpressionUUID->"abc93d39-7fcd-4e04-ae58-\
bf6583a04f00"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ItotIntegralsNBW", "[", "1", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"Collect2", "[", "\[IndentingNewLine]", "\t", 
        RowBox[{
         RowBox[{
          RowBox[{"FreeTIntegralsNBW", "[", 
           RowBox[{"ItotIntegralsNBW", "[", "0", "]"}], "]"}], " ", "//", " ",
           "Expand"}], ",", "\n", "\t", 
         RowBox[{"{", 
          RowBox[{"p", ",", " ", 
           RowBox[{"Log", "[", "_", "]"}]}], "}"}], ",", 
         "\[IndentingNewLine]", "\t", 
         RowBox[{"Factoring", "->", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"Isolate", "[", 
             RowBox[{"#1", "//", "CollectEffCharges"}], "]"}], "&"}], 
           ")"}]}]}], "\[IndentingNewLine]", "]"}], " ", "//", "\n", "\t", 
       RowBox[{
        RowBox[{"ReplaceAll", "[", 
         RowBox[{"#", ",", " ", 
          RowBox[{
           RowBox[{"Log", "[", 
            FractionBox[
             RowBox[{
              RowBox[{"-", 
               RowBox[{
                RowBox[{"MSf", "[", "args__", "]"}], "^", "2"}]}], "+", 
              "numrem_"}], 
             RowBox[{
              RowBox[{"-", 
               RowBox[{
                RowBox[{"MSf", "[", "args__", "]"}], "^", "2"}]}], "+", 
              "denrem_"}]], "]"}], "->", 
           RowBox[{"-", 
            RowBox[{"Log", "[", 
             FractionBox[
              RowBox[{
               RowBox[{
                RowBox[{"MSf", "[", "args", "]"}], "^", "2"}], "-", 
               "denrem"}], 
              RowBox[{
               RowBox[{
                RowBox[{"MSf", "[", "args", "]"}], "^", "2"}], "-", 
               "numrem"}]], "]"}]}]}]}], "]"}], "&"}]}], " ", "//", "\n", 
      "\t", "Simplify"}], " ", "//", "\n", "\t", "Expand"}], " ", "//", "\n", 
    "\t", 
    RowBox[{
     RowBox[{"ReplaceAll", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{
        RowBox[{"Log", "[", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], 
            RowBox[{
             RowBox[{"MSf", "[", "args__", "]"}], "^", "2"}]}], "+", 
           "numrem_"}], 
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], 
            RowBox[{
             RowBox[{"MSf", "[", "args__", "]"}], "^", "2"}]}], "+", 
           "denrem_"}]], "]"}], "->", 
        RowBox[{"Log", "[", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"MSf", "[", "args", "]"}], "^", "2"}], "-", 
           RowBox[{"numrem", "/", "2"}]}], 
          RowBox[{
           RowBox[{
            RowBox[{"MSf", "[", "args", "]"}], "^", "2"}], "-", 
           RowBox[{"denrem", "/", "2"}]}]], "]"}]}]}], "]"}], "&"}]}], " ", "//",
    "\n", "\t", 
   RowBox[{
    RowBox[{"Collect2", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"Log", "[", "_", "]"}]}], "]"}], "&"}]}]}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.914483543976324*^9, 3.914483576762061*^9}, {
   3.914484854926929*^9, 3.914484866657395*^9}, {3.914484992758549*^9, 
   3.914484992979399*^9}, {3.915436697379691*^9, 3.915436749623456*^9}, 
   3.915436784604378*^9, {3.915436833628914*^9, 3.915436902565397*^9}, {
   3.9154387114389877`*^9, 3.915438717387163*^9}, {3.915438840056538*^9, 
   3.915438841033923*^9}, {3.91546425955687*^9, 3.915464374881392*^9}, {
   3.916394198112276*^9, 3.916394239969701*^9}, {3.91708371033146*^9, 
   3.917083715621931*^9}, {3.917083767458216*^9, 3.917083796546955*^9}, {
   3.917084009156295*^9, 3.917084012780347*^9}, {3.917084477897963*^9, 
   3.917084481097198*^9}, {3.9170846403842793`*^9, 3.917084643472376*^9}, {
   3.917090145133181*^9, 3.917090146435079*^9}, {3.917091136224518*^9, 
   3.917091153635747*^9}, {3.917091189354239*^9, 3.9170912535328493`*^9}, {
   3.917091289122969*^9, 3.917091485923959*^9}, {3.917091543863785*^9, 
   3.917091564340563*^9}, {3.917091600898649*^9, 3.9170916151201572`*^9}, {
   3.917091796899411*^9, 3.917091799532*^9}, {3.917091838705447*^9, 
   3.917091862541135*^9}, {3.91709191541623*^9, 3.917092014202476*^9}, {
   3.917092065734412*^9, 3.9170920994880133`*^9}, {3.918091939607502*^9, 
   3.9180920924516706`*^9}, {3.918092144095354*^9, 3.918092146528788*^9}},
 CellLabel->"In[91]:=",ExpressionUUID->"99db3548-148d-4f00-b3c4-e9bd00c99d0f"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       TagBox[
        RowBox[{"KK", "(", "1255", ")"}],
        HoldForm], "-", 
       TagBox[
        RowBox[{"KK", "(", "1266", ")"}],
        HoldForm]}], ")"}], " ", 
     RowBox[{"log", "(", 
      FractionBox[
       RowBox[{
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "2"], "+", 
        RowBox[{
         FractionBox["1", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", 
            SubsuperscriptBox["m", "i", "2"]}], "-", 
           SubsuperscriptBox["m", "j", "2"], "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}], "+", "s"}], ")"}]}]}], 
       RowBox[{
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["u", "~"], 
          RowBox[{"1", ",", "A"}]], "2"], "+", 
        RowBox[{
         FractionBox["1", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", 
            SubsuperscriptBox["m", "i", "2"]}], "-", 
           SubsuperscriptBox["m", "j", "2"], "-", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}], "+", "s"}], ")"}]}]}]], ")"}]}]}], "+", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      TagBox[
       RowBox[{"KK", "(", "1273", ")"}],
       HoldForm], "-", 
      TagBox[
       RowBox[{"KK", "(", "1279", ")"}],
       HoldForm]}], ")"}], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["u", "~"], 
         RowBox[{"1", ",", "B"}]], "2"], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["m", "i", "2"]}], "-", 
          SubsuperscriptBox["m", "j", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], ")"}]}]}], 
      RowBox[{
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["u", "~"], 
         RowBox[{"1", ",", "B"}]], "2"], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["m", "i", "2"]}], "-", 
          SubsuperscriptBox["m", "j", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], ")"}]}]}]], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1268", ")"}],
     HoldForm], " ", "p"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.917849104983006*^9, 3.91784920810301*^9, 3.917849453900008*^9, 
   3.917934596886977*^9, 3.918017556850332*^9, 3.918034071798927*^9, 
   3.918091832379766*^9, 3.918091985074126*^9, {3.9180920195119343`*^9, 
   3.918092045039475*^9}, 3.918092097059177*^9, {3.918092137669591*^9, 
   3.918092179915668*^9}, 3.918094154071121*^9, 3.918094279038659*^9, 
   3.918094414795128*^9, 3.920605872561939*^9, 3.920606013526399*^9, 
   3.92062146999308*^9, 3.920621524002965*^9, 3.921031974616785*^9, 
   3.921032415690075*^9, 3.921032889253769*^9, 3.921033275042457*^9, 
   3.923635215502531*^9, 3.923725222863*^9, 3.923725537434497*^9, 
   3.923729651218985*^9, 3.9239649322792673`*^9, 3.92397402842784*^9, 
   3.923980354326001*^9, 3.924077722283676*^9, 3.9240779286306047`*^9, 
   3.924081736207623*^9, 3.924141117618601*^9, 3.924145894435652*^9, 
   3.92415648734232*^9, 3.924156603799234*^9},
 CellLabel->"Out[91]=",ExpressionUUID->"d0da5a11-6281-4de6-ab54-40e40b4220dd"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ItotIntegralsNBWAA", "[", "1", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{"Collect2", "[", "\[IndentingNewLine]", "\t", 
           RowBox[{
            RowBox[{
             RowBox[{"FreeTIntegralsNBW", "[", 
              RowBox[{
               RowBox[{"ItotIntegralsNBW", "[", "0", "]"}], "/.", 
               RowBox[{"A", "->", "B"}]}], "]"}], " ", "//", " ", "Expand"}], 
            ",", "\n", "\t\t\t", 
            RowBox[{"{", 
             RowBox[{"p", ",", " ", 
              RowBox[{"Log", "[", "_", "]"}]}], "}"}], ",", 
            "\[IndentingNewLine]", "\t", 
            RowBox[{"Factoring", "->", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"Isolate", "[", 
                RowBox[{"#1", "//", "CollectEffCharges"}], "]"}], "&"}], 
              ")"}]}]}], "\[IndentingNewLine]", "]"}], " ", "//", 
          "\[IndentingNewLine]", "\t", "FRH"}], " ", "//", " ", 
         RowBox[{
          RowBox[{"ReplaceAll", "[", 
           RowBox[{"#", ",", " ", 
            RowBox[{"B", "->", "A"}]}], "]"}], "&"}]}], " ", "//", 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"Collect2", "[", 
          RowBox[{"#", ",", " ", 
           RowBox[{"{", 
            RowBox[{"p", ",", " ", 
             RowBox[{"Log", "[", "_", "]"}]}], "}"}], ",", " ", 
           RowBox[{"Factoring", " ", "->", " ", "Isolate"}]}], "]"}], "&"}]}],
        " ", "//", "\t", "\n", "\t\t", 
       RowBox[{
        RowBox[{"ReplaceAll", "[", 
         RowBox[{"#", ",", " ", 
          RowBox[{
           RowBox[{"Log", "[", 
            FractionBox[
             RowBox[{
              RowBox[{"-", 
               RowBox[{
                RowBox[{"MSf", "[", "args__", "]"}], "^", "2"}]}], "+", 
              "numrem_"}], 
             RowBox[{
              RowBox[{"-", 
               RowBox[{
                RowBox[{"MSf", "[", "args__", "]"}], "^", "2"}]}], "+", 
              "denrem_"}]], "]"}], "->", 
           RowBox[{"-", 
            RowBox[{"Log", "[", 
             FractionBox[
              RowBox[{
               RowBox[{
                RowBox[{"MSf", "[", "args", "]"}], "^", "2"}], "-", 
               "denrem"}], 
              RowBox[{
               RowBox[{
                RowBox[{"MSf", "[", "args", "]"}], "^", "2"}], "-", 
               "numrem"}]], "]"}]}]}]}], "]"}], "&"}]}], " ", "//", "\n", 
      "\t\t", "Simplify"}], " ", "//", "\n", "\t\t", "Expand"}], " ", "//", 
    "\n", "\t\t", 
    RowBox[{
     RowBox[{"ReplaceAll", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{
        RowBox[{"Log", "[", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], 
            RowBox[{
             RowBox[{"MSf", "[", "args__", "]"}], "^", "2"}]}], "+", 
           "numrem_"}], 
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], 
            RowBox[{
             RowBox[{"MSf", "[", "args__", "]"}], "^", "2"}]}], "+", 
           "denrem_"}]], "]"}], "->", 
        RowBox[{"Log", "[", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"MSf", "[", "args", "]"}], "^", "2"}], "-", 
           RowBox[{"numrem", "/", "2"}]}], 
          RowBox[{
           RowBox[{
            RowBox[{"MSf", "[", "args", "]"}], "^", "2"}], "-", 
           RowBox[{"denrem", "/", "2"}]}]], "]"}]}]}], "]"}], "&"}]}], " ", "//",
    "\n", "\t\t", 
   RowBox[{
    RowBox[{"Collect2", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"Log", "[", "_", "]"}]}], "]"}], "&"}]}]}]], "Input",
 CellChangeTimes->{{3.91809398366055*^9, 3.918094128547597*^9}},
 CellLabel->"In[92]:=",ExpressionUUID->"7f3a021c-4d56-4437-8040-30a959bb0693"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1317", ")"}],
     HoldForm], " ", "p"}], "-", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      TagBox[
       RowBox[{"KK", "(", "1306", ")"}],
       HoldForm], "-", 
      TagBox[
       RowBox[{"KK", "(", "1312", ")"}],
       HoldForm]}], ")"}], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["u", "~"], 
         RowBox[{"1", ",", "A"}]], "2"], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["m", "i", "2"]}], "-", 
          SubsuperscriptBox["m", "j", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], ")"}]}]}], 
      RowBox[{
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["u", "~"], 
         RowBox[{"1", ",", "A"}]], "2"], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["m", "i", "2"]}], "-", 
          SubsuperscriptBox["m", "j", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], ")"}]}]}]], ")"}]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.918094154326188*^9, 3.918094279331583*^9, 
  3.918094415084727*^9, 3.920605872637353*^9, 3.920606013789814*^9, 
  3.920621470264979*^9, 3.920621524276412*^9, 3.921031974831965*^9, 
  3.921032415955612*^9, 3.921032889517827*^9, 3.921033275306986*^9, 
  3.9236352157613792`*^9, 3.923725223123829*^9, 3.923725537700763*^9, 
  3.92372965148149*^9, 3.923964932637072*^9, 3.9239740286853743`*^9, 
  3.923980354584548*^9, 3.9240777225480413`*^9, 3.924077928910698*^9, 
  3.924081736466834*^9, 3.924141117879239*^9, 3.924145894745132*^9, 
  3.924156487611979*^9, 3.924156604068234*^9},
 CellLabel->"Out[92]=",ExpressionUUID->"2f9912c1-a99b-472f-a22c-fa893a902892"]
}, Open  ]],

Cell["\<\
We can simplify this further by interchanging terms that can be collected \
under A\[LeftRightArrow]B interchange.\
\>", "Text",
 CellChangeTimes->{{3.914483664259921*^9, 
  3.914483712867753*^9}},ExpressionUUID->"fdb48696-dc6f-4ced-9c27-\
b9261b8ee8c8"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ItotIntegralsNBW", "[", "2", "]"}], " ", "=", " ", 
  RowBox[{"Collect2", "[", "\n", "\t", 
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"SelectNotFree2", "[", 
          RowBox[{
           RowBox[{"ItotIntegralsNBW", "[", "1", "]"}], ",", " ", 
           RowBox[{"MSf", "[", 
            RowBox[{"B", ",", "__"}], "]"}]}], "]"}], " ", "//", " ", "FRH"}],
         " ", "//", " ", 
        RowBox[{
         RowBox[{"ReplaceAll", "[", 
          RowBox[{"#", ",", " ", 
           RowBox[{"A", "->", "C"}]}], "]"}], "&"}]}], " ", "//", " ", 
       RowBox[{
        RowBox[{"ReplaceAll", "[", 
         RowBox[{"#", ",", " ", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"B", "->", "A"}], ",", 
            RowBox[{"C", "->", "B"}]}], "}"}]}], "]"}], "&"}]}], ")"}], " ", 
     "+", " ", 
     RowBox[{"FRH", "[", 
      RowBox[{"SelectFree2", "[", 
       RowBox[{
        RowBox[{"ItotIntegralsNBW", "[", "1", "]"}], ",", " ", 
        RowBox[{"MSf", "[", 
         RowBox[{"B", ",", "__"}], "]"}]}], "]"}], "]"}]}], ",", "\n", "\t", 
    RowBox[{"{", 
     RowBox[{"p", ",", " ", 
      RowBox[{"Log", "[", "_", "]"}]}], "}"}], ",", "\n", "\t", 
    RowBox[{"Factoring", " ", "->", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"Isolate", "[", 
        RowBox[{"CollectEffCharges", "[", "#", "]"}], "]"}], "&"}], ")"}]}]}],
    "\n", "]"}]}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.91448371611512*^9, 3.914483722539014*^9}, {
   3.914484854928886*^9, 3.91448486666013*^9}, {3.914484999523102*^9, 
   3.91448503414028*^9}, {3.915436511069714*^9, 3.9154366004059277`*^9}, {
   3.915436971984971*^9, 3.915436973537427*^9}, {3.915438749629553*^9, 
   3.9154387605839643`*^9}, {3.915438879833042*^9, 3.915438948813096*^9}, 
   3.915439036477599*^9, {3.916394260088276*^9, 3.916394272677437*^9}, {
   3.9170838848297377`*^9, 3.917083990190846*^9}, {3.917084510131538*^9, 
   3.917084652339665*^9}, {3.917084689493339*^9, 3.917084712133494*^9}, {
   3.917084767925946*^9, 3.917084957228489*^9}, {3.917085009979287*^9, 
   3.917085063278228*^9}, 3.9170853363319263`*^9},
 CellLabel->"In[93]:=",ExpressionUUID->"23169dde-eab6-4f3d-b340-33b66b5d4d1e"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1322", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["u", "~"], 
         RowBox[{"1", ",", "A"}]], "2"], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["m", "i", "2"]}], "-", 
          SubsuperscriptBox["m", "j", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], ")"}]}]}], 
      RowBox[{
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["u", "~"], 
         RowBox[{"1", ",", "A"}]], "2"], "+", 
       RowBox[{
        FractionBox["1", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", 
           SubsuperscriptBox["m", "i", "2"]}], "-", 
          SubsuperscriptBox["m", "j", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], ")"}]}]}]], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1268", ")"}],
     HoldForm], " ", "p"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.917849105100034*^9, 3.91784920822051*^9, 
  3.9178494540325327`*^9, 3.917934597012276*^9, 3.918017556967314*^9, 
  3.918034071921741*^9, 3.9180918325022097`*^9, 3.918092137785488*^9, 
  3.918092180031458*^9, 3.918094154452313*^9, 3.918094279455675*^9, 
  3.918094415208587*^9, 3.920605872709071*^9, 3.920606013913941*^9, 
  3.9206214703918347`*^9, 3.920621524401668*^9, 3.9210319749136744`*^9, 
  3.921032416084653*^9, 3.921032889646978*^9, 3.921033275436963*^9, 
  3.923635215901656*^9, 3.923725223278503*^9, 3.923725537911856*^9, 
  3.923729651614012*^9, 3.923964932752921*^9, 3.923974028819208*^9, 
  3.923980354727871*^9, 3.924077722693124*^9, 3.924077929030012*^9, 
  3.9240817365792317`*^9, 3.924141117994067*^9, 3.924145894883636*^9, 
  3.92415648772374*^9, 3.9241566041799498`*^9},
 CellLabel->"Out[93]=",ExpressionUUID->"b921c7eb-3699-4746-b4e5-15995bfea8c3"]
}, Open  ]],

Cell["\<\
Now  we  can  compute  the  total  cross  section  and write it to \
\[OpenCurlyDoubleQuote]results/LO/xsecNBW.m\[CloseCurlyDoubleQuote].\
\>", "Text",
 CellChangeTimes->{{3.914484188373827*^9, 3.914484217035375*^9}, {
   3.9150983857175503`*^9, 3.915098388004359*^9}, 3.9153414282784758`*^9, {
   3.916495814504194*^9, 3.916495820050031*^9}, {3.916495856824998*^9, 
   3.916495860644672*^9}, {3.917085306088718*^9, 
   3.917085306279274*^9}},ExpressionUUID->"d7a98154-a6a5-4c46-bd89-\
a4668a9e7150"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"TotXSecNBWAB", " ", "=", " ", 
   RowBox[{"XSecPrefactor", " ", "*", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           FractionBox[
            RowBox[{"ItotIntegralsNBW", "[", "2", "]"}], 
            RowBox[{"p", " ", 
             RowBox[{"Sqrt", "[", "s", "]"}]}]], " ", "//", " ", "FRH"}], " ",
           "//", "\n", "\t", 
          RowBox[{
           RowBox[{"ReplaceAll", "[", 
            RowBox[{"#", ",", " ", 
             RowBox[{
              RowBox[{"Den", "[", 
               RowBox[{"s_", ",", "m2_"}], "]"}], " ", "->", " ", 
              RowBox[{"1", "/", 
               RowBox[{"(", 
                RowBox[{"s", "-", "m2"}], ")"}]}]}]}], "]"}], "&"}]}], " ", "//",
          "\n", "\t", 
         RowBox[{
          RowBox[{"ReplaceAll", "[", 
           RowBox[{"#", ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"Re", "[", "arg1_", "]"}], " ", "-", " ", 
              RowBox[{"Re", "[", "arg2_", "]"}]}], " ", "->", " ", 
             RowBox[{"Re", "[", 
              RowBox[{"arg1", "-", "arg2"}], "]"}]}]}], "]"}], "&"}]}], " ", "//",
         "\n", "\t", "CollectEffCharges"}], " ", "//", "\n", "\t", "FRH"}], 
      " ", "//", "\n", "\t", 
      RowBox[{
       RowBox[{"ReplaceAll", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{"FeynCalc`Collect`Private`unity", " ", "->", " ", "1"}]}], 
        "]"}], "&"}]}], "\n", ")"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"FileNameJoin", "[", 
     RowBox[{"{", 
      RowBox[{"ResultsDir", ",", " ", "\"\<xsecNBW.m\>\""}], "}"}], "]"}], 
    ",", " ", 
    RowBox[{
     RowBox[{"TotXSec", " ", "//", " ", "FullForm"}], " ", "//", " ", 
     "ToString"}]}], "]"}], ";"}]}], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.914484227260388*^9, 3.914484241040538*^9}, {
   3.914484371319018*^9, 3.9144844019547167`*^9}, {3.914484543561909*^9, 
   3.914484544324559*^9}, 3.914484657861101*^9, {3.914484854948985*^9, 
   3.914484871848958*^9}, {3.914485115336622*^9, 3.914485115716895*^9}, 
   3.91451026857612*^9, {3.915088224264974*^9, 3.9150882498644137`*^9}, {
   3.915097979155436*^9, 3.91509798468182*^9}, 3.915341430996359*^9, {
   3.915469309206528*^9, 3.9154693427197237`*^9}, {3.916465806339134*^9, 
   3.916465894027197*^9}, {3.916465925592322*^9, 3.916465993540413*^9}, {
   3.916466025089882*^9, 3.91646608857436*^9}, {3.916466134887974*^9, 
   3.916466384810376*^9}, {3.9164962583681173`*^9, 3.9164962697026978`*^9}, {
   3.917085314056109*^9, 3.917085472088578*^9}, {3.917087678589332*^9, 
   3.917087694592251*^9}, {3.917087762714493*^9, 3.917087770153128*^9}, {
   3.917087884546834*^9, 3.9170878846346827`*^9}, {3.9170884681514883`*^9, 
   3.917088468248382*^9}, {3.917088725189157*^9, 3.91708872528636*^9}, {
   3.917088824317269*^9, 3.917088886711193*^9}, {3.9170889627158623`*^9, 
   3.917088964451079*^9}, {3.917590261884591*^9, 3.917590262030253*^9}, 
   3.917593354368794*^9, 3.91759370841173*^9, {3.917594592519524*^9, 
   3.917594622169996*^9}, {3.917600925069134*^9, 3.917600940898779*^9}, {
   3.917686332378112*^9, 3.917686335881385*^9}, 3.917849157459594*^9, {
   3.923980171699696*^9, 3.92398017269368*^9}, 3.9240005854881763`*^9},
 CellLabel->"In[94]:=",ExpressionUUID->"a53ec6d8-add7-4d7b-adad-1be8e206bef7"],

Cell[BoxData[
 RowBox[{
  RowBox[{"TotXSecNBWAA", " ", "=", " ", 
   RowBox[{"XSecPrefactor", " ", "*", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{
            FractionBox[
             RowBox[{"ItotIntegralsNBWAA", "[", "1", "]"}], 
             RowBox[{"p", " ", 
              RowBox[{"Sqrt", "[", "s", "]"}]}]], " ", "//", " ", "FRH"}], 
           " ", "//", "\n", "\t", 
           RowBox[{
            RowBox[{"ReplaceAll", "[", 
             RowBox[{"#", ",", " ", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{"Re", "[", "a_", "]"}], " ", "->", " ", 
                 RowBox[{
                  FractionBox["1", "2"], 
                  RowBox[{"(", 
                   RowBox[{"a", "+", 
                    RowBox[{"a", "\[Conjugate]"}]}], ")"}]}]}], ",", " ", 
                RowBox[{
                 RowBox[{"Im", "[", "a_", "]"}], " ", "->", " ", 
                 RowBox[{
                  FractionBox["1", 
                   RowBox[{"2", "\[ImaginaryI]"}]], 
                  RowBox[{"(", 
                   RowBox[{"a", "-", 
                    RowBox[{"a", "\[Conjugate]"}]}], ")"}]}]}]}], "}"}]}], 
             "]"}], "&"}]}], " ", "//", "\n", "\t", 
          RowBox[{
           RowBox[{"ReplaceAll", "[", 
            RowBox[{"#", ",", " ", 
             RowBox[{
              RowBox[{"Den", "[", 
               RowBox[{"s_", ",", "m2_"}], "]"}], " ", "->", " ", 
              RowBox[{"1", "/", 
               RowBox[{"(", 
                RowBox[{"s", "-", "m2"}], ")"}]}]}]}], "]"}], "&"}]}], " ", "//",
          "\n", "\t", 
         RowBox[{
          RowBox[{"ReplaceAll", "[", 
           RowBox[{"#", ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"Re", "[", "arg1_", "]"}], " ", "-", " ", 
              RowBox[{"Re", "[", "arg2_", "]"}]}], " ", "->", " ", 
             RowBox[{"Re", "[", 
              RowBox[{"arg1", "-", "arg2"}], "]"}]}]}], "]"}], "&"}]}], " ", "//",
         "\n", "\t", "CollectEffCharges"}], " ", "//", "\n", "\t", "FRH"}], 
      " ", "//", "\n", "\t", 
      RowBox[{
       RowBox[{"ReplaceAll", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{"FeynCalc`Collect`Private`unity", " ", "->", " ", "1"}]}], 
        "]"}], "&"}]}], "\n", ")"}]}]}], ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.9170877956078053`*^9, 3.917087822828202*^9}, {
   3.9170879712826*^9, 3.9170879733330584`*^9}, {3.917088126463475*^9, 
   3.917088179630128*^9}, {3.917088266998713*^9, 3.917088277539023*^9}, {
   3.917088464397173*^9, 3.917088464564081*^9}, 3.917593339558641*^9, 
   3.917593705333582*^9, {3.917593925101844*^9, 3.917593941253814*^9}, {
   3.91759400539113*^9, 3.917594100416074*^9}, 3.917594181587944*^9, {
   3.91759462484787*^9, 3.917594628495063*^9}, {3.917600931297505*^9, 
   3.917600943987866*^9}, {3.917686341319146*^9, 3.917686344557856*^9}, {
   3.9180941879742203`*^9, 3.918094261457505*^9}, {3.92398019061613*^9, 
   3.923980191464621*^9}, {3.924000606177909*^9, 3.924000610184621*^9}},
 CellLabel->"In[96]:=",ExpressionUUID->"f36e9b3e-dea0-4299-ba73-17e49e2e28f4"],

Cell["Printing the individual channels contributions", "Text",
 CellChangeTimes->{{3.9150962958843517`*^9, 3.915096323368978*^9}, 
   3.915341764927332*^9, {3.917600960839479*^9, 
   3.917600970506953*^9}},ExpressionUUID->"e15e5564-72a4-4553-99db-\
ef1df9f9da6a"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ZXSecNBW", " ", "=", " ", 
  RowBox[{"XSecPrefactor", " ", "*", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         FractionBox["TotXSecNBWAB", "XSecPrefactor"], " ", "//", " ", 
         RowBox[{
          RowBox[{"ReplaceRepeated", "[", 
           RowBox[{"#", ",", " ", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"Qtu", "[", "_", "]"}], "[", "__", "]"}], "[", "__", 
              "]"}], " ", "->", " ", "0"}]}], "]"}], "&"}]}], " ", "//", "\n",
         "\t", "CollectEffCharges"}], " ", "//", " ", "FRH"}], " ", "//", 
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
 InitializationCell->False,
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
   3.916467296839998*^9}, {3.916981257117246*^9, 3.916981257888476*^9}, {
   3.917088455617251*^9, 3.917088489380436*^9}, {3.917688759764121*^9, 
   3.917688761362311*^9}, {3.92060586452138*^9, 3.9206058645304413`*^9}, {
   3.921031089224205*^9, 3.9210310907582197`*^9}, {3.92103208195725*^9, 
   3.921032085914805*^9}, {3.921032605118368*^9, 3.92103261806824*^9}, 
   3.924145875348486*^9},
 CellLabel->"In[97]:=",ExpressionUUID->"dd17a93a-c11d-4868-b030-3ca8e29a8ec9"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SuperscriptBox["s", 
      RowBox[{"3", "/", "2"}]], " ", 
     SubscriptBox["C", "A"]}]], "\[Pi]", " ", "p", " ", 
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
      FractionBox["1", "3"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], " ", 
          RowBox[{"(", 
           RowBox[{"s", "-", 
            RowBox[{"2", " ", 
             SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}]}], "-", 
        SubsuperscriptBox["m", "i", "4"], "-", 
        RowBox[{"s", " ", 
         SubsuperscriptBox["m", "j", "2"]}], "-", 
        SubsuperscriptBox["m", "j", "4"], "+", 
        RowBox[{"2", " ", 
         SuperscriptBox["s", "2"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "R"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "L"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "L"}]]},
          "Abs"], "2"], "+", 
        SuperscriptBox[
         TemplateBox[{
           SubsuperscriptBox["Z", 
            RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "R"}]]},
          "Abs"], "2"]}], ")"}]}], "+", 
     RowBox[{"4", " ", "s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"L", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", 
              RowBox[{
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "i", "0"], 
                SubsuperscriptBox[
                 OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"], " ", 
         SubsuperscriptBox["Z", 
          RowBox[{
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "i", "0"], 
           SubsuperscriptBox[
            OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
          RowBox[{"R", "L"}]]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.917849130509157*^9, 3.917849234368658*^9, 
  3.917849479981105*^9, 3.917934623150519*^9, 3.918017583598634*^9, 
  3.918034085498518*^9, 3.918091846040133*^9, 3.9180921627857637`*^9, 
  3.918092206761187*^9, 3.918094181499085*^9, 3.918094305961653*^9, 
  3.918094415621024*^9, 3.920605872904237*^9, 3.9206060143347063`*^9, 
  3.920621470829165*^9, 3.920621524822774*^9, 3.92103197521209*^9, 
  3.9210320868986273`*^9, 3.921032416530765*^9, 3.921032619565567*^9, 
  3.921032890106094*^9, 3.921033275906641*^9, 3.923635216326921*^9, 
  3.923725223682424*^9, 3.923725538310288*^9, 3.923729652024601*^9, 
  3.923964933180155*^9, 3.923974029222767*^9, 3.923980355195519*^9, 
  3.924077723120829*^9, 3.924077929582708*^9, 3.924081737049584*^9, 
  3.92414111841748*^9, 3.9241458953763323`*^9, 3.924156488121133*^9, 
  3.924156604575178*^9},
 CellLabel->"Out[97]=",ExpressionUUID->"83560076-d45f-451b-92eb-75924d04517b"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Export", "[", 
   RowBox[{
    RowBox[{"FileNameJoin", "[", 
     RowBox[{"{", 
      RowBox[{"ResultsDir", ",", " ", "\"\<Zxsec.m\>\""}], "}"}], "]"}], ",", 
    " ", 
    RowBox[{
     RowBox[{"ZXSecNBW", " ", "//", " ", "FullForm"}], " ", "//", " ", 
     "ToString"}]}], "]"}], ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.921032820698803*^9, 3.9210328640091143`*^9}, 
   3.921033253128887*^9},
 CellLabel->"In[98]:=",ExpressionUUID->"db9db13b-e32d-4b6f-a35f-8aac883067d7"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{"SquarkXSecNBWAB", " ", "=", " ", 
  RowBox[{
   RowBox[{"XSecPrefactor", " ", "*", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          FractionBox["TotXSecNBWAB", "XSecPrefactor"], " ", "//.", " ", 
          RowBox[{
           RowBox[{
            RowBox[{"Zij", "[", "\"\<NN\>\"", "]"}], "[", "__", "]"}], " ", "->",
            " ", "0"}]}], " ", "//", "\n", "\t", "Expand"}], " ", "//", "\n", 
        "\t", "CollectEffCharges"}], " ", "//", "\n", "\t", 
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
     ")"}]}], " ", "//", " ", "FRH"}]}], "\n", 
 RowBox[{"SquarkXSecNBWAA", " ", "=", " ", 
  RowBox[{
   RowBox[{"XSecPrefactor", " ", "*", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          FractionBox["TotXSecNBWAA", "XSecPrefactor"], " ", "//.", " ", 
          RowBox[{
           RowBox[{
            RowBox[{"Zij", "[", "\"\<NN\>\"", "]"}], "[", "__", "]"}], " ", "->",
            " ", "0"}]}], " ", "//", "\n", "\t", "Expand"}], " ", "//", "\n", 
        "\t", "CollectEffCharges"}], " ", "//", "\n", "\t", 
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
     ")"}]}], " ", "//", " ", "FRH"}]}]}], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.914746873197792*^9, 3.9147468939449778`*^9}, {
   3.91503660056435*^9, 3.915036603624197*^9}, {3.9150967768941097`*^9, 
   3.915096802688496*^9}, {3.915096847045466*^9, 3.915096925220744*^9}, {
   3.915096962097036*^9, 3.915096972642489*^9}, {3.915097031837044*^9, 
   3.9150970333905973`*^9}, {3.91509745908696*^9, 3.915097472801931*^9}, {
   3.915097506788953*^9, 3.915097587482009*^9}, {3.915111768186862*^9, 
   3.915111771741173*^9}, 3.915111812232143*^9, {3.915469130433546*^9, 
   3.91546913578074*^9}, 3.915469179500188*^9, {3.915469604349071*^9, 
   3.915469608055275*^9}, {3.916457694808525*^9, 3.9164578974010763`*^9}, {
   3.916466506869784*^9, 3.916466634071942*^9}, {3.916466728568258*^9, 
   3.91646677110816*^9}, {3.91708849328343*^9, 3.917088508327692*^9}, {
   3.917088802821553*^9, 3.91708880495151*^9}, {3.917089071467186*^9, 
   3.917089094571553*^9}, {3.917589683022316*^9, 3.9175896930645533`*^9}, 
   3.917590141620048*^9, {3.91759270075542*^9, 3.917592702197212*^9}, {
   3.917593368241049*^9, 3.917593382257863*^9}, {3.917600100661583*^9, 
   3.917600109474769*^9}, 3.917600172141342*^9, {3.9176010601332273`*^9, 
   3.917601065513609*^9}, {3.917601147937063*^9, 3.917601167558397*^9}, {
   3.920621485506316*^9, 3.920621485509186*^9}, {3.921032398226716*^9, 
   3.921032398302278*^9}, {3.921032600188609*^9, 3.921032628596977*^9}},
 CellLabel->"In[99]:=",ExpressionUUID->"4237120d-d695-49ec-bacb-80440af54df9"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SuperscriptBox["s", 
      RowBox[{"3", "/", "2"}]], " ", 
     SubscriptBox["C", "A"]}]], "\[Pi]", " ", "p", " ", 
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
      RowBox[{"Re", "(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "B"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        FractionBox[
         RowBox[{"2", " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", "i", "2"], "-", 
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["u", "~"], 
              RowBox[{"1", ",", "A"}]], "2"]}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["u", "~"], 
              RowBox[{"1", ",", "A"}]], "2"], "-", 
            SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
          RowBox[{"log", "(", 
           FractionBox[
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"], "+", 
             RowBox[{
              FractionBox["1", "2"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", 
                 SubsuperscriptBox["m", "i", "2"]}], "-", 
                SubsuperscriptBox["m", "j", "2"], "+", 
                RowBox[{"2", " ", "p", " ", 
                 SqrtBox["s"]}], "+", "s"}], ")"}]}]}], 
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"], "+", 
             RowBox[{
              FractionBox["1", "2"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", 
                 SubsuperscriptBox["m", "i", "2"]}], "-", 
                SubsuperscriptBox["m", "j", "2"], "-", 
                RowBox[{"2", " ", "p", " ", 
                 SqrtBox["s"]}], "+", "s"}], ")"}]}]}]], ")"}]}], 
         RowBox[{"p", " ", 
          SqrtBox["s"], " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["u", "~"], 
              RowBox[{"1", ",", "A"}]], "2"], "-", 
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["u", "~"], 
              RowBox[{"1", ",", "B"}]], "2"]}], ")"}]}]], "+", "2"}], ")"}]}],
      "+", 
     RowBox[{"2", " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "L"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"L", "R"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "R"}]], " ", 
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "B"}], 
          RowBox[{"R", "L"}]]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"2", "-", 
        FractionBox[
         RowBox[{"2", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             SubsuperscriptBox["m", "i", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               SubsuperscriptBox["m", "j", "2"], "-", 
               SubsuperscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["u", "~"], 
                 RowBox[{"1", ",", "A"}]], "2"]}], ")"}]}], "+", 
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               SubsuperscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["u", "~"], 
                 RowBox[{"1", ",", "A"}]], "2"], "-", 
               SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}]}], ")"}],
           " ", 
          RowBox[{"log", "(", 
           FractionBox[
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"], "+", 
             RowBox[{
              FractionBox["1", "2"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", 
                 SubsuperscriptBox["m", "i", "2"]}], "-", 
                SubsuperscriptBox["m", "j", "2"], "+", 
                RowBox[{"2", " ", "p", " ", 
                 SqrtBox["s"]}], "+", "s"}], ")"}]}]}], 
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"], "+", 
             RowBox[{
              FractionBox["1", "2"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", 
                 SubsuperscriptBox["m", "i", "2"]}], "-", 
                SubsuperscriptBox["m", "j", "2"], "-", 
                RowBox[{"2", " ", "p", " ", 
                 SqrtBox["s"]}], "+", "s"}], ")"}]}]}]], ")"}]}], 
         RowBox[{"p", " ", 
          SqrtBox["s"], " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["u", "~"], 
              RowBox[{"1", ",", "A"}]], "2"], "+", 
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["u", "~"], 
              RowBox[{"1", ",", "B"}]], "2"], "-", 
            SubsuperscriptBox["m", "i", "2"], "-", 
            SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}]]}], ")"}]}],
      "-", 
     FractionBox[
      RowBox[{"4", " ", 
       SqrtBox["s"], " ", 
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"], " ", 
       RowBox[{"Re", "(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]], " ", 
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "B"}], 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       RowBox[{"log", "(", 
        FractionBox[
         RowBox[{
          SubsuperscriptBox["m", 
           SubscriptBox[
            OverscriptBox["u", "~"], 
            RowBox[{"1", ",", "A"}]], "2"], "+", 
          RowBox[{
           FractionBox["1", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "i", "2"]}], "-", 
             SubsuperscriptBox["m", "j", "2"], "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}], "+", "s"}], ")"}]}]}], 
         RowBox[{
          SubsuperscriptBox["m", 
           SubscriptBox[
            OverscriptBox["u", "~"], 
            RowBox[{"1", ",", "A"}]], "2"], "+", 
          RowBox[{
           FractionBox["1", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "i", "2"]}], "-", 
             SubsuperscriptBox["m", "j", "2"], "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}], "+", "s"}], ")"}]}]}]], ")"}]}], 
      RowBox[{"p", " ", 
       RowBox[{"(", 
        RowBox[{
         SubsuperscriptBox["m", 
          SubscriptBox[
           OverscriptBox["u", "~"], 
           RowBox[{"1", ",", "A"}]], "2"], "+", 
         SubsuperscriptBox["m", 
          SubscriptBox[
           OverscriptBox["u", "~"], 
           RowBox[{"1", ",", "B"}]], "2"], "-", 
         SubsuperscriptBox["m", "i", "2"], "-", 
         SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}]]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.91784913067466*^9, 3.917849234536126*^9, 3.917849480154356*^9, 
   3.917934623326103*^9, 3.918017583760784*^9, 3.918034085735566*^9, 
   3.9180918462738047`*^9, 3.918092162951911*^9, 3.918092206940646*^9, 
   3.9180941816767397`*^9, 3.918094306137319*^9, 3.918094415790847*^9, 
   3.920605872944734*^9, 3.920606014501877*^9, 3.920621471108776*^9, 
   3.9206215249942293`*^9, 3.921031975363316*^9, 3.921032097315959*^9, 
   3.921032416730262*^9, {3.921032621899801*^9, 3.92103262934271*^9}, 
   3.921032890305014*^9, 3.921033276121329*^9, 3.923635216545819*^9, 
   3.923725223896346*^9, 3.923725538525468*^9, 3.923729652229113*^9, 
   3.923964933382594*^9, 3.923974029437545*^9, 3.92398035540956*^9, 
   3.9240777233404*^9, 3.924077929815861*^9, 3.92408173729662*^9, 
   3.924141118633161*^9, 3.9241458955917177`*^9, 3.9241564883034353`*^9, 
   3.924156604758896*^9},
 CellLabel->"Out[99]=",ExpressionUUID->"e95c3e29-6222-4bf8-8c8c-b531da2fbe28"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SuperscriptBox["s", 
      RowBox[{"3", "/", "2"}]], " ", 
     SubscriptBox["C", "A"]}]], "\[Pi]", " ", "p", " ", 
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
       RowBox[{
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"L", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", 
          RowBox[{
           OverscriptBox["u", "~"], "A"}], 
          RowBox[{"R", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", 
              RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        FractionBox[
         RowBox[{"2", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             RowBox[{"2", " ", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "2"]}]}], "+", 
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
          RowBox[{"log", "(", 
           FractionBox[
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"], "+", 
             RowBox[{
              FractionBox["1", "2"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", 
                 SubsuperscriptBox["m", "i", "2"]}], "-", 
                SubsuperscriptBox["m", "j", "2"], "+", 
                RowBox[{"2", " ", "p", " ", 
                 SqrtBox["s"]}], "+", "s"}], ")"}]}]}], 
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"], "+", 
             RowBox[{
              FractionBox["1", "2"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", 
                 SubsuperscriptBox["m", "i", "2"]}], "-", 
                SubsuperscriptBox["m", "j", "2"], "-", 
                RowBox[{"2", " ", "p", " ", 
                 SqrtBox["s"]}], "+", "s"}], ")"}]}]}]], ")"}]}], 
         RowBox[{"p", " ", 
          SqrtBox["s"]}]], "+", 
        FractionBox[
         RowBox[{
          RowBox[{"8", " ", 
           SubsuperscriptBox["m", "i", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", "j", "2"], "-", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"]}], ")"}]}], "+", 
          RowBox[{"4", " ", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "A"}]], "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"2", " ", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "2"]}], "-", 
             RowBox[{"2", " ", 
              SubsuperscriptBox["m", "j", "2"]}], "+", "s"}], ")"}]}]}], 
         RowBox[{
          RowBox[{
           SubsuperscriptBox["m", "i", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", "j", "2"], "-", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"]}], ")"}]}], "+", 
          RowBox[{
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "A"}]], "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"], "-", 
             SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}]}]]}], 
       ")"}]}], "+", 
     RowBox[{"2", " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        SubsuperscriptBox["Q", 
         RowBox[{
          OverscriptBox["u", "~"], "A"}], 
         RowBox[{"L", "R"}]], " ", 
        SubsuperscriptBox["Q", 
         RowBox[{
          OverscriptBox["u", "~"], "A"}], 
         RowBox[{"R", "L"}]]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"4", "-", 
        FractionBox[
         RowBox[{"4", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             SubsuperscriptBox["m", "i", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               SubsuperscriptBox["m", "j", "2"], "-", 
               SubsuperscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["u", "~"], 
                 RowBox[{"1", ",", "A"}]], "2"]}], ")"}]}], "+", 
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               SubsuperscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["u", "~"], 
                 RowBox[{"1", ",", "A"}]], "2"], "-", 
               SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}]}], ")"}],
           " ", 
          RowBox[{"log", "(", 
           FractionBox[
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"], "+", 
             RowBox[{
              FractionBox["1", "2"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", 
                 SubsuperscriptBox["m", "i", "2"]}], "-", 
                SubsuperscriptBox["m", "j", "2"], "+", 
                RowBox[{"2", " ", "p", " ", 
                 SqrtBox["s"]}], "+", "s"}], ")"}]}]}], 
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"], "+", 
             RowBox[{
              FractionBox["1", "2"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"-", 
                 SubsuperscriptBox["m", "i", "2"]}], "-", 
                SubsuperscriptBox["m", "j", "2"], "-", 
                RowBox[{"2", " ", "p", " ", 
                 SqrtBox["s"]}], "+", "s"}], ")"}]}]}]], ")"}]}], 
         RowBox[{"p", " ", 
          SqrtBox["s"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"2", " ", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"]}], "-", 
            SubsuperscriptBox["m", "i", "2"], "-", 
            SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}]]}], ")"}]}],
      "-", 
     FractionBox[
      RowBox[{"4", " ", 
       SqrtBox["s"], " ", 
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"], " ", 
       RowBox[{"Re", "(", 
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{
             OverscriptBox["u", "~"], "A"}], 
            RowBox[{"L", "L"}]], ")"}], "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           SubsuperscriptBox["Q", 
            RowBox[{
             OverscriptBox["u", "~"], "A"}], 
            RowBox[{"R", "R"}]], ")"}], "2"]}], ")"}], " ", 
       RowBox[{"log", "(", 
        FractionBox[
         RowBox[{
          SubsuperscriptBox["m", 
           SubscriptBox[
            OverscriptBox["u", "~"], 
            RowBox[{"1", ",", "A"}]], "2"], "+", 
          RowBox[{
           FractionBox["1", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "i", "2"]}], "-", 
             SubsuperscriptBox["m", "j", "2"], "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}], "+", "s"}], ")"}]}]}], 
         RowBox[{
          SubsuperscriptBox["m", 
           SubscriptBox[
            OverscriptBox["u", "~"], 
            RowBox[{"1", ",", "A"}]], "2"], "+", 
          RowBox[{
           FractionBox["1", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "i", "2"]}], "-", 
             SubsuperscriptBox["m", "j", "2"], "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}], "+", "s"}], ")"}]}]}]], ")"}]}], 
      RowBox[{"p", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", 
          SubsuperscriptBox["m", 
           SubscriptBox[
            OverscriptBox["u", "~"], 
            RowBox[{"1", ",", "A"}]], "2"]}], "-", 
         SubsuperscriptBox["m", "i", "2"], "-", 
         SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}]]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.91784913067466*^9, 3.917849234536126*^9, 3.917849480154356*^9, 
   3.917934623326103*^9, 3.918017583760784*^9, 3.918034085735566*^9, 
   3.9180918462738047`*^9, 3.918092162951911*^9, 3.918092206940646*^9, 
   3.9180941816767397`*^9, 3.918094306137319*^9, 3.918094415790847*^9, 
   3.920605872944734*^9, 3.920606014501877*^9, 3.920621471108776*^9, 
   3.9206215249942293`*^9, 3.921031975363316*^9, 3.921032097315959*^9, 
   3.921032416730262*^9, {3.921032621899801*^9, 3.92103262934271*^9}, 
   3.921032890305014*^9, 3.921033276121329*^9, 3.923635216545819*^9, 
   3.923725223896346*^9, 3.923725538525468*^9, 3.923729652229113*^9, 
   3.923964933382594*^9, 3.923974029437545*^9, 3.92398035540956*^9, 
   3.9240777233404*^9, 3.924077929815861*^9, 3.92408173729662*^9, 
   3.924141118633161*^9, 3.9241458955917177`*^9, 3.9241564883034353`*^9, 
   3.924156604874518*^9},
 CellLabel->
  "Out[100]=",ExpressionUUID->"b29b2edc-21a2-4570-b9c0-71d1dfc8379f"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"InterferenceXSecNBW", " ", "=", " ", 
  RowBox[{
   RowBox[{"XSecPrefactor", " ", "*", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          RowBox[{
           FractionBox["TotXSecNBWAB", "XSecPrefactor"], " ", "//", "\n", 
           "\t", 
           RowBox[{
            RowBox[{"SelectNotFree2", "[", 
             RowBox[{"#", ",", " ", "Qtu"}], "]"}], "&"}]}], " ", "//", " ", 
          RowBox[{
           RowBox[{"SelectNotFree2", "[", 
            RowBox[{"#", ",", " ", "Zij"}], "]"}], "&"}]}], " ", "//", "\n", 
         "\t", "Expand"}], " ", "//", "\n", "\t", "CollectEffCharges"}], " ", 
       "//", "\n", "\t", 
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
              RowBox[{
               RowBox[{"-", "a_"}], " ", 
               RowBox[{"b_", "\[Conjugate]"}]}], " ", "-", " ", 
              RowBox[{
               RowBox[{"a_", "\[Conjugate]"}], "b_"}]}], " ", "->", " ", 
             RowBox[{
              RowBox[{"-", "2"}], 
              RowBox[{"Re", "[", 
               RowBox[{"a", " ", 
                RowBox[{"b", "\[Conjugate]"}]}], "]"}]}]}]}], "}"}]}], "]"}], 
        "&"}]}], " ", "//", "\n", "\t", 
      RowBox[{
       RowBox[{"ReplaceRepeated", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"2", 
              RowBox[{"Re", "[", "a_", "]"}]}], " ", "+", " ", 
             RowBox[{"2", 
              RowBox[{"Re", "[", "b_", "]"}]}]}], " ", "->", " ", 
            RowBox[{"2", 
             RowBox[{"Re", "[", 
              RowBox[{"a", " ", "+", " ", "b"}], "]"}]}]}], ",", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"2", 
              RowBox[{"Re", "[", "a_", "]"}]}], " ", "-", " ", 
             RowBox[{"2", 
              RowBox[{"Re", "[", "b_", "]"}]}]}], " ", "->", " ", 
            RowBox[{"2", 
             RowBox[{"Re", "[", 
              RowBox[{"a", " ", "-", " ", "b"}], "]"}]}]}]}], "}"}]}], "]"}], 
       "&"}]}], ")"}]}], " ", "//", " ", "FRH"}]}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.914746916474818*^9, 3.914746993910339*^9}, {
   3.914747150386434*^9, 3.914747296680312*^9}, {3.91474734559478*^9, 
   3.914747404170086*^9}, {3.915097189384449*^9, 3.915097216575899*^9}, {
   3.9151113380826*^9, 3.915111348164782*^9}, {3.915192300819622*^9, 
   3.915192305413743*^9}, {3.915469185529615*^9, 3.915469214119226*^9}, {
   3.915469650483439*^9, 3.915469692923979*^9}, {3.916457924892618*^9, 
   3.916457926667034*^9}, {3.916466625456874*^9, 3.916466627190196*^9}, 
   3.916466775671522*^9, {3.917088517179667*^9, 3.917088529646981*^9}, {
   3.917600087418991*^9, 3.917600089590603*^9}, {3.9176010369060917`*^9, 
   3.917601073010879*^9}, {3.917601129254214*^9, 3.917601141132313*^9}, {
   3.9176901373653316`*^9, 3.917690144699491*^9}, {3.9206214855177*^9, 
   3.920621485522608*^9}, {3.92103110704606*^9, 3.921031121130576*^9}, {
   3.921032487402734*^9, 3.921032525120377*^9}, {3.9210325656867647`*^9, 
   3.921032588727639*^9}, {3.924001791441594*^9, 3.924001791587482*^9}, {
   3.924141081891222*^9, 3.924141089081669*^9}, {3.924141147822625*^9, 
   3.924141217454794*^9}, {3.924141253884185*^9, 3.924141254112074*^9}, {
   3.924146349241808*^9, 3.924146359980215*^9}},
 CellLabel->
  "In[101]:=",ExpressionUUID->"dd9d7b8d-adbd-4082-b1df-d5bd055d6a29"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SuperscriptBox["s", 
      RowBox[{"3", "/", "2"}]], " ", 
     SubscriptBox["C", "A"]}]], 
   RowBox[{"\[Pi]", " ", "p", " ", 
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
         FractionBox[
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", "i", "2"], "-", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"], "-", 
             SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
           RowBox[{"log", "(", 
            FractionBox[
             RowBox[{
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "2"], "+", 
              RowBox[{
               FractionBox["1", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  SubsuperscriptBox["m", "i", "2"]}], "-", 
                 SubsuperscriptBox["m", "j", "2"], "+", 
                 RowBox[{"2", " ", "p", " ", 
                  SqrtBox["s"]}], "+", "s"}], ")"}]}]}], 
             RowBox[{
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "2"], "+", 
              RowBox[{
               FractionBox["1", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  SubsuperscriptBox["m", "i", "2"]}], "-", 
                 SubsuperscriptBox["m", "j", "2"], "-", 
                 RowBox[{"2", " ", "p", " ", 
                  SqrtBox["s"]}], "+", "s"}], ")"}]}]}]], ")"}]}], 
          RowBox[{"p", " ", 
           SqrtBox["s"]}]], "+", 
         RowBox[{"2", " ", 
          SubsuperscriptBox["m", 
           SubscriptBox[
            OverscriptBox["u", "~"], 
            RowBox[{"1", ",", "A"}]], "2"]}], "-", 
         SubsuperscriptBox["m", "i", "2"], "-", 
         SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}], " ", 
       RowBox[{"Re", "(", 
        RowBox[{
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"L", "L"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Q", 
               RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
               RowBox[{"R", "R"}]], ")"}]},
           "Conjugate"], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
      FractionBox[
       RowBox[{"2", " ", 
        SqrtBox["s"], " ", 
        SubscriptBox["m", "i"], " ", 
        SubscriptBox["m", "j"], " ", 
        RowBox[{"log", "(", 
         FractionBox[
          RowBox[{
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "A"}]], "2"], "+", 
           RowBox[{
            FractionBox["1", "2"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", 
               SubsuperscriptBox["m", "i", "2"]}], "-", 
              SubsuperscriptBox["m", "j", "2"], "+", 
              RowBox[{"2", " ", "p", " ", 
               SqrtBox["s"]}], "+", "s"}], ")"}]}]}], 
          RowBox[{
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["u", "~"], 
             RowBox[{"1", ",", "A"}]], "2"], "+", 
           RowBox[{
            FractionBox["1", "2"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", 
               SubsuperscriptBox["m", "i", "2"]}], "-", 
              SubsuperscriptBox["m", "j", "2"], "-", 
              RowBox[{"2", " ", "p", " ", 
               SqrtBox["s"]}], "+", "s"}], ")"}]}]}]], ")"}], " ", 
        RowBox[{"Re", "(", 
         RowBox[{
          RowBox[{"-", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Q", 
                 RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                 RowBox[{"L", "L"}]], ")"}]},
             "Conjugate"], " ", 
            SubsuperscriptBox["Z", 
             RowBox[{
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "i", "0"], 
              SubsuperscriptBox[
               OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
             RowBox[{"L", "R"}]]}]}], "-", 
          RowBox[{
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Q", 
                RowBox[{"\!\(\*OverscriptBox[\(u\), \(~\)]\)", "A"}], 
                RowBox[{"R", "R"}]], ")"}]},
            "Conjugate"], " ", 
           SubsuperscriptBox["Z", 
            RowBox[{
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "L"}]]}], "+", 
          RowBox[{
           SubsuperscriptBox["Q", 
            RowBox[{
             OverscriptBox["u", "~"], "A"}], 
            RowBox[{"L", "L"}]], " ", 
           SubsuperscriptBox["Z", 
            RowBox[{
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"L", "L"}]]}], "+", 
          RowBox[{
           SubsuperscriptBox["Q", 
            RowBox[{
             OverscriptBox["u", "~"], "A"}], 
            RowBox[{"R", "R"}]], " ", 
           SubsuperscriptBox["Z", 
            RowBox[{
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"], 
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
            RowBox[{"R", "R"}]]}]}], ")"}]}], "p"], "+", 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         FractionBox[
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", "i", "2"], "-", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["m", "j", "2"], "-", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["u", "~"], 
               RowBox[{"1", ",", "A"}]], "2"]}], ")"}], " ", 
           RowBox[{"log", "(", 
            FractionBox[
             RowBox[{
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "2"], "+", 
              RowBox[{
               FractionBox["1", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  SubsuperscriptBox["m", "i", "2"]}], "-", 
                 SubsuperscriptBox["m", "j", "2"], "+", 
                 RowBox[{"2", " ", "p", " ", 
                  SqrtBox["s"]}], "+", "s"}], ")"}]}]}], 
             RowBox[{
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["u", "~"], 
                RowBox[{"1", ",", "A"}]], "2"], "+", 
              RowBox[{
               FractionBox["1", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  SubsuperscriptBox["m", "i", "2"]}], "-", 
                 SubsuperscriptBox["m", "j", "2"], "-", 
                 RowBox[{"2", " ", "p", " ", 
                  SqrtBox["s"]}], "+", "s"}], ")"}]}]}]], ")"}]}], 
          RowBox[{"p", " ", 
           SqrtBox["s"]}]], "-", 
         RowBox[{"2", " ", 
          SubsuperscriptBox["m", 
           SubscriptBox[
            OverscriptBox["u", "~"], 
            RowBox[{"1", ",", "A"}]], "2"]}], "+", 
         SubsuperscriptBox["m", "i", "2"], "+", 
         SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}], " ", 
       RowBox[{"Re", "(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"L", "L"}]], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"L", "R"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", 
           RowBox[{
            OverscriptBox["u", "~"], "A"}], 
           RowBox[{"R", "R"}]], " ", 
          SubsuperscriptBox["Z", 
           RowBox[{
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "i", "0"], 
            SubsuperscriptBox[
             OverscriptBox["\[Chi]", "~"], "j", "0"]}], 
           RowBox[{"R", "L"}]]}]}], ")"}]}]}], ")"}]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.917849130902939*^9, 3.917849234784333*^9, 3.917849480379156*^9, 
   3.917934623592738*^9, 3.91801758403061*^9, 3.9180251630009127`*^9, 
   3.918034085952263*^9, 3.918091846514453*^9, 3.918092163167019*^9, 
   3.918092207228837*^9, 3.918094181932185*^9, 3.918094306390229*^9, 
   3.918094416069624*^9, 3.920605873037368*^9, 3.920606014860841*^9, 
   3.920621471486501*^9, 3.920621525265183*^9, 3.9210319756996193`*^9, 
   3.9210324170567427`*^9, 3.921032542390749*^9, 3.921032589386468*^9, 
   3.921032890568304*^9, 3.921033276384528*^9, 3.923635216802058*^9, 
   3.923725224161927*^9, 3.923725538820759*^9, 3.923729652483601*^9, 
   3.923964933691887*^9, 3.923974029693733*^9, 3.923980355661767*^9, 
   3.924001805395199*^9, 3.924077723629517*^9, 3.924077930069648*^9, 
   3.924081737581794*^9, 3.924141118885537*^9, {3.92414121332329*^9, 
   3.924141217937865*^9}, 3.924141254844641*^9, 3.9241458959091*^9, 
   3.924146360946588*^9, 3.92415648859769*^9, 3.9241566050491447`*^9},
 CellLabel->
  "Out[101]=",ExpressionUUID->"49fb0685-4112-415e-a567-a11d13293716"]
}, Open  ]]
}, Closed]]
}, Open  ]]
},
WindowSize->{715.5, 785.25},
WindowMargins->{{Automatic, -717.75}, {Automatic, -22.5}},
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
Cell[580, 22, 652, 20, 168, "Title",ExpressionUUID->"3113a770-5abe-44cf-abcb-7ce35a303d51"],
Cell[CellGroupData[{
Cell[1257, 46, 161, 3, 67, "Section",ExpressionUUID->"623a1251-67d0-47eb-8946-d965d9acab62"],
Cell[1421, 51, 312, 7, 58, "Text",ExpressionUUID->"c9b6c74b-bed6-40d7-93a2-94b88f4a1423"],
Cell[CellGroupData[{
Cell[1758, 62, 1530, 40, 305, "Code",ExpressionUUID->"8f3aec24-40f5-4cbe-be7d-b10e746f9f39"],
Cell[CellGroupData[{
Cell[3313, 106, 3544, 82, 53, "Print",ExpressionUUID->"efd6ecfb-6822-4506-bca8-233fed11228c"],
Cell[6860, 190, 2727, 63, 78, "Print",ExpressionUUID->"25a982b6-df66-4cc6-8a22-6e0c60d83987"],
Cell[9590, 255, 1264, 21, 49, "Print",ExpressionUUID->"29eb7fc4-5151-4962-ab48-b7e4d222e87d"],
Cell[10857, 278, 1310, 23, 49, "Print",ExpressionUUID->"219b2f7b-9d97-48ac-8375-0284ebcc112e"],
Cell[12170, 303, 2914, 70, 53, "Print",ExpressionUUID->"71b4dedf-b9f3-413c-94e0-d2ee86d6d919"],
Cell[15087, 375, 1200, 20, 26, "Print",ExpressionUUID->"98f15000-92be-417b-b6d3-349cad0aff33"],
Cell[16290, 397, 1236, 21, 26, "Print",ExpressionUUID->"da7b4ba0-3d9a-4c38-baa1-b13e0d341ffc"],
Cell[17529, 420, 1091, 17, 24, "Print",ExpressionUUID->"0077bb90-d825-4d31-9a2f-bf79ecb1ddce"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[18669, 443, 797, 19, 129, "Code",ExpressionUUID->"cc6ff964-d048-45bc-be5a-ea7e51f04364"],
Cell[19469, 464, 804, 16, 44, "Message",ExpressionUUID->"6ac60f83-1b71-4cdd-a27b-7c3433f77495"]
}, Open  ]],
Cell[20288, 483, 507, 11, 53, "Code",ExpressionUUID->"aea92a0e-64bf-4b68-917a-d10ba669d15b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[20832, 499, 263, 5, 67, "Section",ExpressionUUID->"1c0417f8-1640-4d22-b557-b0b5f20add28"],
Cell[21098, 506, 201, 4, 35, "Text",ExpressionUUID->"4186d4a3-bada-4c67-8571-a260e389a999"],
Cell[CellGroupData[{
Cell[21324, 514, 2649, 66, 197, "Code",ExpressionUUID->"cc16bb95-c627-4203-b579-2002f02b5044",
 InitializationCell->False],
Cell[23976, 582, 15982, 373, 70, "Print",ExpressionUUID->"48acfebf-8b25-4547-a4f9-7760f1f73a66"]
}, Open  ]],
Cell[39973, 958, 1792, 39, 247, "Code",ExpressionUUID->"f495b4e2-7d04-4f0e-81e0-efbc9664e28e",
 InitializationCell->False],
Cell[41768, 999, 1573, 41, 92, "Code",ExpressionUUID->"10140aeb-b31b-4b2d-b756-899697c815c6",
 InitializationCell->False],
Cell[43344, 1042, 632, 16, 35, "Text",ExpressionUUID->"41d39d94-ff21-4cc2-bd87-c1bdcf6657c6"],
Cell[CellGroupData[{
Cell[44001, 1062, 3305, 97, 149, "Code",ExpressionUUID->"36440b80-fc3f-4d7b-8c26-ddfba8b0a672",
 InitializationCell->False],
Cell[47309, 1161, 4825, 155, 70, "Output",ExpressionUUID->"2bb2affb-327a-4c14-97d2-ab9e6b8ed952"],
Cell[52137, 1318, 6362, 195, 70, "Output",ExpressionUUID->"b94186ec-f02e-40cf-a9f0-104c2a5987a9"],
Cell[58502, 1515, 6384, 196, 70, "Output",ExpressionUUID->"3b33a9e1-9e05-49ed-b5b4-a993328da468"]
}, Open  ]],
Cell[64901, 1714, 1168, 24, 99, "Text",ExpressionUUID->"ad4451d8-dd8b-43c5-875a-e647cd0c3590"],
Cell[66072, 1740, 1436, 29, 37, "Code",ExpressionUUID->"f02d3fee-ced5-4933-85ed-21304906c288",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[67533, 1773, 574, 12, 53, "Code",ExpressionUUID->"f9303044-0f3f-4fb2-9745-f461c544025c"],
Cell[68110, 1787, 12136, 423, 70, "Output",ExpressionUUID->"965b8a9e-f544-40b0-af85-76010b5e0bb5"]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[80295, 2216, 220, 4, 53, "Section",ExpressionUUID->"db7b6bd3-aba9-4133-abee-dd24733cb04e"],
Cell[80518, 2222, 156, 3, 35, "Text",ExpressionUUID->"71d22fcc-faba-4d9d-8e9e-15214f0a349e"],
Cell[80677, 2227, 2739, 82, 130, "Code",ExpressionUUID->"4fd47e62-1465-4ae8-a527-695c73775065",
 InitializationCell->False],
Cell[83419, 2311, 232, 8, 35, "Text",ExpressionUUID->"eed70a53-a9f9-4d6e-8657-7c9bb7fd69d5"],
Cell[83654, 2321, 2838, 82, 243, "Code",ExpressionUUID->"295fa500-9c88-4314-9ced-4708b80f6228",
 InitializationCell->False],
Cell[86495, 2405, 327, 7, 35, "Text",ExpressionUUID->"a16dff32-b1de-40fa-b9f0-571a2c1c4ea9"],
Cell[86825, 2414, 2247, 62, 149, "Code",ExpressionUUID->"49386eef-cb3a-49d4-8239-c6b69a372a74",
 InitializationCell->False],
Cell[89075, 2478, 589, 16, 35, "Text",ExpressionUUID->"0e0afdb3-dece-41cb-a644-0edb6fe016f4"],
Cell[CellGroupData[{
Cell[89689, 2498, 2297, 64, 117, "Code",ExpressionUUID->"3f2bc887-6a25-44af-844f-f468f45193db",
 InitializationCell->False],
Cell[91989, 2564, 2710, 74, 70, "Output",ExpressionUUID->"1d6e7cf1-14b1-4a9b-9062-f27ffef49efd"]
}, Open  ]],
Cell[94714, 2641, 249, 4, 35, "Text",ExpressionUUID->"4fd79281-2702-49b2-96b8-cbb432fb13de"],
Cell[94966, 2647, 2799, 74, 212, "Code",ExpressionUUID->"213691d6-4bdd-4d4f-8a41-03c7acde6dac",
 InitializationCell->False],
Cell[97768, 2723, 263, 6, 35, "Text",ExpressionUUID->"9857bd9e-f705-4970-8451-41d0c5407f3f"],
Cell[CellGroupData[{
Cell[98056, 2733, 1845, 52, 119, "Code",ExpressionUUID->"c5ea0e72-1190-4ac8-9c32-2f35ebbff4ab",
 InitializationCell->False],
Cell[99904, 2787, 2147, 55, 70, "Output",ExpressionUUID->"7ab96658-8da8-4a90-a958-f5959cadecd1"]
}, Open  ]],
Cell[102066, 2845, 300, 6, 35, "Text",ExpressionUUID->"6fead36b-cfbc-43d7-a66f-84c0c29ae693"],
Cell[CellGroupData[{
Cell[102391, 2855, 2319, 59, 119, "Code",ExpressionUUID->"023e21e7-f598-4047-a226-039e1e3bfc04",
 InitializationCell->False],
Cell[104713, 2916, 26939, 746, 70, "Output",ExpressionUUID->"7e5ccf10-1a06-4720-bdc4-049030103046"]
}, Open  ]],
Cell[CellGroupData[{
Cell[131689, 3667, 5221, 142, 241, "Code",ExpressionUUID->"2fc2d697-9537-40fc-91a2-909f061b1cb0",
 InitializationCell->False],
Cell[136913, 3811, 21799, 600, 70, "Output",ExpressionUUID->"85f13fa6-27ee-4e26-99b6-420253cc4394"]
}, Open  ]],
Cell[158727, 4414, 222, 5, 35, "Text",ExpressionUUID->"555ece66-f6f6-41bb-8d46-3e5c6a02969e"],
Cell[CellGroupData[{
Cell[158974, 4423, 1857, 48, 121, "Code",ExpressionUUID->"337361d3-737c-405b-9f1f-de884e445225",
 InitializationCell->False],
Cell[160834, 4473, 6135, 165, 70, "Output",ExpressionUUID->"0dc46f5e-04bc-49f7-93c4-b762f2694747"],
Cell[166972, 4640, 25634, 737, 70, "Output",ExpressionUUID->"cf9f0599-486a-4a0f-8c5f-5487b6ed5abb"],
Cell[192609, 5379, 12235, 344, 70, "Output",ExpressionUUID->"12ba4c34-606a-409e-8204-b69019653b84"]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[204893, 5729, 217, 4, 53, "Section",ExpressionUUID->"e6d77a07-eeec-44aa-b43b-b09b4f430ce9"],
Cell[205113, 5735, 152, 3, 35, "Text",ExpressionUUID->"41d62fbb-5fd7-4921-bfda-aadc1a46ba8f"],
Cell[205268, 5740, 689, 18, 81, "Text",ExpressionUUID->"4a29c216-215b-42ef-936a-10919eb7f1ef"],
Cell[205960, 5760, 2407, 62, 117, "Code",ExpressionUUID->"397c4165-053c-4434-b0b3-1dc17d856bb6",
 InitializationCell->False],
Cell[208370, 5824, 1675, 31, 31, "Text",ExpressionUUID->"9c701713-f89c-44f4-827a-c3d01beef026"],
Cell[CellGroupData[{
Cell[210070, 5859, 694, 14, 54, "Code",ExpressionUUID->"bf9d0b1a-94a4-4976-8666-fab9971a81ed",
 InitializationCell->False],
Cell[210767, 5875, 13082, 391, 70, "Output",ExpressionUUID->"194ef827-37d1-4bee-a9ea-127de0b93980"]
}, Open  ]],
Cell[223864, 6269, 236, 6, 35, "Text",ExpressionUUID->"1a15edf9-d50e-4ae1-a315-7b64b062e5b1"],
Cell[CellGroupData[{
Cell[224125, 6279, 496, 10, 37, "Code",ExpressionUUID->"c3aa978d-ccf6-4348-9406-9146fd7afbd9",
 InitializationCell->False],
Cell[224624, 6291, 87531, 2527, 70, "Output",ExpressionUUID->"d009daa5-1b97-442b-b9b3-82ef5f282533"]
}, Open  ]],
Cell[312170, 8821, 482, 12, 58, "Text",ExpressionUUID->"83473601-3d23-489f-8cce-22a9e8635e72"],
Cell[CellGroupData[{
Cell[312677, 8837, 2071, 49, 119, "Code",ExpressionUUID->"9185987c-c286-49a9-8e2c-abd135038383",
 InitializationCell->False],
Cell[314751, 8888, 9709, 288, 70, "Output",ExpressionUUID->"2adf43f1-3c4c-4eae-8128-f33b16ab7f98"]
}, Open  ]],
Cell[324475, 9179, 264, 6, 58, "Text",ExpressionUUID->"68798862-a218-4240-be60-22ac4c755df7"],
Cell[CellGroupData[{
Cell[324764, 9189, 3224, 86, 243, "Code",ExpressionUUID->"84fccf6c-3854-43dd-a418-82c19a1daeb5",
 InitializationCell->False],
Cell[327991, 9277, 5988, 172, 70, "Output",ExpressionUUID->"213744ba-62d1-4b7a-8b71-4951dbdf52b7"]
}, Open  ]],
Cell[333994, 9452, 312, 7, 58, "Text",ExpressionUUID->"0ab35704-1865-4dd1-8623-0a67881b741f"],
Cell[CellGroupData[{
Cell[334331, 9463, 4679, 118, 405, "Code",ExpressionUUID->"a9c2b922-9999-415d-a638-4a936907ff55",
 InitializationCell->False],
Cell[339013, 9583, 5979, 172, 70, "Output",ExpressionUUID->"bddecb9d-7257-4230-9c80-09da9a4db3c8"],
Cell[344995, 9757, 1372, 35, 70, "Print",ExpressionUUID->"ba993d15-3deb-476a-82f4-7b12c197a74f"]
}, Open  ]],
Cell[346382, 9795, 504, 10, 127, "Text",ExpressionUUID->"d7b1fe24-c08d-4517-9539-93e5f5eeb6b9"],
Cell[CellGroupData[{
Cell[346911, 9809, 2273, 62, 98, "Code",ExpressionUUID->"a8cd05b4-5749-429f-8a09-09100b2d1a24",
 InitializationCell->False],
Cell[349187, 9873, 3565, 95, 70, "Output",ExpressionUUID->"31713b7d-bcf6-4e5e-b4bb-059d0394c0d7"]
}, Open  ]],
Cell[352767, 9971, 256, 6, 58, "Text",ExpressionUUID->"ba5d2886-298c-4fc5-a754-5f912ec2aaef"],
Cell[353026, 9979, 828, 20, 58, "Code",ExpressionUUID->"cfcb6d40-48a0-4a93-b161-1b5e167c7546",
 InitializationCell->False],
Cell[353857, 10001, 4833, 117, 432, "Code",ExpressionUUID->"cf05098a-c654-4851-9767-0d7f27e0f162",
 InitializationCell->False],
Cell[358693, 10120, 457, 8, 35, "Text",ExpressionUUID->"6477fda9-da4f-4eed-bd85-8b91789df1b9"],
Cell[CellGroupData[{
Cell[359175, 10132, 4168, 101, 296, "Code",ExpressionUUID->"cc067aff-7f1b-4d41-9980-5e2652cb2b8b",
 InitializationCell->False],
Cell[363346, 10235, 34715, 930, 70, "Output",ExpressionUUID->"e499dcd6-6585-46ed-a630-4e7185f27600"]
}, Open  ]],
Cell[CellGroupData[{
Cell[398098, 11170, 4476, 106, 100, "Code",ExpressionUUID->"119efc26-3621-4842-a9da-e214aeb673c1",
 InitializationCell->False],
Cell[402577, 11278, 38014, 998, 70, "Output",ExpressionUUID->"600edc3f-c9f2-4fef-abf4-18bd0c2df77f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[440628, 12281, 3915, 92, 159, "Code",ExpressionUUID->"0bc5fa96-2082-46ed-95ec-6a841ef74b66",
 InitializationCell->False],
Cell[444546, 12375, 12422, 320, 70, "Output",ExpressionUUID->"68ab55bf-7516-4a4b-bc62-106c95669ea1"]
}, Open  ]],
Cell[CellGroupData[{
Cell[457005, 12700, 4419, 113, 180, "Code",ExpressionUUID->"32a9a206-aabb-41a4-9652-02a7dc12aae2",
 InitializationCell->False],
Cell[461427, 12815, 29422, 785, 70, "Output",ExpressionUUID->"dba337c9-b6a5-4f07-9ec0-d7e3ee89acbb"]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[490898, 13606, 272, 4, 53, "Section",ExpressionUUID->"79a2df7e-bcdb-4ad8-873d-f1d952727da1"],
Cell[CellGroupData[{
Cell[491195, 13614, 1752, 44, 77, "Code",ExpressionUUID->"63cd6937-646b-4d7e-9135-e0422782fb29",
 InitializationCell->False],
Cell[492950, 13660, 10448, 330, 70, "Output",ExpressionUUID->"91f0c50f-9867-4582-a4d7-573f8d287221"]
}, Open  ]],
Cell[CellGroupData[{
Cell[503435, 13995, 3553, 96, 269, "Code",ExpressionUUID->"391b503a-6be1-488c-a43c-95ebb0290002"],
Cell[506991, 14093, 21085, 588, 70, "Output",ExpressionUUID->"2adafb46-e089-4dfa-a5d5-6bd1c1937d38"],
Cell[528079, 14683, 7570, 239, 70, "Output",ExpressionUUID->"2255b7d9-1d80-4105-8b15-b04f45875829"]
}, Open  ]],
Cell[CellGroupData[{
Cell[535686, 14927, 2875, 83, 116, "Code",ExpressionUUID->"c234c08b-4072-4ab8-bbb3-7850c20b6ea5"],
Cell[538564, 15012, 1344, 36, 70, "Output",ExpressionUUID->"32aee55c-d194-4e5c-9a78-1bb6762b7a71"],
Cell[539911, 15050, 1346, 36, 70, "Output",ExpressionUUID->"cdb43bab-5710-4b80-ae7d-3f9c5e9b4242"],
Cell[541260, 15088, 1867, 50, 70, "Output",ExpressionUUID->"8e2579cc-a24a-4cd5-88a4-90ec746db786"],
Cell[543130, 15140, 1866, 50, 70, "Output",ExpressionUUID->"75b363a7-cc57-4975-9bbc-2178febbc13a"]
}, Open  ]],
Cell[545011, 15193, 482, 12, 58, "Text",ExpressionUUID->"abc93d39-7fcd-4e04-ae58-bf6583a04f00"],
Cell[CellGroupData[{
Cell[545518, 15209, 4358, 105, 255, "Code",ExpressionUUID->"99db3548-148d-4f00-b3c4-e9bd00c99d0f",
 InitializationCell->False],
Cell[549879, 15316, 3581, 100, 70, "Output",ExpressionUUID->"d0da5a11-6281-4de6-ab54-40e40b4220dd"]
}, Open  ]],
Cell[CellGroupData[{
Cell[553497, 15421, 3845, 106, 437, "Input",ExpressionUUID->"7f3a021c-4d56-4437-8040-30a959bb0693"],
Cell[557345, 15529, 2026, 56, 70, "Output",ExpressionUUID->"2f9912c1-a99b-472f-a22c-fa893a902892"]
}, Open  ]],
Cell[559386, 15588, 264, 6, 58, "Text",ExpressionUUID->"fdb48696-dc6f-4ced-9c27-b9261b8ee8c8"],
Cell[CellGroupData[{
Cell[559675, 15598, 2294, 54, 119, "Code",ExpressionUUID->"23169dde-eab6-4f3d-b340-33b66b5d4d1e",
 InitializationCell->False],
Cell[561972, 15654, 2109, 53, 70, "Output",ExpressionUUID->"b921c7eb-3699-4746-b4e5-15995bfea8c3"]
}, Open  ]],
Cell[564096, 15710, 510, 9, 35, "Text",ExpressionUUID->"d7a98154-a6a5-4c46-bd89-a4668a9e7150"],
Cell[564609, 15721, 3424, 73, 226, "Code",ExpressionUUID->"a53ec6d8-add7-4d7b-adad-1be8e206bef7",
 InitializationCell->False],
Cell[568036, 15796, 3252, 75, 238, "Code",ExpressionUUID->"f36e9b3e-dea0-4299-ba73-17e49e2e28f4",
 InitializationCell->False],
Cell[571291, 15873, 263, 4, 35, "Text",ExpressionUUID->"e15e5564-72a4-4553-99db-ef1df9f9da6a"],
Cell[CellGroupData[{
Cell[571579, 15881, 3866, 87, 123, "Code",ExpressionUUID->"dd17a93a-c11d-4868-b030-3ca8e29a8ec9",
 InitializationCell->False],
Cell[575448, 15970, 4877, 131, 70, "Output",ExpressionUUID->"83560076-d45f-451b-92eb-75924d04517b"]
}, Open  ]],
Cell[580340, 16104, 533, 14, 37, "Code",ExpressionUUID->"db9db13b-e32d-4b6f-a35f-8aac883067d7",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[580898, 16122, 6073, 143, 269, "Code",ExpressionUUID->"4237120d-d695-49ec-bacb-80440af54df9",
 InitializationCell->False],
Cell[586974, 16267, 10892, 302, 70, "Output",ExpressionUUID->"e95c3e29-6222-4bf8-8c8c-b531da2fbe28"],
Cell[597869, 16571, 11376, 314, 70, "Output",ExpressionUUID->"b29b2edc-21a2-4570-b9c0-71d1dfc8379f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[609282, 16890, 4360, 101, 163, "Code",ExpressionUUID->"dd9d7b8d-adbd-4082-b1df-d5bd055d6a29",
 InitializationCell->False],
Cell[613645, 16993, 11207, 297, 70, "Output",ExpressionUUID->"49fb0685-4112-415e-a567-a11d13293716"]
}, Open  ]]
}, Closed]]
}, Open  ]]
}
]
*)

