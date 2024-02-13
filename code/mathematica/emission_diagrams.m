(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[         0,          0]
NotebookDataLength[    246918,       6158]
NotebookOptionsPosition[    241891,       6068]
NotebookOutlinePosition[    242292,       6084]
CellTagsIndexPosition[    242249,       6081]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[{
 "Real gluon emission contribution to ",
 StyleBox["q",
  FontSlant->"Italic"],
 Cell[BoxData[
  FormBox[
   OverscriptBox["q", "_"], TraditionalForm]],ExpressionUUID->
  "d11f6fb6-63f9-4be2-8fa1-e3963fef8b18"],
 "\[Rule]",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubsuperscriptBox[
     OverscriptBox["\[Chi]", "~"], "i", "0"], 
    SubsuperscriptBox[
     OverscriptBox["\[Chi]", "~"], "j", "0"]}], TraditionalForm]],
  ExpressionUUID->"bcf1c32c-0728-432d-b230-95f129f16f6d"]
}], "Chapter",
 CellChangeTimes->{{3.916804416522263*^9, 
  3.916804441304147*^9}},ExpressionUUID->"fec586b3-531a-443b-b265-\
9e051ab842aa"],

Cell[CellGroupData[{

Cell["Initialisation", "Section",
 CellChangeTimes->{{3.9144763179811068`*^9, 
  3.914476339787057*^9}},ExpressionUUID->"c8818d2d-0e9e-4ae1-a139-\
984d4b9b2f3e"],

Cell["\<\
Load FeynCalc and FeynArts. Furthermore, this notebook makes use of three \
packages found in the \[OpenCurlyDoubleQuote]include\[CloseCurlyDoubleQuote] \
folder.\
\>", "Text",
 CellChangeTimes->{{3.914476486107745*^9, 
  3.914476566436034*^9}},ExpressionUUID->"c446614f-ae00-4194-a5d5-\
5256e1ef05de"],

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
 CellLabel->"In[1]:=",ExpressionUUID->"fe4ba823-5dbb-4b79-b197-6b649843303d"],

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
  3.916394127700233*^9, 3.916394299841368*^9, 3.916456459500406*^9, 
  3.916457539836578*^9, 3.916457616021718*^9, 3.916466432350707*^9, 
  3.916466693098659*^9, 3.916466815264049*^9, 3.916467312314778*^9, 
  3.916717720448441*^9, 3.916804927894213*^9, 3.916805373419744*^9, 
  3.916806484679153*^9, 3.9168067818452272`*^9, 3.91680721167093*^9, 
  3.9168076186706*^9, 3.9168077513919888`*^9, 3.916809081540016*^9, 
  3.916812981576869*^9, 3.916814361660473*^9, 3.916814570050551*^9, 
  3.916814679119184*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"72c80868-816a-4a3a-a06b-b5b7ae309a74"],

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
  3.916394127700233*^9, 3.916394299841368*^9, 3.916456459500406*^9, 
  3.916457539836578*^9, 3.916457616021718*^9, 3.916466432350707*^9, 
  3.916466693098659*^9, 3.916466815264049*^9, 3.916467312314778*^9, 
  3.916717720448441*^9, 3.916804927894213*^9, 3.916805373419744*^9, 
  3.916806484679153*^9, 3.9168067818452272`*^9, 3.91680721167093*^9, 
  3.9168076186706*^9, 3.9168077513919888`*^9, 3.916809081540016*^9, 
  3.916812981576869*^9, 3.916814361660473*^9, 3.916814570050551*^9, 
  3.916814679122374*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"1bca44c8-f023-4315-be23-d04b3d3bed49"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynCalc in your research, please evaluate \
FeynCalcHowToCite[] to learn how to cite this software.\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.9163938912882137`*^9, 3.916393985957651*^9, 
  3.916394127700233*^9, 3.916394299841368*^9, 3.916456459500406*^9, 
  3.916457539836578*^9, 3.916457616021718*^9, 3.916466432350707*^9, 
  3.916466693098659*^9, 3.916466815264049*^9, 3.916467312314778*^9, 
  3.916717720448441*^9, 3.916804927894213*^9, 3.916805373419744*^9, 
  3.916806484679153*^9, 3.9168067818452272`*^9, 3.91680721167093*^9, 
  3.9168076186706*^9, 3.9168077513919888`*^9, 3.916809081540016*^9, 
  3.916812981576869*^9, 3.916814361660473*^9, 3.916814570050551*^9, 
  3.916814679123107*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"cda02a32-d095-4420-a889-dd6a02d47dde"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"Please keep in mind that the proper academic attribution of \
our work is crucial to ensure the future development of this package!\"\>", 
   "Text",
   StripOnInput->False,
   FontSlant->Italic], TraditionalForm]], "Print",
 CellChangeTimes->{3.9163938912882137`*^9, 3.916393985957651*^9, 
  3.916394127700233*^9, 3.916394299841368*^9, 3.916456459500406*^9, 
  3.916457539836578*^9, 3.916457616021718*^9, 3.916466432350707*^9, 
  3.916466693098659*^9, 3.916466815264049*^9, 3.916467312314778*^9, 
  3.916717720448441*^9, 3.916804927894213*^9, 3.916805373419744*^9, 
  3.916806484679153*^9, 3.9168067818452272`*^9, 3.91680721167093*^9, 
  3.9168076186706*^9, 3.9168077513919888`*^9, 3.916809081540016*^9, 
  3.916812981576869*^9, 3.916814361660473*^9, 3.916814570050551*^9, 
  3.9168146791237288`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"780beaad-e247-4145-ada3-dd22bd36421e"],

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
  3.916394127700233*^9, 3.916394299841368*^9, 3.916456459500406*^9, 
  3.916457539836578*^9, 3.916457616021718*^9, 3.916466432350707*^9, 
  3.916466693098659*^9, 3.916466815264049*^9, 3.916467312314778*^9, 
  3.916717720448441*^9, 3.916804927894213*^9, 3.916805373419744*^9, 
  3.916806484679153*^9, 3.9168067818452272`*^9, 3.91680721167093*^9, 
  3.9168076186706*^9, 3.9168077513919888`*^9, 3.916809081540016*^9, 
  3.916812981576869*^9, 3.916814361660473*^9, 3.916814570050551*^9, 
  3.916814679159389*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"884c038d-66b8-4281-b6e2-e2e2dbea5016"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynArts in your research, please cite\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.9163938912882137`*^9, 3.916393985957651*^9, 
  3.916394127700233*^9, 3.916394299841368*^9, 3.916456459500406*^9, 
  3.916457539836578*^9, 3.916457616021718*^9, 3.916466432350707*^9, 
  3.916466693098659*^9, 3.916466815264049*^9, 3.916467312314778*^9, 
  3.916717720448441*^9, 3.916804927894213*^9, 3.916805373419744*^9, 
  3.916806484679153*^9, 3.9168067818452272`*^9, 3.91680721167093*^9, 
  3.9168076186706*^9, 3.9168077513919888`*^9, 3.916809081540016*^9, 
  3.916812981576869*^9, 3.916814361660473*^9, 3.916814570050551*^9, 
  3.916814679160372*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"f7f75c41-f8aa-4eb1-ad32-b3ffdba05405"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\" \[Bullet] T. Hahn, Comput. Phys. Commun., 140, 418-431, \
2001, arXiv:hep-ph/0012260\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.9163938912882137`*^9, 3.916393985957651*^9, 
  3.916394127700233*^9, 3.916394299841368*^9, 3.916456459500406*^9, 
  3.916457539836578*^9, 3.916457616021718*^9, 3.916466432350707*^9, 
  3.916466693098659*^9, 3.916466815264049*^9, 3.916467312314778*^9, 
  3.916717720448441*^9, 3.916804927894213*^9, 3.916805373419744*^9, 
  3.916806484679153*^9, 3.9168067818452272`*^9, 3.91680721167093*^9, 
  3.9168076186706*^9, 3.9168077513919888`*^9, 3.916809081540016*^9, 
  3.916812981576869*^9, 3.916814361660473*^9, 3.916814570050551*^9, 
  3.916814679160997*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"a483826c-4a82-4319-944c-2182c5121612"],

Cell["Successfully patched FeynArts.", "Print",
 CellChangeTimes->{3.9163938912882137`*^9, 3.916393985957651*^9, 
  3.916394127700233*^9, 3.916394299841368*^9, 3.916456459500406*^9, 
  3.916457539836578*^9, 3.916457616021718*^9, 3.916466432350707*^9, 
  3.916466693098659*^9, 3.916466815264049*^9, 3.916467312314778*^9, 
  3.916717720448441*^9, 3.916804927894213*^9, 3.916805373419744*^9, 
  3.916806484679153*^9, 3.9168067818452272`*^9, 3.91680721167093*^9, 
  3.9168076186706*^9, 3.9168077513919888`*^9, 3.916809081540016*^9, 
  3.916812981576869*^9, 3.916814361660473*^9, 3.916814570050551*^9, 
  3.916814679276445*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"965c96fa-4e51-40f0-bf68-f877502b3aa7"]
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
 CellLabel->"In[9]:=",ExpressionUUID->"79542c29-c800-446c-b962-dcfade1ea3a5"],

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
or be shadowed by other definitions.\"", 2, 11, 1, 33592037633417838879, 
    "Local", "FeynCalc`Index"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.915591952834597*^9, 3.91559602177711*^9, 
  3.915868554843957*^9, 3.9161264611953993`*^9, 3.9162978413303213`*^9, 
  3.916298568985216*^9, 3.916393235818564*^9, 3.916393903140866*^9, 
  3.916393987127634*^9, 3.916394128590869*^9, 3.916394300428437*^9, 
  3.91645646056866*^9, 3.916457540731168*^9, 3.916457616881649*^9, 
  3.916466433426881*^9, 3.916466693648467*^9, 3.9164668164067373`*^9, 
  3.916467313254929*^9, 3.916717721591387*^9, 3.916804928987661*^9, 
  3.916805374349942*^9, 3.916806485485437*^9, 3.916806783010235*^9, 
  3.916807212238912*^9, 3.916807619823708*^9, 3.916807752240074*^9, 
  3.916809082655265*^9, 3.916812982726982*^9, 3.916814362573745*^9, 
  3.916814570977909*^9, 3.916814680078246*^9},
 CellLabel->
  "During evaluation of \
In[9]:=",ExpressionUUID->"889625b0-a165-4a72-9750-e0635b252030"],

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
or be shadowed by other definitions.\"", 2, 11, 2, 33592037633417838879, 
    "Local", "FeynCalc`IndexDelta"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.915591952834597*^9, 3.91559602177711*^9, 
  3.915868554843957*^9, 3.9161264611953993`*^9, 3.9162978413303213`*^9, 
  3.916298568985216*^9, 3.916393235818564*^9, 3.916393903140866*^9, 
  3.916393987127634*^9, 3.916394128590869*^9, 3.916394300428437*^9, 
  3.91645646056866*^9, 3.916457540731168*^9, 3.916457616881649*^9, 
  3.916466433426881*^9, 3.916466693648467*^9, 3.9164668164067373`*^9, 
  3.916467313254929*^9, 3.916717721591387*^9, 3.916804928987661*^9, 
  3.916805374349942*^9, 3.916806485485437*^9, 3.916806783010235*^9, 
  3.916807212238912*^9, 3.916807619823708*^9, 3.916807752240074*^9, 
  3.916809082655265*^9, 3.916812982726982*^9, 3.916814362573745*^9, 
  3.916814570977909*^9, 3.916814680100794*^9},
 CellLabel->
  "During evaluation of \
In[9]:=",ExpressionUUID->"42605afb-fecf-4ff9-95b7-12709f8fd880"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"ResultsDir", " ", "=", " ", 
   RowBox[{"FileNameJoin", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"NotebookDirectory", "[", "]"}], ",", " ", "\"\<results\>\"", 
      ",", " ", "\"\<NLO\>\""}], "}"}], "]"}]}], ";"}]], "Code",
 CellChangeTimes->{{3.914478341430852*^9, 3.9144783876264887`*^9}, 
   3.914479041127266*^9, {3.9144825969413*^9, 3.914482605641466*^9}, 
   3.9168044823738413`*^9},
 CellLabel->"In[13]:=",ExpressionUUID->"06eef17f-1a78-4d35-a1b1-fa25c75250dd"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Generate Feynman diagrams and amplitudes", "Section",
 CellChangeTimes->{
  3.9144764595953703`*^9, {3.914476650637313*^9, 3.914476657139914*^9}, {
   3.914476752115423*^9, 
   3.914476763301632*^9}},ExpressionUUID->"f64fe3b0-c12e-45c9-a04b-\
e465429a8448"],

Cell["Some text", "Text",
 CellChangeTimes->{{3.9144766746379423`*^9, 3.914476675443219*^9}, {
  3.914476728707759*^9, 
  3.91447674796236*^9}},ExpressionUUID->"73fd6221-bbd0-4cc0-a8e2-\
a1e4fcdbf19a"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"emissionDiagrams", " ", "=", " ", 
   RowBox[{"InsertFields", "[", "\[IndentingNewLine]", "\t", 
    RowBox[{
     RowBox[{"CreateTopologies", "[", 
      RowBox[{"0", ",", " ", 
       RowBox[{"2", " ", "->", " ", "3"}]}], "]"}], ",", " ", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"F", "[", 
         RowBox[{"3", ",", " ", 
          RowBox[{"{", "1", "}"}]}], "]"}], ",", " ", 
        RowBox[{"-", 
         RowBox[{"F", "[", 
          RowBox[{"3", ",", " ", 
           RowBox[{"{", "1", "}"}]}], "]"}]}]}], "}"}], " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"F", "[", 
         RowBox[{"11", ",", " ", 
          RowBox[{"{", "i", "}"}]}], "]"}], ",", " ", 
        RowBox[{"V", "[", "5", "]"}], ",", " ", 
        RowBox[{"F", "[", 
         RowBox[{"11", ",", " ", 
          RowBox[{"{", "j", "}"}]}], "]"}]}], "}"}]}], ",", "\n", "\t", 
     RowBox[{"InsertionLevel", " ", "->", " ", 
      RowBox[{"{", "Classes", "}"}]}], ",", "\[IndentingNewLine]", "\t", 
     RowBox[{"Model", " ", "->", " ", "MSSMQCD"}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{"Restrictions", " ", "->", " ", 
      RowBox[{"{", 
       RowBox[{"NoLightFHCoupling", ",", " ", "NoElectronHCoupling"}], 
       "}"}]}]}], 
    RowBox[{"(*", 
     RowBox[{",", "\[IndentingNewLine]", "\t", 
      RowBox[{"ExcludeParticles", " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"F", "[", "11", "]"}], ",", 
         RowBox[{"F", "[", "12", "]"}], ",", 
         RowBox[{"S", "[", "1", "]"}], ",", 
         RowBox[{"S", "[", "2", "]"}], ",", 
         RowBox[{"S", "[", "3", "]"}], ",", 
         RowBox[{"S", "[", "4", "]"}]}], "}"}]}]}], "*)"}], 
    "\[IndentingNewLine]", "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Paint", "[", 
   RowBox[{"emissionDiagrams", ",", " ", 
    RowBox[{"Numbering", "->", "Simple"}], ",", " ", 
    RowBox[{"ColumnsXRows", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{"4", ",", " ", "2"}], "}"}]}], ",", " ", 
    RowBox[{"ImageSize", "->", 
     RowBox[{"{", 
      RowBox[{"512", ",", "256"}], "}"}]}]}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{
  3.914476809872698*^9, {3.914645528516932*^9, 3.914645548367996*^9}, {
   3.914648821230119*^9, 3.914648837653592*^9}, {3.914649133437988*^9, 
   3.914649152850586*^9}, {3.9168045439459887`*^9, 3.916804604278374*^9}, {
   3.9168046371059637`*^9, 3.9168046527008452`*^9}, {3.916805011105891*^9, 
   3.916805012352174*^9}},
 CellLabel->"In[14]:=",ExpressionUUID->"a50f6b18-15d8-4de3-8484-ef7ce85d54bd"],

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
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {5.077403306263033, 15.693266125260656}, 
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
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000004547`, 17.}, {10.000000000012733`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {14.684703687452767, 16.40638525018893}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[CompressedData["
1:eJwl13s4lGkfB/CnmiK17SQ0hEaUQw6TIjblUWykGKd4O2iyErvKRJvZiqYi
ipZaOZadJKdi50U5biYhU1ajVI4llayoUSsW8X7v6/3DzPW57vu579/vO7fn
eh4dvxD3fTMpiurCH/mmWORDj6aY5FuNpoQ8v4vLYD59aFcsbPWLpw4X7mld
2MpYTFMGVxWvxsDsttxHfJixOiD5PsxZEslvhOWumfoLlmN+Q3mVIoumSiPe
cv4DM91LqsxgXnvQrhyY1zt8yQbuX/+LzWdiljiJjBtwiwPWr8D+7CxdJbip
6tuEU7Bwx3xJM9avq8i8KoFFna+7hLB4WtI+Ast0ONV6sE/vyFO2Pk3Rt31t
a1B/1MFtuTQsepYp9oLlPW2dnsQW+TFDqjTFYmSf3g2Lv54zjoez1SnOTphy
16myhJOEBkMuMDt3QDqsQlNd22Mtv4N7agst78KBO/T6tGHewzUTuXB8RO/S
adTD20zNz4PHnidbd8NUcMDGWpib80pUBcvtFnl8gVNjZ0ouk/ofebRsxH4+
L2W9pF/efgXb67BjkYIWfwXJP8pAA/XnlSBxmH1qnfMV2GbZdDRxzyVevSH6
76/8jREKc2UXt1bC2Wke7LOwpH9hkBPyTB1/0HgDpls+FbfAg+Nrg9tJvu3X
Frio4/dM+fsrE/1ITJb0VcAy8fQMN5KPu9muhRroN04xM4X0L+gId4Ntzt0t
7IW5b087CGDNNOVOMwP0G9QxGAVL/NeWH4cTB7ZUhsPsVcMdDTBzIG+JO8y6
kDg6zxDX+5smqsE8w7xxJ1jkfya+Efu3SR3ZJ+DEC0s8g2Hm21qFArjn+13S
OTArmnlPCgvnzFt7Bf34xKx71Q1T0mkVC1hTc2tYHyzPHn7wBHmM5cbOewPz
VL+ERcLGJd+WPYfFC3Zet4YFmYs+1cIS7s51c2GbR+tScsn8hgETOfKW6b99
EEPGVSNDiAfrDF/vI/U/oZ8rYf7hD1Xb7Em97woX28KlZ8sPL4fZtp/vxsF6
46JrpF/Z03GvDzCnvmBoDHnIZft8f0C97MgotY+wrI5O6YP5+kmRxBJviVYY
+u0/FL9oguTrI8+Zhbys6md/r0zqixmuvAjTfQkMC9K/jdknjSU0VV4bVu1H
8vnz5aoUeL6RFi+d9Ktg9HamJuquexPaQa7/zOfsgGmH2+o6RqjLIlozHfZ0
bDMLhsXmHWUSeHJg0LeC+LyT8V+wZKG29ZyV+L0CDzXWwHkMricX5vnaT6bB
l68Y7rsEM7OHHX1h+aZ7Pk9gSVG7HhP2Mer+SdEY479LW0tQX7VG2obVsLzT
zMYF7rfrfO0Oy9z25rwh/ZrlvA+Aub6eccfhpMNT+0OIlwe5L4HnC5cOBsP8
nEHVBuS165nSGR4sSZ0IOgmXd1YUO8O0qr2hG/zPtiPbOLDI9bWTFVydvegY
ExZW2lUTHxYNX/hA+lnB8/KA+Sat001won9sfQzcw7xlWkTGhdKMVnjSrSYo
CaajWdvXkvMvyrp3kuQTsTfiJjyo6TsdDoufuTSZob/UPWeOC8j8SNU91XDP
69f6UTDHyGxgK/IROasdyoC5MZkjnbC4X+xwB5aZrtDw10KdFxWUB8n81fXr
e2CO+rX7uiQvrdYmZ218G6r+/QPpv2rjUBbMsspNLyDjd8vze+H5oYZlI3Ci
4m3luUvx/xE79m6jCcZX2HqqwlunjWsSYAlft0YBVjnT/LgdFvkdrn+F69sy
O55rmyKX2dsHrsM86ceqXbC4oPu6N1z3JqL6gik5/99tmEB9NlsER6uJg9tT
LsE+IYVzu2DRH1enVsLxOayJj7Dwfc7APfQ7+KJy7xhZ79BwrR/MCK9rGYG5
/zCufkNcq77jbzLftGmxFPld7j8qaIV7Pu2n0mBW8RPFClhmp+0qhEtbDnDS
SL1znT8R+2/+4BBOxs3qqjNgjq1RmReceCxrlwzW+3d0yJLMd33mq4X9ymtW
WmjBnJU8WyFct/hjphLZPy48egSO/+HCEAXz/PcNCNAPI+PpiRmk39I9Z2cj
D7o7ze4bsp/cRS2Z5DMSdVUPppJY6suRL+u+SfxmMu793KiQ5G/8OfhnOPaL
YZoKG/cr3WNrCuGx3+JdtsCamYn+Q7CVhbv0Z3hQu5O9xgz1h1YmXILpu6Wb
ThCnz7uRB8cbWxxpgrnRu4uL4LzPq67P5+C+zuc8yoWzrCxvrIKtDl6uSoKt
8lv0PWHFSpPKI7Din2rKYbBITxrjCiv7qp49D48VWzrqwAZa4u4smP7g09WF
+uU/bUovhnmLm2zD4Lzd0phqODFg1Hwe7J9MiyVkvYhzmgXI44F4nW8NLBna
oOoFM/Uz1SvI9RVNRUy4wPXG1SKY2dQgIed94H3+GxHMFmSsb4RD638ZSYRl
rWkLpfDRhwnTJ8j8quBv3sAbqZfWIcTyiS4W1hv8lW7fQ+oNVJ8XAHsu+DzT
g4xHtCyUwtupxhonuKcg98gG1NulnCC3h+UaUcN34eZW2t6B2M3VRR/9W6p6
c5xJXjdyL4XAMxvy3m+HWTf/UC6D7XVnBQfCAnMd5Ql4yiAjgNTX2FyvYK2D
+9lpd48Mkn/IZMFBeODgjdAqUt/LLcx0eHuHwbMXsLi4604F/GG0+kfGKjwn
3JuSNME3N7cwVsKimBdFj2GNjXsPuMGChyolD+FqSVLIETiwrTG2HJ6qtOtL
hWVDwjCyPmPencYycv2fE5wwMl5xyPIxTEf99609XOeTJ3wH842fM5RJfVmr
zUdhA1q+phv9vNA6pzLDHHn1LjPPhxmpBuazYZZ2+h8C+IyS5rNZcD+9zdqF
nB/Ditivq8hzQORiY3K+DuTM/QyL7TgW5Lzztx3b/BaWBBQqKcLl2929nsJj
o2rniadu1frWkf6lN3XV4PGc++klsHDjlmscWMnEYEM2zN3kxPUm9eiMHkgh
81m3+2JhKq3W/Feyf4Mg7x7ssmTmgbOwj8dT/mwd8hzk8JCYORnY5AzLnBNr
E+D+GakqSbD4/fqzGXCbrfX5TniO2hWVQpLHqdWnly6jqYN+geqkPt7ErR93
LyPPfcxve+DE4xUTF+Hbj0ssKOTBXRfnfAdesSM6UxcWMjb1dsNtO20sneDU
fWseyuEcC3ZLCCyJzvr9C5nvqGeVDDeWb4j7CNMVpyyryLif7ZauZeR+tD63
G2Ym6emQ9XuLhk5OwvLUM83J8J13Hn1qq7H++fPhgXBold4KY1jYMphgAT+w
y21aBzfyQ+5Q8OTR5msOcOy0Yw05b0q7L912gh254Q6XYbn5aa4jLHgU13UI
Nn2ye9yOjOebNrnCBytMD68l60ekT62FI9933zSEuQtM36+EteMkZepwf/Ks
M8bwi5YEiSIsoR0svoO7ZrhOjaJ+8dStJk84tK74ej/MKRElHIOPM7I6O2HR
18XWhfAau/15j0m/IUZK/eS8luoM/gXTO4K7DdGPo2TUs5msVzi5gQ+XCgTe
rTDbfSymHJ4vO2nYQ/LvMJicht0z39QMw1RoVv8mXbxf6L5qJvWVe43fPQnr
3Tzylx7MSb1Hl8FZPnsn7GGZwaJjvbDp4KmgQNjKeejfGXhv2hrkw/gVFgfe
lKrAyusVRKVw24/5URrwWO/R2Z0kL/0i70Uwg7ynraEp6v/vbf8DEifyYQ==

          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {17.416041670299446, 9.455205318975175}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{20.00000000000182, 3.}, {10.000000000001819`, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {17.604641095328308, 4.104154803807008}, 
          ImageScaled[{1, 1}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000000417`}, {10., 9.999999999999584}}]}, 
         PolygonBox[{{10., 11.65}, {9.6, 12.85}, {10.4, 12.85}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {9.0548, 12.25}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{10., 5.5}, {10., 10.}}], 
         PolygonBox[{{10., 7.15}, {10.4, 8.35}, {9.6, 8.35}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {9.0548, 7.75}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{10., 5.5}], 
          PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["1",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->10.199525691699607`],
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            10.199525691699607`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"afbg/cfdgeh/fhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "afbg/cfdgeh/fhgh.m", "Tooltip"]& ],
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
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {5.077403306263033, 15.693266125260656}, 
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
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000004547`, 17.}, {10.000000000012733`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {14.684703687452767, 16.40638525018893}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[CompressedData["
1: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
P2bi94//ATAZ2Pc=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {15., 10.9452}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{20., 3.}, {10., 5.499999999996362}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {15.315296312547233, 4.906385250188932}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000000417`}, {10., 9.999999999999584}}]}, 
         PolygonBox[{{10., 11.65}, {9.6, 12.85}, {10.4, 12.85}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {9.0548, 12.25}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 10.}}]}, 
         PolygonBox[{{10., 7.15}, {10.4, 8.35}, {9.6, 8.35}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {9.0548, 7.75}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{10., 5.5}], 
          PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["2",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->10.199525691699607`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            10.199525691699607`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"afbg/cfdheg/fhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "afbg/cfdheg/fhgh.m", "Tooltip"]& ],
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
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {5.077403306263033, 15.693266125260656}, 
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
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000003638`, 17.00000000000182}, {10., 
          5.499999999998181}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {17.60600102199336, 14.894553300159064}, 
          ImageScaled[{1, 0}]], LineBox[CompressedData["
1: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
7/I=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {17.665806320366702, 9.489810781169371}, 
          ImageScaled[{1, 1}]], 
         LineBox[{{20.00000000000182, 3.}, {10.000000000001819`, 10.}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {14.859298952327674, 6.0397985033252475},
           ImageScaled[{1, 1}]], 
         LineBox[{{10., 14.500000000000417`}, {10., 9.999999999999584}}], 
         PolygonBox[{{10., 11.65}, {9.6, 12.85}, {10.4, 12.85}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {9.0548, 12.25}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 10.}}]}, 
         PolygonBox[{{10., 7.15}, {10.4, 8.35}, {9.6, 8.35}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {9.0548, 7.75}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{10., 5.5}], 
          PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["3",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->10.199525691699607`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            10.199525691699607`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"afbg/cgdfeh/fhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "afbg/cgdfeh/fhgh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {44, 22}, {0, 0}, {22, 22}], 
    InsetBox[
     GraphicsBox[
      TagBox[
       TooltipBox[
        {Thickness[0.005], 
         LineBox[{{3.637978807091713*^-12, 15.}, {10., 5.500000000001819}}], 
         PolygonBox[{{5.434999660156648, 9.836750322851184}, {
          4.289500555077475, 10.37324990371105}, {4.840500124609229, 
          10.953249450586581`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {3.0668086364145317, 13.075681225642285},
           ImageScaled[{0, 0}]], 
         LineBox[{{0., 5.}, {9.999999999998181, 14.500000000001819`}}], 
         PolygonBox[{{4.565000339843352, 9.336750322851184}, {
          5.710499444922525, 9.87324990371105}, {5.159499875390771, 
          10.453249450586581`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {2.978480893734474, 6.712879653957506}, 
          ImageScaled[{0, 1}]], 
         LineBox[{{20.000000000004547`, 17.}, {10.000000000012733`, 14.5}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {14.684703687452767, 16.40638525018893}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[CompressedData["
1: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
P2bi94//ATAZ2Pc=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {15.949823510097126, 10.945175115018273},
           NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         LineBox[{{20., 3.}, {10., 5.499999999996362}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {14.684703687452767, 3.5936147498110684},
           NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 10.}}]}, 
         PolygonBox[{{10., 8.35}, {10.4, 7.15}, {9.6, 7.15}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {10.9452, 7.75}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000000417`}, {10., 9.999999999999584}}]}, 
         PolygonBox[{{10., 12.85}, {9.6, 11.65}, {10.4, 11.65}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {10.9452, 12.25}, NCache[
          ImageScaled[{0, Rational[1, 2]}], ImageScaled[{0, 0.5}]]], 
         {PointSize[0.04], PointBox[{10., 5.5}], PointBox[{10., 14.5}], 
          PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["4",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->10.199525691699607`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            10.199525691699607`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"afbg/cgdhef/fhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "afbg/cgdhef/fhgh.m", "Tooltip"]& ],
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
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {5.077403306263033, 15.693266125260656}, 
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
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999992724`, 16.999999999996362`}, {
          9.999999999987267, 9.999999999994543}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {17.706734382259686, 15.977769196737455},
           ImageScaled[{1, 0}]], LineBox[CompressedData["
1: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
7/I=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {17.11586489840825, 9.789114419870028}, 
          ImageScaled[{1, 1}]], 
         LineBox[{{20., 3.}, {10., 5.499999999996362}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {14.684703687452767, 3.5936147498110684},
           NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{10., 14.500000000000417`}, {10., 9.999999999999584}}], 
         PolygonBox[{{10., 11.65}, {9.6, 12.85}, {10.4, 12.85}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {9.0548, 12.25}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 5.5}, {10., 10.}}]}, 
         PolygonBox[{{10., 7.15}, {10.4, 8.35}, {9.6, 8.35}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {9.0548, 7.75}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{10., 5.5}], 
          PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["5",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->10.199525691699607`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            10.199525691699607`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"afbg/chdfeg/fhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "afbg/chdfeg/fhgh.m", "Tooltip"]& ],
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
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {5.077403306263033, 15.693266125260656}, 
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
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{20.000000000003638`, 17.00000000000182}, {
          15.500000000003638`, 8.000000000001819}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {18.40505550753343, 14.844771898422305}, 
          ImageScaled[{1, 0}]], LineBox[CompressedData["
1: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
7/I=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {12.49917271312637, 14.123874550657195}, 
          ImageScaled[{0, 0}]], 
         LineBox[{{20.00000000000182, 3.000000000001819}, {15.5, 
          8.000000000003638}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {18.111482390121314, 5.764854151109184}, 
          ImageScaled[{0, 0}]], 
         LineBox[{{10., 14.499999999999272`}, {10., 5.500000000000729}}], 
         PolygonBox[{{10., 9.4}, {9.6, 10.6}, {10.4, 10.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {9.0548, 10.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[CompressedData["
1:eJwt0w1MzHEYB/AfroU0F111Iuc6Xe6uOkQi89dqV+vFsZi37MQRWtcVTVeS
VmqxdsrqSDqdd3GFsFycWS6paeblUnJa521XXc1uSeL7N7/t//vvs+fZ8zzb
s9+CJMUG+WRCyGp89J9Mpa8givw7HIoUbHFmPQqkiHZf1X532LbvnT4XJsr4
aF9YNLaJRMDq5jvtfJihW1MxE65ffKbQB07IdhL1BSDf9UWXE+yvn136EO7c
yjtkmE+R5JErF87ClhSpMAFuT9tVcoS2Ityp24cislPl33bCVPlxxTbYnNAW
GAkzm9QNlnkUMR50G+LB2hRh6iHY9pEb8keE+GhLKBe+WNbU8Yq25WambS5F
IiqWJNbAFm9H9Ru4M74vVw6LX+xw7YYNRY8u+8FknlXmgJnxQ8P9QvQxs2J9
UG9UaOutpb0i4q0ENlffGE2C05p1L/fCeW6CPD6sdW6MOwj3zGqZPyKgiPRq
zrgcrhvT3H4K21c/8AyF7QN7+Odg8YTj+wD6Hb5uyVfBxqRTpmJ4e6/LpESY
mnitdINPZsStXwurj1q9yrwp4m7iWnl0vCF5nAVLT8+WONH9vk4MXJlDkSjz
ulTLItTL3vxJCtuCeqc0wuIx00MP+KpAoM6H7R+enPjFxtz51pJoWBtrC/8N
/5BxYlzg+gPTxlnI729u7Hruj728T38aBucMsuuKYIu+wLQHZhYapBI63l7U
Wgwn+7K9XGD711WVGniGZsqz13xYIVaUwsE1uo2XYGbftwk5TBawzTmw+Ith
zIeuJwpJ3wrL2nr8mjGP+FZtVhhsXCl5J4GlWZk3OXR+k9rR6oX9RH7OZ8CE
X3c3Br6ovJ1t9cN+2FnTuz0pcveIXfUENj6ujciD+7nWGZWwNlhmWktbu1sj
h9UM9jIuPBoryAigfanDnQPHtma8HVqI+VsEjOVw8bFdjbdg2R1t6jZY1tOg
SoE5OlFDIcycnnNPCKvD3AquwZ33vU2DPMynUqoMsKawqvg+bb159z3YHJXN
KoLr/Sv3lsFki+BCIiz2/FmzDk4zLlWuhLViefiwB/pvYDi8Ydn5pIBc+N/7
5f1/vx7UXzxHV20=
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {12.786594563666835, 5.943731959932962}, 
          ImageScaled[{0, 1}]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{10., 5.5}], 
          PointBox[{15.5, 8.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["6",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->10.199525691699607`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            10.199525691699607`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"afbg/chdfeh/fggh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "afbg/chdfeh/fggh.m", "Tooltip"]& ],
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
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {5.077403306263033, 15.693266125260656}, 
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
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999992724`, 16.999999999996362`}, {
          9.999999999987267, 9.999999999994543}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {16.10586996887496, 14.895393212240169}, 
          ImageScaled[{1, 0}]], LineBox[CompressedData["
1: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

          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {17.89517662449294, 9.976447772800643}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{19.99999999999818, 3.000000000001819}, {9.999999999996362, 
          14.500000000001819`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {17.10587127249699, 5.105113654528812}, 
          ImageScaled[{1, 1}]], 
         {Dashing[{0.030000000000000002`, 0.030000000000000002`}], 
          LineBox[{{10., 14.500000000000417`}, {10., 9.999999999999584}}]}, 
         PolygonBox[{{10., 11.65}, {9.6, 12.85}, {10.4, 12.85}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SuperscriptBox[
              OverscriptBox["u", "~"], "x"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {9.0548, 12.25}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{10., 5.5}, {10., 10.}}], 
         PolygonBox[{{10., 7.15}, {10.4, 8.35}, {9.6, 8.35}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {9.0548, 7.75}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{10., 5.5}], 
          PointBox[{10., 10.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["7",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->10.199525691699607`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            10.199525691699607`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"afbg/chdgef/fhgh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "afbg/chdgef/fhgh.m", "Tooltip"]& ],
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
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {5.077403306263033, 15.693266125260656}, 
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
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {5.077403306263033, 4.30673387473934}, 
          NCache[ImageScaled[{Rational[1, 2], 1}], ImageScaled[{0.5, 1}]]], 
         LineBox[{{19.999999999992724`, 16.999999999996362`}, {
          15.499999999990905`, 13.999999999996362`}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "i", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {17.633689744907205, 15.976865382639197},
           ImageScaled[{1, 0}]], LineBox[CompressedData["
1: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

          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["g",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {13.961469382871257, 8.30962629251297}, 
          ImageScaled[{1, 0}]], 
         LineBox[{{20., 3.0000000000009095`}, {15.5, 14.00000000000091}}], 
         InsetBox[
          TagBox[
           StyleBox[
            TagBox[
             SubsuperscriptBox[
              OverscriptBox["\[Chi]", "~"], "j", "0"],
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {18.603597040126015, 4.499729505042874}, 
          NCache[ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[{{10., 14.499999999999272`}, {10., 5.500000000000729}}], 
         PolygonBox[{{10., 9.4}, {9.6, 10.6}, {10.4, 10.6}}], InsetBox[
          TagBox[
           StyleBox[
            TagBox["u",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {9.0548, 10.}, NCache[
          ImageScaled[{1, Rational[1, 2]}], ImageScaled[{1, 0.5}]]], 
         LineBox[CompressedData["
1:eJwd0wlIU3EAx/GXB43NlLRSwWzmNZvzKFHTlGd2KFouNfMqLFypqJtXXkNW
iUrl0gyPyJxHMhMhJY954K2roTk8srKalJGSF2S2tOP3ejD+fN737b//+/+Z
2RV+IE+DIAhXfKhR9PsvLjuS+H/ZkqLbwS/OKGH5Q9ZJZ3ikV75QDUsrLrdF
25JEgnmXXRKcsTTRlYtusOE05An7sDW17sPvedl5dJhUnD18B25Q5FdNcUii
IGtqbzJ8PDdOWAlL2/lRfnCtsVE3D36mbbq4H/ObboTss4MFkuGydTYp0tjs
99zE/a+LK5bjbJJYqE+W98OiuPEvMtg4SqErhgVT06MdsEKTYR0JSyWGLQrY
bn1tjg27ttzkrcGfvNSd2xjlioFJM9zP0F4woeZ1lfO/hWI94nM1vlVwee35
zkI41SCniA93cKfqOvB8Sr0WzxN26KurmUQ/cIKdxoCLAh5z3sHOxt5tM4dI
gqZNU47DCT1Pr0rgCY7GsWZ4OVytGQtLJ5jT+Zgv3svBxZHqd7mqMPTifP1O
tQ1J/NRNDLNHT2W9PjoI04LfNOuhM3Sm3cXwbN98Lc6LEHdm0CJgUp7mp41+
STpdZQOLnpRIqf0sNaqWqVl4v0nfqlPo6e1lEy9hwvJ0Wha61Y8bLo9gn0a2
jFpfY2WeUwLM7Tbhf0af9BeaesCCi45BDJwLc64inUHNZ/D2D5NDivyaA3bM
WlPvuzVwEL2bwxqpgWeF3D270R11mEbxsFG0VuYqtd/2sltOcHlO5K9BuFei
lG1b4fzXvzuU4ve1rvekDMOCnq3dieglzvSQe7BqXtkUiO4hLJgJh0Nrh/R9
0T1TntuwYFrrR1EQ+hH/eLdNS3xfvUsvCbao9G4apSz98KoSzye1Lq+Uw6TK
TECdX69mpl8c1ZkXnOlYb3ZBM90dLjCvcXODe0wcCumwSqlXHwmvrol4sxbY
n/axkXh46VpsbB0s1+8fi4FjhCUdibBq+4FhINyws7jdBV6LkG3YYn+oPx0B
06iRQ/4D7C9PxA==
          "]], InsetBox[
          TagBox[
           StyleBox[
            TagBox["Z",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->12.749407114624509`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            12.749407114624509`]& ], {12.890330406365903, 15.18883447002494}, 
          NCache[ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]], 
         {PointSize[0.04], PointBox[{10., 14.5}], PointBox[{10., 5.5}], 
          PointBox[{15.5, 14.}]}, InsetBox[
          TagBox[
           StyleBox[
            TagBox["8",
             DisplayForm],
            FontFamily->"Helvetica",
            FontSize->10.199525691699607`],
           
           StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
            10.199525691699607`]& ], {10., -0.5}, NCache[
          ImageScaled[{Rational[1, 2], 0}], ImageScaled[{0.5, 0}]]]},
        "\"afbg/chdgeh/fgfh.m\"",
        TooltipStyle->"TextStyling"],
       Annotation[#, "afbg/chdgeh/fgfh.m", "Tooltip"]& ],
      AspectRatio->1,
      PlotRange->{{-1, 21}, {-1, 21}}], {66, 0}, {0, 0}, {22, 22}], InsetBox[
     TagBox[
      StyleBox[
       TagBox["u",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->15.29928853754941],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       15.29928853754941]& ], {32.75, 47.959999999999994}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox["u",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->15.29928853754941],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       15.29928853754941]& ], {37.25, 47.959999999999994}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox["\[RightArrow]",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->15.29928853754941],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       15.29928853754941]& ], {41.75, 47.959999999999994}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox[
        SubsuperscriptBox[
         OverscriptBox["\[Chi]", "~"], "i", "0"],
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->15.29928853754941],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       15.29928853754941]& ], {46.25, 47.959999999999994}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox["g",
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->15.29928853754941],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       15.29928853754941]& ], {50.75, 47.959999999999994}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]],
     InsetBox[
     TagBox[
      StyleBox[
       TagBox[
        SubsuperscriptBox[
         OverscriptBox["\[Chi]", "~"], "j", "0"],
        DisplayForm],
       FontFamily->"Helvetica",
       FontSize->15.29928853754941],
      StyleForm[#, FontFamily -> "Helvetica", FontSize -> 
       15.29928853754941]& ], {55.25, 47.959999999999994}, NCache[
     ImageScaled[{Rational[1, 2], Rational[1, 2]}], ImageScaled[{0.5, 0.5}]]]},
   AspectRatio->0.575,
   ImageSize->{512, 256},
   PlotRange->{{0, 88}, {0, 50.599999999999994`}}], TraditionalForm]], "Print",\

 CellChangeTimes->{3.916393903427911*^9, 3.916393987502221*^9, 
  3.916394128870317*^9, 3.916394300706311*^9, 3.916456460844695*^9, 
  3.916457541005512*^9, 3.916457617203252*^9, 3.916466433715865*^9, 
  3.916466693935822*^9, 3.916466816781201*^9, 3.916467313545613*^9, 
  3.916717721981528*^9, 3.916804929354691*^9, 3.916805013059559*^9, 
  3.91680537470749*^9, 3.9168064858472023`*^9, 3.916806783506763*^9, 
  3.9168072126261883`*^9, 3.916807620300848*^9, 3.916807752623498*^9, 
  3.91680908316461*^9, 3.916812983209444*^9, 3.916814362929708*^9, 
  3.916814571337739*^9, 3.916814680434606*^9},
 CellLabel->
  "During evaluation of \
In[14]:=",ExpressionUUID->"9124e47f-f565-42c8-9bc3-7cf7884bb6b0"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Mreal", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"FCFAConvert", "[", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"CreateFeynAmp", "[", "emissionDiagrams", "]"}], ",", " ", 
      "\[IndentingNewLine]", "\t", 
      RowBox[{"IncomingMomenta", " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{"ki", ",", " ", "kj"}], "}"}]}], ",", "\n", "\t", 
      RowBox[{"OutgoingMomenta", " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{"pi", ",", " ", "k", ",", " ", "pj"}], "}"}]}], ",", 
      "\[IndentingNewLine]", "\t", 
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
   3.915036452854926*^9, 3.915036500647919*^9}, {3.916804662920977*^9, 
   3.916804674647201*^9}, {3.9168067402437077`*^9, 3.916806743062469*^9}, 
   3.916806811455906*^9},
 CellLabel->"In[16]:=",ExpressionUUID->"fa8d476b-88fc-4594-9a53-437111c2ef1a"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"tempPrefactor", " ", "=", " ", 
    SuperscriptBox[
     RowBox[{"SMP", "[", "\"\<g_W\>\"", "]"}], "2"]}], ";"}], "\n"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Mreal", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{"tempPrefactor", " ", 
    RowBox[{"Convert2QZCharges", " ", "/@", " ", 
     FractionBox[
      RowBox[{"Mreal", "[", "0", "]"}], "tempPrefactor"]}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Mreal", "[", "2", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"Mreal", "[", "1", "]"}], " ", "//", " ", "DiracSimplify"}], 
     " ", "//", " ", "\n", "\t", 
     RowBox[{
      RowBox[{"ReplaceAll", "[", 
       RowBox[{"#", ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"Opp", "[", 
           RowBox[{"i_", ",", "j_", ",", "L"}], "]"}], "\[Conjugate]"}], "->", 
         RowBox[{"-", 
          RowBox[{"Opp", "[", 
           RowBox[{"i", ",", "j", ",", "R"}], "]"}]}]}]}], "]"}], "&"}]}], 
    " ", "//", "\n", "\t", 
    RowBox[{
     RowBox[{"ReplaceRepeated", "[", 
      RowBox[{"#", ",", " ", "SuperChargeRules"}], "]"}], "&"}]}]}], 
  ";"}], "\n", 
 RowBox[{"Clear", "[", "tempPrefactor", "]"}]}], "Code",
 CellChangeTimes->{{3.914477655181172*^9, 3.914477668233265*^9}, {
  3.914478047387411*^9, 3.914478051457137*^9}, {3.914478106436209*^9, 
  3.914478108087481*^9}, {3.914479110257681*^9, 3.914479117748647*^9}, {
  3.914482185163767*^9, 3.914482185165958*^9}, {3.9144832169807587`*^9, 
  3.914483216982397*^9}, {3.916804702721434*^9, 3.916804719228155*^9}, {
  3.916805066133893*^9, 3.916805077554051*^9}, {3.916806586540666*^9, 
  3.916806623581143*^9}, {3.916807334361133*^9, 3.916807380140789*^9}},
 CellLabel->"In[17]:=",ExpressionUUID->"73ea9ab9-c2a1-4986-8aca-523fdc169d49"],

Cell[TextData[{
 "Convert to ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["Q", "A", "XY"], TraditionalForm]],ExpressionUUID->
  "b91521b4-2872-442f-acec-25fd9105b87c"],
 " and ",
 Cell[BoxData[
  FormBox[
   SubsuperscriptBox["Z", "s", "X"], TraditionalForm]],ExpressionUUID->
  "5a54596e-ead4-4c2f-866d-1c933bc1bafd"],
 " supercharges."
}], "Text",
 CellChangeTimes->{{3.9144780588630667`*^9, 3.914478087264818*^9}, {
  3.914478127213645*^9, 3.914478157629327*^9}, {3.914483451755382*^9, 
  3.914483451755413*^9}, {3.916804785859557*^9, 
  3.916804792552161*^9}},ExpressionUUID->"c50a9c08-6e34-4676-82f3-\
23beaeda93f0"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"Mreal", "[", "3", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"FeynAmpDenominatorExplicit", " ", "/@", " ", 
      RowBox[{"Mreal", "[", "2", "]"}]}], ")"}], " ", "/.", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], "^", "2"}], " ", "->", " ", 
       "DZ"}], ",", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"MSf", "[", "args__", "]"}], "^", "2"}], " ", "->", " ", 
       RowBox[{"DSf", "[", "args", "]"}]}]}], "}"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Mreal", "[", "4", "]"}], " ", "=", " ", 
   RowBox[{"SUNSimplify", " ", "/@", " ", 
    RowBox[{"Mreal", "[", "3", "]"}]}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.916804798398592*^9, 3.916804802446849*^9}, {
   3.91680484084873*^9, 3.91680489506552*^9}, 3.916804992582094*^9, {
   3.916805102529481*^9, 3.916805122769438*^9}, 3.9168051861642094`*^9},
 CellLabel->"In[21]:=",ExpressionUUID->"a3ab7b48-9ce1-48da-b5e2-afc6c836c250"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Set Scalar products", "Section",
 CellChangeTimes->{{3.916805202245624*^9, 
  3.916805222725955*^9}},ExpressionUUID->"08534849-2cc1-438f-8002-\
4d597e1535af"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"m2", ",", "TraditionalForm"}], "]"}], "=", 
   RowBox[{"SuperscriptBox", "[", 
    RowBox[{"\"\<m\>\"", ",", "2"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"t1", ",", "TraditionalForm"}], "]"}], "=", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<t\>\"", ",", "1"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"t2", ",", "TraditionalForm"}], "]"}], "=", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<t\>\"", ",", "2"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"u1", ",", "TraditionalForm"}], "]"}], "=", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<u\>\"", ",", "1"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"u2", ",", "TraditionalForm"}], "]"}], "=", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<u\>\"", ",", "2"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"cTheta", ",", " ", "TraditionalForm"}], "]"}], "=", 
   RowBox[{"RowBox", "[", 
    RowBox[{"{", 
     RowBox[{
     "\"\<cos\>\"", ",", "\"\<(\>\"", ",", "\"\<\[Theta]\>\"", ",", 
      "\"\<)\>\""}], "}"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"sTheta", ",", " ", "TraditionalForm"}], "]"}], "=", 
   RowBox[{"RowBox", "[", 
    RowBox[{"{", 
     RowBox[{
     "\"\<sin\>\"", ",", "\"\<(\>\"", ",", "\"\<\[Theta]\>\"", ",", 
      "\"\<)\>\""}], "}"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"cPhi", ",", " ", "TraditionalForm"}], "]"}], "=", 
   RowBox[{"RowBox", "[", 
    RowBox[{"{", 
     RowBox[{
     "\"\<cos\>\"", ",", "\"\<(\>\"", ",", "\"\<\[Phi]\>\"", ",", 
      "\"\<)\>\""}], "}"}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"MakeBoxes", "[", 
   RowBox[{
    RowBox[{"Kallan", "[", "z_", "]"}], ",", " ", "TraditionalForm"}], "]"}], 
  " ", ":=", " ", 
  RowBox[{"RowBox", "[", 
   RowBox[{"{", 
    RowBox[{"\"\<\[Lambda]\>\"", ",", "\"\<(\>\"", ",", 
     RowBox[{"MakeBoxes", "[", 
      RowBox[{"z", ",", " ", "TraditionalForm"}], "]"}], ",", "\"\<)\>\""}], 
    "}"}], "]"}]}]}], "Code",
 InitializationCell->True,
 CellChangeTimes->{3.916814667766777*^9},
 CellLabel->"In[23]:=",ExpressionUUID->"c886a8bd-7a89-4d95-acbe-0f67c137e64f"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"FCClearScalarProducts", "[", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SetMandelstam", "[", 
   RowBox[{"m2", ",", " ", 
    RowBox[{"{", 
     RowBox[{"ki", ",", " ", "kj", ",", " ", 
      RowBox[{"-", "pi"}], ",", " ", 
      RowBox[{"-", "pj"}], ",", " ", 
      RowBox[{"-", "k"}]}], "}"}], ",", " ", 
    RowBox[{"{", 
     RowBox[{"0", ",", " ", "0", ",", " ", 
      RowBox[{"MNeu", "[", "i", "]"}], ",", " ", 
      RowBox[{"MNeu", "[", "j", "]"}], ",", " ", "0"}], "}"}]}], "]"}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"SetMandelstamParameters", "[", 
   RowBox[{"s", ",", " ", "t", ",", " ", "u", ",", " ", 
    RowBox[{
     SuperscriptBox[
      RowBox[{"MNeu", "[", "i", "]"}], "2"], "+", 
     SuperscriptBox[
      RowBox[{"MNeu", "[", "j", "]"}], "2"], "-", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"1", "-", "z"}], ")"}], "s"}]}]}], "]"}], ";"}]}], "Code",
 CellChangeTimes->{
  3.916805197825997*^9, {3.916805233894036*^9, 3.916805282036578*^9}, {
   3.9168071461281033`*^9, 3.916807148718997*^9}},
 CellLabel->"In[32]:=",ExpressionUUID->"3bd9d9ca-aad9-43cb-b9f4-d3cc56847ff6"],

Cell["Find  t1  and  mi5 .", "Text",
 CellChangeTimes->{{3.9168174594003553`*^9, 
  3.916817476734785*^9}},ExpressionUUID->"7cbd3e4d-dd56-43e5-8480-\
ccccf35bf26c"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"Ei", " ", "=", " ", 
    FractionBox[
     RowBox[{
      RowBox[{"z", " ", "s"}], " ", "+", " ", 
      RowBox[{
       RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}], " ", "-", " ", 
      RowBox[{
       RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}]}], 
     RowBox[{"2", 
      RowBox[{"Sqrt", "[", 
       RowBox[{"z", " ", "s"}], "]"}]}]]}], ";"}], "\n", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"p", " ", "=", " ", 
     FractionBox[
      RowBox[{"Sqrt", "[", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"z", " ", "s"}], " ", "-", " ", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"MNeu", "[", "i", "]"}], "+", 
             RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "^", "2"}]}], ")"}], 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"z", " ", "s"}], " ", "-", " ", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"MNeu", "[", "i", "]"}], "-", 
             RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "^", "2"}]}], ")"}]}], 
       "]"}], 
      RowBox[{"2", 
       RowBox[{"Sqrt", "[", 
        RowBox[{"z", " ", "s"}], "]"}]}]]}], ";"}], "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"p", " ", "=", " ", 
   FractionBox[
    RowBox[{"Sqrt", "[", 
     RowBox[{"Kallan", "[", "z", "]"}], "]"}], 
    RowBox[{"2", 
     RowBox[{"Sqrt", "[", 
      RowBox[{"z", " ", "s"}], "]"}]}]]}], ";"}], "\n", 
 RowBox[{"mi5", " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}], " ", "-", " ", 
    RowBox[{"2", 
     RowBox[{"(", 
      RowBox[{
       FractionBox[
        RowBox[{"Sqrt", "[", "s", "]"}], "2"], 
       FractionBox[
        RowBox[{"1", "-", "z"}], 
        RowBox[{"Sqrt", "[", "z", "]"}]], 
       RowBox[{"(", 
        RowBox[{"Ei", " ", "+", " ", 
         RowBox[{"p", " ", "cTheta"}]}], ")"}]}], ")"}]}]}], " ", "//", " ", 
   RowBox[{
    RowBox[{"Simplify", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"Assumptions", "->", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"s", "\[Element]", "PositiveReals"}], ",", " ", 
         RowBox[{"z", ">", "0"}], ",", " ", 
         RowBox[{"z", "<", "1"}], ",", " ", 
         RowBox[{
          RowBox[{"MNeu", "[", "_", "]"}], "\[Element]", "PositiveReals"}]}], 
        "}"}]}]}], "]"}], "&"}]}]}]}], "Code",
 CellChangeTimes->{{3.916817477946232*^9, 3.91681749568804*^9}, {
  3.916818380945257*^9, 
  3.916818382958335*^9}},ExpressionUUID->"706a64df-ea3e-4cfc-a137-\
df4d4f8d2f01"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"FreeProducts", "=", 
   RowBox[{"{", "\[IndentingNewLine]", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"1", ",", "2"}], "]"}], "->", "s"}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"1", ",", "3"}], "]"}], "->", "t1"}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"3", ",", "4"}], "]"}], "->", 
      RowBox[{"s", " ", "z"}]}], ",", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"3", ",", "5"}], "]"}], "->", "mi5"}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"1", ",", "5"}], "]"}], "->", 
      RowBox[{
       RowBox[{"-", "s"}], 
       RowBox[{"(", 
        RowBox[{"1", "-", "z"}], ")"}], 
       RowBox[{"(", 
        RowBox[{"1", "-", "y"}], ")"}]}]}], ",", "\[IndentingNewLine]", "\t", 
     
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"2", ",", "5"}], "]"}], "->", 
      RowBox[{
       RowBox[{"-", "s"}], 
       RowBox[{"(", 
        RowBox[{"1", "-", "z"}], ")"}], "y"}]}]}], "\[IndentingNewLine]", 
    "\t", 
    RowBox[{"(*", 
     RowBox[{
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"1", ",", "2"}], "]"}], "->", "s"}], ",", 
      "\[IndentingNewLine]", "\t", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"1", ",", "3"}], "]"}], "->", "t1"}], ",", 
      "\[IndentingNewLine]", "\t", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"1", ",", "4"}], "]"}], "->", "u1"}], ",", 
      "\[IndentingNewLine]", "\t", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"2", ",", "3"}], "]"}], "->", "u2"}], ",", 
      "\[IndentingNewLine]", "\t", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"2", ",", "4"}], "]"}], "->", "t2"}]}], "*)"}], 
    "\[IndentingNewLine]", "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ConstrainedProducts", "=", 
   RowBox[{"{", "\[IndentingNewLine]", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"2", ",", "3"}], "]"}], "->", 
      RowBox[{
       RowBox[{"2", 
        SuperscriptBox[
         RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "j", "]"}], "2"], "-", "mi5", "-", 
       RowBox[{"s", " ", "z"}], "-", "t1"}]}], ",", "\[IndentingNewLine]", 
     "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"1", ",", "4"}], "]"}], "->", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"MNeu", "[", "i", "]"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "j", "]"}], "2"], "-", 
       RowBox[{"s", 
        RowBox[{"(", 
         RowBox[{"1", "-", "y"}], ")"}], "z"}], "-", 
       RowBox[{"s", " ", "y"}], "-", "t1"}]}], ",", "\[IndentingNewLine]", 
     "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"2", ",", "4"}], "]"}], "->", 
      RowBox[{
       RowBox[{"-", 
        SuperscriptBox[
         RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", "mi5", "-", 
       RowBox[{"s", 
        RowBox[{"(", 
         RowBox[{"1", "-", "y"}], ")"}], 
        RowBox[{"(", 
         RowBox[{"1", "-", "z"}], ")"}]}], "+", "t1"}]}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"4", ",", "5"}], "]"}], "->", 
      RowBox[{
       SuperscriptBox[
        RowBox[{"MNeu", "[", "i", "]"}], "2"], "+", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "j", "]"}], "2"], "-", "mi5", "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"1", "-", "z"}], ")"}], "s"}]}]}]}], "\[IndentingNewLine]", 
    "\t", 
    RowBox[{"(*", 
     RowBox[{
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"1", ",", "5"}], "]"}], "->", 
       RowBox[{
        SuperscriptBox[
         RowBox[{"MNeu", "[", "i", "]"}], "2"], "+", 
        SuperscriptBox[
         RowBox[{"MNeu", "[", "j", "]"}], "2"], "-", "s", "-", "t1", "-", 
        "u1"}]}], ",", "\[IndentingNewLine]", "\t", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"2", ",", "5"}], "]"}], "->", 
       RowBox[{
        SuperscriptBox[
         RowBox[{"MNeu", "[", "i", "]"}], "2"], "+", 
        SuperscriptBox[
         RowBox[{"MNeu", "[", "j", "]"}], "2"], "-", "s", "-", "t2", "-", 
        "u2"}]}], ",", "\[IndentingNewLine]", "\t", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"3", ",", "4"}], "]"}], "->", 
       RowBox[{
        RowBox[{"2", 
         SuperscriptBox[
          RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
        RowBox[{"2", 
         SuperscriptBox[
          RowBox[{"MNeu", "[", "j", "]"}], "2"]}], "-", "s", "-", "t1", "-", 
        "t2", "-", "u1", "-", "u2"}]}], ",", "\[IndentingNewLine]", "\t", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"3", ",", "5"}], "]"}], "->", 
       RowBox[{
        RowBox[{"-", 
         SuperscriptBox[
          RowBox[{"MNeu", "[", "j", "]"}], "2"]}], "+", "s", "+", "t2", "+", 
        "u1"}]}], ",", "\[IndentingNewLine]", "\t", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"4", ",", "5"}], "]"}], "->", 
       RowBox[{
        RowBox[{"-", 
         SuperscriptBox[
          RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", "s", "+", "t1", "+", 
        "u2"}]}]}], "*)"}], "\[IndentingNewLine]", "}"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ProductRelations", "=", 
   RowBox[{"{", "\[IndentingNewLine]", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"1", ",", "2"}], "]"}], "->", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"3", ",", "4"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"3", ",", "5"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"4", ",", "5"}], "]"}], "-", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "i", "]"}], "2"], "-", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "j", "]"}], "2"]}]}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"1", ",", "3"}], "]"}], "->", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"2", ",", "4"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"2", ",", "5"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"4", ",", "5"}], "]"}], "-", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "j", "]"}], "2"]}]}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"1", ",", "4"}], "]"}], "->", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"2", ",", "3"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"2", ",", "5"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"3", ",", "5"}], "]"}], "-", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "i", "]"}], "2"]}]}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"1", ",", "5"}], "]"}], "->", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"2", ",", "3"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"2", ",", "4"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"3", ",", "4"}], "]"}], "-", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "i", "]"}], "2"], "-", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "j", "]"}], "2"]}]}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"2", ",", "3"}], "]"}], "->", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"1", ",", "4"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"1", ",", "5"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"4", ",", "5"}], "]"}], "-", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "j", "]"}], "2"]}]}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"2", ",", "4"}], "]"}], "->", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"1", ",", "3"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"1", ",", "5"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"3", ",", "5"}], "]"}], "-", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "i", "]"}], "2"]}]}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"2", ",", "5"}], "]"}], "->", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"1", ",", "3"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"1", ",", "4"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"3", ",", "4"}], "]"}], "-", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "i", "]"}], "2"], "-", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "j", "]"}], "2"]}]}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"3", ",", "4"}], "]"}], "->", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"1", ",", "2"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"1", ",", "5"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"2", ",", "5"}], "]"}]}]}], ",", "\[IndentingNewLine]", "\t", 
     
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"3", ",", "5"}], "]"}], "->", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"1", ",", "2"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"1", ",", "4"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"2", ",", "4"}], "]"}], "-", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "j", "]"}], "2"]}]}], ",", "\[IndentingNewLine]",
      "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"4", ",", "5"}], "]"}], "->", 
      RowBox[{
       RowBox[{"m2", "[", 
        RowBox[{"1", ",", "2"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"1", ",", "3"}], "]"}], "+", 
       RowBox[{"m2", "[", 
        RowBox[{"2", ",", "3"}], "]"}], "-", 
       SuperscriptBox[
        RowBox[{"MNeu", "[", "i", "]"}], "2"]}]}]}], "\[IndentingNewLine]", 
    "}"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"AngularSubs", "=", 
   RowBox[{"{", "\[IndentingNewLine]", "\t", 
    RowBox[{"mi5", "->", 
     RowBox[{
      RowBox[{"1", "/", 
       RowBox[{"(", 
        RowBox[{"2", "z"}], ")"}]}], 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox[
           RowBox[{"MNeu", "[", "i", "]"}], "2"], "-", 
          SuperscriptBox[
           RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox[
            RowBox[{"MNeu", "[", "i", "]"}], "2"], "+", 
           SuperscriptBox[
            RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}], "z"}], "+", 
        RowBox[{"s", " ", "z", 
         RowBox[{"(", 
          RowBox[{"1", "-", "z"}], ")"}]}], "+", 
        RowBox[{
         RowBox[{"Sqrt", "[", 
          RowBox[{
           RowBox[{
            SuperscriptBox["s", "2"], 
            SuperscriptBox["z", "2"]}], "+", 
           SuperscriptBox[
            RowBox[{"MNeu", "[", "i", "]"}], "4"], "+", 
           SuperscriptBox[
            RowBox[{"MNeu", "[", "j", "]"}], "4"], "-", 
           RowBox[{"2", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"s", " ", "z", " ", 
               SuperscriptBox[
                RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
              RowBox[{"s", " ", "z", " ", 
               SuperscriptBox[
                RowBox[{"MNeu", "[", "j", "]"}], "2"]}], "+", 
              RowBox[{
               SuperscriptBox[
                RowBox[{"MNeu", "[", "i", "]"}], "2"], 
               SuperscriptBox[
                RowBox[{"MNeu", "[", "j", "]"}], "2"]}]}], ")"}]}]}], "]"}], 
         "cTheta"}]}], ")"}]}]}], "\[IndentingNewLine]", "}"}]}], 
  ";"}]}], "Code",
 CellChangeTimes->{
  3.916805295551648*^9, {3.916807155803761*^9, 3.916807189455834*^9}, {
   3.916812757712027*^9, 3.916812951301573*^9}, 3.916813012471607*^9, {
   3.916813079947348*^9, 3.916813177332848*^9}, 3.916813228191654*^9, {
   3.916813304579443*^9, 3.916813384997707*^9}, {3.916813446700281*^9, 
   3.916813470253139*^9}, {3.916814015557269*^9, 3.916814019998786*^9}, {
   3.916814428095131*^9, 3.916814437628015*^9}, {3.916814489500885*^9, 
   3.916814523543062*^9}, {3.916817483094153*^9, 
   3.916817484449607*^9}},ExpressionUUID->"35aa01f1-1a1b-41e6-a33b-\
aa73dc769642"],

