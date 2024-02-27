(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 14.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    100412,       2916]
NotebookOptionsPosition[     96800,       2851]
NotebookOutlinePosition[     97232,       2868]
CellTagsIndexPosition[     97189,       2865]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Initialisation", "Section",
 CellChangeTimes->{{3.9144763179811068`*^9, 
  3.914476339787057*^9}},ExpressionUUID->"f32c59b2-d610-49f2-80a3-\
d4fa5670adac"],

Cell["\<\
Load FeynCalc and FeynArts. Furthermore, this notebook makes use of three \
packages found in the \[OpenCurlyDoubleQuote]include\[CloseCurlyDoubleQuote] \
folder.\
\>", "Text",
 CellChangeTimes->{{3.914476486107745*^9, 
  3.914476566436034*^9}},ExpressionUUID->"4fa58730-305f-48fb-9722-\
958d2950b5c7"],

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
 CellLabel->"In[1]:=",ExpressionUUID->"e1446662-d825-4461-81e4-db6234b5a744"],

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
 CellChangeTimes->{3.9178492911938143`*^9, 3.917849832125078*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"f84df4fe-20e4-464b-8c51-aca60c7da3a8"],

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
 CellChangeTimes->{3.9178492911938143`*^9, 3.917849832128076*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"59722abf-d7aa-4e5c-9f9d-7a04fef642ba"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynCalc in your research, please evaluate \
FeynCalcHowToCite[] to learn how to cite this software.\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.9178492911938143`*^9, 3.917849832129086*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"a575e6df-b3a5-4875-9a64-5f4c31c5eb17"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"Please keep in mind that the proper academic attribution of \
our work is crucial to ensure the future development of this package!\"\>", 
   "Text",
   StripOnInput->False,
   FontSlant->Italic], TraditionalForm]], "Print",
 CellChangeTimes->{3.9178492911938143`*^9, 3.9178498321300087`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"78fa367e-73e9-4da2-9840-48dbb66cea4a"],

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
 CellChangeTimes->{3.9178492911938143`*^9, 3.917849832166547*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"2b726d54-d8f8-4b72-a8ad-3f0e4d8a44e9"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynArts in your research, please cite\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.9178492911938143`*^9, 3.917849832167355*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"b6c31413-05c0-4e15-8e77-dc25d856aaac"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\" \[Bullet] T. Hahn, Comput. Phys. Commun., 140, 418-431, \
2001, arXiv:hep-ph/0012260\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.9178492911938143`*^9, 3.917849832167801*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"326cd378-89ba-441e-aeb6-59bc7101e5c6"],

Cell["Successfully patched FeynArts.", "Print",
 CellChangeTimes->{3.9178492911938143`*^9, 3.917849832303123*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"c45aa2b7-1fb5-49c2-abb4-a7d9b24eb4ba"]
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
 CellLabel->"In[9]:=",ExpressionUUID->"22c3297c-6141-4e5c-8392-cd715a5fbf2a"],

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
or be shadowed by other definitions.\"", 2, 11, 1, 33598821599570956719, 
    "Local", "FeynCalc`IndexDelta"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->{3.9178492920996103`*^9, 3.917849833248095*^9},
 CellLabel->
  "During evaluation of \
In[9]:=",ExpressionUUID->"7ea09421-4da6-4de2-96dd-9a28a5e02412"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"MyResult", " ", "=", " ", 
   RowBox[{"Import", "[", 
    RowBox[{"FileNameJoin", "[", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"FileNameJoin", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"NotebookDirectory", "[", "]"}], ",", " ", 
          "\"\<results\>\"", ",", " ", "\"\<LO\>\""}], "}"}], "]"}], ",", 
       "\"\<dxsec.m\>\""}], "}"}], "]"}], "]"}]}], ";"}]], "Code",
 InitializationCell->True,
 CellChangeTimes->{{3.917329642454039*^9, 3.9173296906096*^9}},
 CellLabel->"In[13]:=",ExpressionUUID->"589aab6c-eaec-453f-bd21-8693bb7ffa4d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"$Assumptions", " ", "=", " ", 
   RowBox[{"{", "\n", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{"SMP", "[", "_", "]"}], " ", "\[Element]", " ", "Reals"}], ",", 
     "\n", "\t", 
     RowBox[{
      RowBox[{"MNeu", "[", "_", "]"}], " ", "\[Element]", " ", "Reals"}], ",",
      "\n", "\t", 
     RowBox[{
      RowBox[{"MSf", "[", "__", "]"}], " ", "\[Element]", " ", "Reals"}], ",",
      "\n", "\t", 
     RowBox[{"s", " ", "\[Element]", " ", "Reals"}], ",", "\n", "\t", 
     RowBox[{"t", " ", "\[Element]", " ", "Reals"}], ",", "\n", "\t", 
     RowBox[{"u", " ", "\[Element]", " ", "Reals"}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{"Den", "[", "__", "]"}], " ", "\[Element]", " ", "Reals"}]}], 
    "\n", "}"}]}], ";"}]], "Code",
 CellChangeTimes->{{3.917331926722036*^9, 3.917331979239933*^9}, {
   3.917341168616684*^9, 3.917341174719276*^9}, 3.9174095517550697`*^9, {
   3.917758915307955*^9, 3.9177589164031262`*^9}, {3.917849371884074*^9, 
   3.917849372101844*^9}},
 CellLabel->"In[14]:=",ExpressionUUID->"d9602ebe-5689-4e74-9c7e-a6029ea6273d"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Debove\[CloseCurlyQuote]s result", "Section",
 InitializationCell->True,
 CellChangeTimes->{{3.9173297055587463`*^9, 
  3.917329710930944*^9}},ExpressionUUID->"2b237886-79f8-4272-abdc-\
2d5302d1f68e"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"Qsu", "[", "L", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"CqqD", "[", "L", "]"}], " ", 
    RowBox[{
     RowBox[{"OppD", "[", "L", "]"}], " ", "/", " ", 
     RowBox[{"(", 
      RowBox[{"s", " ", "-", " ", 
       RowBox[{
        RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], "^", "2"}]}], ")"}]}]}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Qst", "[", "L", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"CqqD", "[", "L", "]"}], " ", 
    RowBox[{
     RowBox[{"OppD", "[", "R", "]"}], " ", "/", " ", 
     RowBox[{"(", 
      RowBox[{"s", " ", "-", " ", 
       RowBox[{
        RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], "^", "2"}]}], ")"}]}]}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Qsu", "[", "R", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"CqqD", "[", "R", "]"}], " ", 
    RowBox[{
     RowBox[{"OppD", "[", "R", "]"}], " ", "/", " ", 
     RowBox[{"(", 
      RowBox[{"s", " ", "-", " ", 
       RowBox[{
        RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], "^", "2"}]}], ")"}]}]}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"Qst", "[", "R", "]"}], " ", "=", " ", 
    RowBox[{
     RowBox[{"CqqD", "[", "R", "]"}], " ", 
     RowBox[{
      RowBox[{"OppD", "[", "L", "]"}], " ", "/", " ", 
      RowBox[{"(", 
       RowBox[{"s", " ", "-", " ", 
        RowBox[{
         RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], "^", "2"}]}], ")"}]}]}]}], 
   ";"}], "\n"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Qt", "[", 
    RowBox[{"L", ",", "L"}], "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"2", 
     RowBox[{"Qst", "[", "L", "]"}]}], " ", "-", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"CsqD", "[", 
       RowBox[{"A", ",", "i", ",", "L"}], "]"}], "\[Conjugate]"}], " ", 
     RowBox[{
      RowBox[{"CsqD", "[", 
       RowBox[{"A", ",", "j", ",", "L"}], "]"}], " ", "/", " ", 
      RowBox[{"(", 
       RowBox[{"t", " ", "-", " ", 
        RowBox[{
         RowBox[{"MSf", "[", 
          RowBox[{"A", ",", "3", ",", "1"}], "]"}], "^", "2"}]}], 
       ")"}]}]}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Qt", "[", 
    RowBox[{"L", ",", "R"}], "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{
      RowBox[{"CsqD", "[", 
       RowBox[{"A", ",", "i", ",", "L"}], "]"}], "\[Conjugate]"}]}], " ", 
    RowBox[{
     RowBox[{"CsqD", "[", 
      RowBox[{"A", ",", "j", ",", "R"}], "]"}], " ", "/", " ", 
     RowBox[{"(", 
      RowBox[{"t", " ", "-", " ", 
       RowBox[{
        RowBox[{"MSf", "[", 
         RowBox[{"A", ",", "3", ",", "1"}], "]"}], "^", "2"}]}], ")"}]}]}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Qt", "[", 
    RowBox[{"R", ",", "L"}], "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{
      RowBox[{"CsqD", "[", 
       RowBox[{"A", ",", "i", ",", "R"}], "]"}], "\[Conjugate]"}]}], " ", 
    RowBox[{
     RowBox[{"CsqD", "[", 
      RowBox[{"A", ",", "j", ",", "L"}], "]"}], " ", "/", " ", 
     RowBox[{"(", 
      RowBox[{"t", " ", "-", " ", 
       RowBox[{
        RowBox[{"MSf", "[", 
         RowBox[{"A", ",", "3", ",", "1"}], "]"}], "^", "2"}]}], ")"}]}]}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"Qt", "[", 
     RowBox[{"R", ",", "R"}], "]"}], " ", "=", " ", 
    RowBox[{
     RowBox[{"2", 
      RowBox[{"Qst", "[", "R", "]"}]}], " ", "-", " ", 
     RowBox[{
      RowBox[{
       RowBox[{"CsqD", "[", 
        RowBox[{"A", ",", "i", ",", "R"}], "]"}], "\[Conjugate]"}], " ", 
      RowBox[{
       RowBox[{"CsqD", "[", 
        RowBox[{"A", ",", "j", ",", "R"}], "]"}], " ", "/", " ", 
       RowBox[{"(", 
        RowBox[{"t", " ", "-", " ", 
         RowBox[{
          RowBox[{"MSf", "[", 
           RowBox[{"A", ",", "3", ",", "1"}], "]"}], "^", "2"}]}], 
        ")"}]}]}]}]}], ";"}], "\n"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Qu", "[", 
    RowBox[{"L", ",", "L"}], "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"2", 
     RowBox[{"Qsu", "[", "L", "]"}]}], " ", "+", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"CsqD", "[", 
       RowBox[{"A", ",", "j", ",", "L"}], "]"}], "\[Conjugate]"}], " ", 
     RowBox[{
      RowBox[{"CsqD", "[", 
       RowBox[{"A", ",", "i", ",", "L"}], "]"}], " ", "/", " ", 
      RowBox[{"(", 
       RowBox[{"u", " ", "-", " ", 
        RowBox[{
         RowBox[{"MSf", "[", 
          RowBox[{"A", ",", "3", ",", "1"}], "]"}], "^", "2"}]}], 
       ")"}]}]}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Qu", "[", 
    RowBox[{"L", ",", "R"}], "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"CsqD", "[", 
      RowBox[{"A", ",", "j", ",", "L"}], "]"}], "\[Conjugate]"}], " ", 
    RowBox[{
     RowBox[{"CsqD", "[", 
      RowBox[{"A", ",", "i", ",", "R"}], "]"}], " ", "/", " ", 
     RowBox[{"(", 
      RowBox[{"u", " ", "-", " ", 
       RowBox[{
        RowBox[{"MSf", "[", 
         RowBox[{"A", ",", "3", ",", "1"}], "]"}], "^", "2"}]}], ")"}]}]}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Qu", "[", 
    RowBox[{"R", ",", "L"}], "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"CsqD", "[", 
      RowBox[{"A", ",", "j", ",", "R"}], "]"}], "\[Conjugate]"}], " ", 
    RowBox[{
     RowBox[{"CsqD", "[", 
      RowBox[{"A", ",", "i", ",", "L"}], "]"}], " ", "/", " ", 
     RowBox[{"(", 
      RowBox[{"u", " ", "-", " ", 
       RowBox[{
        RowBox[{"MSf", "[", 
         RowBox[{"A", ",", "3", ",", "1"}], "]"}], "^", "2"}]}], ")"}]}]}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Qu", "[", 
    RowBox[{"R", ",", "R"}], "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"2", 
     RowBox[{"Qsu", "[", "R", "]"}]}], " ", "+", " ", 
    RowBox[{
     RowBox[{
      RowBox[{"CsqD", "[", 
       RowBox[{"A", ",", "j", ",", "R"}], "]"}], "\[Conjugate]"}], " ", 
     RowBox[{
      RowBox[{"CsqD", "[", 
       RowBox[{"A", ",", "i", ",", "R"}], "]"}], " ", "/", " ", 
      RowBox[{"(", 
       RowBox[{"u", " ", "-", " ", 
        RowBox[{
         RowBox[{"MSf", "[", 
          RowBox[{"A", ",", "3", ",", "1"}], "]"}], "^", "2"}]}], 
       ")"}]}]}]}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.917329752560738*^9, 3.917329975914296*^9}, {
  3.917330048872713*^9, 3.917330278007818*^9}, {3.917332028560983*^9, 
  3.917332032505149*^9}, {3.917406522444228*^9, 3.917406536380978*^9}, {
  3.917409730693742*^9, 3.917409731823721*^9}, {3.917412103112554*^9, 
  3.917412105752284*^9}},
 CellLabel->"In[15]:=",ExpressionUUID->"f9711649-7546-4a28-a5f3-f63a961fe0a4"],

Cell[BoxData[
 RowBox[{
  RowBox[{"QZreplaceList", " ", "=", " ", 
   RowBox[{"{", "\n", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{"OppD", "[", "L", "]"}], " ", "->", " ", 
      RowBox[{
       FractionBox["1", 
        RowBox[{"4", 
         RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}]}]], 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"ZNeu", "[", 
           RowBox[{"i", ",", "3"}], "]"}], 
          RowBox[{
           RowBox[{"ZNeu", "[", 
            RowBox[{"j", ",", "3"}], "]"}], "\[Conjugate]"}]}], " ", "-", " ", 
         RowBox[{
          RowBox[{"ZNeu", "[", 
           RowBox[{"i", ",", "4"}], "]"}], 
          RowBox[{
           RowBox[{"ZNeu", "[", 
            RowBox[{"j", ",", "4"}], "]"}], "\[Conjugate]"}]}]}], ")"}]}]}], 
     ",", "\n", "\t", 
     RowBox[{
      RowBox[{"OppD", "[", "R", "]"}], " ", "->", " ", 
      RowBox[{
       FractionBox["1", 
        RowBox[{"4", 
         RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}]}]], 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          RowBox[{"-", 
           RowBox[{
            RowBox[{"ZNeu", "[", 
             RowBox[{"i", ",", "3"}], "]"}], "\[Conjugate]"}]}], 
          RowBox[{"ZNeu", "[", 
           RowBox[{"j", ",", "3"}], "]"}]}], " ", "+", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"ZNeu", "[", 
            RowBox[{"i", ",", "4"}], "]"}], "\[Conjugate]"}], 
          RowBox[{"ZNeu", "[", 
           RowBox[{"j", ",", "4"}], "]"}]}]}], ")"}]}]}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{"CqqD", "[", "L", "]"}], " ", "->", " ", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["1", 
         RowBox[{"2", 
          RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}]}]]}], 
       RowBox[{"(", 
        RowBox[{
         FractionBox["1", "2"], "-", 
         RowBox[{
          FractionBox["2", "3"], 
          RowBox[{
           RowBox[{"SMP", "[", "\"\<sin_W\>\"", "]"}], "^", "2"}]}]}], 
        ")"}]}]}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{"CqqD", "[", "R", "]"}], " ", "->", " ", 
      RowBox[{
       FractionBox["1", 
        RowBox[{"2", 
         RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}]}]], 
       FractionBox["2", "3"], 
       RowBox[{
        RowBox[{"SMP", "[", "\"\<sin_W\>\"", "]"}], "^", "2"}]}]}], ",", "\n",
      "\t", 
     RowBox[{
      RowBox[{"CsqD", "[", 
       RowBox[{"a_", ",", "i_", ",", "L"}], "]"}], " ", "->", " ", 
      RowBox[{
       FractionBox[
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            FractionBox["2", "3"], "-", 
            FractionBox["1", "2"]}], ")"}], 
          RowBox[{"SMP", "[", "\"\<sin_W\>\"", "]"}], " ", 
          RowBox[{"ZNeu", "[", 
           RowBox[{"i", ",", "1"}], "]"}]}], " ", "+", " ", 
         RowBox[{
          FractionBox["1", "2"], 
          RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}], 
          RowBox[{"ZNeu", "[", 
           RowBox[{"i", ",", "2"}], "]"}]}]}], 
        RowBox[{
         RowBox[{"Sqrt", "[", "2", "]"}], 
         RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}]}]], 
       RowBox[{
        RowBox[{
         RowBox[{"USf", "[", 
          RowBox[{"3", ",", "1"}], "]"}], "[", 
         RowBox[{"a", ",", "1"}], "]"}], "\[Conjugate]"}]}]}], ",", "\n", 
     "\t", 
     RowBox[{
      RowBox[{"CsqD", "[", 
       RowBox[{"a_", ",", "i_", ",", "R"}], "]"}], " ", "->", " ", 
      RowBox[{
       RowBox[{"-", 
        FractionBox[
         RowBox[{
          FractionBox["2", "3"], 
          RowBox[{"SMP", "[", "\"\<sin_W\>\"", "]"}], " ", 
          RowBox[{
           RowBox[{"ZNeu", "[", 
            RowBox[{"i", ",", "1"}], "]"}], "\[Conjugate]"}]}], 
         RowBox[{
          RowBox[{"Sqrt", "[", "2", "]"}], 
          RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}]}]]}], 
       RowBox[{
        RowBox[{
         RowBox[{"USf", "[", 
          RowBox[{"3", ",", "1"}], "]"}], "[", 
         RowBox[{"a", ",", "2"}], "]"}], "\[Conjugate]"}]}]}]}], "\n", " ", 
    "}"}]}], ";"}]], "Code",
 CellChangeTimes->{{3.917330391210172*^9, 3.917330402275605*^9}, {
  3.917330893211461*^9, 3.917330930168244*^9}, {3.9173309702198*^9, 
  3.917331072146674*^9}, {3.917331349414624*^9, 3.917331349805107*^9}, {
  3.917331422571999*^9, 3.917331475053183*^9}, {3.917331530126503*^9, 
  3.917331690245438*^9}, {3.9173321055407047`*^9, 3.917332107571628*^9}, {
  3.917332212200814*^9, 3.917332212494199*^9}, {3.917332310973908*^9, 
  3.917332319998338*^9}, {3.917335264839435*^9, 3.917335267846178*^9}, {
  3.9173363776447697`*^9, 3.917336377909813*^9}, {3.917762636388104*^9, 
  3.917762642188203*^9}},
 CellLabel->"In[27]:=",ExpressionUUID->"d8d6f72c-44e1-48f8-9deb-6c35b4224654"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"XSecDebove", " ", "=", " ", 
  RowBox[{
   FractionBox[
    RowBox[{"4", "Pi", " ", 
     RowBox[{"alphaW", "^", "2"}]}], 
    RowBox[{"CA", " ", 
     RowBox[{"s", "^", "2"}]}]], 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"Qu", "[", 
          RowBox[{"L", ",", "L"}], "]"}], 
         RowBox[{
          RowBox[{"Qu", "[", 
           RowBox[{"L", ",", "L"}], "]"}], "\[Conjugate]"}]}], "+", 
        RowBox[{
         RowBox[{"Qu", "[", 
          RowBox[{"L", ",", "R"}], "]"}], 
         RowBox[{
          RowBox[{"Qu", "[", 
           RowBox[{"L", ",", "R"}], "]"}], "\[Conjugate]"}]}], "+", 
        RowBox[{
         RowBox[{"Qu", "[", 
          RowBox[{"R", ",", "L"}], "]"}], 
         RowBox[{
          RowBox[{"Qu", "[", 
           RowBox[{"R", ",", "L"}], "]"}], "\[Conjugate]"}]}], "+", 
        RowBox[{
         RowBox[{"Qu", "[", 
          RowBox[{"R", ",", "R"}], "]"}], 
         RowBox[{
          RowBox[{"Qu", "[", 
           RowBox[{"R", ",", "R"}], "]"}], "\[Conjugate]"}]}]}], ")"}], 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        RowBox[{
         RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}]}], ")"}], 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        RowBox[{
         RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}]}], ")"}]}], " ", "+", 
     " ", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"Qt", "[", 
          RowBox[{"L", ",", "L"}], "]"}], 
         RowBox[{
          RowBox[{"Qt", "[", 
           RowBox[{"L", ",", "L"}], "]"}], "\[Conjugate]"}]}], "+", 
        RowBox[{
         RowBox[{"Qt", "[", 
          RowBox[{"L", ",", "R"}], "]"}], 
         RowBox[{
          RowBox[{"Qt", "[", 
           RowBox[{"L", ",", "R"}], "]"}], "\[Conjugate]"}]}], "+", 
        RowBox[{
         RowBox[{"Qt", "[", 
          RowBox[{"R", ",", "L"}], "]"}], 
         RowBox[{
          RowBox[{"Qt", "[", 
           RowBox[{"R", ",", "L"}], "]"}], "\[Conjugate]"}]}], "+", 
        RowBox[{
         RowBox[{"Qt", "[", 
          RowBox[{"R", ",", "R"}], "]"}], 
         RowBox[{
          RowBox[{"Qt", "[", 
           RowBox[{"R", ",", "R"}], "]"}], "\[Conjugate]"}]}]}], ")"}], 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        RowBox[{
         RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}]}], ")"}], 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        RowBox[{
         RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}]}], ")"}]}]}], 
    ")"}]}]}]], "Code",
 CellChangeTimes->{{3.917331722301691*^9, 3.91733188604594*^9}, {
   3.91733204414968*^9, 3.917332051924384*^9}, {3.917332120916926*^9, 
   3.917332187817842*^9}, {3.917332275599729*^9, 3.917332279760268*^9}, {
   3.9173323504057302`*^9, 3.917332350604896*^9}, {3.9173324272488823`*^9, 
   3.917332522987493*^9}, {3.9173334811581078`*^9, 3.91733349249069*^9}, 
   3.917849278673966*^9},
 CellLabel->"In[28]:=",ExpressionUUID->"2c33dfec-a876-4008-afc3-e3375bd61e08"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["1", 
    RowBox[{
     SuperscriptBox["s", "2"], " ", 
     SubscriptBox["C", "A"]}]], "4", " ", "\[Pi]", " ", 
   SubsuperscriptBox["\[Alpha]", "W", "2"], " ", 
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
         TemplateBox[{
           RowBox[{"(", 
             RowBox[{
               FractionBox[
                RowBox[{"2", " ", 
                  RowBox[{"CqqD", "(", "R", ")"}], " ", 
                  RowBox[{"OppD", "(", "L", ")"}]}], 
                RowBox[{"s", "-", 
                  SubsuperscriptBox["m", "Z", "2"]}]], "-", 
               FractionBox[
                RowBox[{
                  TemplateBox[{
                    RowBox[{"CsqD", "(", 
                    RowBox[{"A", ",", "i", ",", "R"}], ")"}]}, "Conjugate", 
                   SyntaxForm -> SuperscriptBox], " ", 
                  RowBox[{"CsqD", "(", 
                    RowBox[{"A", ",", "j", ",", "R"}], ")"}]}], 
                RowBox[{"t", "-", 
                  SubsuperscriptBox["m", 
                   SubscriptBox[
                    OverscriptBox["q", "~"], "A"], "2"]}]]}], ")"}]},
          "Conjugate"], " ", 
         RowBox[{"(", 
          RowBox[{
           FractionBox[
            RowBox[{"2", " ", 
             RowBox[{"CqqD", "(", "R", ")"}], " ", 
             RowBox[{"OppD", "(", "L", ")"}]}], 
            RowBox[{"s", "-", 
             SubsuperscriptBox["m", "Z", "2"]}]], "-", 
           FractionBox[
            RowBox[{
             RowBox[{"CsqD", "(", 
              RowBox[{"A", ",", "j", ",", "R"}], ")"}], " ", 
             TemplateBox[{
               RowBox[{"CsqD", "(", 
                 RowBox[{"A", ",", "i", ",", "R"}], ")"}]},
              "Conjugate"]}], 
            RowBox[{"t", "-", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"]}]]}], ")"}]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             RowBox[{
               FractionBox[
                RowBox[{"2", " ", 
                  RowBox[{"CqqD", "(", "L", ")"}], " ", 
                  RowBox[{"OppD", "(", "R", ")"}]}], 
                RowBox[{"s", "-", 
                  SubsuperscriptBox["m", "Z", "2"]}]], "-", 
               FractionBox[
                RowBox[{
                  TemplateBox[{
                    RowBox[{"CsqD", "(", 
                    RowBox[{"A", ",", "i", ",", "L"}], ")"}]}, "Conjugate", 
                   SyntaxForm -> SuperscriptBox], " ", 
                  RowBox[{"CsqD", "(", 
                    RowBox[{"A", ",", "j", ",", "L"}], ")"}]}], 
                RowBox[{"t", "-", 
                  SubsuperscriptBox["m", 
                   SubscriptBox[
                    OverscriptBox["q", "~"], "A"], "2"]}]]}], ")"}]},
          "Conjugate"], " ", 
         RowBox[{"(", 
          RowBox[{
           FractionBox[
            RowBox[{"2", " ", 
             RowBox[{"CqqD", "(", "L", ")"}], " ", 
             RowBox[{"OppD", "(", "R", ")"}]}], 
            RowBox[{"s", "-", 
             SubsuperscriptBox["m", "Z", "2"]}]], "-", 
           FractionBox[
            RowBox[{
             RowBox[{"CsqD", "(", 
              RowBox[{"A", ",", "j", ",", "L"}], ")"}], " ", 
             TemplateBox[{
               RowBox[{"CsqD", "(", 
                 RowBox[{"A", ",", "i", ",", "L"}], ")"}]},
              "Conjugate"]}], 
            RowBox[{"t", "-", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"]}]]}], ")"}]}], "+", 
        FractionBox[
         RowBox[{
          RowBox[{"CsqD", "(", 
           RowBox[{"A", ",", "i", ",", "R"}], ")"}], " ", 
          RowBox[{"CsqD", "(", 
           RowBox[{"A", ",", "j", ",", "L"}], ")"}], " ", 
          TemplateBox[{
            RowBox[{"CsqD", "(", 
              RowBox[{"A", ",", "i", ",", "R"}], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"CsqD", "(", 
              RowBox[{"A", ",", "j", ",", "L"}], ")"}]},
           "Conjugate"]}], 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"t", "-", 
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["q", "~"], "A"], "2"]}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            TemplateBox[{"t"},
             "Conjugate"], "-", 
            SuperscriptBox[
             RowBox[{"(", 
              TemplateBox[{
                RowBox[{"(", 
                  SubscriptBox["m", 
                   SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], ")"}]},
               "Conjugate"], ")"}], "2"]}], ")"}]}]], "+", 
        FractionBox[
         RowBox[{
          RowBox[{"CsqD", "(", 
           RowBox[{"A", ",", "i", ",", "L"}], ")"}], " ", 
          RowBox[{"CsqD", "(", 
           RowBox[{"A", ",", "j", ",", "R"}], ")"}], " ", 
          TemplateBox[{
            RowBox[{"CsqD", "(", 
              RowBox[{"A", ",", "i", ",", "L"}], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"CsqD", "(", 
              RowBox[{"A", ",", "j", ",", "R"}], ")"}]},
           "Conjugate"]}], 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"t", "-", 
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["q", "~"], "A"], "2"]}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            TemplateBox[{"t"},
             "Conjugate"], "-", 
            SuperscriptBox[
             RowBox[{"(", 
              TemplateBox[{
                RowBox[{"(", 
                  SubscriptBox["m", 
                   SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], ")"}]},
               "Conjugate"], ")"}], "2"]}], ")"}]}]]}], ")"}]}], "+", 
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
         TemplateBox[{
           RowBox[{"(", 
             RowBox[{
               FractionBox[
                RowBox[{
                  TemplateBox[{
                    RowBox[{"CsqD", "(", 
                    RowBox[{"A", ",", "j", ",", "L"}], ")"}]}, "Conjugate", 
                   SyntaxForm -> SuperscriptBox], " ", 
                  RowBox[{"CsqD", "(", 
                    RowBox[{"A", ",", "i", ",", "L"}], ")"}]}], 
                RowBox[{"u", "-", 
                  SubsuperscriptBox["m", 
                   SubscriptBox[
                    OverscriptBox["q", "~"], "A"], "2"]}]], "+", 
               FractionBox[
                RowBox[{"2", " ", 
                  RowBox[{"CqqD", "(", "L", ")"}], " ", 
                  RowBox[{"OppD", "(", "L", ")"}]}], 
                RowBox[{"s", "-", 
                  SubsuperscriptBox["m", "Z", "2"]}]]}], ")"}]},
          "Conjugate"], " ", 
         RowBox[{"(", 
          RowBox[{
           FractionBox[
            RowBox[{
             RowBox[{"CsqD", "(", 
              RowBox[{"A", ",", "i", ",", "L"}], ")"}], " ", 
             TemplateBox[{
               RowBox[{"CsqD", "(", 
                 RowBox[{"A", ",", "j", ",", "L"}], ")"}]},
              "Conjugate"]}], 
            RowBox[{"u", "-", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"]}]], "+", 
           FractionBox[
            RowBox[{"2", " ", 
             RowBox[{"CqqD", "(", "L", ")"}], " ", 
             RowBox[{"OppD", "(", "L", ")"}]}], 
            RowBox[{"s", "-", 
             SubsuperscriptBox["m", "Z", "2"]}]]}], ")"}]}], "+", 
        RowBox[{
         TemplateBox[{
           RowBox[{"(", 
             RowBox[{
               FractionBox[
                RowBox[{
                  TemplateBox[{
                    RowBox[{"CsqD", "(", 
                    RowBox[{"A", ",", "j", ",", "R"}], ")"}]}, "Conjugate", 
                   SyntaxForm -> SuperscriptBox], " ", 
                  RowBox[{"CsqD", "(", 
                    RowBox[{"A", ",", "i", ",", "R"}], ")"}]}], 
                RowBox[{"u", "-", 
                  SubsuperscriptBox["m", 
                   SubscriptBox[
                    OverscriptBox["q", "~"], "A"], "2"]}]], "+", 
               FractionBox[
                RowBox[{"2", " ", 
                  RowBox[{"CqqD", "(", "R", ")"}], " ", 
                  RowBox[{"OppD", "(", "R", ")"}]}], 
                RowBox[{"s", "-", 
                  SubsuperscriptBox["m", "Z", "2"]}]]}], ")"}]},
          "Conjugate"], " ", 
         RowBox[{"(", 
          RowBox[{
           FractionBox[
            RowBox[{
             RowBox[{"CsqD", "(", 
              RowBox[{"A", ",", "i", ",", "R"}], ")"}], " ", 
             TemplateBox[{
               RowBox[{"CsqD", "(", 
                 RowBox[{"A", ",", "j", ",", "R"}], ")"}]},
              "Conjugate"]}], 
            RowBox[{"u", "-", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"]}]], "+", 
           FractionBox[
            RowBox[{"2", " ", 
             RowBox[{"CqqD", "(", "R", ")"}], " ", 
             RowBox[{"OppD", "(", "R", ")"}]}], 
            RowBox[{"s", "-", 
             SubsuperscriptBox["m", "Z", "2"]}]]}], ")"}]}], "+", 
        FractionBox[
         RowBox[{
          RowBox[{"CsqD", "(", 
           RowBox[{"A", ",", "i", ",", "R"}], ")"}], " ", 
          RowBox[{"CsqD", "(", 
           RowBox[{"A", ",", "j", ",", "L"}], ")"}], " ", 
          TemplateBox[{
            RowBox[{"CsqD", "(", 
              RowBox[{"A", ",", "i", ",", "R"}], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"CsqD", "(", 
              RowBox[{"A", ",", "j", ",", "L"}], ")"}]},
           "Conjugate"]}], 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"u", "-", 
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["q", "~"], "A"], "2"]}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            TemplateBox[{"u"},
             "Conjugate"], "-", 
            SuperscriptBox[
             RowBox[{"(", 
              TemplateBox[{
                RowBox[{"(", 
                  SubscriptBox["m", 
                   SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], ")"}]},
               "Conjugate"], ")"}], "2"]}], ")"}]}]], "+", 
        FractionBox[
         RowBox[{
          RowBox[{"CsqD", "(", 
           RowBox[{"A", ",", "i", ",", "L"}], ")"}], " ", 
          RowBox[{"CsqD", "(", 
           RowBox[{"A", ",", "j", ",", "R"}], ")"}], " ", 
          TemplateBox[{
            RowBox[{"CsqD", "(", 
              RowBox[{"A", ",", "i", ",", "L"}], ")"}]},
           "Conjugate"], " ", 
          TemplateBox[{
            RowBox[{"CsqD", "(", 
              RowBox[{"A", ",", "j", ",", "R"}], ")"}]},
           "Conjugate"]}], 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"u", "-", 
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["q", "~"], "A"], "2"]}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            TemplateBox[{"u"},
             "Conjugate"], "-", 
            SuperscriptBox[
             RowBox[{"(", 
              TemplateBox[{
                RowBox[{"(", 
                  SubscriptBox["m", 
                   SubscriptBox[
                    OverscriptBox["q", "~"], "A"]], ")"}]},
               "Conjugate"], ")"}], "2"]}], ")"}]}]]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.917849292299041*^9, 3.91784983360882*^9},
 CellLabel->"Out[28]=",ExpressionUUID->"4adb5740-aeb0-4675-a32a-e09a0a356f59"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"MyReplaceList", " ", "=", " ", 
   RowBox[{"{", "\n", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"ZNeu", "[", 
        RowBox[{"i", ",", "4"}], "]"}], 
       RowBox[{
        RowBox[{"ZNeu", "[", 
         RowBox[{"j", ",", "4"}], "]"}], "\[Conjugate]"}]}], " ", "->", " ", 
      RowBox[{
       RowBox[{"2", 
        RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}], " ", 
        RowBox[{"Opp", "[", 
         RowBox[{"i", ",", "j", ",", "L"}], "]"}]}], " ", "+", " ", 
       RowBox[{
        RowBox[{"ZNeu", "[", 
         RowBox[{"i", ",", "3"}], "]"}], 
        RowBox[{
         RowBox[{"ZNeu", "[", 
          RowBox[{"j", ",", "3"}], "]"}], "\[Conjugate]"}]}]}]}], ",", "\n", 
     "\t", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"ZNeu", "[", 
         RowBox[{"i", ",", "4"}], "]"}], "\[Conjugate]"}], 
       RowBox[{"ZNeu", "[", 
        RowBox[{"j", ",", "4"}], "]"}]}], " ", "->", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "2"}], 
        RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}], " ", 
        RowBox[{"Opp", "[", 
         RowBox[{"i", ",", "j", ",", "R"}], "]"}]}], " ", "+", " ", 
       RowBox[{
        RowBox[{
         RowBox[{"ZNeu", "[", 
          RowBox[{"i", ",", "3"}], "]"}], "\[Conjugate]"}], 
        RowBox[{"ZNeu", "[", 
         RowBox[{"j", ",", "3"}], "]"}]}]}]}], ",", "\n", "\n", "\t", 
     RowBox[{
      FractionBox[
       RowBox[{
        FractionBox["1", "2"], "-", 
        RowBox[{
         FractionBox["2", "3"], 
         RowBox[{
          RowBox[{"SMP", "[", "\"\<sin_W\>\"", "]"}], "^", "2"}]}]}], 
       RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}]], " ", "->", " ", 
      RowBox[{"Cq", "[", "L", "]"}]}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"USf", "[", 
          RowBox[{"3", ",", "1"}], "]"}], "[", 
         RowBox[{"a_", ",", "1"}], "]"}], "\[Conjugate]"}], 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          FractionBox["1", "6"], 
          RowBox[{"ZNeu", "[", 
           RowBox[{"i_", ",", "1"}], "]"}], 
          RowBox[{"SMP", "[", "\"\<sin_W\>\"", "]"}]}], "+", 
         RowBox[{
          FractionBox["1", "2"], 
          RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}], 
          RowBox[{"ZNeu", "[", 
           RowBox[{"i_", ",", "2"}], "]"}]}]}], ")"}]}], " ", "->", " ", 
      RowBox[{
       RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}], 
       RowBox[{"Csq", "[", 
        RowBox[{"i", ",", "a", ",", "L"}], "]"}]}]}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"USf", "[", 
         RowBox[{"3", ",", "1"}], "]"}], "[", 
        RowBox[{"a_", ",", "1"}], "]"}], 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          FractionBox["1", "6"], 
          RowBox[{
           RowBox[{"ZNeu", "[", 
            RowBox[{"i_", ",", "1"}], "]"}], "\[Conjugate]"}], 
          RowBox[{"SMP", "[", "\"\<sin_W\>\"", "]"}]}], "+", 
         RowBox[{
          FractionBox["1", "2"], 
          RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}], 
          RowBox[{
           RowBox[{"ZNeu", "[", 
            RowBox[{"i_", ",", "2"}], "]"}], "\[Conjugate]"}]}]}], ")"}]}], 
      " ", "->", " ", 
      RowBox[{
       RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}], 
       RowBox[{
        RowBox[{"Csq", "[", 
         RowBox[{"i", ",", "a", ",", "L"}], "]"}], "\[Conjugate]"}]}]}], ",", 
     "\n", "\t", 
     RowBox[{
      FractionBox[
       RowBox[{
        RowBox[{"SMP", "[", "\"\<sin_W\>\"", "]"}], "^", "2"}], 
       RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}]], " ", "->", " ", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["3", "2"]}], 
       RowBox[{"Cq", "[", "R", "]"}]}]}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"USf", "[", 
          RowBox[{"3", ",", "1"}], "]"}], "[", 
         RowBox[{"a_", ",", "2"}], "]"}], "\[Conjugate]"}], " ", 
       RowBox[{
        RowBox[{"ZNeu", "[", 
         RowBox[{"i_", ",", "1"}], "]"}], "\[Conjugate]"}]}], " ", "->", " ", 
      
      RowBox[{
       RowBox[{"-", 
        FractionBox["3", "2"]}], 
       FractionBox[
        RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}], 
        RowBox[{"SMP", "[", "\"\<sin_W\>\"", "]"}]], 
       RowBox[{"Csq", "[", 
        RowBox[{"i", ",", "a", ",", "R"}], "]"}]}]}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"USf", "[", 
         RowBox[{"3", ",", "1"}], "]"}], "[", 
        RowBox[{"a_", ",", "2"}], "]"}], " ", 
       RowBox[{"ZNeu", "[", 
        RowBox[{"i_", ",", "1"}], "]"}]}], " ", "->", " ", 
      RowBox[{
       RowBox[{"-", 
        FractionBox["3", "2"]}], 
       FractionBox[
        RowBox[{"SMP", "[", "\"\<cos_W\>\"", "]"}], 
        RowBox[{"SMP", "[", "\"\<sin_W\>\"", "]"}]], 
       RowBox[{
        RowBox[{"Csq", "[", 
         RowBox[{"i", ",", "a", ",", "R"}], "]"}], "\[Conjugate]"}]}]}]}], 
    "\n", "}"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"D2Me", "[", "expr_", "]"}], " ", ":=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"expr", " ", "/.", " ", "QZreplaceList"}], " ", "//", " ", 
      "Refine"}], " ", "//", " ", 
     RowBox[{
      RowBox[{"ReplaceRepeated", "[", 
       RowBox[{"#", ",", " ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{
           RowBox[{"Conjugate", "[", 
            RowBox[{"a_", "+", "b_"}], "]"}], "->", 
           RowBox[{
            RowBox[{"a", "\[Conjugate]"}], "+", 
            RowBox[{"b", "\[Conjugate]"}]}]}], ",", " ", 
          RowBox[{
           RowBox[{"Conjugate", "[", 
            RowBox[{"a_", " ", "b_"}], "]"}], "->", 
           RowBox[{
            RowBox[{"a", "\[Conjugate]"}], 
            RowBox[{"b", "\[Conjugate]"}]}]}]}], "}"}]}], "]"}], "&"}]}], " ",
     "//", " ", "Refine"}], " ", "//", "\n", "\t", 
   RowBox[{
    RowBox[{"ReplaceRepeated", "[", 
     RowBox[{"#", ",", " ", "MyReplaceList"}], "]"}], "&"}]}]}]}], "Code",
 CellChangeTimes->{{3.917335690723112*^9, 3.917335718773362*^9}, {
   3.91733576217*^9, 3.917335959893473*^9}, {3.917336064477159*^9, 
   3.917336112409247*^9}, {3.91733617343589*^9, 3.917336322691828*^9}, {
   3.917336430954764*^9, 3.917336488212839*^9}, {3.917336537510097*^9, 
   3.917336541220985*^9}, {3.917336578118108*^9, 3.917336580420203*^9}, {
   3.917336727532662*^9, 3.917336735037574*^9}, {3.917336765212026*^9, 
   3.917336815421218*^9}, {3.917762324163002*^9, 3.9177623567890244`*^9}, {
   3.917762679349575*^9, 3.917762709877774*^9}, {3.917762749082386*^9, 
   3.9177627525913153`*^9}, {3.91776287329738*^9, 3.917762874757995*^9}, {
   3.9177629077673693`*^9, 3.917762910134153*^9}, 3.917762951354694*^9},
 CellLabel->"In[29]:=",ExpressionUUID->"74118295-f2eb-44a7-928a-33f672c66784"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"QtM2", "[", 
    RowBox[{"L", ",", "L"}], "]"}], " ", "=", " ", 
   RowBox[{"D2Me", "[", 
    RowBox[{"Qt", "[", 
     RowBox[{"L", ",", "L"}], "]"}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"QtM2", "[", 
    RowBox[{"L", ",", "R"}], "]"}], " ", "=", " ", 
   RowBox[{"D2Me", "[", 
    RowBox[{"Qt", "[", 
     RowBox[{"L", ",", "R"}], "]"}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"QtM2", "[", 
    RowBox[{"R", ",", "L"}], "]"}], " ", "=", " ", 
   RowBox[{"D2Me", "[", 
    RowBox[{"Qt", "[", 
     RowBox[{"R", ",", "L"}], "]"}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"QtM2", "[", 
     RowBox[{"R", ",", "R"}], "]"}], " ", "=", " ", 
    RowBox[{"D2Me", "[", 
     RowBox[{"Qt", "[", 
      RowBox[{"R", ",", "R"}], "]"}], "]"}]}], ";"}], "\n"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"QuM2", "[", 
    RowBox[{"L", ",", "L"}], "]"}], " ", "=", " ", 
   RowBox[{"D2Me", "[", 
    RowBox[{"Qu", "[", 
     RowBox[{"L", ",", "L"}], "]"}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"QuM2", "[", 
    RowBox[{"L", ",", "R"}], "]"}], " ", "=", " ", 
   RowBox[{"D2Me", "[", 
    RowBox[{"Qu", "[", 
     RowBox[{"L", ",", "R"}], "]"}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"QuM2", "[", 
    RowBox[{"R", ",", "L"}], "]"}], " ", "=", " ", 
   RowBox[{"D2Me", "[", 
    RowBox[{"Qu", "[", 
     RowBox[{"R", ",", "L"}], "]"}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"QuM2", "[", 
    RowBox[{"R", ",", "R"}], "]"}], " ", "=", " ", 
   RowBox[{"D2Me", "[", 
    RowBox[{"Qu", "[", 
     RowBox[{"R", ",", "R"}], "]"}], "]"}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.917336840272563*^9, 3.917336903996845*^9}, {
  3.917336943956058*^9, 3.917337014986038*^9}},
 CellLabel->"In[33]:=",ExpressionUUID->"a864298e-b317-4c5a-8dbe-074a98c29ae0"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"tSum", " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"QtM2", "[", 
      RowBox[{"L", ",", "L"}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"QtM2", "[", 
         RowBox[{"L", ",", "L"}], "]"}], "\[Conjugate]"}], "/.", 
       RowBox[{"A", "->", "B"}]}], ")"}]}], " ", "+", " ", 
    RowBox[{
     RowBox[{"QtM2", "[", 
      RowBox[{"L", ",", "R"}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"QtM2", "[", 
         RowBox[{"L", ",", "R"}], "]"}], "\[Conjugate]"}], "/.", 
       RowBox[{"A", "->", "B"}]}], ")"}]}], " ", "+", " ", 
    RowBox[{
     RowBox[{"QtM2", "[", 
      RowBox[{"R", ",", "L"}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"QtM2", "[", 
         RowBox[{"R", ",", "L"}], "]"}], "\[Conjugate]"}], "/.", 
       RowBox[{"A", "->", "B"}]}], ")"}]}], " ", "+", " ", 
    RowBox[{
     RowBox[{"QtM2", "[", 
      RowBox[{"R", ",", "R"}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"QtM2", "[", 
         RowBox[{"R", ",", "R"}], "]"}], "\[Conjugate]"}], "/.", 
       RowBox[{"A", "->", "B"}]}], ")"}]}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"uSum", " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"QuM2", "[", 
      RowBox[{"L", ",", "L"}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"QuM2", "[", 
         RowBox[{"L", ",", "L"}], "]"}], "\[Conjugate]"}], "/.", 
       RowBox[{"A", "->", "B"}]}], ")"}]}], " ", "+", " ", 
    RowBox[{
     RowBox[{"QuM2", "[", 
      RowBox[{"L", ",", "R"}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"QuM2", "[", 
         RowBox[{"L", ",", "R"}], "]"}], "\[Conjugate]"}], "/.", 
       RowBox[{"A", "->", "B"}]}], ")"}]}], " ", "+", " ", 
    RowBox[{
     RowBox[{"QuM2", "[", 
      RowBox[{"R", ",", "L"}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"QuM2", "[", 
         RowBox[{"R", ",", "L"}], "]"}], "\[Conjugate]"}], "/.", 
       RowBox[{"A", "->", "B"}]}], ")"}]}], " ", "+", " ", 
    RowBox[{
     RowBox[{"QuM2", "[", 
      RowBox[{"R", ",", "R"}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"QuM2", "[", 
         RowBox[{"R", ",", "R"}], "]"}], "\[Conjugate]"}], "/.", 
       RowBox[{"A", "->", "B"}]}], ")"}]}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"smmSum", " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"QtM2", "[", 
      RowBox[{"L", ",", "L"}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"QuM2", "[", 
         RowBox[{"L", ",", "L"}], "]"}], "\[Conjugate]"}], "/.", 
       RowBox[{"A", "->", "B"}]}], ")"}]}], " ", "+", " ", 
    RowBox[{
     RowBox[{"QuM2", "[", 
      RowBox[{"L", ",", "L"}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"QtM2", "[", 
         RowBox[{"L", ",", "L"}], "]"}], "\[Conjugate]"}], "/.", 
       RowBox[{"A", "->", "B"}]}], ")"}]}], " ", "+", " ", 
    RowBox[{
     RowBox[{"QtM2", "[", 
      RowBox[{"R", ",", "R"}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"QuM2", "[", 
         RowBox[{"R", ",", "R"}], "]"}], "\[Conjugate]"}], "/.", 
       RowBox[{"A", "->", "B"}]}], ")"}]}], " ", "+", " ", 
    RowBox[{
     RowBox[{"QuM2", "[", 
      RowBox[{"R", ",", "R"}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"QtM2", "[", 
         RowBox[{"R", ",", "R"}], "]"}], "\[Conjugate]"}], "/.", 
       RowBox[{"A", "->", "B"}]}], ")"}]}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"tuSum", " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"QtM2", "[", 
      RowBox[{"R", ",", "L"}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"QuM2", "[", 
         RowBox[{"R", ",", "L"}], "]"}], "\[Conjugate]"}], "/.", 
       RowBox[{"A", "->", "B"}]}], ")"}]}], " ", "+", " ", 
    RowBox[{
     RowBox[{"QuM2", "[", 
      RowBox[{"R", ",", "L"}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"QtM2", "[", 
         RowBox[{"R", ",", "L"}], "]"}], "\[Conjugate]"}], "/.", 
       RowBox[{"A", "->", "B"}]}], ")"}]}], " ", "+", " ", 
    RowBox[{
     RowBox[{"QtM2", "[", 
      RowBox[{"L", ",", "R"}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"QuM2", "[", 
         RowBox[{"L", ",", "R"}], "]"}], "\[Conjugate]"}], "/.", 
       RowBox[{"A", "->", "B"}]}], ")"}]}], " ", "+", " ", 
    RowBox[{
     RowBox[{"QuM2", "[", 
      RowBox[{"L", ",", "R"}], "]"}], 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"QtM2", "[", 
         RowBox[{"L", ",", "R"}], "]"}], "\[Conjugate]"}], "/.", 
       RowBox[{"A", "->", "B"}]}], ")"}]}]}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.91733705161087*^9, 3.917337243809235*^9}, {
  3.9173375235595617`*^9, 3.9173375605548*^9}},
 CellLabel->"In[41]:=",ExpressionUUID->"cf1f1f54-7437-4469-a9eb-6db58b9a370d"],

Cell[BoxData[
 RowBox[{
  RowBox[{"ToSuperCharges", "[", "expr_", "]"}], " ", ":=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"expr", " ", "//", " ", "Refine"}], " ", "//", " ", "Expand"}], 
    " ", "//", " ", 
    RowBox[{
     RowBox[{"ReplaceRepeated", "[", 
      RowBox[{"#", ",", " ", "SuperChargeRules"}], "]"}], "&"}]}], " ", "//", 
   " ", "Simplify"}]}]], "Code",
 CellChangeTimes->{{3.917337790564054*^9, 3.917337965763858*^9}, 
   3.917341112428466*^9, {3.917406197527791*^9, 3.917406283614291*^9}, {
   3.917410279688718*^9, 3.917410280469354*^9}, {3.917411784844367*^9, 
   3.91741179909024*^9}, {3.917412003598555*^9, 3.917412004234762*^9}, {
   3.9177623725044003`*^9, 3.917762373128146*^9}, {3.9177624265469503`*^9, 
   3.917762427208078*^9}},
 CellLabel->"In[45]:=",ExpressionUUID->"594f556d-e37b-4a23-997e-b23467f535df"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"XSecDebove2Me", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{"4", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"uSum", 
       RowBox[{"(", 
        RowBox[{"u", "-", 
         RowBox[{
          RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}]}], ")"}], 
       RowBox[{"(", 
        RowBox[{"u", "-", 
         RowBox[{
          RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}]}], ")"}]}], " ", "+", 
      " ", 
      RowBox[{"tSum", 
       RowBox[{"(", 
        RowBox[{"t", "-", 
         RowBox[{
          RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}]}], ")"}], 
       RowBox[{"(", 
        RowBox[{"t", "-", 
         RowBox[{
          RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}]}], ")"}]}], " ", "+", 
      " ", 
      RowBox[{"smmSum", " ", "s", " ", 
       RowBox[{"MNeu", "[", "i", "]"}], " ", 
       RowBox[{"MNeu", "[", "j", "]"}]}], " ", "-", " ", 
      RowBox[{"tuSum", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"t", " ", "u"}], " ", "-", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}], 
          RowBox[{
           RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}]}]}], ")"}]}]}], 
     ")"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"XSecDebove2Me", "[", "1", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"SelectFree2", "[", 
       RowBox[{
        RowBox[{"XSecDebove2Me", "[", "0", "]"}], ",", " ", "A"}], "]"}], " ",
       "/.", " ", 
      RowBox[{"B", "->", "A"}]}], ")"}], " ", "+", " ", 
    RowBox[{"SelectNotFree2", "[", 
     RowBox[{
      RowBox[{"XSecDebove2Me", "[", "0", "]"}], ",", " ", "A"}], "]"}]}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"XSecDebove2Me", "[", "2", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"Refine", "[", 
     RowBox[{"XSecDebove2Me", "[", "1", "]"}], "]"}], " ", "/.", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{
       RowBox[{"s", "-", 
        RowBox[{
         RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], "^", "2"}]}], " ", "->", 
       " ", 
       RowBox[{"1", "/", 
        RowBox[{"Den", "[", 
         RowBox[{"s", ",", 
          RowBox[{
           RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], "^", "2"}]}], "]"}]}]}], 
      ",", " ", 
      RowBox[{
       RowBox[{"t", "-", 
        RowBox[{
         RowBox[{"MSf", "[", "args__", "]"}], "^", "2"}]}], " ", "->", " ", 
       RowBox[{"1", "/", 
        RowBox[{"Den", "[", 
         RowBox[{"t", ",", 
          RowBox[{
           RowBox[{"MSf", "[", "args", "]"}], "^", "2"}]}], "]"}]}]}], ",", 
      " ", 
      RowBox[{
       RowBox[{"u", "-", 
        RowBox[{
         RowBox[{"MSf", "[", "args__", "]"}], "^", "2"}]}], " ", "->", " ", 
       RowBox[{"1", "/", 
        RowBox[{"Den", "[", 
         RowBox[{"u", ",", 
          RowBox[{
           RowBox[{"MSf", "[", "args", "]"}], "^", "2"}]}], "]"}]}]}]}], 
     "}"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"XSecDebove2Me", "[", "3", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"SelectNotFree2", "[", 
        RowBox[{
         RowBox[{"XSecDebove2Me", "[", "2", "]"}], ",", " ", 
         RowBox[{"Den", "[", 
          RowBox[{"u", ",", 
           RowBox[{
            RowBox[{"MSf", "[", 
             RowBox[{"A", ",", "__"}], "]"}], "^", "2"}]}], "]"}]}], "]"}], 
       " ", "/.", " ", 
       RowBox[{"B", "->", "C"}]}], " ", "/.", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"A", "->", "B"}], ",", " ", 
        RowBox[{"C", "->", "A"}]}], "}"}]}], ")"}], " ", "+", " ", 
    RowBox[{"SelectFree2", "[", 
     RowBox[{
      RowBox[{"XSecDebove2Me", "[", "2", "]"}], ",", " ", 
      RowBox[{"Den", "[", 
       RowBox[{"u", ",", 
        RowBox[{
         RowBox[{"MSf", "[", 
          RowBox[{"A", ",", "__"}], "]"}], "^", "2"}]}], "]"}]}], "]"}]}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"XSecDebove2Me", "[", "4", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"XSecDebove2Me", "[", "3", "]"}], " ", "//", " ", 
    RowBox[{
     RowBox[{"Collect", "[", "\n", "\t", 
      RowBox[{"#", ",", "\n", "\t", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"(", 
           RowBox[{"u", "-", 
            RowBox[{
             RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}]}], ")"}], 
          RowBox[{"(", 
           RowBox[{"u", "-", 
            RowBox[{
             RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}]}], ")"}]}], ",", " ", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"t", "-", 
            RowBox[{
             RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}]}], ")"}], 
          RowBox[{"(", 
           RowBox[{"t", "-", 
            RowBox[{
             RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}]}], ")"}]}], ",", " ", 
         RowBox[{"s", " ", 
          RowBox[{"MNeu", "[", "i", "]"}], " ", 
          RowBox[{"MNeu", "[", "j", "]"}]}], ",", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"t", " ", "u"}], " ", "-", " ", 
           RowBox[{
            RowBox[{
             RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}], 
            RowBox[{
             RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}]}]}], ")"}]}], "}"}], 
       ",", "\n", "\t", 
       RowBox[{"Function", "[", 
        RowBox[{"x", ",", " ", 
         RowBox[{"Collect2", "[", 
          RowBox[{
           RowBox[{"Refine", "[", 
            RowBox[{"Expand", "[", "x", "]"}], "]"}], ",", " ", 
           RowBox[{"Den", "[", "__", "]"}], ",", " ", 
           RowBox[{"Factoring", "->", "ToSuperCharges"}]}], "]"}]}], "]"}]}], 
      "\n", "]"}], "&"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"XSecDebove2Me", "[", "5", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"XSecDebove2Me", "[", "4", "]"}], " ", "//.", " ", 
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
         RowBox[{"a", "^", "2"}], "]"}]}]}], ",", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"a_", "\[Conjugate]"}], "a_"}], "->", 
       RowBox[{
        RowBox[{"Abs", "[", "a", "]"}], "^", "2"}]}]}], "}"}]}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"XSecDebove2Me", "[", "6", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"SelectFree2", "[", 
       RowBox[{
        RowBox[{"XSecDebove2Me", "[", "5", "]"}], ",", "A"}], "]"}], "/.", 
      RowBox[{"B", "->", "A"}]}], ")"}], " ", "+", " ", 
    RowBox[{"SelectNotFree2", "[", 
     RowBox[{
      RowBox[{"XSecDebove2Me", "[", "5", "]"}], ",", "A"}], "]"}]}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"XSecDebove2Me", "[", "7", "]"}], " ", "=", " ", 
  RowBox[{
   FractionBox[
    RowBox[{"Pi", " ", 
     RowBox[{"alphaW", "^", "2"}]}], 
    RowBox[{
     RowBox[{"s", "^", "2"}], "CA"}]], " ", 
   RowBox[{"IdenticalPartFactor", "[", 
    RowBox[{"i", ",", "j"}], "]"}], " ", 
   RowBox[{"XSecDebove2Me", "[", "6", "]"}]}]}]}], "Code",
 CellChangeTimes->{{3.917337024844527*^9, 3.917337049038362*^9}, {
   3.917337247424428*^9, 3.917337379149851*^9}, {3.917337437777875*^9, 
   3.917337456824457*^9}, {3.917337719796014*^9, 3.917337755006041*^9}, {
   3.917337900505851*^9, 3.9173379031536217`*^9}, {3.917337975841782*^9, 
   3.917338015461028*^9}, {3.917338049397643*^9, 3.917338067714233*^9}, {
   3.917338116707336*^9, 3.917338261079936*^9}, {3.917341150895183*^9, 
   3.917341152498193*^9}, {3.917341234874159*^9, 3.9173412991580353`*^9}, {
   3.917341335553945*^9, 3.917341339247839*^9}, {3.917406170083168*^9, 
   3.917406182281961*^9}, {3.917406265188493*^9, 3.917406268417142*^9}, {
   3.9174063703594313`*^9, 3.9174064229156213`*^9}, {3.917406501881468*^9, 
   3.9174065021311693`*^9}, {3.917406684420485*^9, 3.917406761461667*^9}, {
   3.917409824408555*^9, 3.917409937165344*^9}, {3.917410145909311*^9, 
   3.917410314329701*^9}, {3.917757666390253*^9, 3.917757765621481*^9}, {
   3.9177589332375517`*^9, 3.917758992385998*^9}, {3.917759102159161*^9, 
   3.917759106209601*^9}, {3.9177594399608297`*^9, 3.917759450486239*^9}, 
   3.9178492786755953`*^9},
 CellLabel->"In[46]:=",ExpressionUUID->"c15c7232-07a6-4a84-85f5-15f90e853fcf"],

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
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        FractionBox["1", 
         RowBox[{"s", "-", 
          SubsuperscriptBox["m", "Z", "2"]}]], ")"}], "2"]}], "+", 
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
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      SuperscriptBox[
       RowBox[{"(", 
        FractionBox["1", 
         RowBox[{"s", "-", 
          SubsuperscriptBox["m", "Z", "2"]}]], ")"}], "2"]}], "-", 
     RowBox[{"s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          SuperscriptBox[
           RowBox[{"(", 
            SubsuperscriptBox["Z", "s", "L"], ")"}], "2"], ")"}]}], "+", 
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          SuperscriptBox[
           RowBox[{"(", 
            SubsuperscriptBox["Z", "s", "R"], ")"}], "2"], ")"}]}]}], ")"}], 
      " ", 
      SuperscriptBox[
       RowBox[{"(", 
        FractionBox["1", 
         RowBox[{"s", "-", 
          SubsuperscriptBox["m", "Z", "2"]}]], ")"}], "2"]}], "+", 
     RowBox[{"2", " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["Z", "s", "L"], ")"}]},
         "Conjugate"], " ", 
        SubsuperscriptBox["Q", "A", 
         RowBox[{"L", "L"}]]}], ")"}], " ", 
      FractionBox["1", 
       RowBox[{"s", "-", 
        SubsuperscriptBox["m", "Z", "2"]}]]}], "+", 
     RowBox[{"2", " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["Z", "s", "R"], ")"}]},
         "Conjugate"], " ", 
        SubsuperscriptBox["Q", "A", 
         RowBox[{"R", "R"}]]}], ")"}], " ", 
      FractionBox["1", 
       RowBox[{"s", "-", 
        SubsuperscriptBox["m", "Z", "2"]}]]}], "+", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", "s", "L"], ")"}]},
            "Conjugate"], " ", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", "L"}]]}], ")"}]}], "+", 
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", "s", "R"], ")"}]},
            "Conjugate"], " ", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", "R"}]]}], ")"}]}]}], ")"}], " ", 
      FractionBox["1", 
       RowBox[{"s", "-", 
        SubsuperscriptBox["m", "Z", "2"]}]]}], "-", 
     RowBox[{"2", " ", "s", " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        SubsuperscriptBox["Q", "A", 
         RowBox[{"L", "L"}]], " ", 
        SubsuperscriptBox["Z", "s", "L"]}], ")"}], " ", 
      FractionBox["1", 
       RowBox[{"s", "-", 
        SubsuperscriptBox["m", "Z", "2"]}]]}], "-", 
     RowBox[{"2", " ", "s", " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        SubsuperscriptBox["Q", "A", 
         RowBox[{"R", "R"}]], " ", 
        SubsuperscriptBox["Z", "s", "R"]}], ")"}], " ", 
      FractionBox["1", 
       RowBox[{"s", "-", 
        SubsuperscriptBox["m", "Z", "2"]}]]}], "-", 
     RowBox[{"s", " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", "L"}]], " ", 
           SubsuperscriptBox["Z", "s", "L"]}], ")"}]}], "+", 
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", "R"}]], " ", 
           SubsuperscriptBox["Z", "s", "R"]}], ")"}]}]}], ")"}], " ", 
      FractionBox["1", 
       RowBox[{"s", "-", 
        SubsuperscriptBox["m", "Z", "2"]}]]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]], ")"}]},
       "Conjugate"], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      SubsuperscriptBox["Q", "B", 
       RowBox[{"L", "L"}]]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]], ")"}]},
       "Conjugate"], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      SubsuperscriptBox["Q", "B", 
       RowBox[{"L", "L"}]]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "R"}]], ")"}]},
       "Conjugate"], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      SubsuperscriptBox["Q", "B", 
       RowBox[{"L", "R"}]]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "R"}]], ")"}]},
       "Conjugate"], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      SubsuperscriptBox["Q", "B", 
       RowBox[{"L", "R"}]]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "L"}]], ")"}]},
       "Conjugate"], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      SubsuperscriptBox["Q", "B", 
       RowBox[{"R", "L"}]]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "L"}]], ")"}]},
       "Conjugate"], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      SubsuperscriptBox["Q", "B", 
       RowBox[{"R", "L"}]]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]], ")"}]},
       "Conjugate"], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      SubsuperscriptBox["Q", "B", 
       RowBox[{"R", "R"}]]}], "+", 
     RowBox[{
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]], ")"}]},
       "Conjugate"], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      SubsuperscriptBox["Q", "B", 
       RowBox[{"R", "R"}]]}], "-", 
     RowBox[{"2", " ", "s", " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}]], " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        SubsuperscriptBox["Q", "A", 
         RowBox[{"L", "L"}]], " ", 
        SubsuperscriptBox["Q", "B", 
         RowBox[{"L", "L"}]]}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"t", " ", "u"}], "-", 
        RowBox[{
         SubsuperscriptBox["m", "i", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"]}]}], ")"}], " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        SubsuperscriptBox["Q", "A", 
         RowBox[{"R", "L"}]], " ", 
        SubsuperscriptBox["Q", "B", 
         RowBox[{"L", "R"}]]}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"t", " ", "u"}], "-", 
        RowBox[{
         SubsuperscriptBox["m", "i", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"]}]}], ")"}], " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        SubsuperscriptBox["Q", "A", 
         RowBox[{"L", "R"}]], " ", 
        SubsuperscriptBox["Q", "B", 
         RowBox[{"R", "L"}]]}], ")"}]}], "-", 
     RowBox[{"2", " ", "s", " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}]], " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        SubsuperscriptBox["Q", "A", 
         RowBox[{"R", "R"}]], " ", 
        SubsuperscriptBox["Q", "B", 
         RowBox[{"R", "R"}]]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.9178492925830593`*^9, 3.917849833917701*^9},
 CellLabel->"Out[53]=",ExpressionUUID->"14d49528-3988-4476-86e6-17d5327e3c21"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"tempPrefactor", " ", "=", " ", 
   RowBox[{
    FractionBox[
     RowBox[{"Pi", " ", 
      RowBox[{"alphaW", "^", "2"}]}], 
     RowBox[{
      RowBox[{"s", "^", "2"}], "CA"}]], 
    RowBox[{"IdenticalPartFactor", "[", 
     RowBox[{"i", ",", "j"}], "]"}]}]}], ";"}], "\n", 
 RowBox[{"MyResultSimplified", " ", "=", " ", 
  RowBox[{"tempPrefactor", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{
          FractionBox["MyResult", "tempPrefactor"], " ", "/.", " ", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"DZ", "->", 
             RowBox[{
              RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], "^", "2"}]}], ",", 
            " ", 
            RowBox[{
             RowBox[{"DSf", "[", "args__", "]"}], "->", 
             RowBox[{
              RowBox[{"MSf", "[", "args", "]"}], "^", "2"}]}], ",", " ", 
            RowBox[{
             RowBox[{"DSfC", "[", "args__", "]"}], "->", 
             RowBox[{
              RowBox[{"MSf", "[", "args", "]"}], "^", "2"}]}]}], "}"}]}], " ",
          "//", "\n", "\t", "Refine"}], " ", "//", " ", "Expand"}], " ", "//",
        " ", "CollectEffCharges"}], " ", "//", " ", "FRH"}], " ", "//", "\n", 
     "\t", 
     RowBox[{
      RowBox[{"ReplaceRepeated", "[", 
       RowBox[{"#", ",", " ", 
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
             RowBox[{"a", "^", "2"}], "]"}]}]}]}], "}"}]}], "]"}], "&"}]}], 
    ")"}]}]}]}], "Code",
 CellChangeTimes->{{3.917758885410427*^9, 3.917758887217039*^9}, {
   3.917759121859505*^9, 3.917759126135252*^9}, {3.917759166221952*^9, 
   3.917759365414299*^9}, {3.917759839063711*^9, 3.917759854927763*^9}, 
   3.917848245521843*^9, 3.91784927867699*^9},
 CellLabel->"In[54]:=",ExpressionUUID->"cae877e2-af34-486e-ac9f-7272919cef13"],

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
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}]], " ", 
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
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}]], " ", 
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
          "Conjugate"]}]}], ")"}]}], "-", 
     RowBox[{"s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", "L"}]], " ", 
           SubsuperscriptBox["Q", "B", 
            RowBox[{"L", "L"}]]}], ")"}]}], "+", 
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", "R"}]], " ", 
           SubsuperscriptBox["Q", "B", 
            RowBox[{"R", "R"}]]}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"t", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}]], " ", 
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
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", "L"}]], " ", 
           SubsuperscriptBox["Q", "B", 
            RowBox[{"L", "R"}]]}], ")"}]}], "+", 
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", "R"}]], " ", 
           SubsuperscriptBox["Q", "B", 
            RowBox[{"R", "L"}]]}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{
      FractionBox["1", 
       RowBox[{"s", "-", 
        SubsuperscriptBox["m", "Z", "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["q", "~"], "A"], "2"]}]]}], "+", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["q", "~"], "A"], "2"]}]]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", "L"}]], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", "s", "L"], ")"}]},
            "Conjugate"]}], ")"}]}], "+", 
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", "R"}]], " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["Z", "s", "R"], ")"}]},
            "Conjugate"]}], ")"}]}]}], ")"}]}], "-", 
     RowBox[{"s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      FractionBox["1", 
       RowBox[{"s", "-", 
        SubsuperscriptBox["m", "Z", "2"]}]], " ", 
      RowBox[{"(", 
       RowBox[{
        FractionBox["1", 
         RowBox[{"t", "-", 
          SubsuperscriptBox["m", 
           SubscriptBox[
            OverscriptBox["q", "~"], "A"], "2"]}]], "+", 
        FractionBox["1", 
         RowBox[{"u", "-", 
          SubsuperscriptBox["m", 
           SubscriptBox[
            OverscriptBox["q", "~"], "A"], "2"]}]]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", "L"}]], " ", 
           SubsuperscriptBox["Z", "s", "L"]}], ")"}]}], "+", 
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          RowBox[{
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", "R"}]], " ", 
           SubsuperscriptBox["Z", "s", "R"]}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{
      SuperscriptBox[
       RowBox[{"(", 
        FractionBox["1", 
         RowBox[{"s", "-", 
          SubsuperscriptBox["m", "Z", "2"]}]], ")"}], "2"], " ", 
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
      SuperscriptBox[
       RowBox[{"(", 
        FractionBox["1", 
         RowBox[{"s", "-", 
          SubsuperscriptBox["m", "Z", "2"]}]], ")"}], "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          SuperscriptBox[
           RowBox[{"(", 
            SubsuperscriptBox["Z", "s", "L"], ")"}], "2"], ")"}]}], "+", 
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          SuperscriptBox[
           RowBox[{"(", 
            SubsuperscriptBox["Z", "s", "R"], ")"}], "2"], ")"}]}]}], 
       ")"}]}]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.9178492926709423`*^9, 3.917849834006177*^9},
 CellLabel->"Out[55]=",ExpressionUUID->"6f754db3-b6ae-4ca1-a12b-425234cf43bf"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"DoSquarkSum", "[", "expr_", "]"}], " ", ":=", " ", 
  RowBox[{
   RowBox[{"SelectFree2", "[", 
    RowBox[{"expr", ",", "A", ",", "B"}], "]"}], " ", "+", " ", 
   RowBox[{"Sum", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"SelectFree2", "[", 
       RowBox[{
        RowBox[{"SelectNotFree2", "[", 
         RowBox[{"expr", ",", "A"}], "]"}], ",", "B"}], "]"}], "+", 
      RowBox[{"Sum", "[", 
       RowBox[{
        RowBox[{"SelectNotFree2", "[", 
         RowBox[{"expr", ",", "B"}], "]"}], ",", 
        RowBox[{"{", 
         RowBox[{"B", ",", "1", ",", "2"}], "}"}]}], "]"}]}], ",", 
     RowBox[{"{", 
      RowBox[{"A", ",", "1", ",", "2"}], "}"}]}], "]"}]}]}]], "Code",
 CellChangeTimes->{{3.917847447725294*^9, 3.91784761181429*^9}},
 CellLabel->"In[56]:=",ExpressionUUID->"9e27f22d-696c-449f-bbb9-194fe85f9c56"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"FCCompareResults", "[", "\n", "\t", 
   RowBox[{
    RowBox[{"DoSquarkSum", "[", 
     RowBox[{"XSecDebove2Me", "[", "7", "]"}], "]"}], ",", "\n", "\t", 
    RowBox[{"DoSquarkSum", "[", "MyResultSimplified", "]"}], ",", "\n", "\t", 
    
    RowBox[{"Text", "->", 
     RowBox[{"{", 
      RowBox[{
      "\"\<Comparison between Debove and my results: \>\"", ",", " ", 
       "\"\<CORRECT.\>\"", ",", " ", "\"\<WRONG!\>\""}], "}"}]}], ",", " ", 
    RowBox[{"Interrupt", "->", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Hold", "[", 
        RowBox[{"Quit", "[", "1", "]"}], "]"}], ",", " ", "Automatic"}], 
      "}"}]}]}], "\n", "]"}], ";"}]], "Code",
 CellChangeTimes->{{3.9178472590198107`*^9, 3.917847298133108*^9}, {
  3.917847855050592*^9, 3.917847872867044*^9}, {3.917847917496068*^9, 
  3.917847939951148*^9}},
 CellLabel->"In[57]:=",ExpressionUUID->"9b653bf6-2a2f-401c-b01b-fab26d16666c"],

Cell[BoxData[
 FormBox[
  InterpretationBox[
   RowBox[{
    StyleBox["\<\"Comparison between Debove and my results: \"\>", "Text",
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
    Style["Comparison between Debove and my results: ", "Text", Bold], " ", 
    Style["CORRECT.", "Text", 
     RGBColor[0, 
      Rational[2, 3], 0], Bold]],
   Editable->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.917849292742468*^9, 3.917849834059608*^9},
 CellLabel->
  "During evaluation of \
In[57]:=",ExpressionUUID->"b20cc55c-09e8-49e4-b90f-6f9a44ee61ca"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1383, 855},
WindowMargins->{{-2.25, Automatic}, {Automatic, -22.5}},
Magnification:>1.25 Inherited,
FrontEndVersion->"14.0 for Linux x86 (64-bit) (December 12, 2023)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"9ad98d62-f3c3-4dca-a1dc-0a231e44a8b5"
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
Cell[580, 22, 161, 3, 83, "Section",ExpressionUUID->"f32c59b2-d610-49f2-80a3-d4fa5670adac"],
Cell[744, 27, 312, 7, 43, "Text",ExpressionUUID->"4fa58730-305f-48fb-9722-958d2950b5c7"],
Cell[CellGroupData[{
Cell[1081, 38, 1530, 40, 382, "Code",ExpressionUUID->"e1446662-d825-4461-81e4-db6234b5a744"],
Cell[CellGroupData[{
Cell[2636, 82, 2670, 69, 37, "Print",ExpressionUUID->"f84df4fe-20e4-464b-8c51-aca60c7da3a8"],
Cell[5309, 153, 1853, 50, 37, "Print",ExpressionUUID->"59722abf-d7aa-4e5c-9f9d-7a04fef642ba"],
Cell[7165, 205, 388, 8, 33, "Print",ExpressionUUID->"a575e6df-b3a5-4875-9a64-5f4c31c5eb17"],
Cell[7556, 215, 436, 10, 33, "Print",ExpressionUUID->"78fa367e-73e9-4da2-9840-48dbb66cea4a"],
Cell[7995, 227, 2038, 57, 37, "Print",ExpressionUUID->"2b726d54-d8f8-4b72-a8ad-3f0e4d8a44e9"],
Cell[10036, 286, 326, 7, 33, "Print",ExpressionUUID->"b6c31413-05c0-4e15-8e77-dc25d856aaac"],
Cell[10365, 295, 362, 8, 33, "Print",ExpressionUUID->"326cd378-89ba-441e-aeb6-59bc7101e5c6"],
Cell[10730, 305, 217, 4, 30, "Print",ExpressionUUID->"c45aa2b7-1fb5-49c2-abb4-a7d9b24eb4ba"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[10996, 315, 631, 15, 137, "Code",ExpressionUUID->"22c3297c-6141-4e5c-8392-cd715a5fbf2a"],
Cell[11630, 332, 802, 16, 35, "Message",ExpressionUUID->"7ea09421-4da6-4de2-96dd-9a28a5e02412"]
}, Open  ]],
Cell[12447, 351, 607, 15, 67, "Code",ExpressionUUID->"589aab6c-eaec-453f-bd21-8693bb7ffa4d",
 InitializationCell->True],
Cell[13057, 368, 1102, 24, 258, "Code",ExpressionUUID->"d9602ebe-5689-4e74-9c7e-a6029ea6273d"]
}, Open  ]],
Cell[CellGroupData[{
Cell[14196, 397, 206, 4, 83, "Section",ExpressionUUID->"2b237886-79f8-4272-abdc-2d5302d1f68e",
 InitializationCell->True],
Cell[14405, 403, 6510, 206, 402, "Code",ExpressionUUID->"f9711649-7546-4a28-a5f3-f63a961fe0a4"],
Cell[20918, 611, 4707, 130, 420, "Code",ExpressionUUID->"d8d6f72c-44e1-48f8-9deb-6c35b4224654"],
Cell[CellGroupData[{
Cell[25650, 745, 3015, 88, 93, "Code",ExpressionUUID->"2c33dfec-a876-4008-afc3-e3375bd61e08"],
Cell[28668, 835, 12171, 330, 391, "Output",ExpressionUUID->"4adb5740-aeb0-4675-a32a-e09a0a356f59"]
}, Open  ]],
Cell[40854, 1168, 6847, 188, 523, "Code",ExpressionUUID->"74118295-f2eb-44a7-928a-33f672c66784"],
Cell[47704, 1358, 1892, 60, 253, "Code",ExpressionUUID->"a864298e-b317-4c5a-8dbe-074a98c29ae0"],
Cell[49599, 1420, 5005, 159, 135, "Code",ExpressionUUID->"cf1f1f54-7437-4469-a9eb-6db58b9a370d"],
Cell[54607, 1581, 853, 18, 67, "Code",ExpressionUUID->"594f556d-e37b-4a23-997e-b23467f535df"],
Cell[CellGroupData[{
Cell[55485, 1603, 9153, 259, 372, "Code",ExpressionUUID->"c15c7232-07a6-4a84-85f5-15f90e853fcf"],
Cell[64641, 1864, 15988, 497, 471, "Output",ExpressionUUID->"14d49528-3988-4476-86e6-17d5327e3c21"]
}, Open  ]],
Cell[CellGroupData[{
Cell[80666, 2366, 2988, 80, 202, "Code",ExpressionUUID->"cae877e2-af34-486e-ac9f-7272919cef13"],
Cell[83657, 2448, 10252, 317, 314, "Output",ExpressionUUID->"6f754db3-b6ae-4ca1-a12b-425234cf43bf"]
}, Open  ]],
Cell[93924, 2768, 861, 22, 63, "Code",ExpressionUUID->"9e27f22d-696c-449f-bbb9-194fe85f9c56"],
Cell[CellGroupData[{
Cell[94810, 2794, 941, 22, 166, "Code",ExpressionUUID->"9b653bf6-2a2f-401c-b01b-fab26d16666c"],
Cell[95754, 2818, 1018, 29, 35, "Print",ExpressionUUID->"b20cc55c-09e8-49e4-b90f-6f9a44ee61ca"]
}, Open  ]]
}, Open  ]]
}
]
*)