Cell[BoxData[
 FormBox[
  FractionBox[
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"3", " ", "z"}], "-", "1"}], ")"}], " ", 
     SubsuperscriptBox["m", "i", "2"]}], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"z", "-", "1"}], ")"}], " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"s", " ", "z"}], "-", 
       SubsuperscriptBox["m", "j", "2"]}], ")"}]}], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"z", "-", "1"}], ")"}], " ", 
     RowBox[{"cos", "(", "\[Theta]", ")"}], " ", 
     SqrtBox[
      RowBox[{"\[Lambda]", "(", "z", ")"}]]}]}], 
   RowBox[{"2", " ", "z"}]], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.916812984261381*^9, 3.916813033093502*^9, {3.9168130873795347`*^9, 
   3.916813114106345*^9}, 3.916813179446509*^9, {3.916813337187551*^9, 
   3.916813353328918*^9}, 3.916813385667527*^9, 3.916813752364624*^9, 
   3.9168140049464693`*^9, 3.916814364223702*^9, {3.9168145576866493`*^9, 
   3.916814572540965*^9}, 3.916814681655648*^9},
 CellLabel->"Out[37]=",ExpressionUUID->"8260d06a-6533-4486-8985-a1d171dabeca"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"ReduceScalars", "[", "expr_", "]"}], " ", ":=", " ", 
  RowBox[{
   RowBox[{"expr", " ", "/.", " ", "FreeProducts"}], " ", "/.", " ", 
   "ConstrainedProducts"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"RewriteScalars", "[", "expr_", "]"}], " ", ":=", " ", 
  RowBox[{
  "expr", " ", "/.", " ", "ProductRelations"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"RewriteAndReduceScalars", "[", "expr_", "]"}], " ", ":=", " ", 
  RowBox[{
   RowBox[{"expr", " ", "/.", " ", "ProductRelations"}], " ", "//", " ", 
   "ReduceScalars"}]}]}], "Code",
 CellChangeTimes->{{3.916805311341899*^9, 3.916805337885231*^9}},
 CellLabel->"In[42]:=",ExpressionUUID->"5b989c21-0c95-49d8-b6ef-69b591608a34"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Mreal", "[", "5", "]"}], " ", "=", " ", 
   RowBox[{"RewriteAndReduceScalars", " ", "/@", " ", 
    RowBox[{"Mreal", "[", "4", "]"}]}]}], ";"}]], "Code",
 CellChangeTimes->{{3.916805349239258*^9, 3.916805359471694*^9}, {
  3.916805393786313*^9, 3.916805403731395*^9}, {3.916805489714162*^9, 
  3.916805498614993*^9}},
 CellLabel->"In[45]:=",ExpressionUUID->"782a170a-0045-47ca-a999-d8ebec3076e9"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"IZZ", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{"SquareAmplitudes", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Mreal", "[", "5", "]"}], "[", 
      RowBox[{"[", "6", "]"}], "]"}], ",", " ", 
     RowBox[{"ConjugateAmplitude", "[", 
      RowBox[{
       RowBox[{"Mreal", "[", "5", "]"}], "[", 
       RowBox[{"[", "6", "]"}], "]"}], "]"}]}], "]"}]}], ";"}]], "Code",
 CellChangeTimes->{{3.916805475921185*^9, 3.916805554088578*^9}, {
  3.916806462409688*^9, 3.9168064656783857`*^9}, {3.916806663863346*^9, 
  3.916806664717434*^9}, {3.916806696874792*^9, 3.916806699605546*^9}, {
  3.916806752477086*^9, 3.916806754462858*^9}, {3.916806858195457*^9, 
  3.916806872124819*^9}, {3.916807197106811*^9, 3.916807199062026*^9}, {
  3.916807558708733*^9, 3.916807560575856*^9}, {3.916807593383336*^9, 
  3.916807603831612*^9}, {3.916807722381155*^9, 3.916807726965575*^9}},
 CellLabel->"In[46]:=",ExpressionUUID->"d91bfe8b-08ec-45e2-9cbe-63d3b6ce3460"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"IZZ", "[", "1", "]"}], " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"DoPolarizationSums", "[", 
       RowBox[{
        RowBox[{"IZZ", "[", "0", "]"}], ",", " ", "k", ",", " ", "0"}], "]"}],
       " ", "//", " ", "CalcColorFactor"}], " ", "//", " ", 
     RowBox[{
      RowBox[{"SelectFree2", "[", 
       RowBox[{"#", ",", " ", "DiracTrace"}], "]"}], "&"}]}], " ", "//", " ", 
    "RewriteAndReduceScalars"}], " ", "//", " ", "Simplify"}]}]], "Code",
 CellChangeTimes->{{3.916805556049891*^9, 3.916805603021847*^9}, {
  3.9168069101771584`*^9, 3.91680694881713*^9}, {3.916807413966323*^9, 
  3.9168074564859953`*^9}, {3.9168075047528954`*^9, 3.9168075223670483`*^9}, {
  3.9168075633912277`*^9, 3.916807566434174*^9}, {3.916807617602282*^9, 
  3.916807618601646*^9}},
 CellLabel->"In[47]:=",ExpressionUUID->"62b2418f-e070-498b-a5a8-779b7fcb83fa"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", "s", " ", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
     SuperscriptBox["z", "2"], " ", 
     RowBox[{"(", 
      RowBox[{"s", "-", 
       TemplateBox[{
         RowBox[{"(", 
           SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
        "Conjugate"]}], ")"}]}]], "2", " ", 
   SubscriptBox["C", "A"], " ", 
   SubscriptBox["C", "F"], " ", 
   RowBox[{"(", 
    RowBox[{"D", "-", "2"}], ")"}], " ", 
   SubsuperscriptBox["g", "s", "2"], " ", 
   SubsuperscriptBox["g", "W", "4"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"D", "-", "2"}], ")"}], " ", "D", " ", "s", " ", 
        RowBox[{"(", 
         RowBox[{"y", "-", "1"}], ")"}], " ", "y", " ", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
        SuperscriptBox[
         RowBox[{"(", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"], ")"}], "2"], " ", 
        SubscriptBox["m", "i"], " ", 
        SubscriptBox["m", "j"], " ", 
        SuperscriptBox["z", "2"]}], ")"}]}], "-", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"D", "-", "2"}], ")"}], " ", "D", " ", "s", " ", 
      RowBox[{"(", 
       RowBox[{"y", "-", "1"}], ")"}], " ", "y", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["Z", "s", "R"], ")"}]},
         "Conjugate"], ")"}], "2"], " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      SuperscriptBox["z", "2"]}], "-", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"D", "-", "2"}], ")"}], " ", "D", " ", "s", " ", 
      RowBox[{"(", 
       RowBox[{"y", "-", "1"}], ")"}], " ", "y", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          SubsuperscriptBox["Z", "s", "L"], ")"}], "2"], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}], " ", 
      SuperscriptBox["z", "2"]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Z", "s", "L"], ")"}]},
       "Conjugate"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "9"}], " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["z", "5"]}], "+", 
        RowBox[{
         SuperscriptBox["D", "2"], " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "5"]}], "-", 
        RowBox[{"4", " ", "D", " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "5"]}], "+", 
        RowBox[{
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "5"]}], "-", 
        RowBox[{
         SuperscriptBox["D", "2"], " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "5"]}], "+", 
        RowBox[{"4", " ", "D", " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "5"]}], "+", 
        RowBox[{"8", " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "5"]}], "+", 
        RowBox[{"18", " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["D", "2"], " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "4"]}], "+", 
        RowBox[{"8", " ", "D", " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{
         SuperscriptBox["D", "2"], " ", "s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "4"]}], "+", 
        RowBox[{"4", " ", "D", " ", "s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{"s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "4"]}], "+", 
        RowBox[{"18", " ", "s", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "4"]}], "+", 
        RowBox[{
         SuperscriptBox["D", "2"], " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{"4", " ", "D", " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{"17", " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{"12", " ", "s", " ", 
         SubscriptBox["t", "1"], " ", 
         SuperscriptBox["z", "4"]}], "+", 
        RowBox[{"2", " ", 
         SuperscriptBox["D", "2"], " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{"8", " ", "D", " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{"18", " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "4"]}], "+", 
        RowBox[{"8", " ", "s", " ", 
         SubscriptBox["t", "1"], " ", "y", " ", 
         SuperscriptBox["z", "4"]}], "+", 
        RowBox[{"9", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "4"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"9", " ", 
         SubsuperscriptBox["m", "j", "4"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"12", " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"4", " ", 
         SubsuperscriptBox["t", "1", "2"], " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{
         SuperscriptBox["D", "2"], " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"4", " ", "D", " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{"2", " ", 
         SuperscriptBox["D", "2"], " ", "s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"8", " ", "D", " ", "s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{"s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"27", " ", "s", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{"12", " ", 
         SubscriptBox["t", "1"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["D", "2"], " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{"8", " ", "D", " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{"33", " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"6", " ", 
         SubscriptBox["t", "1"], " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{"12", " ", "s", " ", 
         SubscriptBox["t", "1"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{
         SuperscriptBox["D", "2"], " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{"4", " ", "D", " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{"14", " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"12", " ", "s", " ", 
         SubscriptBox["t", "1"], " ", "y", " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"15", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "4"], " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{"9", " ", 
         SubsuperscriptBox["m", "j", "4"], " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{"3", " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "2"]}], "-", 
        RowBox[{
         SuperscriptBox["D", "2"], " ", "s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{"4", " ", "D", " ", "s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{"s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{"17", " ", "s", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "-", 
        RowBox[{"6", " ", 
         SubscriptBox["t", "1"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{
         SuperscriptBox["D", "2"], " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "-", 
        RowBox[{"4", " ", "D", " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "-", 
        RowBox[{"21", " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{"8", " ", 
         SubscriptBox["t", "1"], " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "-", 
        RowBox[{"4", " ", "s", " ", 
         SubscriptBox["t", "1"], " ", 
         SuperscriptBox["z", "2"]}], "-", 
        RowBox[{"4", " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{"4", " ", "s", " ", 
         SubscriptBox["t", "1"], " ", "y", " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{"7", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "4"], " ", "z"}], "-", 
        RowBox[{"5", " ", 
         SubsuperscriptBox["m", "j", "4"], " ", "z"}], "-", 
        RowBox[{"s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", "z"}], "-", 
        RowBox[{"4", " ", "s", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", "z"}], "+", 
        RowBox[{"2", " ", 
         SubscriptBox["t", "1"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", "z"}], "+", 
        RowBox[{"5", " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", "z"}], "-", 
        RowBox[{"2", " ", 
         SubscriptBox["t", "1"], " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", "z"}], "+", 
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "z"}], "+", 
           RowBox[{"y", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"3", " ", "z"}], "-", "1"}], ")"}]}], "+", "1"}], ")"}],
          " ", 
         SubsuperscriptBox["m", "i", "4"]}], "-", 
        RowBox[{"y", " ", 
         SubsuperscriptBox["m", "j", "4"]}], "+", 
        SubsuperscriptBox["m", "j", "4"], "+", 
        RowBox[{
         SuperscriptBox[
          RowBox[{"cos", "(", "\[Theta]", ")"}], "2"], " ", 
         RowBox[{"(", 
          RowBox[{"y", "-", "1"}], ")"}], " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"z", "-", "1"}], ")"}], "3"], " ", 
         RowBox[{"\[Lambda]", "(", "z", ")"}]}], "-", 
        RowBox[{
         RowBox[{"cos", "(", "\[Theta]", ")"}], " ", 
         RowBox[{"(", 
          RowBox[{"z", "-", "1"}], ")"}], " ", 
         SqrtBox[
          RowBox[{"\[Lambda]", "(", "z", ")"}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", 
            RowBox[{"(", 
             RowBox[{"z", "-", "1"}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "z"}], "+", 
              RowBox[{"y", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"2", " ", "z"}], "-", "1"}], ")"}]}], "+", "1"}], 
             ")"}], " ", 
            SubsuperscriptBox["m", "i", "2"]}], "+", 
           RowBox[{"2", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"3", " ", "y", " ", 
               SuperscriptBox["z", "2"]}], "-", 
              RowBox[{"3", " ", 
               SuperscriptBox["z", "2"]}], "-", 
              RowBox[{"4", " ", "y", " ", "z"}], "+", 
              RowBox[{"3", " ", "z"}], "+", "y", "-", "1"}], ")"}], " ", 
            SubsuperscriptBox["m", "j", "2"]}], "+", 
           RowBox[{"2", " ", 
            SubscriptBox["t", "1"], " ", "z", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"-", "z"}], " ", "y"}], "+", "y", "+", 
              RowBox[{"2", " ", "z"}], "-", "1"}], ")"}]}], "+", 
           RowBox[{"s", " ", "z", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               SuperscriptBox["y", "2"], " ", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{"z", "-", "1"}], ")"}], "2"]}], "+", 
              RowBox[{"6", " ", 
               SuperscriptBox["z", "2"]}], "-", 
              RowBox[{"9", " ", "z"}], "+", 
              RowBox[{"y", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "7"}], " ", 
                  SuperscriptBox["z", "2"]}], "+", 
                 RowBox[{"12", " ", "z"}], "-", "5"}], ")"}]}], "+", "4"}], 
             ")"}]}]}], ")"}]}], "-", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"z", "-", "1"}], ")"}], " ", 
         SubsuperscriptBox["m", "i", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"2", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"6", " ", "y", " ", 
               SuperscriptBox["z", "2"]}], "-", 
              RowBox[{"3", " ", 
               SuperscriptBox["z", "2"]}], "-", 
              RowBox[{"5", " ", "y", " ", "z"}], "+", 
              RowBox[{"3", " ", "z"}], "+", "y", "-", "1"}], ")"}], " ", 
            SubsuperscriptBox["m", "j", "2"]}], "+", 
           RowBox[{"2", " ", 
            SubscriptBox["t", "1"], " ", "z", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"-", "3"}], " ", "z", " ", "y"}], "+", "y", "+", 
              RowBox[{"2", " ", "z"}], "-", "1"}], ")"}]}], "+", 
           RowBox[{"s", " ", "z", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{"z", "-", "1"}], ")"}], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    SuperscriptBox["D", "2"], "-", 
                    RowBox[{"4", " ", "D"}], "+", "7"}], ")"}], " ", "z"}], 
                 "-", "1"}], ")"}], " ", 
               SuperscriptBox["y", "2"]}], "+", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox["D", "2"], "-", 
                    RowBox[{"4", " ", "D"}], "+", "17"}], ")"}], " ", 
                    SuperscriptBox["z", "2"]}], ")"}]}], "+", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    SuperscriptBox["D", "2"], "-", 
                    RowBox[{"4", " ", "D"}], "+", "20"}], ")"}], " ", "z"}], 
                 "-", "5"}], ")"}], " ", "y"}], "+", 
              RowBox[{"6", " ", 
               SuperscriptBox["z", "2"]}], "-", 
              RowBox[{"9", " ", "z"}], "+", "4"}], ")"}]}]}], ")"}]}]}], 
       ")"}], " ", 
      SubsuperscriptBox["Z", "s", "L"]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Z", "s", "R"], ")"}]},
       "Conjugate"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "9"}], " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["z", "5"]}], "+", 
        RowBox[{
         SuperscriptBox["D", "2"], " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "5"]}], "-", 
        RowBox[{"4", " ", "D", " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "5"]}], "+", 
        RowBox[{
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "5"]}], "-", 
        RowBox[{
         SuperscriptBox["D", "2"], " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "5"]}], "+", 
        RowBox[{"4", " ", "D", " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "5"]}], "+", 
        RowBox[{"8", " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "5"]}], "+", 
        RowBox[{"18", " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["D", "2"], " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "4"]}], "+", 
        RowBox[{"8", " ", "D", " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{
         SuperscriptBox["D", "2"], " ", "s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "4"]}], "+", 
        RowBox[{"4", " ", "D", " ", "s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{"s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "4"]}], "+", 
        RowBox[{"18", " ", "s", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "4"]}], "+", 
        RowBox[{
         SuperscriptBox["D", "2"], " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{"4", " ", "D", " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{"17", " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{"12", " ", "s", " ", 
         SubscriptBox["t", "1"], " ", 
         SuperscriptBox["z", "4"]}], "+", 
        RowBox[{"2", " ", 
         SuperscriptBox["D", "2"], " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{"8", " ", "D", " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "4"]}], "-", 
        RowBox[{"18", " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "4"]}], "+", 
        RowBox[{"8", " ", "s", " ", 
         SubscriptBox["t", "1"], " ", "y", " ", 
         SuperscriptBox["z", "4"]}], "+", 
        RowBox[{"9", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "4"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"9", " ", 
         SubsuperscriptBox["m", "j", "4"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"12", " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"4", " ", 
         SubsuperscriptBox["t", "1", "2"], " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{
         SuperscriptBox["D", "2"], " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"4", " ", "D", " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{"2", " ", 
         SuperscriptBox["D", "2"], " ", "s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"8", " ", "D", " ", "s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{"s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"27", " ", "s", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{"12", " ", 
         SubscriptBox["t", "1"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["D", "2"], " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{"8", " ", "D", " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{"33", " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"6", " ", 
         SubscriptBox["t", "1"], " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{"12", " ", "s", " ", 
         SubscriptBox["t", "1"], " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{
         SuperscriptBox["D", "2"], " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{"4", " ", "D", " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "3"]}], "+", 
        RowBox[{"14", " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"12", " ", "s", " ", 
         SubscriptBox["t", "1"], " ", "y", " ", 
         SuperscriptBox["z", "3"]}], "-", 
        RowBox[{"15", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "4"], " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{"9", " ", 
         SubsuperscriptBox["m", "j", "4"], " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{"3", " ", 
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{
         SuperscriptBox["s", "2"], " ", 
         SuperscriptBox["y", "2"], " ", 
         SuperscriptBox["z", "2"]}], "-", 
        RowBox[{
         SuperscriptBox["D", "2"], " ", "s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{"4", " ", "D", " ", "s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{"s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{"17", " ", "s", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "-", 
        RowBox[{"6", " ", 
         SubscriptBox["t", "1"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{
         SuperscriptBox["D", "2"], " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "-", 
        RowBox[{"4", " ", "D", " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "-", 
        RowBox[{"21", " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{"8", " ", 
         SubscriptBox["t", "1"], " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         SuperscriptBox["z", "2"]}], "-", 
        RowBox[{"4", " ", "s", " ", 
         SubscriptBox["t", "1"], " ", 
         SuperscriptBox["z", "2"]}], "-", 
        RowBox[{"4", " ", 
         SuperscriptBox["s", "2"], " ", "y", " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{"4", " ", "s", " ", 
         SubscriptBox["t", "1"], " ", "y", " ", 
         SuperscriptBox["z", "2"]}], "+", 
        RowBox[{"7", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "4"], " ", "z"}], "-", 
        RowBox[{"5", " ", 
         SubsuperscriptBox["m", "j", "4"], " ", "z"}], "-", 
        RowBox[{"s", " ", 
         SuperscriptBox["y", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", "z"}], "-", 
        RowBox[{"4", " ", "s", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", "z"}], "+", 
        RowBox[{"2", " ", 
         SubscriptBox["t", "1"], " ", 
         SubsuperscriptBox["m", "j", "2"], " ", "z"}], "+", 
        RowBox[{"5", " ", "s", " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", "z"}], "-", 
        RowBox[{"2", " ", 
         SubscriptBox["t", "1"], " ", "y", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", "z"}], "+", 
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "z"}], "+", 
           RowBox[{"y", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"3", " ", "z"}], "-", "1"}], ")"}]}], "+", "1"}], ")"}],
          " ", 
         SubsuperscriptBox["m", "i", "4"]}], "-", 
        RowBox[{"y", " ", 
         SubsuperscriptBox["m", "j", "4"]}], "+", 
        SubsuperscriptBox["m", "j", "4"], "+", 
        RowBox[{
         SuperscriptBox[
          RowBox[{"cos", "(", "\[Theta]", ")"}], "2"], " ", 
         RowBox[{"(", 
          RowBox[{"y", "-", "1"}], ")"}], " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"z", "-", "1"}], ")"}], "3"], " ", 
         RowBox[{"\[Lambda]", "(", "z", ")"}]}], "-", 
        RowBox[{
         RowBox[{"cos", "(", "\[Theta]", ")"}], " ", 
         RowBox[{"(", 
          RowBox[{"z", "-", "1"}], ")"}], " ", 
         SqrtBox[
          RowBox[{"\[Lambda]", "(", "z", ")"}]], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", 
            RowBox[{"(", 
             RowBox[{"z", "-", "1"}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"-", "z"}], "+", 
              RowBox[{"y", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"2", " ", "z"}], "-", "1"}], ")"}]}], "+", "1"}], 
             ")"}], " ", 
            SubsuperscriptBox["m", "i", "2"]}], "+", 
           RowBox[{"2", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"3", " ", "y", " ", 
               SuperscriptBox["z", "2"]}], "-", 
              RowBox[{"3", " ", 
               SuperscriptBox["z", "2"]}], "-", 
              RowBox[{"4", " ", "y", " ", "z"}], "+", 
              RowBox[{"3", " ", "z"}], "+", "y", "-", "1"}], ")"}], " ", 
            SubsuperscriptBox["m", "j", "2"]}], "+", 
           RowBox[{"2", " ", 
            SubscriptBox["t", "1"], " ", "z", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"-", "z"}], " ", "y"}], "+", "y", "+", 
              RowBox[{"2", " ", "z"}], "-", "1"}], ")"}]}], "+", 
           RowBox[{"s", " ", "z", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               SuperscriptBox["y", "2"], " ", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{"z", "-", "1"}], ")"}], "2"]}], "+", 
              RowBox[{"6", " ", 
               SuperscriptBox["z", "2"]}], "-", 
              RowBox[{"9", " ", "z"}], "+", 
              RowBox[{"y", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "7"}], " ", 
                  SuperscriptBox["z", "2"]}], "+", 
                 RowBox[{"12", " ", "z"}], "-", "5"}], ")"}]}], "+", "4"}], 
             ")"}]}]}], ")"}]}], "-", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"z", "-", "1"}], ")"}], " ", 
         SubsuperscriptBox["m", "i", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"2", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"6", " ", "y", " ", 
               SuperscriptBox["z", "2"]}], "-", 
              RowBox[{"3", " ", 
               SuperscriptBox["z", "2"]}], "-", 
              RowBox[{"5", " ", "y", " ", "z"}], "+", 
              RowBox[{"3", " ", "z"}], "+", "y", "-", "1"}], ")"}], " ", 
            SubsuperscriptBox["m", "j", "2"]}], "+", 
           RowBox[{"2", " ", 
            SubscriptBox["t", "1"], " ", "z", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"-", "3"}], " ", "z", " ", "y"}], "+", "y", "+", 
              RowBox[{"2", " ", "z"}], "-", "1"}], ")"}]}], "+", 
           RowBox[{"s", " ", "z", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{"z", "-", "1"}], ")"}], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    SuperscriptBox["D", "2"], "-", 
                    RowBox[{"4", " ", "D"}], "+", "7"}], ")"}], " ", "z"}], 
                 "-", "1"}], ")"}], " ", 
               SuperscriptBox["y", "2"]}], "+", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox["D", "2"], "-", 
                    RowBox[{"4", " ", "D"}], "+", "17"}], ")"}], " ", 
                    SuperscriptBox["z", "2"]}], ")"}]}], "+", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    SuperscriptBox["D", "2"], "-", 
                    RowBox[{"4", " ", "D"}], "+", "20"}], ")"}], " ", "z"}], 
                 "-", "5"}], ")"}], " ", "y"}], "+", 
              RowBox[{"6", " ", 
               SuperscriptBox["z", "2"]}], "-", 
              RowBox[{"9", " ", "z"}], "+", "4"}], ")"}]}]}], ")"}]}]}], 
       ")"}], " ", 
      SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{
  3.9168065130284443`*^9, {3.916806657661441*^9, 3.916806662315899*^9}, 
   3.9168067851282682`*^9, 3.9168068756171703`*^9, {3.916806939842041*^9, 
   3.916806949430581*^9}, 3.91680721442316*^9, {3.916807427291707*^9, 
   3.9168074607698603`*^9}, {3.9168075122146883`*^9, 3.916807527670679*^9}, 
   3.916807774897522*^9, 3.916809105357642*^9, 3.916813016442169*^9, 
   3.916813263395759*^9, 3.91681344637317*^9, 3.916814390031185*^9, 
   3.9168145947108793`*^9, 3.9168147039791737`*^9},
 CellLabel->"Out[47]=",ExpressionUUID->"6cfca201-e9e8-41e7-9dd3-5dfb9af86e90"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Phase Space Integral", "Section",
 CellChangeTimes->{{3.916808469874833*^9, 
  3.91680847355202*^9}},ExpressionUUID->"e5af8a7e-b017-48bc-a6b7-\
7205d53824d3"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"Kallan", " ", "=", " ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"z", " ", "s"}], " ", "-", " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"MNeu", "[", "i", "]"}], "+", 
           RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "^", "2"}]}], ")"}], 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"z", " ", "s"}], " ", "-", " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"MNeu", "[", "i", "]"}], "-", 
           RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "^", "2"}]}], ")"}]}]}], 
    ";"}], "*)"}], "\n", 
  RowBox[{
   RowBox[{"PhaseSpaceFactor", " ", "=", " ", 
    RowBox[{
     FractionBox["1", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"2", "Pi"}], ")"}], "^", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", "D"}], "-", "3"}], ")"}]}]], 
     FractionBox["1", 
      RowBox[{"Gamma", "[", 
       FractionBox[
        RowBox[{"D", "-", "2"}], "2"], "]"}]], 
     FractionBox["1", 
      RowBox[{
       RowBox[{"2", "^", "D"}], " ", 
       RowBox[{"Pi", "^", 
        RowBox[{"(", 
         FractionBox[
          RowBox[{
           RowBox[{"3", "D"}], "-", "4"}], "2"], ")"}]}]}]], 
     RowBox[{
      RowBox[{"Kallan", "[", "z", "]"}], "^", 
      RowBox[{"(", 
       FractionBox[
        RowBox[{"D", "-", "3"}], "2"], ")"}]}], 
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{"1", "-", "z"}], ")"}], "^", 
       RowBox[{"(", 
        FractionBox[
         RowBox[{"D", "-", "3"}], "2"], ")"}]}], 
      RowBox[{"z", "^", 
       RowBox[{"(", 
        FractionBox[
         RowBox[{"D", "-", "2"}], "2"], ")"}]}]], 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"y", 
        RowBox[{"(", 
         RowBox[{"1", "-", "y"}], ")"}]}], ")"}], "^", 
      RowBox[{"(", 
       FractionBox[
        RowBox[{"D", "-", "4"}], "4"], ")"}]}]}]}], ";"}]}]], "Code",
 CellChangeTimes->{{3.916808481461474*^9, 3.9168087123097477`*^9}, {
  3.916814538345107*^9, 3.916814544891986*^9}},
 CellLabel->"In[48]:=",ExpressionUUID->"225d2c57-4447-4cf0-90cd-7fb953878001"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"integrand", " ", "=", " ", 
   RowBox[{"FCReplaceD", "[", 
    RowBox[{
     RowBox[{"PhaseSpaceFactor", " ", 
      RowBox[{"IZZ", "[", "1", "]"}]}], ",", " ", 
     RowBox[{"D", " ", "->", " ", 
      RowBox[{"4", " ", "-", " ", 
       RowBox[{"2", "Epsilon"}]}]}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"Integrate", "[", 
   RowBox[{"integrand", ",", " ", 
    RowBox[{"{", 
     RowBox[{"y", ",", " ", "0", ",", " ", "1"}], "}"}], ",", " ", 
    RowBox[{"Assumptions", " ", "->", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Epsilon", " ", "\[Element]", " ", "Reals"}], ",", " ", 
       RowBox[{"Epsilon", " ", "<", " ", "0"}]}], "}"}]}]}], "]"}], 
  ";"}], "\n", 
 RowBox[{"Integrate", "[", 
  RowBox[{"%", ",", " ", 
   RowBox[{"{", 
    RowBox[{"cTheta", ",", " ", 
     RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", " ", 
   RowBox[{"Assumptions", " ", "->", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Epsilon", " ", "\[Element]", " ", "Reals"}], ",", " ", 
      RowBox[{"Epsilon", " ", "<", " ", "0"}]}], "}"}]}]}], "]"}]}], "Code",
 CellChangeTimes->{{3.9168087153107023`*^9, 3.9168088139199123`*^9}, {
  3.9168088894789467`*^9, 3.916808891542346*^9}, {3.916813564209375*^9, 
  3.916813606505884*^9}},
 CellLabel->"In[49]:=",ExpressionUUID->"709ba678-2607-4bc1-9d85-e903138ccafa"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", 
    FractionBox["1", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        TagBox["\[CurlyEpsilon]",
         TraditionalForm], "-", "3"}], ")"}], " ", "s", " ", 
      TemplateBox[{
        RowBox[{"1", "-", 
          TagBox["\[CurlyEpsilon]", TraditionalForm]}]},
       "Gamma"], " ", 
      TemplateBox[{
        RowBox[{
          FractionBox["3", "2"], "-", 
          FractionBox[
           TagBox["\[CurlyEpsilon]", TraditionalForm], "2"]}]},
       "Gamma"], " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"s", "-", 
        TemplateBox[{
          RowBox[{"(", 
            SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
         "Conjugate"]}], ")"}]}]]}], 
   SuperscriptBox["2", 
    RowBox[{
     RowBox[{"7", " ", 
      TagBox["\[CurlyEpsilon]",
       TraditionalForm]}], "-", "11"}]], " ", 
   RowBox[{"(", 
    RowBox[{"2", "-", 
     RowBox[{"2", " ", 
      TagBox["\[CurlyEpsilon]",
       TraditionalForm]}]}], ")"}], " ", 
   SuperscriptBox["\[Pi]", 
    RowBox[{
     RowBox[{"7", " ", 
      TagBox["\[CurlyEpsilon]",
       TraditionalForm]}], "-", 
     FractionBox["17", "2"]}]], " ", 
   SubscriptBox["C", "A"], " ", 
   SubscriptBox["C", "F"], " ", 
   TemplateBox[{
     RowBox[{"1", "-", 
       FractionBox[
        TagBox["\[CurlyEpsilon]", TraditionalForm], "2"]}]},
    "Gamma"], " ", 
   SubsuperscriptBox["g", "s", "2"], " ", 
   SubsuperscriptBox["g", "W", "4"], " ", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "-", "z"}], ")"}], 
    RowBox[{
     RowBox[{"-", 
      TagBox["\[CurlyEpsilon]",
       TraditionalForm]}], "-", 
     FractionBox["3", "2"]}]], " ", 
   SuperscriptBox["z", 
    RowBox[{
     TagBox["\[CurlyEpsilon]",
      TraditionalForm], "-", "3"}]], " ", 
   SuperscriptBox[
    RowBox[{"\[Lambda]", "(", "z", ")"}], 
    RowBox[{
     FractionBox["1", "2"], "-", 
     TagBox["\[CurlyEpsilon]",
      TraditionalForm]}]], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      FractionBox["2", "3"], " ", 
      SuperscriptBox[
       TemplateBox[{
         SubsuperscriptBox["Z", "s", "R"]},
        "Abs"], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"3", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
            SubsuperscriptBox["m", "i", "2"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"4", " ", 
               RowBox[{"(", 
                RowBox[{
                 TagBox["\[CurlyEpsilon]",
                  TraditionalForm], "-", "3"}], ")"}], " ", 
               SubsuperscriptBox["m", "j", "2"]}], "+", 
              RowBox[{"z", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  RowBox[{
                   TagBox["\[CurlyEpsilon]",
                    TraditionalForm], " ", "s", " ", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm], "-", "4"}], ")"}], " ", 
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm]}], "+", "19"}], ")"}], " ", "z"}], "+", 
                    "7"}], ")"}]}]}], "+", 
                 RowBox[{"2", " ", "s", " ", 
                  RowBox[{"(", 
                   RowBox[{"z", "+", "11"}], ")"}]}], "+", 
                 RowBox[{"4", " ", 
                  RowBox[{"(", 
                   RowBox[{
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm], "-", "3"}], ")"}], " ", 
                  SubscriptBox["t", "1"]}]}], ")"}]}]}], ")"}]}], "-", 
           RowBox[{"2", " ", 
            RowBox[{"(", 
             RowBox[{
              TagBox["\[CurlyEpsilon]",
               TraditionalForm], "-", "3"}], ")"}], " ", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
            RowBox[{"(", 
             RowBox[{"z", "+", "1"}], ")"}], " ", 
            SubsuperscriptBox["m", "i", "4"]}], "+", 
           RowBox[{"z", " ", 
            SubsuperscriptBox["m", "j", "2"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"s", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  RowBox[{"4", " ", 
                   SuperscriptBox[
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm], "3"], " ", 
                   SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"z", "-", "1"}], ")"}], "2"], " ", "z"}]}], "+", 
                 RowBox[{"16", " ", 
                  SuperscriptBox[
                   TagBox["\[CurlyEpsilon]",
                    TraditionalForm], "2"], " ", 
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"z", "-", "1"}], ")"}], "2"], " ", "z"}], "+", 
                 RowBox[{
                  TagBox["\[CurlyEpsilon]",
                   TraditionalForm], " ", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"z", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"53", " ", "z"}]}], ")"}], " ", "z"}], "-", 
                    "43"}], ")"}]}], "+", "7"}], ")"}]}], "+", 
                 RowBox[{"2", " ", "z", " ", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"z", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"55", " ", "z"}], "-", "61"}], ")"}]}], "+", 
                    "41"}], ")"}]}], "-", "22"}], ")"}]}], "-", 
              RowBox[{"4", " ", 
               RowBox[{"(", 
                RowBox[{
                 TagBox["\[CurlyEpsilon]",
                  TraditionalForm], "-", "3"}], ")"}], " ", 
               SubscriptBox["t", "1"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"z", " ", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"9", " ", "z"}], "-", "2"}], ")"}]}], "+", "1"}], 
                ")"}]}]}], ")"}]}], "+", 
           RowBox[{"2", " ", 
            RowBox[{"(", 
             RowBox[{
              TagBox["\[CurlyEpsilon]",
               TraditionalForm], "-", "3"}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"3", " ", "z"}], "-", "1"}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"3", " ", 
               SuperscriptBox["z", "2"]}], "+", "1"}], ")"}], " ", 
            SubsuperscriptBox["m", "j", "4"]}], "+", 
           RowBox[{
            SuperscriptBox["z", "2"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               SuperscriptBox["s", "2"], " ", 
               RowBox[{"(", 
                RowBox[{"z", "-", "1"}], ")"}], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"5", " ", 
                  TagBox["\[CurlyEpsilon]",
                   TraditionalForm]}], "+", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm], "-", "4"}], ")"}], " ", 
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm]}], "+", "35"}], ")"}]}], "-", "56"}], 
                   ")"}], " ", 
                  SuperscriptBox["z", "2"]}], "-", 
                 RowBox[{"4", " ", 
                  TagBox["\[CurlyEpsilon]",
                   TraditionalForm], " ", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm], "-", "4"}], ")"}], " ", 
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm]}], "+", "8"}], ")"}], " ", "z"}], "+", 
                 RowBox[{"48", " ", "z"}], "-", "16"}], ")"}]}], "+", 
              RowBox[{"8", " ", 
               RowBox[{"(", 
                RowBox[{
                 TagBox["\[CurlyEpsilon]",
                  TraditionalForm], "-", "3"}], ")"}], " ", "s", " ", 
               SubscriptBox["t", "1"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"z", " ", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"4", " ", "z"}], "-", "3"}], ")"}]}], "+", "1"}], 
                ")"}]}], "+", 
              RowBox[{"16", " ", 
               RowBox[{"(", 
                RowBox[{
                 TagBox["\[CurlyEpsilon]",
                  TraditionalForm], "-", "3"}], ")"}], " ", 
               SubsuperscriptBox["t", "1", "2"], " ", "z"}]}], ")"}]}]}], 
          ")"}]}], "+", 
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{
           TagBox["\[CurlyEpsilon]",
            TraditionalForm], "-", "3"}], ")"}], " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"z", "-", "1"}], ")"}], "3"], " ", 
         RowBox[{"\[Lambda]", "(", "z", ")"}]}]}], ")"}]}], "+", 
     RowBox[{
      FractionBox["2", "3"], " ", 
      SubsuperscriptBox["Z", "s", "L"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Z", "s", "L"], ")"}]},
       "Conjugate"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", 
         RowBox[{"3", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
          SubsuperscriptBox["m", "i", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             RowBox[{"4", " ", 
              RowBox[{"(", 
               RowBox[{
                TagBox["\[CurlyEpsilon]",
                 TraditionalForm], "-", "3"}], ")"}], " ", 
              SubsuperscriptBox["m", "j", "2"]}]}], "+", 
            RowBox[{"s", " ", "z", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"4", " ", 
                SuperscriptBox[
                 TagBox["\[CurlyEpsilon]",
                  TraditionalForm], "3"], " ", "z"}], "-", 
               RowBox[{"16", " ", 
                SuperscriptBox[
                 TagBox["\[CurlyEpsilon]",
                  TraditionalForm], "2"], " ", "z"}], "+", 
               RowBox[{
                TagBox["\[CurlyEpsilon]",
                 TraditionalForm], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"19", " ", "z"}], "+", "7"}], ")"}]}], "-", 
               RowBox[{"2", " ", 
                RowBox[{"(", 
                 RowBox[{"z", "+", "11"}], ")"}]}]}], ")"}]}], "-", 
            RowBox[{"4", " ", 
             RowBox[{"(", 
              RowBox[{
               TagBox["\[CurlyEpsilon]",
                TraditionalForm], "-", "3"}], ")"}], " ", 
             SubscriptBox["t", "1"], " ", "z"}]}], ")"}]}]}], "-", 
        RowBox[{"6", " ", 
         RowBox[{"(", 
          RowBox[{
           TagBox["\[CurlyEpsilon]",
            TraditionalForm], "-", "3"}], ")"}], " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
         RowBox[{"(", 
          RowBox[{"z", "+", "1"}], ")"}], " ", 
         SubsuperscriptBox["m", "i", "4"]}], "+", 
        RowBox[{"3", " ", "z", " ", 
         SubsuperscriptBox["m", "j", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"s", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               TagBox["\[CurlyEpsilon]",
                TraditionalForm], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  RowBox[{"53", " ", 
                   SuperscriptBox["z", "3"]}]}], "+", 
                 RowBox[{"73", " ", 
                  SuperscriptBox["z", "2"]}], "-", 
                 RowBox[{"43", " ", "z"}], "+", "7"}], ")"}]}], "+", 
              RowBox[{"2", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"55", " ", 
                  SuperscriptBox["z", "3"]}], "-", 
                 RowBox[{"61", " ", 
                  SuperscriptBox["z", "2"]}], "+", 
                 RowBox[{"41", " ", "z"}], "-", "11"}], ")"}]}], "-", 
              RowBox[{"4", " ", 
               SuperscriptBox[
                TagBox["\[CurlyEpsilon]",
                 TraditionalForm], "3"], " ", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{"z", "-", "1"}], ")"}], "2"], " ", "z"}], "+", 
              RowBox[{"16", " ", 
               SuperscriptBox[
                TagBox["\[CurlyEpsilon]",
                 TraditionalForm], "2"], " ", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{"z", "-", "1"}], ")"}], "2"], " ", "z"}]}], ")"}]}], 
           "-", 
           RowBox[{"4", " ", 
            RowBox[{"(", 
             RowBox[{
              TagBox["\[CurlyEpsilon]",
               TraditionalForm], "-", "3"}], ")"}], " ", 
            SubscriptBox["t", "1"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"9", " ", 
               SuperscriptBox["z", "2"]}], "-", 
              RowBox[{"2", " ", "z"}], "+", "1"}], ")"}]}]}], ")"}]}], "+", 
        RowBox[{"6", " ", 
         RowBox[{"(", 
          RowBox[{
           TagBox["\[CurlyEpsilon]",
            TraditionalForm], "-", "3"}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"9", " ", 
            SuperscriptBox["z", "3"]}], "-", 
           RowBox[{"3", " ", 
            SuperscriptBox["z", "2"]}], "+", 
           RowBox[{"3", " ", "z"}], "-", "1"}], ")"}], " ", 
         SubsuperscriptBox["m", "j", "4"]}], "+", 
        RowBox[{"3", " ", 
         SuperscriptBox["z", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SuperscriptBox["s", "2"], " ", 
            RowBox[{"(", 
             RowBox[{"z", "-", "1"}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               TagBox["\[CurlyEpsilon]",
                TraditionalForm], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"35", " ", 
                  SuperscriptBox["z", "2"]}], "-", 
                 RowBox[{"32", " ", "z"}], "+", "5"}], ")"}]}], "-", 
              RowBox[{"8", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"7", " ", 
                  SuperscriptBox["z", "2"]}], "-", 
                 RowBox[{"6", " ", "z"}], "+", "2"}], ")"}]}], "+", 
              RowBox[{"4", " ", 
               SuperscriptBox[
                TagBox["\[CurlyEpsilon]",
                 TraditionalForm], "3"], " ", 
               RowBox[{"(", 
                RowBox[{"z", "-", "1"}], ")"}], " ", "z"}], "-", 
              RowBox[{"16", " ", 
               SuperscriptBox[
                TagBox["\[CurlyEpsilon]",
                 TraditionalForm], "2"], " ", 
               RowBox[{"(", 
                RowBox[{"z", "-", "1"}], ")"}], " ", "z"}]}], ")"}]}], "+", 
           RowBox[{"8", " ", 
            RowBox[{"(", 
             RowBox[{
              TagBox["\[CurlyEpsilon]",
               TraditionalForm], "-", "3"}], ")"}], " ", "s", " ", 
            SubscriptBox["t", "1"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"4", " ", 
               SuperscriptBox["z", "2"]}], "-", 
              RowBox[{"3", " ", "z"}], "+", "1"}], ")"}]}], "+", 
           RowBox[{"16", " ", 
            RowBox[{"(", 
             RowBox[{
              TagBox["\[CurlyEpsilon]",
               TraditionalForm], "-", "3"}], ")"}], " ", 
            SubsuperscriptBox["t", "1", "2"], " ", "z"}]}], ")"}]}], "+", 
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{
           TagBox["\[CurlyEpsilon]",
            TraditionalForm], "-", "3"}], ")"}], " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"z", "-", "1"}], ")"}], "3"], " ", 
         RowBox[{"\[Lambda]", "(", "z", ")"}]}]}], ")"}]}], "-", 
     RowBox[{"8", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         TagBox["\[CurlyEpsilon]",
          TraditionalForm], "-", "2"}], ")"}], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        TagBox["\[CurlyEpsilon]",
         TraditionalForm], "-", "1"}], ")"}], " ", "s", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
      SuperscriptBox["z", "2"], " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["Z", "s", "L"], ")"}]},
         "Conjugate"], ")"}], "2"]}], "-", 
     RowBox[{"8", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         TagBox["\[CurlyEpsilon]",
          TraditionalForm], "-", "2"}], ")"}], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        TagBox["\[CurlyEpsilon]",
         TraditionalForm], "-", "1"}], ")"}], " ", "s", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
      SuperscriptBox["z", "2"], " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["Z", "s", "R"], ")"}]},
         "Conjugate"], ")"}], "2"]}], "-", 
     RowBox[{"8", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         TagBox["\[CurlyEpsilon]",
          TraditionalForm], "-", "2"}], ")"}], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        TagBox["\[CurlyEpsilon]",
         TraditionalForm], "-", "1"}], ")"}], " ", "s", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
      SuperscriptBox["z", "2"], " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          SubsuperscriptBox["Z", "s", "L"], ")"}], "2"], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}]}]}], ")"}]}],
   TraditionalForm]], "Output",
 CellChangeTimes->{3.916808524588956*^9, 3.916808694410507*^9, 
  3.916808796581696*^9, 3.9168088344731627`*^9, 3.916809143173197*^9, 
  3.9168136868467216`*^9, 3.916814451220508*^9, 3.9168146234037857`*^9, 
  3.916814746301547*^9},
 CellLabel->"Out[51]=",ExpressionUUID->"6a3939c5-6c35-4685-bf43-d193a9ecd469"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"ReplaceAll", "[", 
   RowBox[{"%", ",", " ", 
    RowBox[{
     RowBox[{"Kallan", "[", "z", "]"}], " ", "->", " ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"s", " ", "z"}], " ", "-", " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"MNeu", "[", "i", "]"}], "+", 
           RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "^", "2"}]}], ")"}], 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"s", " ", "z"}], " ", "-", " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"MNeu", "[", "i", "]"}], "-", 
           RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "^", "2"}]}], 
       ")"}]}]}]}], "]"}], " ", "//", " ", "Simplify"}]], "Code",
 CellChangeTimes->{{3.916816323774613*^9, 3.916816412008173*^9}, {
  3.916816475674575*^9, 
  3.916816475789215*^9}},ExpressionUUID->"23e40f47-e010-4b3a-92e5-\
ddf27b23b51b"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"-", 
    FractionBox["1", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        TagBox["\[CurlyEpsilon]",
         TraditionalForm], "-", "3"}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", "s", 
      " ", 
      RowBox[{"(", 
       RowBox[{"s", "-", 
        TemplateBox[{
          RowBox[{"(", 
            SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
         "Conjugate"]}], ")"}], " ", 
      TemplateBox[{
        RowBox[{"1", "-", 
          TagBox["\[CurlyEpsilon]", TraditionalForm]}]},
       "Gamma"], " ", 
      TemplateBox[{
        RowBox[{
          FractionBox["3", "2"], "-", 
          FractionBox[
           TagBox["\[CurlyEpsilon]", TraditionalForm], "2"]}]},
       "Gamma"]}]]}], 
   SuperscriptBox["2", 
    RowBox[{
     RowBox[{"7", " ", 
      TagBox["\[CurlyEpsilon]",
       TraditionalForm]}], "-", "11"}]], " ", 
   SubscriptBox["C", "A"], " ", 
   SubscriptBox["C", "F"], " ", 
   RowBox[{"(", 
    RowBox[{"2", "-", 
     RowBox[{"2", " ", 
      TagBox["\[CurlyEpsilon]",
       TraditionalForm]}]}], ")"}], " ", 
   SuperscriptBox["\[Pi]", 
    RowBox[{
     RowBox[{"7", " ", 
      TagBox["\[CurlyEpsilon]",
       TraditionalForm]}], "-", 
     FractionBox["17", "2"]}]], " ", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{"1", "-", "z"}], ")"}], 
    RowBox[{
     RowBox[{"-", 
      TagBox["\[CurlyEpsilon]",
       TraditionalForm]}], "-", 
     FractionBox["3", "2"]}]], " ", 
   SuperscriptBox["z", 
    RowBox[{
     TagBox["\[CurlyEpsilon]",
      TraditionalForm], "-", "3"}]], " ", 
   TemplateBox[{
     RowBox[{"1", "-", 
       FractionBox[
        TagBox["\[CurlyEpsilon]", TraditionalForm], "2"]}]},
    "Gamma"], " ", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"s", " ", "z"}], "-", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           SubscriptBox["m", "i"], "-", 
           SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"s", " ", "z"}], "-", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           SubscriptBox["m", "i"], "+", 
           SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}]}], ")"}], 
    RowBox[{
     FractionBox["1", "2"], "-", 
     TagBox["\[CurlyEpsilon]",
      TraditionalForm]}]], " ", 
   SubsuperscriptBox["g", "s", "2"], " ", 
   SubsuperscriptBox["g", "W", "4"], " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "8"}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         TagBox["\[CurlyEpsilon]",
          TraditionalForm], "-", "2"}], ")"}], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        TagBox["\[CurlyEpsilon]",
         TraditionalForm], "-", "1"}], ")"}], " ", "s", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["Z", "s", "L"], ")"}]},
         "Conjugate"], ")"}], "2"], " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      SuperscriptBox["z", "2"]}], "-", 
     RowBox[{"8", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         TagBox["\[CurlyEpsilon]",
          TraditionalForm], "-", "2"}], ")"}], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        TagBox["\[CurlyEpsilon]",
         TraditionalForm], "-", "1"}], ")"}], " ", "s", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["Z", "s", "R"], ")"}]},
         "Conjugate"], ")"}], "2"], " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      SuperscriptBox["z", "2"]}], "-", 
     RowBox[{"8", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{
         TagBox["\[CurlyEpsilon]",
          TraditionalForm], "-", "2"}], ")"}], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        TagBox["\[CurlyEpsilon]",
         TraditionalForm], "-", "1"}], ")"}], " ", "s", " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          SubsuperscriptBox["Z", "s", "L"], ")"}], "2"], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}], " ", 
      SuperscriptBox["z", "2"]}], "+", 
     RowBox[{
      FractionBox["2", "3"], " ", 
      SuperscriptBox[
       TemplateBox[{
         SubsuperscriptBox["Z", "s", "R"]},
        "Abs"], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{
           TagBox["\[CurlyEpsilon]",
            TraditionalForm], "-", "3"}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"s", " ", "z"}], "-", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              SubscriptBox["m", "i"], "-", 
              SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"s", " ", "z"}], "-", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              SubscriptBox["m", "i"], "+", 
              SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}], " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"z", "-", "1"}], ")"}], "3"]}], "+", 
        RowBox[{"3", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", 
            RowBox[{"(", 
             RowBox[{
              TagBox["\[CurlyEpsilon]",
               TraditionalForm], "-", "3"}], ")"}], " ", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
            RowBox[{"(", 
             RowBox[{"z", "+", "1"}], ")"}], " ", 
            SubsuperscriptBox["m", "i", "4"]}], "+", 
           RowBox[{
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"4", " ", 
               RowBox[{"(", 
                RowBox[{
                 TagBox["\[CurlyEpsilon]",
                  TraditionalForm], "-", "3"}], ")"}], " ", 
               SubsuperscriptBox["m", "j", "2"]}], "+", 
              RowBox[{"z", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"4", " ", 
                  RowBox[{"(", 
                   RowBox[{
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm], "-", "3"}], ")"}], " ", 
                  SubscriptBox["t", "1"]}], "+", 
                 RowBox[{"2", " ", "s", " ", 
                  RowBox[{"(", 
                   RowBox[{"z", "+", "11"}], ")"}]}], "-", 
                 RowBox[{
                  TagBox["\[CurlyEpsilon]",
                   TraditionalForm], " ", "s", " ", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm], "-", "4"}], ")"}], " ", 
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm]}], "+", "19"}], ")"}], " ", "z"}], "+", 
                    "7"}], ")"}]}]}], ")"}]}]}], ")"}], " ", 
            SubsuperscriptBox["m", "i", "2"]}], "+", 
           RowBox[{"2", " ", 
            RowBox[{"(", 
             RowBox[{
              TagBox["\[CurlyEpsilon]",
               TraditionalForm], "-", "3"}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"3", " ", "z"}], "-", "1"}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"3", " ", 
               SuperscriptBox["z", "2"]}], "+", "1"}], ")"}], " ", 
            SubsuperscriptBox["m", "j", "4"]}], "+", 
           RowBox[{"z", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"s", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "4"}], " ", 
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"z", "-", "1"}], ")"}], "2"], " ", "z", " ", 
                  SuperscriptBox[
                   TagBox["\[CurlyEpsilon]",
                    TraditionalForm], "3"]}], "+", 
                 RowBox[{"16", " ", 
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"z", "-", "1"}], ")"}], "2"], " ", "z", " ", 
                  SuperscriptBox[
                   TagBox["\[CurlyEpsilon]",
                    TraditionalForm], "2"]}], "+", 
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"z", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"53", " ", "z"}]}], ")"}], " ", "z"}], "-", 
                    "43"}], ")"}]}], "+", "7"}], ")"}], " ", 
                  TagBox["\[CurlyEpsilon]",
                   TraditionalForm]}], "+", 
                 RowBox[{"2", " ", "z", " ", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"z", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"55", " ", "z"}], "-", "61"}], ")"}]}], "+", 
                    "41"}], ")"}]}], "-", "22"}], ")"}]}], "-", 
              RowBox[{"4", " ", 
               RowBox[{"(", 
                RowBox[{
                 TagBox["\[CurlyEpsilon]",
                  TraditionalForm], "-", "3"}], ")"}], " ", 
               SubscriptBox["t", "1"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"z", " ", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"9", " ", "z"}], "-", "2"}], ")"}]}], "+", "1"}], 
                ")"}]}]}], ")"}], " ", 
            SubsuperscriptBox["m", "j", "2"]}], "+", 
           RowBox[{
            SuperscriptBox["z", "2"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"(", 
                RowBox[{"z", "-", "1"}], ")"}], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"4", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm], "-", "4"}], ")"}], " ", 
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm]}], "+", "35"}], ")"}]}], "-", "56"}], 
                   ")"}], " ", 
                  SuperscriptBox["z", "2"]}], "-", 
                 RowBox[{"4", " ", 
                  TagBox["\[CurlyEpsilon]",
                   TraditionalForm], " ", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm], "-", "4"}], ")"}], " ", 
                    TagBox["\[CurlyEpsilon]",
                    TraditionalForm]}], "+", "8"}], ")"}], " ", "z"}], "+", 
                 RowBox[{"48", " ", "z"}], "+", 
                 RowBox[{"5", " ", 
                  TagBox["\[CurlyEpsilon]",
                   TraditionalForm]}], "-", "16"}], ")"}], " ", 
               SuperscriptBox["s", "2"]}], "+", 
              RowBox[{"8", " ", 
               RowBox[{"(", 
                RowBox[{
                 TagBox["\[CurlyEpsilon]",
                  TraditionalForm], "-", "3"}], ")"}], " ", 
               SubscriptBox["t", "1"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"z", " ", 
                  RowBox[{"(", 
                   RowBox[{
                    RowBox[{"4", " ", "z"}], "-", "3"}], ")"}]}], "+", "1"}], 
                ")"}], " ", "s"}], "+", 
              RowBox[{"16", " ", 
               RowBox[{"(", 
                RowBox[{
                 TagBox["\[CurlyEpsilon]",
                  TraditionalForm], "-", "3"}], ")"}], " ", 
               SubsuperscriptBox["t", "1", "2"], " ", "z"}]}], ")"}]}]}], 
          ")"}]}]}], ")"}]}], "+", 
     RowBox[{
      FractionBox["2", "3"], " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Z", "s", "L"], ")"}]},
       "Conjugate"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "6"}], " ", 
         RowBox[{"(", 
          RowBox[{
           TagBox["\[CurlyEpsilon]",
            TraditionalForm], "-", "3"}], ")"}], " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
         RowBox[{"(", 
          RowBox[{"z", "+", "1"}], ")"}], " ", 
         SubsuperscriptBox["m", "i", "4"]}], "-", 
        RowBox[{"3", " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "4"}], " ", 
            RowBox[{"(", 
             RowBox[{
              TagBox["\[CurlyEpsilon]",
               TraditionalForm], "-", "3"}], ")"}], " ", 
            SubsuperscriptBox["m", "j", "2"]}], "-", 
           RowBox[{"4", " ", 
            RowBox[{"(", 
             RowBox[{
              TagBox["\[CurlyEpsilon]",
               TraditionalForm], "-", "3"}], ")"}], " ", 
            SubscriptBox["t", "1"], " ", "z"}], "+", 
           RowBox[{"s", " ", "z", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"4", " ", "z", " ", 
               SuperscriptBox[
                TagBox["\[CurlyEpsilon]",
                 TraditionalForm], "3"]}], "-", 
              RowBox[{"16", " ", "z", " ", 
               SuperscriptBox[
                TagBox["\[CurlyEpsilon]",
                 TraditionalForm], "2"]}], "+", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"19", " ", "z"}], "+", "7"}], ")"}], " ", 
               TagBox["\[CurlyEpsilon]",
                TraditionalForm]}], "-", 
              RowBox[{"2", " ", 
               RowBox[{"(", 
                RowBox[{"z", "+", "11"}], ")"}]}]}], ")"}]}]}], ")"}], " ", 
         SubsuperscriptBox["m", "i", "2"]}], "+", 
        RowBox[{"6", " ", 
         RowBox[{"(", 
          RowBox[{
           TagBox["\[CurlyEpsilon]",
            TraditionalForm], "-", "3"}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"9", " ", 
            SuperscriptBox["z", "3"]}], "-", 
           RowBox[{"3", " ", 
            SuperscriptBox["z", "2"]}], "+", 
           RowBox[{"3", " ", "z"}], "-", "1"}], ")"}], " ", 
         SubsuperscriptBox["m", "j", "4"]}], "+", 
        RowBox[{"3", " ", "z", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"s", " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"-", "4"}], " ", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{"z", "-", "1"}], ")"}], "2"], " ", "z", " ", 
               SuperscriptBox[
                TagBox["\[CurlyEpsilon]",
                 TraditionalForm], "3"]}], "+", 
              RowBox[{"16", " ", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{"z", "-", "1"}], ")"}], "2"], " ", "z", " ", 
               SuperscriptBox[
                TagBox["\[CurlyEpsilon]",
                 TraditionalForm], "2"]}], "+", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", "53"}], " ", 
                  SuperscriptBox["z", "3"]}], "+", 
                 RowBox[{"73", " ", 
                  SuperscriptBox["z", "2"]}], "-", 
                 RowBox[{"43", " ", "z"}], "+", "7"}], ")"}], " ", 
               TagBox["\[CurlyEpsilon]",
                TraditionalForm]}], "+", 
              RowBox[{"2", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"55", " ", 
                  SuperscriptBox["z", "3"]}], "-", 
                 RowBox[{"61", " ", 
                  SuperscriptBox["z", "2"]}], "+", 
                 RowBox[{"41", " ", "z"}], "-", "11"}], ")"}]}]}], ")"}]}], 
           "-", 
           RowBox[{"4", " ", 
            RowBox[{"(", 
             RowBox[{
              TagBox["\[CurlyEpsilon]",
               TraditionalForm], "-", "3"}], ")"}], " ", 
            SubscriptBox["t", "1"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"9", " ", 
               SuperscriptBox["z", "2"]}], "-", 
              RowBox[{"2", " ", "z"}], "+", "1"}], ")"}]}]}], ")"}], " ", 
         SubsuperscriptBox["m", "j", "2"]}], "+", 
        RowBox[{"3", " ", 
         SuperscriptBox["z", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{"z", "-", "1"}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"4", " ", 
               RowBox[{"(", 
                RowBox[{"z", "-", "1"}], ")"}], " ", "z", " ", 
               SuperscriptBox[
                TagBox["\[CurlyEpsilon]",
                 TraditionalForm], "3"]}], "-", 
              RowBox[{"16", " ", 
               RowBox[{"(", 
                RowBox[{"z", "-", "1"}], ")"}], " ", "z", " ", 
               SuperscriptBox[
                TagBox["\[CurlyEpsilon]",
                 TraditionalForm], "2"]}], "+", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"35", " ", 
                  SuperscriptBox["z", "2"]}], "-", 
                 RowBox[{"32", " ", "z"}], "+", "5"}], ")"}], " ", 
               TagBox["\[CurlyEpsilon]",
                TraditionalForm]}], "-", 
              RowBox[{"8", " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"7", " ", 
                  SuperscriptBox["z", "2"]}], "-", 
                 RowBox[{"6", " ", "z"}], "+", "2"}], ")"}]}]}], ")"}], " ", 
            SuperscriptBox["s", "2"]}], "+", 
           RowBox[{"8", " ", 
            RowBox[{"(", 
             RowBox[{
              TagBox["\[CurlyEpsilon]",
               TraditionalForm], "-", "3"}], ")"}], " ", 
            SubscriptBox["t", "1"], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"4", " ", 
               SuperscriptBox["z", "2"]}], "-", 
              RowBox[{"3", " ", "z"}], "+", "1"}], ")"}], " ", "s"}], "+", 
           RowBox[{"16", " ", 
            RowBox[{"(", 
             RowBox[{
              TagBox["\[CurlyEpsilon]",
               TraditionalForm], "-", "3"}], ")"}], " ", 
            SubsuperscriptBox["t", "1", "2"], " ", "z"}]}], ")"}]}], "+", 
        RowBox[{"2", " ", 
         RowBox[{"(", 
          RowBox[{
           TagBox["\[CurlyEpsilon]",
            TraditionalForm], "-", "3"}], ")"}], " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"z", "-", "1"}], ")"}], "3"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"s", " ", "z"}], "-", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              SubscriptBox["m", "i"], "-", 
              SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"s", " ", "z"}], "-", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              SubscriptBox["m", "i"], "+", 
              SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}]}]}], ")"}], " ", 
      
      SubsuperscriptBox["Z", "s", "L"]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.9168163732682467`*^9, 3.916816412661813*^9},
 CellLabel->"Out[53]=",ExpressionUUID->"65a8628b-9ff7-4062-a31f-aac73246309f"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    FractionBox["1", 
     RowBox[{"1536", " ", 
      SuperscriptBox["\[Pi]", "9"], " ", 
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", "s", 
      " ", 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"1", "-", "z"}], ")"}], 
       RowBox[{"3", "/", "2"}]], " ", 
      SuperscriptBox["z", "3"], " ", 
      RowBox[{"(", 
       RowBox[{"s", "-", 
        TemplateBox[{
          RowBox[{"(", 
            SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
         "Conjugate"]}], ")"}]}]], 
    SubscriptBox["C", "A"], " ", 
    SubscriptBox["C", "F"], " ", 
    SqrtBox[
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"s", " ", "z"}], "-", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           SubscriptBox["m", "i"], "-", 
           SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"s", " ", "z"}], "-", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           SubscriptBox["m", "i"], "+", 
           SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}]}]], " ", 
    SubsuperscriptBox["g", "s", "2"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"32", " ", "s", " ", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
       SuperscriptBox[
        RowBox[{"(", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", "s", "L"], ")"}]},
          "Conjugate"], ")"}], "2"], " ", 
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"], " ", 
       SuperscriptBox["z", "2"]}], "+", 
      RowBox[{"32", " ", "s", " ", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
       SuperscriptBox[
        RowBox[{"(", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Z", "s", "R"], ")"}]},
          "Conjugate"], ")"}], "2"], " ", 
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"], " ", 
       SuperscriptBox["z", "2"]}], "+", 
      RowBox[{"32", " ", "s", " ", 
       SuperscriptBox[
        RowBox[{"(", 
         RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"], " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox[
          RowBox[{"(", 
           SubsuperscriptBox["Z", "s", "L"], ")"}], "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}], " ", 
       SuperscriptBox["z", "2"]}], "+", 
      RowBox[{
       FractionBox["2", "3"], " ", 
       SuperscriptBox[
        TemplateBox[{
          SubsuperscriptBox["Z", "s", "R"]},
         "Abs"], "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"3", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"6", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
             RowBox[{"(", 
              RowBox[{"z", "+", "1"}], ")"}], " ", 
             SubsuperscriptBox["m", "i", "4"]}], "+", 
            RowBox[{
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"z", " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"2", " ", "s", " ", 
                   RowBox[{"(", 
                    RowBox[{"z", "+", "11"}], ")"}]}], "-", 
                  RowBox[{"12", " ", 
                   SubscriptBox["t", "1"]}]}], ")"}]}], "-", 
               RowBox[{"12", " ", 
                SubsuperscriptBox["m", "j", "2"]}]}], ")"}], " ", 
             SubsuperscriptBox["m", "i", "2"]}], "-", 
            RowBox[{"6", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"3", " ", "z"}], "-", "1"}], ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"3", " ", 
                SuperscriptBox["z", "2"]}], "+", "1"}], ")"}], " ", 
             SubsuperscriptBox["m", "j", "4"]}], "+", 
            RowBox[{"z", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"12", " ", 
                SubscriptBox["t", "1"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"z", " ", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"9", " ", "z"}], "-", "2"}], ")"}]}], "+", "1"}], 
                 ")"}]}], "+", 
               RowBox[{"s", " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"2", " ", "z", " ", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"z", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"55", " ", "z"}], "-", "61"}], ")"}]}], "+", 
                    "41"}], ")"}]}], "-", "22"}], ")"}]}]}], ")"}], " ", 
             SubsuperscriptBox["m", "j", "2"]}], "+", 
            RowBox[{
             SuperscriptBox["z", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"z", "-", "1"}], ")"}], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"-", "56"}], " ", 
                   SuperscriptBox["z", "2"]}], "+", 
                  RowBox[{"48", " ", "z"}], "-", "16"}], ")"}], " ", 
                SuperscriptBox["s", "2"]}], "-", 
               RowBox[{"24", " ", 
                SubscriptBox["t", "1"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"z", " ", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"4", " ", "z"}], "-", "3"}], ")"}]}], "+", "1"}], 
                 ")"}], " ", "s"}], "-", 
               RowBox[{"48", " ", 
                SubsuperscriptBox["t", "1", "2"], " ", "z"}]}], ")"}]}]}], 
           ")"}]}], "-", 
         RowBox[{"6", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"z", "-", "1"}], ")"}], "3"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"s", " ", "z"}], "-", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               SubscriptBox["m", "i"], "-", 
               SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"s", " ", "z"}], "-", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               SubscriptBox["m", "i"], "+", 
               SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}]}]}], ")"}]}], 
      "+", 
      RowBox[{
       FractionBox["2", "3"], " ", 
       TemplateBox[{
         RowBox[{"(", 
           SubsuperscriptBox["Z", "s", "L"], ")"}]},
        "Conjugate"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"18", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
          RowBox[{"(", 
           RowBox[{"z", "+", "1"}], ")"}], " ", 
          SubsuperscriptBox["m", "i", "4"]}], "-", 
         RowBox[{"3", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"12", " ", 
             SubsuperscriptBox["m", "j", "2"]}], "+", 
            RowBox[{"12", " ", 
             SubscriptBox["t", "1"], " ", "z"}], "-", 
            RowBox[{"2", " ", "s", " ", "z", " ", 
             RowBox[{"(", 
              RowBox[{"z", "+", "11"}], ")"}]}]}], ")"}], " ", 
          SubsuperscriptBox["m", "i", "2"]}], "-", 
         RowBox[{"18", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"9", " ", 
             SuperscriptBox["z", "3"]}], "-", 
            RowBox[{"3", " ", 
             SuperscriptBox["z", "2"]}], "+", 
            RowBox[{"3", " ", "z"}], "-", "1"}], ")"}], " ", 
          SubsuperscriptBox["m", "j", "4"]}], "+", 
         RowBox[{"3", " ", "z", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"12", " ", 
             SubscriptBox["t", "1"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"9", " ", 
                SuperscriptBox["z", "2"]}], "-", 
               RowBox[{"2", " ", "z"}], "+", "1"}], ")"}]}], "+", 
            RowBox[{"2", " ", "s", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"55", " ", 
                SuperscriptBox["z", "3"]}], "-", 
               RowBox[{"61", " ", 
                SuperscriptBox["z", "2"]}], "+", 
               RowBox[{"41", " ", "z"}], "-", "11"}], ")"}]}]}], ")"}], " ", 
          SubsuperscriptBox["m", "j", "2"]}], "+", 
         RowBox[{"3", " ", 
          SuperscriptBox["z", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"-", "8"}], " ", 
             RowBox[{"(", 
              RowBox[{"z", "-", "1"}], ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"7", " ", 
                SuperscriptBox["z", "2"]}], "-", 
               RowBox[{"6", " ", "z"}], "+", "2"}], ")"}], " ", 
             SuperscriptBox["s", "2"]}], "-", 
            RowBox[{"24", " ", 
             SubscriptBox["t", "1"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"4", " ", 
                SuperscriptBox["z", "2"]}], "-", 
               RowBox[{"3", " ", "z"}], "+", "1"}], ")"}], " ", "s"}], "-", 
            RowBox[{"48", " ", 
             SubsuperscriptBox["t", "1", "2"], " ", "z"}]}], ")"}]}], "-", 
         RowBox[{"6", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"z", "-", "1"}], ")"}], "3"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"s", " ", "z"}], "-", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               SubscriptBox["m", "i"], "-", 
               SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"s", " ", "z"}], "-", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               SubscriptBox["m", "i"], "+", 
               SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}]}]}], ")"}], " ", 
       SubsuperscriptBox["Z", "s", "L"]}]}], ")"}], " ", 
    SubsuperscriptBox["g", "W", "4"]}], "+", 
   RowBox[{
    FractionBox["1", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", "s", 
      " ", 
      RowBox[{"(", 
       RowBox[{"s", "-", 
        TemplateBox[{
          RowBox[{"(", 
            SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
         "Conjugate"]}], ")"}]}]], 
    SubscriptBox["C", "A"], " ", 
    SubscriptBox["C", "F"], " ", 
    TagBox["\[CurlyEpsilon]",
     TraditionalForm], " ", 
    SubsuperscriptBox["g", "s", "2"], " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       FractionBox["1", 
        RowBox[{"1536", " ", 
         SuperscriptBox["\[Pi]", "9"], " ", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{"1", "-", "z"}], ")"}], 
          RowBox[{"3", "/", "2"}]], " ", 
         SuperscriptBox["z", "3"]}]], 
       SqrtBox[
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"s", " ", "z"}], "-", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              SubscriptBox["m", "i"], "-", 
              SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"s", " ", "z"}], "-", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              SubscriptBox["m", "i"], "+", 
              SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}]}]], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "64"}], " ", "s", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
          SuperscriptBox[
           RowBox[{"(", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"], ")"}], "2"], " ", 
          SubscriptBox["m", "i"], " ", 
          SubscriptBox["m", "j"], " ", 
          SuperscriptBox["z", "2"]}], "-", 
         RowBox[{"64", " ", "s", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
          SuperscriptBox[
           RowBox[{"(", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "R"], ")"}]},
             "Conjugate"], ")"}], "2"], " ", 
          SubscriptBox["m", "i"], " ", 
          SubscriptBox["m", "j"], " ", 
          SuperscriptBox["z", "2"]}], "-", 
         RowBox[{"64", " ", "s", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
          SubscriptBox["m", "i"], " ", 
          SubscriptBox["m", "j"], " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox[
             RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}], "2"], "+", 
            SuperscriptBox[
             RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}], " ", 
          SuperscriptBox["z", "2"]}], "+", 
         RowBox[{
          FractionBox["2", "3"], " ", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "R"]},
            "Abs"], "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"2", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"s", " ", "z"}], "-", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["m", "i"], "-", 
                  SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"s", " ", "z"}], "-", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["m", "i"], "+", 
                  SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}], " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"z", "-", "1"}], ")"}], "3"]}], "+", 
            RowBox[{"3", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{"-", "2"}], " ", 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
                RowBox[{"(", 
                 RowBox[{"z", "+", "1"}], ")"}], " ", 
                SubsuperscriptBox["m", "i", "4"]}], "+", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"4", " ", 
                   SubsuperscriptBox["m", "j", "2"]}], "+", 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"4", " ", 
                    SubscriptBox["t", "1"]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "19"}], " ", "z"}], "-", "7"}], ")"}]}]}], 
                    ")"}], " ", "z"}]}], ")"}], " ", 
                SubsuperscriptBox["m", "i", "2"]}], "+", 
               RowBox[{"2", " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"3", " ", "z"}], "-", "1"}], ")"}], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"3", " ", 
                   SuperscriptBox["z", "2"]}], "+", "1"}], ")"}], " ", 
                SubsuperscriptBox["m", "j", "4"]}], "+", 
               RowBox[{"z", " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"s", " ", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"z", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"73", "-", 
                    RowBox[{"53", " ", "z"}]}], ")"}], " ", "z"}], "-", 
                    "43"}], ")"}]}], "+", "7"}], ")"}]}], "-", 
                  RowBox[{"4", " ", 
                   SubscriptBox["t", "1"], " ", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"z", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"9", " ", "z"}], "-", "2"}], ")"}]}], "+", "1"}], 
                    ")"}]}]}], ")"}], " ", 
                SubsuperscriptBox["m", "j", "2"]}], "+", 
               RowBox[{
                SuperscriptBox["z", "2"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"z", "-", "1"}], ")"}], " ", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"35", " ", 
                    SuperscriptBox["z", "2"]}], "-", 
                    RowBox[{"32", " ", "z"}], "+", "5"}], ")"}], " ", 
                   SuperscriptBox["s", "2"]}], "+", 
                  RowBox[{"8", " ", 
                   SubscriptBox["t", "1"], " ", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"z", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"4", " ", "z"}], "-", "3"}], ")"}]}], "+", "1"}], 
                    ")"}], " ", "s"}], "+", 
                  RowBox[{"16", " ", 
                   SubsuperscriptBox["t", "1", "2"], " ", "z"}]}], ")"}]}]}], 
              ")"}]}]}], ")"}]}], "+", 
         RowBox[{
          FractionBox["2", "3"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{
             RowBox[{"-", "6"}], " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
             RowBox[{"(", 
              RowBox[{"z", "+", "1"}], ")"}], " ", 
             SubsuperscriptBox["m", "i", "4"]}], "-", 
            RowBox[{"3", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{"-", "4"}], " ", 
                SubsuperscriptBox["m", "j", "2"]}], "-", 
               RowBox[{"4", " ", 
                SubscriptBox["t", "1"], " ", "z"}], "+", 
               RowBox[{"s", " ", "z", " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"19", " ", "z"}], "+", "7"}], ")"}]}]}], ")"}], " ", 
             SubsuperscriptBox["m", "i", "2"]}], "+", 
            RowBox[{"6", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"9", " ", 
                SuperscriptBox["z", "3"]}], "-", 
               RowBox[{"3", " ", 
                SuperscriptBox["z", "2"]}], "+", 
               RowBox[{"3", " ", "z"}], "-", "1"}], ")"}], " ", 
             SubsuperscriptBox["m", "j", "4"]}], "+", 
            RowBox[{"3", " ", "z", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"s", " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"-", "53"}], " ", 
                   SuperscriptBox["z", "3"]}], "+", 
                  RowBox[{"73", " ", 
                   SuperscriptBox["z", "2"]}], "-", 
                  RowBox[{"43", " ", "z"}], "+", "7"}], ")"}]}], "-", 
               RowBox[{"4", " ", 
                SubscriptBox["t", "1"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"9", " ", 
                   SuperscriptBox["z", "2"]}], "-", 
                  RowBox[{"2", " ", "z"}], "+", "1"}], ")"}]}]}], ")"}], " ", 
             
             SubsuperscriptBox["m", "j", "2"]}], "+", 
            RowBox[{"3", " ", 
             SuperscriptBox["z", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{"(", 
                 RowBox[{"z", "-", "1"}], ")"}], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"35", " ", 
                   SuperscriptBox["z", "2"]}], "-", 
                  RowBox[{"32", " ", "z"}], "+", "5"}], ")"}], " ", 
                SuperscriptBox["s", "2"]}], "+", 
               RowBox[{"8", " ", 
                SubscriptBox["t", "1"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"4", " ", 
                   SuperscriptBox["z", "2"]}], "-", 
                  RowBox[{"3", " ", "z"}], "+", "1"}], ")"}], " ", "s"}], "+", 
               RowBox[{"16", " ", 
                SubsuperscriptBox["t", "1", "2"], " ", "z"}]}], ")"}]}], "+", 
            
            RowBox[{"2", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"z", "-", "1"}], ")"}], "3"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"s", " ", "z"}], "-", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["m", "i"], "-", 
                  SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"s", " ", "z"}], "-", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["m", "i"], "+", 
                  SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}]}]}], ")"}], 
          " ", 
          SubsuperscriptBox["Z", "s", "L"]}]}], ")"}]}], "-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         FractionBox[
          RowBox[{
           SqrtBox[
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"s", " ", "z"}], "-", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["m", "i"], "-", 
                  SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"s", " ", "z"}], "-", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["m", "i"], "+", 
                  SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}]}]], " ", 
           RowBox[{"log", "(", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"s", " ", "z"}], "-", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["m", "i"], "-", 
                  SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"s", " ", "z"}], "-", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["m", "i"], "+", 
                  SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}]}], ")"}]}], 
          RowBox[{"1536", " ", 
           SuperscriptBox["\[Pi]", "9"], " ", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{"1", "-", "z"}], ")"}], 
            RowBox[{"3", "/", "2"}]], " ", 
           SuperscriptBox["z", "3"]}]], "+", 
         RowBox[{
          SqrtBox[
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"s", " ", "z"}], "-", 
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["m", "i"], "-", 
                 SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              RowBox[{"s", " ", "z"}], "-", 
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{
                 SubscriptBox["m", "i"], "+", 
                 SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}]}]], " ", 
          RowBox[{"(", 
           RowBox[{
            FractionBox[
             RowBox[{"2", " ", 
              RowBox[{"(", 
               RowBox[{
                FractionBox[
                 RowBox[{
                  FractionBox[
                   RowBox[{"log", "(", 
                    RowBox[{"1", "-", "z"}], ")"}], 
                   RowBox[{"3072", " ", 
                    SuperscriptBox["\[Pi]", 
                    RowBox[{"17", "/", "2"}]], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"1", "-", "z"}], ")"}], 
                    RowBox[{"3", "/", "2"}]]}]], "+", 
                  FractionBox[
                   RowBox[{
                    FractionBox[
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["1", "9216"]}], "+", 
                    RowBox[{
                    FractionBox["1", "3"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    FractionBox["1", "1024"], "-", 
                    FractionBox[
                    RowBox[{"7", " ", 
                    RowBox[{"log", "(", "2", ")"}]}], "1024"]}], ")"}]}]}], 
                    SuperscriptBox["\[Pi]", 
                    RowBox[{"17", "/", "2"}]]], "-", 
                    FractionBox[
                    RowBox[{"7", " ", 
                    RowBox[{"log", "(", "\[Pi]", ")"}]}], 
                    RowBox[{"3072", " ", 
                    SuperscriptBox["\[Pi]", 
                    RowBox[{"17", "/", "2"}]]}]]}], 
                   SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"1", "-", "z"}], ")"}], 
                    RowBox[{"3", "/", "2"}]]]}], 
                 SuperscriptBox["z", "3"]], "-", 
                FractionBox[
                 RowBox[{"log", "(", "z", ")"}], 
                 RowBox[{"3072", " ", 
                  SuperscriptBox["\[Pi]", 
                   RowBox[{"17", "/", "2"}]], " ", 
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"1", "-", "z"}], ")"}], 
                   RowBox[{"3", "/", "2"}]], " ", 
                  SuperscriptBox["z", "3"]}]], "+", 
                FractionBox[
                 TagBox["\[DoubledGamma]",
                  Function[{}, EulerGamma]], 
                 RowBox[{"6144", " ", 
                  SuperscriptBox["\[Pi]", 
                   RowBox[{"17", "/", "2"}]], " ", 
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"1", "-", "z"}], ")"}], 
                   RowBox[{"3", "/", "2"}]], " ", 
                  SuperscriptBox["z", "3"]}]]}], ")"}]}], 
             SqrtBox["\[Pi]"]], "-", 
            FractionBox[
             TemplateBox[{"0", 
               FractionBox["3", "2"]},
              "PolyGamma2"], 
             RowBox[{"3072", " ", 
              SuperscriptBox["\[Pi]", "9"], " ", 
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{"1", "-", "z"}], ")"}], 
               RowBox[{"3", "/", "2"}]], " ", 
              SuperscriptBox["z", "3"]}]]}], ")"}]}]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"32", " ", "s", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
          SuperscriptBox[
           RowBox[{"(", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "L"], ")"}]},
             "Conjugate"], ")"}], "2"], " ", 
          SubscriptBox["m", "i"], " ", 
          SubscriptBox["m", "j"], " ", 
          SuperscriptBox["z", "2"]}], "+", 
         RowBox[{"32", " ", "s", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
          SuperscriptBox[
           RowBox[{"(", 
            TemplateBox[{
              RowBox[{"(", 
                SubsuperscriptBox["Z", "s", "R"], ")"}]},
             "Conjugate"], ")"}], "2"], " ", 
          SubscriptBox["m", "i"], " ", 
          SubscriptBox["m", "j"], " ", 
          SuperscriptBox["z", "2"]}], "+", 
         RowBox[{"32", " ", "s", " ", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
          SubscriptBox["m", "i"], " ", 
          SubscriptBox["m", "j"], " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox[
             RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}], "2"], "+", 
            SuperscriptBox[
             RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}], " ", 
          SuperscriptBox["z", "2"]}], "+", 
         RowBox[{
          FractionBox["2", "3"], " ", 
          SuperscriptBox[
           TemplateBox[{
             SubsuperscriptBox["Z", "s", "R"]},
            "Abs"], "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"3", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"6", " ", 
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
                RowBox[{"(", 
                 RowBox[{"z", "+", "1"}], ")"}], " ", 
                SubsuperscriptBox["m", "i", "4"]}], "+", 
               RowBox[{
                SuperscriptBox[
                 RowBox[{"(", 
                  RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"z", " ", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"2", " ", "s", " ", 
                    RowBox[{"(", 
                    RowBox[{"z", "+", "11"}], ")"}]}], "-", 
                    RowBox[{"12", " ", 
                    SubscriptBox["t", "1"]}]}], ")"}]}], "-", 
                  RowBox[{"12", " ", 
                   SubsuperscriptBox["m", "j", "2"]}]}], ")"}], " ", 
                SubsuperscriptBox["m", "i", "2"]}], "-", 
               RowBox[{"6", " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"3", " ", "z"}], "-", "1"}], ")"}], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"3", " ", 
                   SuperscriptBox["z", "2"]}], "+", "1"}], ")"}], " ", 
                SubsuperscriptBox["m", "j", "4"]}], "+", 
               RowBox[{"z", " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"12", " ", 
                   SubscriptBox["t", "1"], " ", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"z", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"9", " ", "z"}], "-", "2"}], ")"}]}], "+", "1"}], 
                    ")"}]}], "+", 
                  RowBox[{"s", " ", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"2", " ", "z", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"z", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"55", " ", "z"}], "-", "61"}], ")"}]}], "+", 
                    "41"}], ")"}]}], "-", "22"}], ")"}]}]}], ")"}], " ", 
                SubsuperscriptBox["m", "j", "2"]}], "+", 
               RowBox[{
                SuperscriptBox["z", "2"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"z", "-", "1"}], ")"}], " ", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "56"}], " ", 
                    SuperscriptBox["z", "2"]}], "+", 
                    RowBox[{"48", " ", "z"}], "-", "16"}], ")"}], " ", 
                   SuperscriptBox["s", "2"]}], "-", 
                  RowBox[{"24", " ", 
                   SubscriptBox["t", "1"], " ", 
                   RowBox[{"(", 
                    RowBox[{
                    RowBox[{"z", " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"4", " ", "z"}], "-", "3"}], ")"}]}], "+", "1"}], 
                    ")"}], " ", "s"}], "-", 
                  RowBox[{"48", " ", 
                   SubsuperscriptBox["t", "1", "2"], " ", "z"}]}], ")"}]}]}], 
              ")"}]}], "-", 
            RowBox[{"6", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"z", "-", "1"}], ")"}], "3"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"s", " ", "z"}], "-", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["m", "i"], "-", 
                  SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"s", " ", "z"}], "-", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["m", "i"], "+", 
                  SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}]}]}], ")"}]}],
          "+", 
         RowBox[{
          FractionBox["2", "3"], " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["Z", "s", "L"], ")"}]},
           "Conjugate"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"18", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
             RowBox[{"(", 
              RowBox[{"z", "+", "1"}], ")"}], " ", 
             SubsuperscriptBox["m", "i", "4"]}], "-", 
            RowBox[{"3", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"z", "-", "1"}], ")"}], "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"12", " ", 
                SubsuperscriptBox["m", "j", "2"]}], "+", 
               RowBox[{"12", " ", 
                SubscriptBox["t", "1"], " ", "z"}], "-", 
               RowBox[{"2", " ", "s", " ", "z", " ", 
                RowBox[{"(", 
                 RowBox[{"z", "+", "11"}], ")"}]}]}], ")"}], " ", 
             SubsuperscriptBox["m", "i", "2"]}], "-", 
            RowBox[{"18", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"9", " ", 
                SuperscriptBox["z", "3"]}], "-", 
               RowBox[{"3", " ", 
                SuperscriptBox["z", "2"]}], "+", 
               RowBox[{"3", " ", "z"}], "-", "1"}], ")"}], " ", 
             SubsuperscriptBox["m", "j", "4"]}], "+", 
            RowBox[{"3", " ", "z", " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"12", " ", 
                SubscriptBox["t", "1"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"9", " ", 
                   SuperscriptBox["z", "2"]}], "-", 
                  RowBox[{"2", " ", "z"}], "+", "1"}], ")"}]}], "+", 
               RowBox[{"2", " ", "s", " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"55", " ", 
                   SuperscriptBox["z", "3"]}], "-", 
                  RowBox[{"61", " ", 
                   SuperscriptBox["z", "2"]}], "+", 
                  RowBox[{"41", " ", "z"}], "-", "11"}], ")"}]}]}], ")"}], 
             " ", 
             SubsuperscriptBox["m", "j", "2"]}], "+", 
            RowBox[{"3", " ", 
             SuperscriptBox["z", "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{"-", "8"}], " ", 
                RowBox[{"(", 
                 RowBox[{"z", "-", "1"}], ")"}], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"7", " ", 
                   SuperscriptBox["z", "2"]}], "-", 
                  RowBox[{"6", " ", "z"}], "+", "2"}], ")"}], " ", 
                SuperscriptBox["s", "2"]}], "-", 
               RowBox[{"24", " ", 
                SubscriptBox["t", "1"], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"4", " ", 
                   SuperscriptBox["z", "2"]}], "-", 
                  RowBox[{"3", " ", "z"}], "+", "1"}], ")"}], " ", "s"}], "-", 
               RowBox[{"48", " ", 
                SubsuperscriptBox["t", "1", "2"], " ", "z"}]}], ")"}]}], "-", 
            
            RowBox[{"6", " ", 
             SuperscriptBox[
              RowBox[{"(", 
               RowBox[{"z", "-", "1"}], ")"}], "3"], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"s", " ", "z"}], "-", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["m", "i"], "-", 
                  SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}], " ", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{"s", " ", "z"}], "-", 
               SuperscriptBox[
                RowBox[{"(", 
                 RowBox[{
                  SubscriptBox["m", "i"], "+", 
                  SubscriptBox["m", "j"]}], ")"}], "2"]}], ")"}]}]}], ")"}], 
          " ", 
          SubsuperscriptBox["Z", "s", "L"]}]}], ")"}]}]}], ")"}], " ", 
    SubsuperscriptBox["g", "W", "4"]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.9168163732682467`*^9, 3.916816412946621*^9},
 CellLabel->"Out[54]=",ExpressionUUID->"939321f8-d5fc-4606-b689-034dd3534b7d"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1383, 855},
WindowMargins->{{-2.25, Automatic}, {Automatic, -22.5}},
FrontEndVersion->"14.0 for Linux x86 (64-bit) (December 12, 2023)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"b0313249-9101-49da-ab68-27f87f2d59d5"
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
Cell[422, 15, 636, 20, 73, "Chapter",ExpressionUUID->"fec586b3-531a-443b-b265-9e051ab842aa"],
Cell[CellGroupData[{
Cell[1083, 39, 161, 3, 67, "Section",ExpressionUUID->"c8818d2d-0e9e-4ae1-a139-984d4b9b2f3e"],
Cell[1247, 44, 312, 7, 35, "Text",ExpressionUUID->"c446614f-ae00-4194-a5d5-5256e1ef05de"],
Cell[CellGroupData[{
Cell[1584, 55, 1530, 40, 305, "Code",ExpressionUUID->"fe4ba823-5dbb-4b79-b197-6b649843303d"],
Cell[CellGroupData[{
Cell[3139, 99, 3179, 77, 30, "Print",ExpressionUUID->"72c80868-816a-4a3a-a06b-b5b7ae309a74"],
Cell[6321, 178, 2362, 58, 30, "Print",ExpressionUUID->"1bca44c8-f023-4315-be23-d04b3d3bed49"],
Cell[8686, 238, 897, 16, 26, "Print",ExpressionUUID->"cda02a32-d095-4420-a889-dd6a02d47dde"],
Cell[9586, 256, 945, 18, 26, "Print",ExpressionUUID->"780beaad-e247-4145-ada3-dd22bd36421e"],
Cell[10534, 276, 2547, 65, 30, "Print",ExpressionUUID->"884c038d-66b8-4281-b6e2-e2e2dbea5016"],
Cell[13084, 343, 835, 15, 26, "Print",ExpressionUUID->"f7f75c41-f8aa-4eb1-ad32-b3ffdba05405"],
Cell[13922, 360, 871, 16, 26, "Print",ExpressionUUID->"a483826c-4a82-4319-944c-2182c5121612"],
Cell[14796, 378, 726, 12, 24, "Print",ExpressionUUID->"965c96fa-4e51-40f0-bf68-f877502b3aa7"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[15571, 396, 631, 15, 110, "Code",ExpressionUUID->"79542c29-c800-446c-b962-dcfade1ea3a5"],
Cell[16205, 413, 1457, 26, 28, "Message",ExpressionUUID->"889625b0-a165-4a72-9750-e0635b252030"],
Cell[17665, 441, 1472, 26, 28, "Message",ExpressionUUID->"42605afb-fecf-4ff9-95b7-12709f8fd880"]
}, Open  ]],
Cell[19152, 470, 515, 11, 53, "Code",ExpressionUUID->"06eef17f-1a78-4d35-a1b1-fa25c75250dd"]
}, Open  ]],
Cell[CellGroupData[{
Cell[19704, 486, 263, 5, 67, "Section",ExpressionUUID->"f64fe3b0-c12e-45c9-a04b-e465429a8448"],
Cell[19970, 493, 201, 4, 35, "Text",ExpressionUUID->"73fd6221-bbd0-4cc0-a8e2-a1e4fcdbf19a"],
Cell[CellGroupData[{
Cell[20196, 501, 2645, 64, 215, "Code",ExpressionUUID->"a50f6b18-15d8-4de3-8484-ef7ce85d54bd"],
Cell[22844, 567, 72664, 1519, 264, "Print",ExpressionUUID->"9124e47f-f565-42c8-9bc3-7cf7884bb6b0"]
}, Open  ]],
Cell[95523, 2089, 1920, 40, 267, "Code",ExpressionUUID->"fa8d476b-88fc-4594-9a53-437111c2ef1a"],
Cell[97446, 2131, 1829, 45, 189, "Code",ExpressionUUID->"73ea9ab9-c2a1-4986-8aca-523fdc169d49"],
Cell[99278, 2178, 626, 17, 35, "Text",ExpressionUUID->"c50a9c08-6e34-4676-82f3-23beaeda93f0"],
Cell[99907, 2197, 1053, 26, 72, "Code",ExpressionUUID->"a3ab7b48-9ce1-48da-b5e2-afc6c836c250"]
}, Open  ]],
Cell[CellGroupData[{
Cell[100997, 2228, 164, 3, 67, "Section",ExpressionUUID->"08534849-2cc1-438f-8002-4d597e1535af"],
Cell[101164, 2233, 2561, 71, 211, "Code",ExpressionUUID->"c886a8bd-7a89-4d95-acbe-0f67c137e64f",
 InitializationCell->True],
Cell[103728, 2306, 1174, 30, 93, "Code",ExpressionUUID->"3bd9d9ca-aad9-43cb-b9f4-d3cc56847ff6"],
Cell[104905, 2338, 164, 3, 35, "Text",ExpressionUUID->"7cbd3e4d-dd56-43e5-8480-ccccf35bf26c"],
Cell[105072, 2343, 2573, 79, 196, "Code",ExpressionUUID->"706a64df-ea3e-4cfc-a137-df4d4f8d2f01"],
Cell[CellGroupData[{
Cell[107670, 2426, 12441, 361, 787, "Code",ExpressionUUID->"35aa01f1-1a1b-41e6-a33b-aa73dc769642"],
Cell[120114, 2789, 1093, 29, 60, "Output",ExpressionUUID->"8260d06a-6533-4486-8985-a1d171dabeca"]
}, Open  ]],
Cell[121222, 2821, 734, 16, 89, "Code",ExpressionUUID->"5b989c21-0c95-49d8-b6ef-69b591608a34"],
Cell[121959, 2839, 443, 9, 51, "Code",ExpressionUUID->"782a170a-0045-47ca-a999-d8ebec3076e9"],
Cell[122405, 2850, 999, 20, 53, "Code",ExpressionUUID->"d91bfe8b-08ec-45e2-9cbe-63d3b6ce3460"],
Cell[CellGroupData[{
Cell[123429, 2874, 919, 20, 53, "Code",ExpressionUUID->"62b2418f-e070-498b-a5a8-779b7fcb83fa"],
Cell[124351, 2896, 33703, 854, 373, "Output",ExpressionUUID->"6cfca201-e9e8-41e7-9dd3-5dfb9af86e90"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[158103, 3756, 164, 3, 67, "Section",ExpressionUUID->"e5af8a7e-b017-48bc-a6b7-7205d53824d3"],
Cell[158270, 3761, 2181, 71, 110, "Code",ExpressionUUID->"225d2c57-4447-4cf0-90cd-7fb953878001"],
Cell[CellGroupData[{
Cell[160476, 3836, 1360, 34, 95, "Code",ExpressionUUID->"709ba678-2607-4bc1-9d85-e903138ccafa"],
Cell[161839, 3872, 19609, 540, 259, "Output",ExpressionUUID->"6a3939c5-6c35-4685-bf43-d193a9ecd469"]
}, Open  ]],
Cell[CellGroupData[{
Cell[181485, 4417, 936, 27, 53, "Code",ExpressionUUID->"23e40f47-e010-4b3a-92e5-ddf27b23b51b"],
Cell[182424, 4446, 20915, 588, 274, "Output",ExpressionUUID->"65a8628b-9ff7-4062-a31f-aac73246309f"],
Cell[203342, 5036, 38509, 1027, 1401, "Output",ExpressionUUID->"939321f8-d5fc-4606-b689-034dd3534b7d"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

