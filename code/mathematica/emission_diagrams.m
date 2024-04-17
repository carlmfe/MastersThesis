(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[         0,          0]
NotebookDataLength[    254279,       6108]
NotebookOptionsPosition[    249231,       6021]
NotebookOutlinePosition[    249632,       6037]
CellTagsIndexPosition[    249589,       6034]
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
 CellChangeTimes->{3.916837121192502*^9, 3.9168373917192993`*^9, 
  3.916837564377434*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"df8dc331-253c-4e7f-b91b-8b3330c9eabe"],

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
 CellChangeTimes->{3.916837121192502*^9, 3.9168373917192993`*^9, 
  3.9168375643809547`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"d133a29e-5383-42a9-8c0a-0c3b7b017f68"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynCalc in your research, please evaluate \
FeynCalcHowToCite[] to learn how to cite this software.\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.916837121192502*^9, 3.9168373917192993`*^9, 
  3.916837564382333*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"297cfcb2-37fb-4627-9366-23cd97448ab6"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"Please keep in mind that the proper academic attribution of \
our work is crucial to ensure the future development of this package!\"\>", 
   "Text",
   StripOnInput->False,
   FontSlant->Italic], TraditionalForm]], "Print",
 CellChangeTimes->{3.916837121192502*^9, 3.9168373917192993`*^9, 
  3.916837564383559*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"b89e784a-e3c3-4377-8ebe-5b8f922cb620"],

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
 CellChangeTimes->{3.916837121192502*^9, 3.9168373917192993`*^9, 
  3.9168375644235983`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"7dbcac2e-b220-49c8-8fc8-8399a92c1021"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynArts in your research, please cite\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.916837121192502*^9, 3.9168373917192993`*^9, 
  3.916837564425084*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"9757690f-46d0-4e5f-85b9-32fe20eadc76"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\" \[Bullet] T. Hahn, Comput. Phys. Commun., 140, 418-431, \
2001, arXiv:hep-ph/0012260\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{3.916837121192502*^9, 3.9168373917192993`*^9, 
  3.9168375644260798`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"ef7dbd8c-4c54-4b8a-a971-d1f85c4c9836"],

Cell["Successfully patched FeynArts.", "Print",
 CellChangeTimes->{3.916837121192502*^9, 3.9168373917192993`*^9, 
  3.916837564564323*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"0486a933-33e3-4138-9d71-326c5895235c"]
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
or be shadowed by other definitions.\"", 2, 11, 1, 33592187607998569804, 
    "Local", "FeynCalc`Index"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmVkYGDQA2LWrVJKaTpvHcXu7ZDLANKbGKMN3wLpbQ7L5LN13zr+
m6h1bh+QftImr7kfSK81rEp6C6R/Nj7ZCqKniKYcANFpL4QugehDW3ufg+gy
o0mOPHpvHXelTj8BoivMZC6BaKaVugqCQNruwBYHEP2PmTcARCdqaPSB6CVv
jC53A+nXs+QztoH0G52eD6I3d6zX2g6kbwQ/8AfR2kvbW0H0xeiqHSB6wzr2
kyD63feQ/B1AusD5etguIC0XE8S8G0hzeMfLguh/DUzaINpotbPdPiD9c+2f
ABD9/86sRBCtJr8uD0SfOHOtCEQ7STV3gejK8oYZIFqysUr8EJDWzMzvBNH7
TrnPOQKk21bpaB0F0hGXFtiB6F19TgrHgLT5dhEnEM3tPDccRAMALFezmA==

  "],
 CellLabel->
  "During evaluation of \
In[9]:=",ExpressionUUID->"b48ccea2-880f-44d1-b131-ccc822c17ce9"],

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
or be shadowed by other definitions.\"", 2, 11, 2, 33592187607998569804, 
    "Local", "FeynCalc`IndexDelta"},
   "MessageTemplate2"], TraditionalForm]], "Message", "MSG",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmVkYGDQA2LWrVJKaTpvHcXu7ZDLANKbGKMN3wLpbQ7L5LN13zr+
m6h1bh+QftImr7kfSK81rEp6C6R/Nj7ZCqKniKYcANFpL4QugehDW3ufg+gy
o0mOPHpvHXelTj8BoivMZC6BaKaVugqCQNruwBYHEP2PmTcARCdqaPSB6CVv
jC53A+nXs+QztoH0G52eD6I3d6zX2g6kbwQ/8AfR2kvbW0H0xeiqHSB6wzr2
kyD63feQ/B1AusD5etguIC0XE8S8G0hzeMfLguh/DUzaINpotbPdPiD9c+2f
ABD9/86sRBCtJr8uD0SfOHOtCEQ7STV3gejK8oYZIFqysUr8EJDWzMzvBNH7
TrnPOQKk21bpaB0F0hGXFtiB6F19TgrHgLT5dhEnEP1KaF44iAYAMf60Rw==

  "],
 CellLabel->
  "During evaluation of \
In[9]:=",ExpressionUUID->"cbc26713-f017-4c54-90c2-44539c9f5d6c"]
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
1: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

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

 CellChangeTimes->CompressedData["
1:eJxTTMoPSmVkYGDQAOKijW+3vtV962gkVHAARC++KX0JREvNmvYcRO9jn+3I
o/fWUUN3wQkQzdWodglEx70wUxAE0o6f9jqA6Jn/JQJA9MpSwz4QvTbD/nI3
kF4YqZ2xDUi/eL6wCEQfWnxtPoj2kNmttR1Ip5t/8AfRezintILongWdO0D0
ps/CJ0F0jUtq/g4gfWTzs7BdQFr7QCzzbpA557JkQbT3C15tEP2g399uH5DO
teAIBNFtZssSQfSzsL15INol9lkRiBbIndgFoo/59c8A0Sn3WsUPAekNTNWd
INosOnjOESCt99VG6yiQTrLZaAeiM2z8FI4B6S59BScQ3fd9RTiIBgAAKJ0i

  "],
 CellLabel->
  "During evaluation of \
In[14]:=",ExpressionUUID->"05f2f7b5-c726-41db-a8f7-0ceee2268053"]
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
      RowBox[{
       RowBox[{"ReplaceRepeated", "[", 
        RowBox[{"#", ",", " ", "SuperChargeRules"}], "]"}], " ", "&"}], "/@", 
      " ", 
      RowBox[{"ReplaceAll", "[", 
       RowBox[{"#", ",", " ", 
        RowBox[{
         RowBox[{
          RowBox[{"Opp", "[", 
           RowBox[{"i_", ",", "j_", ",", "L"}], "]"}], "\[Conjugate]"}], " ", 
         "->", " ", 
         RowBox[{"-", 
          RowBox[{"Opp", "[", 
           RowBox[{"i", ",", "j", ",", "R"}], "]"}]}]}]}], "]"}]}], " ", 
     "&"}], "/@", " ", 
    RowBox[{"DiracSimplify", " ", "/@", " ", 
     RowBox[{"Mreal", "[", "1", "]"}]}]}]}], ";"}], "\n", 
 RowBox[{"Clear", "[", "tempPrefactor", "]"}]}], "Code",
 CellChangeTimes->{{3.914477655181172*^9, 3.914477668233265*^9}, {
  3.914478047387411*^9, 3.914478051457137*^9}, {3.914478106436209*^9, 
  3.914478108087481*^9}, {3.914479110257681*^9, 3.914479117748647*^9}, {
  3.914482185163767*^9, 3.914482185165958*^9}, {3.9144832169807587`*^9, 
  3.914483216982397*^9}, {3.916804702721434*^9, 3.916804719228155*^9}, {
  3.916805066133893*^9, 3.916805077554051*^9}, {3.916806586540666*^9, 
  3.916806623581143*^9}, {3.916807334361133*^9, 3.916807380140789*^9}, {
  3.916847042144706*^9, 
  3.916847066227633*^9}},ExpressionUUID->"73ea9ab9-c2a1-4986-8aca-\
523fdc169d49"],

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
23beaeda93f0"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Set Scalar products", "Section",
 CellChangeTimes->{{3.916805202245624*^9, 
  3.916805222725955*^9}},ExpressionUUID->"08534849-2cc1-438f-8002-\
4d597e1535af"],

Cell[BoxData[
 RowBox[{
  RowBox[{"$Assumptions", " ", "=", " ", 
   RowBox[{"{", "\n", "\t", 
    RowBox[{
     RowBox[{"s", " ", "\[Element]", " ", "PositiveReals"}], ",", "\n", "\t", 
     
     RowBox[{
      RowBox[{"MNeu", "[", "_", "]"}], " ", "\[Element]", " ", 
      "PositiveReals"}], ",", "\n", "\t", 
     RowBox[{"s", " ", ">=", " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"MNeu", "[", "i", "]"}], "+", 
         RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "^", "2"}]}], ",", "\n", 
     "\t", 
     RowBox[{"s", " ", ">=", " ", 
      RowBox[{
       RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}]}], ",", "\n", "\t", 
     RowBox[{"s", " ", ">=", " ", 
      RowBox[{
       RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}]}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"3", ",", "5"}], "]"}], " ", "\[Element]", " ", 
      "PositiveReals"}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"4", ",", "5"}], "]"}], " ", "\[Element]", " ", 
      "PositiveReals"}], ",", "\n", "\t", 
     RowBox[{"Q2", " ", "\[Element]", " ", "PositiveReals"}], ",", "\n", "\t", 
     RowBox[{"s", " ", ">=", " ", 
      RowBox[{"m2", "[", 
       RowBox[{"3", ",", "5"}], "]"}]}], ",", "\n", "\t", 
     RowBox[{"s", " ", ">=", " ", 
      RowBox[{"m2", "[", 
       RowBox[{"4", ",", "5"}], "]"}]}], ",", "\n", "\t", 
     RowBox[{"s", " ", ">=", " ", "Q2"}], ",", "\n", "\t", 
     RowBox[{"Q2", " ", ">=", " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"MNeu", "[", "i", "]"}], "+", 
         RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "^", "2"}]}], ",", "\n", 
     "\t", 
     RowBox[{"Q2", " ", ">=", " ", 
      RowBox[{
       RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}]}], ",", "\n", "\t", 
     RowBox[{"Q2", " ", ">=", " ", 
      RowBox[{
       RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}]}], ",", "\n", "\t", 
     RowBox[{"theta1", " ", "\[Element]", " ", "Reals"}], ",", "\n", "\t", 
     RowBox[{"phi1", " ", "\[Element]", " ", "Reals"}], ",", "\n", "\t", 
     RowBox[{"theta3", " ", "\[Element]", " ", "Reals"}], ",", "\n", "\t", 
     RowBox[{"phi3", " ", "\[Element]", " ", "Reals"}], ",", "\n", "\t", 
     RowBox[{"theta1", " ", ">=", " ", "0"}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{"theta1", " ", "<", " ", "1"}], ";", "\n", "\t", 
      RowBox[{"phi1", " ", ">=", " ", "0"}]}], ",", "\n", "\t", 
     RowBox[{"phi1", " ", "<", " ", 
      RowBox[{"2", "Pi"}]}], ",", "\n", "\t", 
     RowBox[{"theta3", " ", ">=", " ", "0"}], ",", "\n", "\t", 
     RowBox[{
      RowBox[{"theta3", " ", "<", " ", "1"}], ";", "\n", "\t", 
      RowBox[{"phi3", " ", ">=", " ", "0"}]}], ",", "\n", "\t", 
     RowBox[{"phi3", " ", "<", " ", 
      RowBox[{"2", "Pi"}]}]}], "\n", "}"}]}], ";"}]], "Code",
 CellChangeTimes->{{3.916820051134275*^9, 3.916820094236746*^9}, {
   3.916820233042609*^9, 3.916820257093441*^9}, {3.9168203831462*^9, 
   3.916820413485317*^9}, {3.916827903674724*^9, 3.9168279296163883`*^9}, {
   3.916827967258316*^9, 3.916827983215631*^9}, 3.916828838528019*^9, {
   3.9168289070566597`*^9, 3.9168289321909933`*^9}, {3.9168290437008877`*^9, 
   3.9168290598658667`*^9}, {3.916832152723117*^9, 3.916832246842943*^9}, {
   3.9168324395952177`*^9, 3.916832443813405*^9}},
 CellLabel->"In[23]:=",ExpressionUUID->"0352de4f-bcb3-4703-ad1e-00ea1a81af09"],

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
 CellChangeTimes->{
  3.916814667766777*^9, {3.9168290633227177`*^9, 3.916829111974296*^9}},
 CellLabel->"In[24]:=",ExpressionUUID->"c886a8bd-7a89-4d95-acbe-0f67c137e64f"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"FCClearScalarProducts", "[", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Clear", "[", 
   RowBox[{"t", ",", " ", "u"}], "]"}], ";"}], "\n", 
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
  ";"}]}], "Code",
 CellChangeTimes->{
  3.916805197825997*^9, {3.916805233894036*^9, 3.916805282036578*^9}, {
   3.9168071461281033`*^9, 3.916807148718997*^9}, 3.916820965154107*^9, 
   3.916821353468007*^9, {3.9168215456699133`*^9, 3.916821548878195*^9}, {
   3.916821653665382*^9, 3.916821661520542*^9}, 3.916836396140142*^9, 
   3.9168372612450047`*^9, {3.916837451196307*^9, 3.916837451556671*^9}},
 CellLabel->"In[33]:=",ExpressionUUID->"3bd9d9ca-aad9-43cb-b9f4-d3cc56847ff6"],

Cell["Find  t1  and  mi5 .", "Text",
 CellChangeTimes->{{3.9168174594003553`*^9, 3.916817476734785*^9}, 
   3.916818518862671*^9, {3.916820096135922*^9, 3.916820098251088*^9}, 
   3.916820416545703*^9},ExpressionUUID->"7cbd3e4d-dd56-43e5-8480-\
ccccf35bf26c"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"Kallan", "[", 
    RowBox[{"a_", ",", " ", "b_", ",", " ", "c_"}], "]"}], " ", ":=", " ", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      RowBox[{"a", "^", "2"}], " ", "-", " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"b", "+", "c"}], ")"}], "^", "2"}]}], ")"}], 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"a", "^", "2"}], " ", "-", " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"b", "-", "c"}], ")"}], "^", "2"}]}], ")"}]}]}], "\n", 
  RowBox[{"(*", 
   RowBox[{"piNorm", " ", "=", " ", 
    RowBox[{
     RowBox[{
      FractionBox[
       RowBox[{"Sqrt", "[", 
        RowBox[{"Kallan", "[", 
         RowBox[{
          RowBox[{"Sqrt", "[", "s", "]"}], ",", " ", 
          RowBox[{"MNeu", "[", "i", "]"}], ",", " ", 
          RowBox[{"Sqrt", "[", 
           RowBox[{"m2", "[", 
            RowBox[{"4", ",", " ", "5"}], "]"}], "]"}]}], "]"}], "]"}], 
       RowBox[{"2", 
        RowBox[{"Sqrt", "[", "s", "]"}]}]], "\n", "pjNorm"}], " ", "=", " ", 
     RowBox[{
      RowBox[{
       FractionBox[
        RowBox[{"Sqrt", "[", 
         RowBox[{"Kallan", "[", 
          RowBox[{
           RowBox[{"Sqrt", "[", "s", "]"}], ",", " ", 
           RowBox[{"MNeu", "[", "j", "]"}], ",", " ", 
           RowBox[{"Sqrt", "[", 
            RowBox[{"m2", "[", 
             RowBox[{"3", ",", " ", "5"}], "]"}], "]"}]}], "]"}], "]"}], 
        RowBox[{"2", 
         RowBox[{"Sqrt", "[", "s", "]"}]}]], "\n", "Ei"}], " ", "=", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"Sqrt", "[", 
         RowBox[{
          RowBox[{
           RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}], " ", "+", " ", 
          RowBox[{"piNorm", "^", "2"}]}], "]"}], "\n", "Ej"}], " ", "=", " ", 
       
       RowBox[{
        RowBox[{
         RowBox[{"Sqrt", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}], " ", "+", " ", 
           RowBox[{"pjNorm", "^", "2"}]}], "]"}], "\n", "cTheta"}], " ", "=", 
        " ", 
        RowBox[{
         RowBox[{
          FractionBox[
           RowBox[{
            RowBox[{"2", "Ei", " ", "Ej"}], " ", "-", " ", 
            RowBox[{"(", 
             RowBox[{"s", " ", "-", " ", 
              RowBox[{"m2", "[", 
               RowBox[{"3", ",", " ", "5"}], "]"}], " ", "-", " ", 
              RowBox[{"m2", "[", 
               RowBox[{"4", ",", " ", "5"}], "]"}]}], ")"}]}], 
           RowBox[{"2", "piNorm", " ", "pjNorm"}]], "\n", "sTheta"}], " ", 
         "=", " ", 
         RowBox[{"Sqrt", "[", 
          RowBox[{"1", " ", "-", " ", 
           RowBox[{"cTheta", "^", "2"}]}], "]"}]}]}]}]}]}]}], "*)"}], 
  "\n"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"theta3", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<\[Theta]\>\"", ",", " ", "3"}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"phi3", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubscriptBox", "[", 
    RowBox[{"\"\<\[Phi]\>\"", ",", " ", "3"}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"theta1", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubsuperscriptBox", "[", 
    RowBox[{"\"\<\[Theta]\>\"", ",", " ", "1", ",", " ", "\"\<*\>\""}], 
    "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"MakeBoxes", "[", 
    RowBox[{"phi1", ",", " ", "TraditionalForm"}], "]"}], " ", "=", " ", 
   RowBox[{"SubsuperscriptBox", "[", 
    RowBox[{"\"\<\[Phi]\>\"", ",", " ", "1", ",", " ", "\"\<*\>\""}], "]"}]}],
   ";"}], "\n", 
 RowBox[{
  RowBox[{"pStarNorm", " ", "=", " ", 
   RowBox[{
    FractionBox[
     RowBox[{"Sqrt", "[", 
      RowBox[{"Kallan", "[", 
       RowBox[{
        RowBox[{"Sqrt", "[", "Q2", "]"}], ",", " ", 
        RowBox[{"MNeu", "[", "i", "]"}], ",", " ", 
        RowBox[{"MNeu", "[", "j", "]"}]}], "]"}], "]"}], 
     RowBox[{"2", 
      RowBox[{"Sqrt", "[", "Q2", "]"}]}]], " ", "//", " ", "Simplify"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"kNorm", " ", "=", " ", 
   RowBox[{
    FractionBox[
     RowBox[{"Sqrt", "[", 
      RowBox[{"Kallan", "[", 
       RowBox[{
        RowBox[{"Sqrt", "[", "s", "]"}], ",", " ", 
        RowBox[{"Sqrt", "[", "Q2", "]"}], ",", " ", "0"}], "]"}], "]"}], 
     RowBox[{"2", 
      RowBox[{"Sqrt", "[", "s", "]"}]}]], " ", "//", " ", "Simplify"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"GammaBetaPS", " ", "=", " ", 
   RowBox[{
    RowBox[{"kNorm", " ", "/", " ", 
     RowBox[{"Sqrt", "[", "Q2", "]"}]}], " ", "//", " ", "Simplify"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"GammaPS", " ", "=", " ", 
   RowBox[{
    RowBox[{"Sqrt", "[", 
     RowBox[{"1", " ", "+", " ", 
      RowBox[{"GammaBetaPS", "^", "2"}]}], "]"}], " ", "//", " ", 
    "Simplify"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"hPS", " ", "=", " ", 
   RowBox[{
    RowBox[{"Cos", "[", "theta3", "]"}], 
    RowBox[{"Sin", "[", "theta1", "]"}], 
    RowBox[{"Cos", "[", "phi1", "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"kPS", " ", "=", " ", 
   RowBox[{
    RowBox[{"Sin", "[", "theta1", "]"}], 
    RowBox[{"Sin", "[", "phi1", "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"s1PS", " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"-", "GammaBetaPS"}], " ", 
      RowBox[{"Sqrt", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}], "+", 
        RowBox[{"pStarNorm", "^", "2"}]}], "]"}]}], " ", "+", " ", 
     RowBox[{"GammaPS", " ", "pStarNorm", " ", 
      RowBox[{"Cos", "[", "theta1", "]"}]}]}], " ", "//", " ", "Simplify"}]}],
   ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"s2PS", " ", "=", " ", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"-", "GammaBetaPS"}], " ", 
       RowBox[{"Sqrt", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}], "+", 
         RowBox[{"pStarNorm", "^", "2"}]}], "]"}]}], " ", "-", " ", 
      RowBox[{"GammaPS", " ", "pStarNorm", " ", 
       RowBox[{"Cos", "[", "theta1", "]"}]}]}], " ", "//", " ", 
     "Simplify"}]}], ";"}], "\n"}], "\n", 
 RowBox[{
  RowBox[{"pix", " ", "=", " ", 
   RowBox[{
    RowBox[{"pStarNorm", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"hPS", " ", 
        RowBox[{"Cos", "[", "phi3", "]"}]}], " ", "-", " ", 
       RowBox[{
        RowBox[{"Sin", "[", "phi3", "]"}], "kPS"}]}], ")"}]}], " ", "+", " ", 
    
    RowBox[{"s1PS", " ", 
     RowBox[{"Sin", "[", "theta3", "]"}], 
     RowBox[{"Cos", "[", "phi3", "]"}]}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"piy", " ", "=", " ", 
   RowBox[{
    RowBox[{"pStarNorm", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"hPS", " ", 
        RowBox[{"Sin", "[", "phi3", "]"}]}], " ", "+", " ", 
       RowBox[{
        RowBox[{"Cos", "[", "phi3", "]"}], "kPS"}]}], ")"}]}], " ", "+", " ", 
    
    RowBox[{"s1PS", " ", 
     RowBox[{"Sin", "[", "theta3", "]"}], 
     RowBox[{"Sin", "[", "phi3", "]"}]}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"piz", " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"-", "pStarNorm"}], " ", 
     RowBox[{"Sin", "[", "theta3", "]"}], 
     RowBox[{"Sin", "[", "theta1", "]"}], 
     RowBox[{"Cos", "[", "phi1", "]"}]}], " ", "+", " ", 
    RowBox[{"s1PS", " ", 
     RowBox[{"Cos", "[", "theta3", "]"}]}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"pjx", " ", "=", " ", 
   RowBox[{
    RowBox[{"pStarNorm", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "hPS"}], " ", 
        RowBox[{"Cos", "[", "phi3", "]"}]}], " ", "+", " ", 
       RowBox[{
        RowBox[{"Sin", "[", "phi3", "]"}], "kPS"}]}], ")"}]}], " ", "+", " ", 
    
    RowBox[{"s2PS", " ", 
     RowBox[{"Sin", "[", "theta3", "]"}], 
     RowBox[{"Cos", "[", "phi3", "]"}]}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"pjy", " ", "=", " ", 
   RowBox[{
    RowBox[{"pStarNorm", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "hPS"}], " ", 
        RowBox[{"Sin", "[", "phi3", "]"}]}], " ", "-", " ", 
       RowBox[{
        RowBox[{"Cos", "[", "phi3", "]"}], "kPS"}]}], ")"}]}], " ", "+", " ", 
    
    RowBox[{"s2PS", " ", 
     RowBox[{"Sin", "[", "theta3", "]"}], 
     RowBox[{"Sin", "[", "phi3", "]"}]}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"pjz", " ", "=", " ", 
    RowBox[{
     RowBox[{"pStarNorm", " ", 
      RowBox[{"Sin", "[", "theta3", "]"}], 
      RowBox[{"Sin", "[", "theta1", "]"}], 
      RowBox[{"Cos", "[", "phi1", "]"}]}], " ", "+", " ", 
     RowBox[{"s2PS", " ", 
      RowBox[{"Cos", "[", "theta3", "]"}]}]}]}], ";"}], "\n"}], "\n", 
 RowBox[{
  RowBox[{"Ei2", " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}], " ", "+", " ", 
      RowBox[{"pix", "^", "2"}], " ", "+", " ", 
      RowBox[{"piy", "^", "2"}], " ", "+", " ", 
      RowBox[{"piz", "^", "2"}]}], " ", "//", " ", "Expand"}], " ", "//", " ",
     "Simplify"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"Ej2", " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}], " ", "+", " ", 
      RowBox[{"pjx", "^", "2"}], " ", "+", " ", 
      RowBox[{"pjy", "^", "2"}], " ", "+", " ", 
      RowBox[{"pjz", "^", "2"}]}], " ", "//", " ", "Expand"}], " ", "//", " ",
     "Simplify"}]}], ";"}]}], "Code",
 CellChangeTimes->{{3.916817477946232*^9, 3.91681749568804*^9}, {
   3.916818380945257*^9, 3.916818382958335*^9}, 3.916818556396089*^9, {
   3.916818638699082*^9, 3.916818649443449*^9}, {3.916818683151856*^9, 
   3.916819037211936*^9}, {3.9168201790675364`*^9, 3.916820188196021*^9}, {
   3.916820330336784*^9, 3.916820336339623*^9}, {3.9168272924388*^9, 
   3.916827869490498*^9}, {3.916827937270404*^9, 3.916827942161364*^9}, {
   3.9168280370180473`*^9, 3.9168280619063387`*^9}, {3.9168280926430798`*^9, 
   3.916828271921595*^9}, {3.9168283041787157`*^9, 3.9168283048589067`*^9}, {
   3.916828444963675*^9, 3.916828494994*^9}, {3.916828782491992*^9, 
   3.916828847339345*^9}, {3.9168289606441717`*^9, 3.916828975090383*^9}, {
   3.916829147014299*^9, 3.916829149881667*^9}, {3.916829316004607*^9, 
   3.9168293715269527`*^9}, {3.91682940348204*^9, 3.916829443401178*^9}, {
   3.916829541664184*^9, 3.916829568467671*^9}, {3.91682960226783*^9, 
   3.916829674810862*^9}, {3.916829745259355*^9, 3.916829753917491*^9}, {
   3.9168350059338083`*^9, 3.916835062766781*^9}, {3.916835115502171*^9, 
   3.916835115590494*^9}, {3.9168352848692703`*^9, 3.916835297276602*^9}},
 CellLabel->"In[36]:=",ExpressionUUID->"706a64df-ea3e-4cfc-a137-df4d4f8d2f01"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"RotMatrix", " ", "=", " ", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Cos", "[", "alpha", "]"}], ",", " ", 
          RowBox[{"-", 
           RowBox[{"Sin", "[", "alpha", "]"}]}], ",", " ", "0"}], "}"}], ",", 
        "\n", "\t\t\t ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Sin", "[", "alpha", "]"}], ",", " ", 
          RowBox[{"Cos", "[", "alpha", "]"}], ",", " ", "0"}], "}"}], ",", 
        "\n", "\t\t\t ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "}"}], ".", 
      "\n", "\t\t\t", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Cos", "[", "beta", "]"}], ",", " ", "0", ",", " ", 
          RowBox[{"Sin", "[", "beta", "]"}]}], "}"}], ",", "\n", "\t\t\t ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "1", ",", " ", "0"}], "}"}], ",", "\n", 
        "\t\t\t ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", 
           RowBox[{"Sin", "[", "beta", "]"}]}], ",", " ", "0", ",", " ", 
          RowBox[{"Cos", "[", "beta", "]"}]}], "}"}]}], "}"}], ".", "\n", 
      "\t\t\t", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Cos", "[", "gamma", "]"}], ",", " ", 
          RowBox[{"-", 
           RowBox[{"Sin", "[", "gamma", "]"}]}], ",", " ", "0"}], "}"}], ",", 
        "\n", "\t\t\t ", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Sin", "[", "gamma", "]"}], ",", " ", 
          RowBox[{"Cos", "[", "gamma", "]"}], ",", " ", "0"}], "}"}], ",", 
        "\n", "\t\t\t ", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "1"}], "}"}]}], "}"}]}]}], ";",
     "\n", 
    RowBox[{"piVec", " ", "=", " ", 
     RowBox[{"Join", "[", 
      RowBox[{
       RowBox[{"{", "Ei", "}"}], ",", " ", 
       RowBox[{"RotMatrix", ".", 
        RowBox[{"{", 
         RowBox[{"0", ",", " ", "0", ",", " ", "piNorm"}], "}"}]}]}], "]"}]}],
     ";", "\n", 
    RowBox[{"pjVec", " ", "=", " ", 
     RowBox[{"Join", "[", 
      RowBox[{
       RowBox[{"{", "Ej", "}"}], ",", " ", 
       RowBox[{"RotMatrix", ".", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"pjNorm", " ", "sTheta"}], ",", " ", "0", ",", " ", 
          RowBox[{"pjNorm", " ", "cTheta"}]}], "}"}]}]}], "]"}]}], ";", "\n", 
    
    RowBox[{"kiVec", " ", "=", " ", 
     RowBox[{
      FractionBox[
       RowBox[{"Sqrt", "[", "s", "]"}], "2"], 
      RowBox[{"{", 
       RowBox[{"1", ",", " ", "0", ",", " ", "0", ",", " ", "1"}], "}"}]}]}], 
    ";", "\n", 
    RowBox[{"kjVec", " ", "=", " ", 
     RowBox[{
      FractionBox[
       RowBox[{"Sqrt", "[", "s", "]"}], "2"], 
      RowBox[{"{", 
       RowBox[{"1", ",", " ", "0", ",", " ", "0", ",", 
        RowBox[{"-", "1"}]}], "}"}]}]}], ";", "\n", 
    RowBox[{"kVec", " ", "=", " ", 
     RowBox[{
     "kiVec", " ", "+", " ", "kjVec", " ", "-", " ", "piVec", " ", "-", " ", 
      "pjVec"}]}], ";"}], "*)"}], "\n", 
  RowBox[{
   RowBox[{
    RowBox[{"piVec", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Sqrt", "[", "Ei2", "]"}], ",", " ", "pix", ",", " ", "piy", 
       ",", " ", "piz"}], "}"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{"pjVec", " ", "=", " ", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Sqrt", "[", "Ej2", "]"}], ",", " ", "pjx", ",", " ", "pjy", 
       ",", " ", "pjz"}], "}"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{"kiVec", " ", "=", " ", 
     RowBox[{
      FractionBox[
       RowBox[{"Sqrt", "[", "s", "]"}], "2"], 
      RowBox[{"{", 
       RowBox[{"1", ",", " ", "0", ",", " ", "0", ",", " ", "1"}], "}"}]}]}], 
    ";"}], "\n", 
   RowBox[{
    RowBox[{"kjVec", " ", "=", " ", 
     RowBox[{
      FractionBox[
       RowBox[{"Sqrt", "[", "s", "]"}], "2"], 
      RowBox[{"{", 
       RowBox[{"1", ",", " ", "0", ",", " ", "0", ",", 
        RowBox[{"-", "1"}]}], "}"}]}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{"kVec", " ", "=", " ", 
     RowBox[{
     "kiVec", " ", "+", " ", "kjVec", " ", "-", " ", "piVec", " ", "-", " ", 
      "pjVec"}]}], ";"}]}]}]], "Code",
 CellChangeTimes->{{3.916819041415331*^9, 3.916819308493729*^9}, {
   3.916819348108971*^9, 3.916819460022771*^9}, {3.91681993476082*^9, 
   3.9168199348637247`*^9}, {3.91682108867452*^9, 3.916821102500331*^9}, {
   3.916821187547195*^9, 3.91682124596344*^9}, {3.9168222458738728`*^9, 
   3.916822255416787*^9}, {3.916822440060492*^9, 3.916822445532647*^9}, 
   3.916828086977501*^9, {3.916828537430235*^9, 3.916828590159482*^9}, {
   3.916829789700491*^9, 3.916829800062366*^9}},
 CellLabel->"In[57]:=",ExpressionUUID->"318db036-21b4-4e88-b813-cbcc26a87c28"],

Cell[BoxData[
 RowBox[{
  RowBox[{"InvMass", "[", 
   RowBox[{"mom1_", ",", " ", "mom2_"}], "]"}], " ", ":=", " ", 
  RowBox[{"Simplify", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"mom1", "[", 
        RowBox[{"[", "1", "]"}], "]"}], "+", 
       RowBox[{"mom2", "[", 
        RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", "2"}], " ", "-", " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"mom1", "[", 
        RowBox[{"[", "2", "]"}], "]"}], "+", 
       RowBox[{"mom2", "[", 
        RowBox[{"[", "2", "]"}], "]"}]}], ")"}], "^", "2"}], " ", "-", " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"mom1", "[", 
        RowBox[{"[", "3", "]"}], "]"}], "+", 
       RowBox[{"mom2", "[", 
        RowBox[{"[", "3", "]"}], "]"}]}], ")"}], "^", "2"}], " ", "-", " ", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{"mom1", "[", 
        RowBox[{"[", "4", "]"}], "]"}], "+", 
       RowBox[{"mom2", "[", 
        RowBox[{"[", "4", "]"}], "]"}]}], ")"}], "^", "2"}]}], 
   "]"}]}]], "Code",
 CellChangeTimes->{{3.9168194623658743`*^9, 3.916819561005041*^9}, {
  3.916819641037874*^9, 3.916819744756159*^9}, {3.916819793679677*^9, 
  3.916819910114089*^9}, {3.916819943648027*^9, 3.916820025361224*^9}, {
  3.916820430869668*^9, 3.916820436423786*^9}, {3.916820493141873*^9, 
  3.916820551101576*^9}, {3.916828692311821*^9, 3.916828713691289*^9}, {
  3.916835415853104*^9, 3.9168354529205637`*^9}},
 CellLabel->"In[62]:=",ExpressionUUID->"05c4e4e6-5b81-4f33-a5a7-5ce970176f05"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"m2Table", " ", "=", " ", 
     RowBox[{"{", "\n", "\t", 
      RowBox[{
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"1", ",", "2"}], "]"}], " ", "->", " ", "s"}], ",", "\n", 
       "\t", 
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"1", ",", "3"}], "]"}], " ", "->", " ", 
        RowBox[{
         FractionBox["1", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "s"}], "+", 
           RowBox[{"m2", "[", 
            RowBox[{"4", ",", "5"}], "]"}], "+", 
           SuperscriptBox[
            RowBox[{"MNeu", "[", "i", "]"}], "2"], "+", 
           RowBox[{
            RowBox[{"Cos", "[", "beta", "]"}], " ", 
            SqrtBox[
             RowBox[{
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{"s", "-", 
                 RowBox[{"m2", "[", 
                  RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
              RowBox[{"2", " ", 
               RowBox[{"(", 
                RowBox[{"s", "+", 
                 RowBox[{"m2", "[", 
                  RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
               SuperscriptBox[
                RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
              SuperscriptBox[
               RowBox[{"MNeu", "[", "i", "]"}], "4"]}]]}]}], ")"}]}]}], ",", 
       "\n", "\t", 
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"1", ",", "4"}], "]"}], " ", "->", " ", 
        RowBox[{
         RowBox[{"-", 
          FractionBox["1", 
           RowBox[{"4", " ", "s"}]]}], 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               RowBox[{"m2", "[", 
                RowBox[{"3", ",", "5"}], "]"}], "-", 
               SuperscriptBox[
                RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}], "2"]}], "+", 
           RowBox[{
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               RowBox[{"2", " ", 
                SuperscriptBox["s", "2"], " ", 
                RowBox[{"Cos", "[", "beta", "]"}]}], "-", 
               RowBox[{"2", " ", "s", " ", 
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                RowBox[{"m2", "[", 
                 RowBox[{"3", ",", "5"}], "]"}]}], "-", 
               RowBox[{"2", " ", "s", " ", 
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                RowBox[{"m2", "[", 
                 RowBox[{"4", ",", "5"}], "]"}]}], "+", 
               RowBox[{"s", " ", 
                SqrtBox[
                 RowBox[{
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                   SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "4"]}]]}], "-", 
               RowBox[{
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                RowBox[{"(", 
                 RowBox[{"s", "-", 
                  RowBox[{"m2", "[", 
                   RowBox[{"4", ",", "5"}], "]"}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                RowBox[{"(", 
                 RowBox[{"s", "-", 
                  RowBox[{"m2", "[", 
                   RowBox[{"3", ",", "5"}], "]"}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], "+", 
               RowBox[{
                RowBox[{"Cos", "[", "gamma", "]"}], " ", 
                SqrtBox[
                 RowBox[{
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                   SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "4"]}]], " ", 
                SqrtBox[
                 RowBox[{
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], " ", 
                   SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "j", "]"}], "4"]}]], " ", 
                SqrtBox[
                 RowBox[{"1", "-", 
                  FractionBox[
                   RowBox[{"4", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox["s", "2"]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "+", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}]}], ")"}],
                     "2"]}], 
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                    " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                    " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], ")"}], 
                    " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], 
                    ")"}]}]]}]], " ", 
                RowBox[{"Sin", "[", "beta", "]"}]}]}], ")"}], "2"], "/", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{"s", "-", 
                 RowBox[{"m2", "[", 
                  RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
              RowBox[{"2", " ", 
               RowBox[{"(", 
                RowBox[{"s", "+", 
                 RowBox[{"m2", "[", 
                  RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
               SuperscriptBox[
                RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
              SuperscriptBox[
               RowBox[{"MNeu", "[", "i", "]"}], "4"]}], ")"}]}], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              FractionBox[
               RowBox[{"s", " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"2", " ", "s"}], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "-", 
                  FractionBox[
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], "s"]}], 
                 ")"}], " ", 
                RowBox[{"Sin", "[", "alpha", "]"}], " ", 
                RowBox[{"Sin", "[", "beta", "]"}]}], 
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "i", "]"}], "4"]}]]], "-", 
              RowBox[{
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "j", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "j", "]"}], "4"]}]], " ", 
               SqrtBox[
                RowBox[{"1", "-", 
                 FractionBox[
                  RowBox[{"4", " ", 
                   SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox["s", "2"]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "+", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}]}], ")"}],
                     "2"]}], 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], 
                    ")"}]}]]}]], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Cos", "[", "beta", "]"}], " ", 
                  RowBox[{"Cos", "[", "gamma", "]"}], " ", 
                  RowBox[{"Sin", "[", "alpha", "]"}]}], "+", 
                 RowBox[{
                  RowBox[{"Cos", "[", "alpha", "]"}], " ", 
                  RowBox[{"Sin", "[", "gamma", "]"}]}]}], ")"}]}]}], ")"}], 
            "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              FractionBox[
               RowBox[{"s", " ", 
                RowBox[{"Cos", "[", "alpha", "]"}], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"2", " ", "s"}], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "-", 
                  FractionBox[
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], "s"]}], 
                 ")"}], " ", 
                RowBox[{"Sin", "[", "beta", "]"}]}], 
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "i", "]"}], "4"]}]]], "+", 
              RowBox[{
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "j", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "j", "]"}], "4"]}]], " ", 
               SqrtBox[
                RowBox[{"1", "-", 
                 FractionBox[
                  RowBox[{"4", " ", 
                   SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox["s", "2"]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "+", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}]}], ")"}],
                     "2"]}], 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], 
                    ")"}]}]]}]], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", 
                   RowBox[{"Cos", "[", "alpha", "]"}]}], " ", 
                  RowBox[{"Cos", "[", "beta", "]"}], " ", 
                  RowBox[{"Cos", "[", "gamma", "]"}]}], "+", 
                 RowBox[{
                  RowBox[{"Sin", "[", "alpha", "]"}], " ", 
                  RowBox[{"Sin", "[", "gamma", "]"}]}]}], ")"}]}]}], ")"}], 
            "2"]}], ")"}]}]}], ",", "\n", "\t", 
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"1", ",", "5"}], "]"}], " ", "->", " ", 
        RowBox[{
         RowBox[{"-", 
          FractionBox["1", 
           RowBox[{"4", " ", "s"}]]}], 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"s", "-", 
               RowBox[{"m2", "[", 
                RowBox[{"3", ",", "5"}], "]"}], "-", 
               RowBox[{"m2", "[", 
                RowBox[{"4", ",", "5"}], "]"}], "+", 
               SuperscriptBox[
                RowBox[{"MNeu", "[", "i", "]"}], "2"], "+", 
               SuperscriptBox[
                RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}], "2"]}], "+", 
           RowBox[{
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{"-", 
                 SuperscriptBox["s", "2"]}], " ", 
                RowBox[{"Cos", "[", "beta", "]"}]}], "+", 
               RowBox[{"2", " ", "s", " ", 
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                RowBox[{"m2", "[", 
                 RowBox[{"3", ",", "5"}], "]"}]}], "+", 
               RowBox[{
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                SuperscriptBox[
                 RowBox[{"m2", "[", 
                  RowBox[{"4", ",", "5"}], "]"}], "2"]}], "-", 
               RowBox[{"2", " ", "s", " ", 
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                SuperscriptBox[
                 RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "-", 
               RowBox[{"2", " ", 
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                RowBox[{"m2", "[", 
                 RowBox[{"4", ",", "5"}], "]"}], " ", 
                SuperscriptBox[
                 RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
               RowBox[{
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                SuperscriptBox[
                 RowBox[{"MNeu", "[", "i", "]"}], "4"]}], "+", 
               RowBox[{"s", " ", 
                SqrtBox[
                 RowBox[{
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                   SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "4"]}]]}], "+", 
               RowBox[{
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                RowBox[{"(", 
                 RowBox[{"s", "-", 
                  RowBox[{"m2", "[", 
                   RowBox[{"4", ",", "5"}], "]"}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                RowBox[{"(", 
                 RowBox[{"s", "-", 
                  RowBox[{"m2", "[", 
                   RowBox[{"3", ",", "5"}], "]"}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], "-", 
               RowBox[{
                RowBox[{"Cos", "[", "gamma", "]"}], " ", 
                SqrtBox[
                 RowBox[{
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                   SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "4"]}]], " ", 
                SqrtBox[
                 RowBox[{
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], " ", 
                   SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "j", "]"}], "4"]}]], " ", 
                SqrtBox[
                 RowBox[{"1", "-", 
                  FractionBox[
                   RowBox[{"4", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox["s", "2"]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "+", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}]}], ")"}],
                     "2"]}], 
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                    " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                    " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], ")"}], 
                    " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], 
                    ")"}]}]]}]], " ", 
                RowBox[{"Sin", "[", "beta", "]"}]}]}], ")"}], "2"], "/", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{"s", "-", 
                 RowBox[{"m2", "[", 
                  RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
              RowBox[{"2", " ", 
               RowBox[{"(", 
                RowBox[{"s", "+", 
                 RowBox[{"m2", "[", 
                  RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
               SuperscriptBox[
                RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
              SuperscriptBox[
               RowBox[{"MNeu", "[", "i", "]"}], "4"]}], ")"}]}], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "i", "]"}], "4"]}]], " ", 
               RowBox[{"Sin", "[", "alpha", "]"}], " ", 
               RowBox[{"Sin", "[", "beta", "]"}]}], "-", 
              FractionBox[
               RowBox[{"s", " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"2", " ", "s"}], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "-", 
                  FractionBox[
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], "s"]}], 
                 ")"}], " ", 
                RowBox[{"Sin", "[", "alpha", "]"}], " ", 
                RowBox[{"Sin", "[", "beta", "]"}]}], 
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "i", "]"}], "4"]}]]], "+", 
              RowBox[{
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "j", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "j", "]"}], "4"]}]], " ", 
               SqrtBox[
                RowBox[{"1", "-", 
                 FractionBox[
                  RowBox[{"4", " ", 
                   SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox["s", "2"]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "+", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}]}], ")"}],
                     "2"]}], 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], 
                    ")"}]}]]}]], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Cos", "[", "beta", "]"}], " ", 
                  RowBox[{"Cos", "[", "gamma", "]"}], " ", 
                  RowBox[{"Sin", "[", "alpha", "]"}]}], "+", 
                 RowBox[{
                  RowBox[{"Cos", "[", "alpha", "]"}], " ", 
                  RowBox[{"Sin", "[", "gamma", "]"}]}]}], ")"}]}]}], ")"}], 
            "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"Cos", "[", "alpha", "]"}], " ", 
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "i", "]"}], "4"]}]], " ", 
               RowBox[{"Sin", "[", "beta", "]"}]}], "-", 
              FractionBox[
               RowBox[{"s", " ", 
                RowBox[{"Cos", "[", "alpha", "]"}], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"2", " ", "s"}], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "-", 
                  FractionBox[
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], "s"]}], 
                 ")"}], " ", 
                RowBox[{"Sin", "[", "beta", "]"}]}], 
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "i", "]"}], "4"]}]]], "+", 
              RowBox[{
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "j", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "j", "]"}], "4"]}]], " ", 
               SqrtBox[
                RowBox[{"1", "-", 
                 FractionBox[
                  RowBox[{"4", " ", 
                   SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox["s", "2"]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "+", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}]}], ")"}],
                     "2"]}], 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], 
                    ")"}]}]]}]], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Cos", "[", "alpha", "]"}], " ", 
                  RowBox[{"Cos", "[", "beta", "]"}], " ", 
                  RowBox[{"Cos", "[", "gamma", "]"}]}], "-", 
                 RowBox[{
                  RowBox[{"Sin", "[", "alpha", "]"}], " ", 
                  RowBox[{"Sin", "[", "gamma", "]"}]}]}], ")"}]}]}], ")"}], 
            "2"]}], ")"}]}]}], ",", "\n", "\t", 
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"2", ",", "3"}], "]"}], " ", "->", " ", 
        RowBox[{
         FractionBox["1", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "s"}], "+", 
           RowBox[{"m2", "[", 
            RowBox[{"4", ",", "5"}], "]"}], "+", 
           SuperscriptBox[
            RowBox[{"MNeu", "[", "i", "]"}], "2"], "-", 
           RowBox[{
            RowBox[{"Cos", "[", "beta", "]"}], " ", 
            SqrtBox[
             RowBox[{
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{"s", "-", 
                 RowBox[{"m2", "[", 
                  RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
              RowBox[{"2", " ", 
               RowBox[{"(", 
                RowBox[{"s", "+", 
                 RowBox[{"m2", "[", 
                  RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
               SuperscriptBox[
                RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
              SuperscriptBox[
               RowBox[{"MNeu", "[", "i", "]"}], "4"]}]]}]}], ")"}]}]}], ",", 
       "\n", "\t", 
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"2", ",", "4"}], "]"}], " ", "->", " ", 
        RowBox[{
         RowBox[{"-", 
          FractionBox["1", 
           RowBox[{"4", " ", "s"}]]}], 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               RowBox[{"m2", "[", 
                RowBox[{"3", ",", "5"}], "]"}], "-", 
               SuperscriptBox[
                RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}], "2"]}], "+", 
           RowBox[{
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                RowBox[{"-", "2"}], " ", 
                SuperscriptBox["s", "2"], " ", 
                RowBox[{"Cos", "[", "beta", "]"}]}], "+", 
               RowBox[{"2", " ", "s", " ", 
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                RowBox[{"m2", "[", 
                 RowBox[{"3", ",", "5"}], "]"}]}], "+", 
               RowBox[{"2", " ", "s", " ", 
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                RowBox[{"m2", "[", 
                 RowBox[{"4", ",", "5"}], "]"}]}], "+", 
               RowBox[{"s", " ", 
                SqrtBox[
                 RowBox[{
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                   SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "4"]}]]}], "+", 
               RowBox[{
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                RowBox[{"(", 
                 RowBox[{"s", "-", 
                  RowBox[{"m2", "[", 
                   RowBox[{"4", ",", "5"}], "]"}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                RowBox[{"(", 
                 RowBox[{"s", "-", 
                  RowBox[{"m2", "[", 
                   RowBox[{"3", ",", "5"}], "]"}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], "-", 
               RowBox[{
                RowBox[{"Cos", "[", "gamma", "]"}], " ", 
                SqrtBox[
                 RowBox[{
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                   SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "4"]}]], " ", 
                SqrtBox[
                 RowBox[{
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], " ", 
                   SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "j", "]"}], "4"]}]], " ", 
                SqrtBox[
                 RowBox[{"1", "-", 
                  FractionBox[
                   RowBox[{"4", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox["s", "2"]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "+", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}]}], ")"}],
                     "2"]}], 
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                    " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                    " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], ")"}], 
                    " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], 
                    ")"}]}]]}]], " ", 
                RowBox[{"Sin", "[", "beta", "]"}]}]}], ")"}], "2"], "/", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{"s", "-", 
                 RowBox[{"m2", "[", 
                  RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
              RowBox[{"2", " ", 
               RowBox[{"(", 
                RowBox[{"s", "+", 
                 RowBox[{"m2", "[", 
                  RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
               SuperscriptBox[
                RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
              SuperscriptBox[
               RowBox[{"MNeu", "[", "i", "]"}], "4"]}], ")"}]}], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              FractionBox[
               RowBox[{"s", " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"2", " ", "s"}], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "-", 
                  FractionBox[
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], "s"]}], 
                 ")"}], " ", 
                RowBox[{"Sin", "[", "alpha", "]"}], " ", 
                RowBox[{"Sin", "[", "beta", "]"}]}], 
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "i", "]"}], "4"]}]]], "-", 
              RowBox[{
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "j", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "j", "]"}], "4"]}]], " ", 
               SqrtBox[
                RowBox[{"1", "-", 
                 FractionBox[
                  RowBox[{"4", " ", 
                   SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox["s", "2"]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "+", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}]}], ")"}],
                     "2"]}], 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], 
                    ")"}]}]]}]], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Cos", "[", "beta", "]"}], " ", 
                  RowBox[{"Cos", "[", "gamma", "]"}], " ", 
                  RowBox[{"Sin", "[", "alpha", "]"}]}], "+", 
                 RowBox[{
                  RowBox[{"Cos", "[", "alpha", "]"}], " ", 
                  RowBox[{"Sin", "[", "gamma", "]"}]}]}], ")"}]}]}], ")"}], 
            "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              FractionBox[
               RowBox[{"s", " ", 
                RowBox[{"Cos", "[", "alpha", "]"}], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"2", " ", "s"}], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "-", 
                  FractionBox[
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], "s"]}], 
                 ")"}], " ", 
                RowBox[{"Sin", "[", "beta", "]"}]}], 
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "i", "]"}], "4"]}]]], "+", 
              RowBox[{
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "j", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "j", "]"}], "4"]}]], " ", 
               SqrtBox[
                RowBox[{"1", "-", 
                 FractionBox[
                  RowBox[{"4", " ", 
                   SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox["s", "2"]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "+", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}]}], ")"}],
                     "2"]}], 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], 
                    ")"}]}]]}]], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"-", 
                   RowBox[{"Cos", "[", "alpha", "]"}]}], " ", 
                  RowBox[{"Cos", "[", "beta", "]"}], " ", 
                  RowBox[{"Cos", "[", "gamma", "]"}]}], "+", 
                 RowBox[{
                  RowBox[{"Sin", "[", "alpha", "]"}], " ", 
                  RowBox[{"Sin", "[", "gamma", "]"}]}]}], ")"}]}]}], ")"}], 
            "2"]}], ")"}]}]}], ",", "\n", "\t", 
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"2", ",", "5"}], "]"}], " ", "->", " ", 
        RowBox[{
         RowBox[{"-", 
          FractionBox["1", 
           RowBox[{"4", " ", "s"}]]}], 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", 
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{"s", "-", 
               RowBox[{"m2", "[", 
                RowBox[{"3", ",", "5"}], "]"}], "-", 
               RowBox[{"m2", "[", 
                RowBox[{"4", ",", "5"}], "]"}], "+", 
               SuperscriptBox[
                RowBox[{"MNeu", "[", "i", "]"}], "2"], "+", 
               SuperscriptBox[
                RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}], "2"]}], "+", 
           RowBox[{
            SuperscriptBox[
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                SuperscriptBox["s", "2"], " ", 
                RowBox[{"Cos", "[", "beta", "]"}]}], "-", 
               RowBox[{"2", " ", "s", " ", 
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                RowBox[{"m2", "[", 
                 RowBox[{"3", ",", "5"}], "]"}]}], "-", 
               RowBox[{
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                SuperscriptBox[
                 RowBox[{"m2", "[", 
                  RowBox[{"4", ",", "5"}], "]"}], "2"]}], "+", 
               RowBox[{"2", " ", "s", " ", 
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                SuperscriptBox[
                 RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
               RowBox[{"2", " ", 
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                RowBox[{"m2", "[", 
                 RowBox[{"4", ",", "5"}], "]"}], " ", 
                SuperscriptBox[
                 RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "-", 
               RowBox[{
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                SuperscriptBox[
                 RowBox[{"MNeu", "[", "i", "]"}], "4"]}], "+", 
               RowBox[{"s", " ", 
                SqrtBox[
                 RowBox[{
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                   SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "4"]}]]}], "-", 
               RowBox[{
                RowBox[{"Cos", "[", "beta", "]"}], " ", 
                RowBox[{"(", 
                 RowBox[{"s", "-", 
                  RowBox[{"m2", "[", 
                   RowBox[{"4", ",", "5"}], "]"}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                RowBox[{"(", 
                 RowBox[{"s", "-", 
                  RowBox[{"m2", "[", 
                   RowBox[{"3", ",", "5"}], "]"}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], "+", 
               RowBox[{
                RowBox[{"Cos", "[", "gamma", "]"}], " ", 
                SqrtBox[
                 RowBox[{
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                   SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "4"]}]], " ", 
                SqrtBox[
                 RowBox[{
                  SuperscriptBox[
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], " ", 
                   SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], "+", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "j", "]"}], "4"]}]], " ", 
                SqrtBox[
                 RowBox[{"1", "-", 
                  FractionBox[
                   RowBox[{"4", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox["s", "2"]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "+", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}]}], ")"}],
                     "2"]}], 
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                    " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                    " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], ")"}], 
                    " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], 
                    ")"}]}]]}]], " ", 
                RowBox[{"Sin", "[", "beta", "]"}]}]}], ")"}], "2"], "/", 
            RowBox[{"(", 
             RowBox[{
              SuperscriptBox[
               RowBox[{"(", 
                RowBox[{"s", "-", 
                 RowBox[{"m2", "[", 
                  RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
              RowBox[{"2", " ", 
               RowBox[{"(", 
                RowBox[{"s", "+", 
                 RowBox[{"m2", "[", 
                  RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
               SuperscriptBox[
                RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
              SuperscriptBox[
               RowBox[{"MNeu", "[", "i", "]"}], "4"]}], ")"}]}], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "i", "]"}], "4"]}]], " ", 
               RowBox[{"Sin", "[", "alpha", "]"}], " ", 
               RowBox[{"Sin", "[", "beta", "]"}]}], "-", 
              FractionBox[
               RowBox[{"s", " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"2", " ", "s"}], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "-", 
                  FractionBox[
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], "s"]}], 
                 ")"}], " ", 
                RowBox[{"Sin", "[", "alpha", "]"}], " ", 
                RowBox[{"Sin", "[", "beta", "]"}]}], 
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "i", "]"}], "4"]}]]], "+", 
              RowBox[{
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "j", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "j", "]"}], "4"]}]], " ", 
               SqrtBox[
                RowBox[{"1", "-", 
                 FractionBox[
                  RowBox[{"4", " ", 
                   SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox["s", "2"]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "+", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}]}], ")"}],
                     "2"]}], 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], 
                    ")"}]}]]}]], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Cos", "[", "beta", "]"}], " ", 
                  RowBox[{"Cos", "[", "gamma", "]"}], " ", 
                  RowBox[{"Sin", "[", "alpha", "]"}]}], "+", 
                 RowBox[{
                  RowBox[{"Cos", "[", "alpha", "]"}], " ", 
                  RowBox[{"Sin", "[", "gamma", "]"}]}]}], ")"}]}]}], ")"}], 
            "2"], "+", 
           SuperscriptBox[
            RowBox[{"(", 
             RowBox[{
              RowBox[{
               RowBox[{"Cos", "[", "alpha", "]"}], " ", 
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "i", "]"}], "4"]}]], " ", 
               RowBox[{"Sin", "[", "beta", "]"}]}], "-", 
              FractionBox[
               RowBox[{"s", " ", 
                RowBox[{"Cos", "[", "alpha", "]"}], " ", 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"2", " ", "s"}], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "-", 
                  RowBox[{"2", " ", 
                   RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "-", 
                  FractionBox[
                   RowBox[{
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}], "s"]}], 
                 ")"}], " ", 
                RowBox[{"Sin", "[", "beta", "]"}]}], 
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "i", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "i", "]"}], "4"]}]]], "+", 
              RowBox[{
               SqrtBox[
                RowBox[{
                 SuperscriptBox[
                  RowBox[{"(", 
                   RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], "2"], "-", 
                 RowBox[{"2", " ", 
                  RowBox[{"(", 
                   RowBox[{"s", "+", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], ")"}], " ", 
                  SuperscriptBox[
                   RowBox[{"MNeu", "[", "j", "]"}], "2"]}], "+", 
                 SuperscriptBox[
                  RowBox[{"MNeu", "[", "j", "]"}], "4"]}]], " ", 
               SqrtBox[
                RowBox[{"1", "-", 
                 FractionBox[
                  RowBox[{"4", " ", 
                   SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"-", 
                    SuperscriptBox["s", "2"]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]}], "+", 
                    RowBox[{"s", " ", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]}], "+", 
                    RowBox[{
                    FractionBox["1", "2"], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "i", "]"}], "2"]}], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{"s", "-", 
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}], "+", 
                    SuperscriptBox[
                    RowBox[{"MNeu", "[", "j", "]"}], "2"]}], ")"}]}]}], ")"}],
                     "2"]}], 
                  RowBox[{
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"4", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "i", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "-", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], ")"}], 
                   " ", 
                   RowBox[{"(", 
                    RowBox[{"s", "-", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    SqrtBox[
                    RowBox[{"m2", "[", 
                    RowBox[{"3", ",", "5"}], "]"}]], "+", 
                    RowBox[{"MNeu", "[", "j", "]"}]}], ")"}], "2"]}], 
                    ")"}]}]]}]], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Cos", "[", "alpha", "]"}], " ", 
                  RowBox[{"Cos", "[", "beta", "]"}], " ", 
                  RowBox[{"Cos", "[", "gamma", "]"}]}], "-", 
                 RowBox[{
                  RowBox[{"Sin", "[", "alpha", "]"}], " ", 
                  RowBox[{"Sin", "[", "gamma", "]"}]}]}], ")"}]}]}], ")"}], 
            "2"]}], ")"}]}]}], ",", "\n", "\t", 
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"3", ",", "4"}], "]"}], " ", "->", " ", 
        RowBox[{"s", "-", 
         RowBox[{"m2", "[", 
          RowBox[{"3", ",", "5"}], "]"}], "-", 
         RowBox[{"m2", "[", 
          RowBox[{"4", ",", "5"}], "]"}], "+", 
         SuperscriptBox[
          RowBox[{"MNeu", "[", "i", "]"}], "2"], "+", 
         SuperscriptBox[
          RowBox[{"MNeu", "[", "j", "]"}], "2"]}]}]}], "\n", "}"}]}], ";"}], 
   "*)"}], "\n", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"m2Table", " ", "=", " ", 
     RowBox[{"{", "\n", "\t", 
      RowBox[{
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"1", ",", "2"}], "]"}], " ", "->", " ", "s"}], ",", "\n", 
       "\t", 
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"3", ",", "4"}], "]"}], " ", "->", " ", "Q2"}], ",", "\n", 
       "\t", 
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"1", ",", "3"}], "]"}], " ", "->", " ", 
        RowBox[{"InvMass", "[", 
         RowBox[{"kiVec", ",", " ", 
          RowBox[{"-", "piVec"}]}], "]"}]}], ",", "\n", "\t", 
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"1", ",", "4"}], "]"}], " ", "->", " ", 
        RowBox[{"InvMass", "[", 
         RowBox[{"kiVec", ",", " ", 
          RowBox[{"-", "pjVec"}]}], "]"}]}], ",", "\n", "\t", 
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"1", ",", "5"}], "]"}], " ", "->", " ", 
        RowBox[{"InvMass", "[", 
         RowBox[{"kiVec", ",", " ", 
          RowBox[{"-", "kVec"}]}], "]"}]}], ",", "\n", "\t", 
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"2", ",", "3"}], "]"}], " ", "->", " ", 
        RowBox[{"InvMass", "[", 
         RowBox[{"kjVec", ",", " ", 
          RowBox[{"-", "piVec"}]}], "]"}]}], ",", "\n", "\t", 
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"2", ",", "4"}], "]"}], " ", "->", " ", 
        RowBox[{"InvMass", "[", 
         RowBox[{"kjVec", ",", " ", 
          RowBox[{"-", "pjVec"}]}], "]"}]}], ",", "\n", "\t", 
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"2", ",", "5"}], "]"}], " ", "->", " ", 
        RowBox[{"InvMass", "[", 
         RowBox[{"kjVec", ",", " ", 
          RowBox[{"-", "kVec"}]}], "]"}]}], ",", "\n", "\t", 
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"3", ",", "5"}], "]"}], " ", "->", " ", 
        RowBox[{"InvMass", "[", 
         RowBox[{
          RowBox[{"-", "piVec"}], ",", " ", 
          RowBox[{"-", "kVec"}]}], "]"}]}], ",", "\n", "\t", 
       RowBox[{
        RowBox[{"m2", "[", 
         RowBox[{"4", ",", "5"}], "]"}], " ", "->", " ", 
        RowBox[{"InvMass", "[", 
         RowBox[{
          RowBox[{"-", "pjVec"}], ",", " ", 
          RowBox[{"-", "kVec"}]}], "]"}]}]}], "\n", "}"}]}], ";"}], "*)"}], 
  "\n", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"Export", "[", 
     RowBox[{
      RowBox[{"FileNameJoin", "[", 
       RowBox[{"{", 
        RowBox[{"ResultsDir", ",", " ", "\"\<m2Table.m\>\""}], "}"}], "]"}], 
      ",", " ", "m2Table"}], "]"}], ";"}], "*)"}]}]], "Code",
 CellChangeTimes->{{3.916820599759099*^9, 3.916820859419887*^9}, 
   3.916820892010446*^9, 3.916822391535429*^9, {3.916822458753928*^9, 
   3.9168225573655157`*^9}, 3.916822608158924*^9, 3.916822638617434*^9, {
   3.916833955447988*^9, 3.916833965778514*^9}, 3.916836529027813*^9, {
   3.916836640840403*^9, 3.916836643294877*^9}, {3.916837074136937*^9, 
   3.916837084055232*^9}},
 CellLabel->"In[63]:=",ExpressionUUID->"9342f659-36fb-4f42-8a51-35228941435e"],

Cell[BoxData[
 RowBox[{
  RowBox[{"m2Table", " ", "=", " ", 
   RowBox[{"Import", "[", 
    RowBox[{"FileNameJoin", "[", 
     RowBox[{"{", 
      RowBox[{"ResultsDir", ",", "\"\<m2Table.m\>\""}], "}"}], "]"}], "]"}]}],
   ";"}]], "Code",
 CellChangeTimes->{{3.916836486154049*^9, 3.916836555011024*^9}, {
  3.916836639531756*^9, 3.9168366464300203`*^9}, {3.916837076549374*^9, 
  3.916837100365749*^9}},
 CellLabel->"In[64]:=",ExpressionUUID->"4d23889e-91dd-4ee2-9b38-dff168b41ad8"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"FreeProducts", "=", 
   RowBox[{"{", "\[IndentingNewLine]", "\t", 
    RowBox[{
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"1", ",", "2"}], "]"}], " ", "->", " ", "s"}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"1", ",", "3"}], "]"}], " ", "->", " ", "t1"}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"3", ",", "4"}], "]"}], " ", "->", " ", 
      RowBox[{"s", " ", "z"}]}], ",", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"3", ",", "5"}], "]"}], " ", "->", " ", "mi5"}], ",", 
     "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"1", ",", "5"}], "]"}], " ", "->", " ", 
      RowBox[{
       RowBox[{"-", "s"}], 
       RowBox[{"(", 
        RowBox[{"1", "-", "z"}], ")"}], 
       RowBox[{"(", 
        RowBox[{"1", "-", "y"}], ")"}]}]}], ",", "\[IndentingNewLine]", "\t", 
     
     RowBox[{
      RowBox[{"m2", "[", 
       RowBox[{"2", ",", "5"}], "]"}], " ", "->", " ", 
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
    "}"}]}], ";"}], "\n", 
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
   3.916814523543062*^9}, {3.916817483094153*^9, 3.916817484449607*^9}, {
   3.916820467825231*^9, 3.9168204793281517`*^9}, {3.916837294595553*^9, 
   3.916837296527857*^9}},
 CellLabel->"In[65]:=",ExpressionUUID->"35aa01f1-1a1b-41e6-a33b-aa73dc769642"],

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
 CellLabel->"In[69]:=",ExpressionUUID->"5b989c21-0c95-49d8-b6ef-69b591608a34"],

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
 CellChangeTimes->{3.9168408810933037`*^9},
 CellLabel->"In[86]:=",ExpressionUUID->"c3dce509-74c5-4f00-bc44-6f6374bb0cf3"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"IZZ", "[", "0", "]"}], " ", "=", " ", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"Mreal", "[", "4", "]"}], "[", 
         RowBox[{"[", "6", "]"}], "]"}], " ", 
        RowBox[{"ConjugateAmplitude", "[", 
         RowBox[{
          RowBox[{"Mreal", "[", "4", "]"}], "[", 
          RowBox[{"[", "6", "]"}], "]"}], "]"}]}], ")"}], " ", "//", " ", 
      "FermionSpinSum"}], " ", "//", " ", "DiracSimplify"}], " ", "//", " ", 
    RowBox[{
     RowBox[{"Collect2", "[", 
      RowBox[{"#", ",", " ", "PaVe"}], "]"}], "&"}]}]}], ";"}]], "Code",
 CellChangeTimes->{{3.916805475921185*^9, 3.916805554088578*^9}, {
   3.916806462409688*^9, 3.9168064656783857`*^9}, {3.916806663863346*^9, 
   3.916806664717434*^9}, {3.916806696874792*^9, 3.916806699605546*^9}, {
   3.916806752477086*^9, 3.916806754462858*^9}, {3.916806858195457*^9, 
   3.916806872124819*^9}, {3.916807197106811*^9, 3.916807199062026*^9}, {
   3.916807558708733*^9, 3.916807560575856*^9}, {3.916807593383336*^9, 
   3.916807603831612*^9}, {3.916807722381155*^9, 3.916807726965575*^9}, {
   3.916833988960045*^9, 3.916833991135154*^9}, {3.9168374413944473`*^9, 
   3.9168375443249807`*^9}, 3.916837590970921*^9, {3.9168404565814533`*^9, 
   3.916840469899356*^9}},
 CellLabel->"In[91]:=",ExpressionUUID->"d91bfe8b-08ec-45e2-9cbe-63d3b6ce3460"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"CommonPrefactor", " ", "=", " ", 
   RowBox[{"CA", " ", "CF", " ", 
    RowBox[{
     RowBox[{"SMP", "[", "\"\<g_s\>\"", "]"}], "^", "2"}], " ", 
    RowBox[{
     RowBox[{"SMP", "[", "\"\<g_W\>\"", "]"}], "^", "4"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"IZZ", "[", "1", "]"}], " ", "=", " ", 
  RowBox[{"CommonPrefactor", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"DoPolarizationSums", "[", 
        RowBox[{
         FractionBox[
          RowBox[{"IZZ", "[", "0", "]"}], "CommonPrefactor"], ",", " ", "k", 
         ",", " ", "0"}], "]"}], " ", "//", " ", "CalcColorFactor"}], " ", "//",
       " ", 
      RowBox[{
       RowBox[{"SelectFree2", "[", 
        RowBox[{"#", ",", " ", "DiracTrace"}], "]"}], "&"}]}], " ", "//", " ", 
     RowBox[{
      RowBox[{"ReplaceAll", "[", 
       RowBox[{"#", ",", " ", "m2Table"}], "]"}], "&"}]}], ")"}]}]}]}], "Code",\

 CellChangeTimes->{{3.916805556049891*^9, 3.916805603021847*^9}, {
  3.9168069101771584`*^9, 3.91680694881713*^9}, {3.916807413966323*^9, 
  3.9168074564859953`*^9}, {3.9168075047528954`*^9, 3.9168075223670483`*^9}, {
  3.9168075633912277`*^9, 3.916807566434174*^9}, {3.916807617602282*^9, 
  3.916807618601646*^9}, {3.916820917732563*^9, 3.9168209267365913`*^9}, {
  3.916840152057871*^9, 3.916840154774699*^9}, {3.9168405236775017`*^9, 
  3.916840537557105*^9}, {3.916840728546644*^9, 3.9168407309950113`*^9}},
 CellLabel->"In[92]:=",ExpressionUUID->"62b2418f-e070-498b-a5a8-779b7fcb83fa"],

Cell[BoxData[
 FormBox[
  TemplateBox[<|"shortenedBoxes" -> TagBox[
      RowBox[{
        SubscriptBox["C", "A"], " ", 
        SubscriptBox["C", "F"], " ", 
        SubsuperscriptBox["g", "s", "2"], " ", 
        SubsuperscriptBox["g", "W", "4"], " ", 
        RowBox[{"(", 
          RowBox[{
            FractionBox[
             RowBox[{"131072", " ", 
               SuperscriptBox["s", "2"], " ", 
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["Z", "s", "L"], ")"}]}, "Conjugate", 
                SyntaxForm -> SuperscriptBox], " ", 
               RowBox[{"(", 
                 RowBox[{
                   FractionBox["s", "2"], "+", 
                   RowBox[{
                    FractionBox["1", "32"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", 
                    FractionBox["1", "4"]}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], ")"}], 
                    "2"]}], "+", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], ")"}], 
                    "2"], "+", 
                    SuperscriptBox[
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], "2"], "+", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], ")"}], 
                    "2"]}], ")"}]}], "+", 
                   RowBox[{
                    FractionBox["1", "128"], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    SqrtBox["2"], " ", 
                    SqrtBox[
                    FractionBox[
                    RowBox[{
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"3", " ", 
                    SuperscriptBox["Q2", "2"]}], "+", 
                    TemplateBox[{"2"}, "OutputSizeLimit`Skeleton"], "+", 
                    RowBox[{
                    SuperscriptBox[
                    RowBox[{"(", 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], ")"}], 
                    "2"], " ", 
                    RowBox[{"cos", "(", 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], ")"}]}]}],
                     ")"}], " ", 
                    SubsuperscriptBox["m", "i", "4"]}], "-", 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], "+", 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"]}], 
                    RowBox[{
                    SuperscriptBox["Q2", "2"], " ", "s"}]]]}], "-", 
                    RowBox[{"4", " ", 
                    SqrtBox["s"]}]}], ")"}], "2"], "-", 
                    RowBox[{"4", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"2", " ", 
                    SqrtBox[
                    FractionBox[
                    RowBox[{
                    RowBox[{"(", 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], ")"}], 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"]}], "Q2"]], 
                    " ", 
                    RowBox[{"(", 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], ")"}], 
                    " ", 
                    RowBox[{"sin", "(", 
                    SubsuperscriptBox["\[Theta]", 1, "*"], ")"}]}], "+", 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"]}], ")"}], 
                    "2"]}], "-", 
                    RowBox[{"4", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{"2", " ", 
                    SqrtBox[
                    FractionBox[
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], "Q2"]], 
                    " ", 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], " ", 
                    RowBox[{"sin", "(", 
                    SubsuperscriptBox["\[Theta]", 1, "*"], ")"}]}], "+", 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"]}], ")"}], 
                    "2"]}], "-", 
                    RowBox[{"4", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    FractionBox[
                    RowBox[{
                    RowBox[{"cos", "(", 
                    SubscriptBox["\[Theta]", 3], ")"}], " ", 
                    RowBox[{"(", 
                    RowBox[{
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], "+", 
                    FractionBox[
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], 
                    SqrtBox["Q2"]]}], ")"}]}], 
                    SqrtBox[
                    RowBox[{"Q2", " ", "s"}]]], "-", 
                    RowBox[{"2", " ", 
                    RowBox[{"cos", "(", 
                    SubsuperscriptBox["\[Phi]", 1, "*"], ")"}], " ", 
                    SqrtBox[
                    FractionBox[
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"Q2", "-", 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"]}], ")"}], 
                    " ", 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"]}], "Q2"]], 
                    " ", 
                    RowBox[{"sin", "(", 
                    SubsuperscriptBox["\[Theta]", 1, "*"], ")"}], " ", 
                    RowBox[{"sin", "(", 
                    SubscriptBox["\[Theta]", 3], ")"}]}], "+", 
                    RowBox[{"2", " ", 
                    SqrtBox["s"]}]}], ")"}], "2"]}]}], ")"}]}]}], ")"}], " ", 
               
               SubsuperscriptBox["Z", "s", "L"], " ", 
               SubsuperscriptBox["m", "i", "4"]}], 
             RowBox[{
               RowBox[{"(", 
                 RowBox[{
                   SubscriptBox["\[CapitalDelta]", "Z"], "-", "Q2"}], ")"}], 
               " ", 
               RowBox[{"(", 
                 RowBox[{"Q2", "-", 
                   TemplateBox[{
                    RowBox[{"(", 
                    SubscriptBox["\[CapitalDelta]", "Z"], ")"}]}, "Conjugate",
                     SyntaxForm -> SuperscriptBox]}], ")"}], " ", 
               SuperscriptBox[
                RowBox[{"(", 
                  RowBox[{
                    RowBox[{
                    RowBox[{"-", "16"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"s", "+", 
                    RowBox[{
                    RowBox[{"(", 
                    RowBox[{"Q2", "-", "s"}], ")"}], " ", 
                    RowBox[{"cos", "(", 
                    SubscriptBox["\[Theta]", 3], ")"}]}]}], ")"}], "2"]}], 
                    "+", 
                    RowBox[{"s", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{
                    RowBox[{
                    RowBox[{"-", "4"}], " ", 
                    SqrtBox["s"]}], "+", 
                    RowBox[{
                    SqrtBox["2"], " ", 
                    SqrtBox[
                    FractionBox[
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"]]]}], "+", 
                    RowBox[{
                    SqrtBox["2"], " ", 
                    SqrtBox[
                    FractionBox[
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"]]]}]}], 
                    ")"}], "2"]}], "-", 
                    RowBox[{"16", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"Q2", "-", "s"}], ")"}], "2"], " ", 
                    RowBox[{
                    SuperscriptBox["cos", "2"], "(", 
                    SubscriptBox["\[Phi]", 3], ")"}], " ", 
                    RowBox[{
                    SuperscriptBox["sin", "2"], "(", 
                    SubscriptBox["\[Theta]", 3], ")"}]}], "-", 
                    RowBox[{"16", " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"Q2", "-", "s"}], ")"}], "2"], " ", 
                    RowBox[{
                    SuperscriptBox["sin", "2"], "(", 
                    SubscriptBox["\[Phi]", 3], ")"}], " ", 
                    RowBox[{
                    SuperscriptBox["sin", "2"], "(", 
                    SubscriptBox["\[Theta]", 3], ")"}]}]}], ")"}], "2"]}]], 
            "+", 
            TemplateBox[{"426"}, "OutputSizeLimit`Skeleton"], "+", 
            FractionBox[
             RowBox[{"65536", " ", "D", " ", 
               SuperscriptBox["Q2", "2"], " ", 
               SuperscriptBox["s", "3"], " ", 
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["Z", "s", "R"], ")"}]}, "Conjugate", 
                SyntaxForm -> SuperscriptBox], " ", 
               SubsuperscriptBox["Z", "s", "R"]}], 
             RowBox[{
               RowBox[{"(", 
                 RowBox[{
                   SubscriptBox["\[CapitalDelta]", "Z"], "-", "Q2"}], ")"}], 
               " ", 
               RowBox[{"(", 
                 RowBox[{"Q2", "-", 
                   TemplateBox[{
                    RowBox[{"(", 
                    SubscriptBox["\[CapitalDelta]", "Z"], ")"}]}, "Conjugate",
                     SyntaxForm -> SuperscriptBox]}], ")"}], " ", 
               SuperscriptBox[
                RowBox[{"(", 
                  TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"], ")"}], 
                "2"]}]], "-", 
            FractionBox[
             RowBox[{"98304", " ", 
               SuperscriptBox["Q2", "2"], " ", 
               SuperscriptBox["s", "3"], " ", 
               TemplateBox[{
                 RowBox[{"(", 
                   SubsuperscriptBox["Z", "s", "R"], ")"}]}, "Conjugate", 
                SyntaxForm -> SuperscriptBox], " ", 
               SubsuperscriptBox["Z", "s", "R"]}], 
             RowBox[{
               RowBox[{"(", 
                 RowBox[{
                   SubscriptBox["\[CapitalDelta]", "Z"], "-", "Q2"}], ")"}], 
               " ", 
               RowBox[{"(", 
                 RowBox[{"Q2", "-", 
                   TemplateBox[{
                    RowBox[{"(", 
                    SubscriptBox["\[CapitalDelta]", "Z"], ")"}]}, "Conjugate",
                     SyntaxForm -> SuperscriptBox]}], ")"}], " ", 
               SuperscriptBox[
                RowBox[{"(", 
                  RowBox[{
                    RowBox[{
                    RowBox[{"-", "16"}], " ", 
                    SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"s", "+", 
                    TemplateBox[{"1"}, "OutputSizeLimit`Skeleton"]}], ")"}], 
                    "2"]}], "+", 
                    TemplateBox[{"5"}, "OutputSizeLimit`Skeleton"]}], ")"}], 
                "2"]}]]}], ")"}]}], Short[#, 8]& ], "line" -> 93, "sessionID" -> 
    33592187607998569804, "byteCount" -> 16024496, "size" -> 8, "stored" -> 
    False, "expr" -> Missing["NotAvailable", "NewSessionID"], "wrap" -> 
    OutputSizeLimit`Defer, "version" -> 1|>,
   "OutputSizeLimitTemplate"], TraditionalForm]], "Output",
 CellChangeTimes->{3.916825380957274*^9, 3.916829793797372*^9, 
  3.9168344029829817`*^9, 3.916836567610223*^9, 3.9168372306345587`*^9, 
  3.916837551859736*^9, 3.9168401470619087`*^9, 3.9168401826108*^9, 
  3.916840544394781*^9, 3.916840739904896*^9, 3.916840998939144*^9},
 CellLabel->"Out[93]=",ExpressionUUID->"eb634f62-d04c-4afd-95ef-4f5a939d40d3"]
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
  RowBox[{"(*", 
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
         RowBox[{"D", "-", "4"}], "4"], ")"}]}]}]}], ";"}], "*)"}], "\n", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"PhaseSpaceFactor", " ", "=", " ", 
     FractionBox["1", 
      RowBox[{"8", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"2", "Pi"}], ")"}], "^", "9"}], " ", "4", "s", " ", 
       RowBox[{"Sin", "[", "beta", "]"}]}]]}], ";"}], "*)"}], "\n", 
  RowBox[{
   RowBox[{"PhaseSpaceFactor", " ", "=", " ", 
    FractionBox[
     RowBox[{"pStarNorm", " ", "kNorm", " ", 
      RowBox[{"Sin", "[", "theta1", "]"}], " ", 
      RowBox[{"Sin", "[", "theta3", "]"}]}], 
     RowBox[{
      RowBox[{
       RowBox[{"(", 
        RowBox[{"2", "Pi"}], ")"}], "^", "9"}], " ", "8", " ", 
      RowBox[{"Sqrt", "[", "s", "]"}]}]]}], ";"}]}]], "Code",
 CellChangeTimes->{{3.916808481461474*^9, 3.9168087123097477`*^9}, {
  3.916814538345107*^9, 3.916814544891986*^9}, {3.916821985630516*^9, 
  3.916822013385984*^9}, {3.916822986244543*^9, 3.916822989392318*^9}, {
  3.9168411879722157`*^9, 3.916841271075733*^9}, {3.91684132147917*^9, 
  3.916841329578322*^9}, {3.916845830408988*^9, 3.916845832995401*^9}},
 CellLabel->
  "In[105]:=",ExpressionUUID->"225d2c57-4447-4cf0-90cd-7fb953878001"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"integrand", " ", "=", " ", 
    RowBox[{"FCReplaceD", "[", 
     RowBox[{
      RowBox[{"PhaseSpaceFactor", " ", 
       RowBox[{"IZZ", "[", "1", "]"}]}], ",", " ", 
      RowBox[{"D", " ", "->", " ", 
       RowBox[{"4", " ", "-", " ", 
        RowBox[{"2", "Epsilon"}]}]}]}], "]"}]}], ";"}], "\n", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"Integrate", "[", 
     RowBox[{"integrand", ",", " ", 
      RowBox[{"{", 
       RowBox[{"y", ",", " ", "0", ",", " ", "1"}], "}"}], ",", " ", 
      RowBox[{"Assumptions", " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Epsilon", " ", "\[Element]", " ", "Reals"}], ",", " ", 
         RowBox[{"Epsilon", " ", "<", " ", "0"}]}], "}"}]}]}], "]"}], ";", 
    "\n", 
    RowBox[{"Integrate", "[", 
     RowBox[{"%", ",", " ", 
      RowBox[{"{", 
       RowBox[{"cTheta", ",", " ", 
        RowBox[{"-", "1"}], ",", " ", "1"}], "}"}], ",", " ", 
      RowBox[{"Assumptions", " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Epsilon", " ", "\[Element]", " ", "Reals"}], ",", " ", 
         RowBox[{"Epsilon", " ", "<", " ", "0"}]}], "}"}]}]}], "]"}]}], 
   "*)"}], "\n", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"Integrate", "[", 
     RowBox[{"integrand", ",", " ", 
      RowBox[{"{", 
       RowBox[{"beta", ",", " ", "0", ",", " ", "Pi"}], "}"}], ",", " ", 
      RowBox[{"Assumptions", " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Epsilon", " ", "\[Element]", " ", "Reals"}], ",", " ", 
         RowBox[{"Epsilon", " ", "<", " ", "0"}]}], "}"}]}]}], "]"}], ";", 
    "\n", 
    RowBox[{"Integrate", "[", 
     RowBox[{"%", ",", " ", 
      RowBox[{"{", 
       RowBox[{"alpha", ",", " ", "0", ",", " ", 
        RowBox[{"2", "Pi"}]}], "}"}], ",", " ", 
      RowBox[{"Assumptions", " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Epsilon", " ", "\[Element]", " ", "Reals"}], ",", " ", 
         RowBox[{"Epsilon", " ", "<", " ", "0"}]}], "}"}]}]}], "]"}], ";", 
    "\n", 
    RowBox[{"Integrate", "[", 
     RowBox[{"%", ",", " ", 
      RowBox[{"{", 
       RowBox[{"gamma", ",", " ", "0", ",", " ", 
        RowBox[{"2", "Pi"}]}], "}"}], ",", " ", 
      RowBox[{"Assumptions", " ", "->", " ", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Epsilon", " ", "\[Element]", " ", "Reals"}], ",", " ", 
         RowBox[{"Epsilon", " ", "<", " ", "0"}]}], "}"}]}]}], "]"}]}], 
   "*)"}]}], "\n", 
 RowBox[{"Integrate", "[", 
  RowBox[{"integrand", ",", " ", 
   RowBox[{"{", 
    RowBox[{"phi3", ",", " ", "0", ",", " ", 
     RowBox[{"2", "Pi"}]}], "}"}], ",", " ", 
   RowBox[{"Assumptions", " ", "->", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Epsilon", " ", "\[Element]", " ", "Reals"}], ",", " ", 
      RowBox[{"Epsilon", " ", "<", " ", "0"}]}], "}"}]}]}], "]"}], "\n", 
 RowBox[{"Integrate", "[", 
  RowBox[{"%", ",", " ", 
   RowBox[{"{", 
    RowBox[{"theta3", ",", " ", "0", ",", " ", "Pi"}], "}"}], ",", " ", 
   RowBox[{"Assumptions", " ", "->", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Epsilon", " ", "\[Element]", " ", "Reals"}], ",", " ", 
      RowBox[{"Epsilon", " ", "<", " ", "0"}]}], "}"}]}]}], "]"}], "\n", 
 RowBox[{"Integrate", "[", 
  RowBox[{"%", ",", " ", 
   RowBox[{"{", 
    RowBox[{"phi3", ",", " ", "0", ",", " ", 
     RowBox[{"2", "Pi"}]}], "}"}], ",", " ", 
   RowBox[{"Assumptions", " ", "->", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Epsilon", " ", "\[Element]", " ", "Reals"}], ",", " ", 
      RowBox[{"Epsilon", " ", "<", " ", "0"}]}], "}"}]}]}], "]"}], "\n", 
 RowBox[{"Integrate", "[", 
  RowBox[{"%", ",", " ", 
   RowBox[{"{", 
    RowBox[{"theta1", ",", " ", "0", ",", " ", "Pi"}], "}"}], ",", " ", 
   RowBox[{"Assumptions", " ", "->", " ", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Epsilon", " ", "\[Element]", " ", "Reals"}], ",", " ", 
      RowBox[{"Epsilon", " ", "<", " ", "0"}]}], "}"}]}]}], "]"}]}], "Code",
 CellChangeTimes->{{3.9168087153107023`*^9, 3.9168088139199123`*^9}, {
   3.9168088894789467`*^9, 3.916808891542346*^9}, {3.916813564209375*^9, 
   3.916813606505884*^9}, {3.916822032599392*^9, 3.91682207121072*^9}, {
   3.916822119379188*^9, 3.916822145419241*^9}, 3.9168222199349213`*^9, {
   3.91682299871174*^9, 3.916823005848461*^9}, {3.916841286099556*^9, 
   3.916841295956202*^9}, {3.916841336629195*^9, 3.916841447335952*^9}, {
   3.916843156473234*^9, 3.9168431591319323`*^9}, {3.916846321015491*^9, 
   3.916846345189835*^9}},
 CellLabel->
  "In[111]:=",ExpressionUUID->"709ba678-2607-4bc1-9d85-e903138ccafa"],

Cell[BoxData[
 FormBox["$Aborted", TraditionalForm]], "Output",
 CellChangeTimes->{3.916808524588956*^9, 3.916808694410507*^9, 
  3.916808796581696*^9, 3.9168088344731627`*^9, 3.916809143173197*^9, 
  3.9168136868467216`*^9, 3.916814451220508*^9, 3.9168146234037857`*^9, 
  3.916814746301547*^9, 3.916821149382415*^9, 3.916821280741453*^9, 
  3.9168214643432093`*^9, 3.916821673922076*^9, 3.9168217849088306`*^9, 
  3.9168221981027107`*^9, 3.916829794250971*^9, 3.9168344034005632`*^9, 
  3.916837231003495*^9, 3.916841421054517*^9, 3.916843182720098*^9, 
  3.916846348680603*^9},
 CellLabel->
  "Out[107]=",ExpressionUUID->"afc46f1a-1b1b-4a4b-903c-8de64d123339"],

Cell[BoxData[
 FormBox[
  RowBox[{"4", " ", 
   SuperscriptBox["\[Pi]", "3"], " ", "$Aborted"}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.916808524588956*^9, 3.916808694410507*^9, 
  3.916808796581696*^9, 3.9168088344731627`*^9, 3.916809143173197*^9, 
  3.9168136868467216`*^9, 3.916814451220508*^9, 3.9168146234037857`*^9, 
  3.916814746301547*^9, 3.916821149382415*^9, 3.916821280741453*^9, 
  3.9168214643432093`*^9, 3.916821673922076*^9, 3.9168217849088306`*^9, 
  3.9168221981027107`*^9, 3.916829794250971*^9, 3.9168344034005632`*^9, 
  3.916837231003495*^9, 3.916841421054517*^9, 3.916843182720098*^9, 
  3.916846348681234*^9},
 CellLabel->
  "Out[110]=",ExpressionUUID->"1d026aac-b830-44f9-8ff9-59638a600e6e"]
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
Cell[3139, 99, 2695, 70, 30, "Print",ExpressionUUID->"df8dc331-253c-4e7f-b91b-8b3330c9eabe"],
Cell[5837, 171, 1880, 51, 30, "Print",ExpressionUUID->"d133a29e-5383-42a9-8c0a-0c3b7b017f68"],
Cell[7720, 224, 413, 9, 26, "Print",ExpressionUUID->"297cfcb2-37fb-4627-9366-23cd97448ab6"],
Cell[8136, 235, 459, 11, 26, "Print",ExpressionUUID->"b89e784a-e3c3-4377-8ebe-5b8f922cb620"],
Cell[8598, 248, 2065, 58, 30, "Print",ExpressionUUID->"7dbcac2e-b220-49c8-8fc8-8399a92c1021"],
Cell[10666, 308, 351, 8, 26, "Print",ExpressionUUID->"9757690f-46d0-4e5f-85b9-32fe20eadc76"],
Cell[11020, 318, 389, 9, 26, "Print",ExpressionUUID->"ef7dbd8c-4c54-4b8a-a971-d1f85c4c9836"],
Cell[11412, 329, 242, 5, 24, "Print",ExpressionUUID->"0486a933-33e3-4138-9d71-326c5895235c"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[11703, 340, 631, 15, 110, "Code",ExpressionUUID->"79542c29-c800-446c-b962-dcfade1ea3a5"],
Cell[12337, 357, 1192, 25, 28, "Message",ExpressionUUID->"b48ccea2-880f-44d1-b131-ccc822c17ce9"],
Cell[13532, 384, 1207, 25, 28, "Message",ExpressionUUID->"cbc26713-f017-4c54-90c2-44539c9f5d6c"]
}, Open  ]],
Cell[14754, 412, 515, 11, 53, "Code",ExpressionUUID->"06eef17f-1a78-4d35-a1b1-fa25c75250dd"]
}, Open  ]],
Cell[CellGroupData[{
Cell[15306, 428, 263, 5, 67, "Section",ExpressionUUID->"f64fe3b0-c12e-45c9-a04b-e465429a8448"],
Cell[15572, 435, 201, 4, 35, "Text",ExpressionUUID->"73fd6221-bbd0-4cc0-a8e2-a1e4fcdbf19a"],
Cell[CellGroupData[{
Cell[15798, 443, 2645, 64, 215, "Code",ExpressionUUID->"a50f6b18-15d8-4de3-8484-ef7ce85d54bd"],
Cell[18446, 509, 72478, 1519, 264, "Print",ExpressionUUID->"05f2f7b5-c726-41db-a8f7-0ceee2268053"]
}, Open  ]],
Cell[90939, 2031, 1920, 40, 267, "Code",ExpressionUUID->"fa8d476b-88fc-4594-9a53-437111c2ef1a"],
Cell[92862, 2073, 1863, 47, 149, "Code",ExpressionUUID->"73ea9ab9-c2a1-4986-8aca-523fdc169d49"],
Cell[94728, 2122, 626, 17, 35, "Text",ExpressionUUID->"c50a9c08-6e34-4676-82f3-23beaeda93f0"]
}, Open  ]],
Cell[CellGroupData[{
Cell[95391, 2144, 164, 3, 67, "Section",ExpressionUUID->"08534849-2cc1-438f-8002-4d597e1535af"],
Cell[95558, 2149, 3394, 75, 565, "Code",ExpressionUUID->"0352de4f-bcb3-4703-ad1e-00ea1a81af09"],
Cell[98955, 2226, 2612, 72, 211, "Code",ExpressionUUID->"c886a8bd-7a89-4d95-acbe-0f67c137e64f",
 InitializationCell->True],
Cell[101570, 2300, 1116, 25, 93, "Code",ExpressionUUID->"3bd9d9ca-aad9-43cb-b9f4-d3cc56847ff6"],
Cell[102689, 2327, 259, 4, 35, "Text",ExpressionUUID->"7cbd3e4d-dd56-43e5-8480-ccccf35bf26c"],
Cell[102951, 2333, 10693, 299, 721, "Code",ExpressionUUID->"706a64df-ea3e-4cfc-a137-df4d4f8d2f01"],
Cell[113647, 2634, 4780, 130, 464, "Code",ExpressionUUID->"318db036-21b4-4e88-b813-cbcc26a87c28"],
Cell[118430, 2766, 1561, 41, 53, "Code",ExpressionUUID->"05c4e4e6-5b81-4f33-a5a7-5ce970176f05"],
Cell[119994, 2809, 89900, 2182, 735, "Code",ExpressionUUID->"9342f659-36fb-4f42-8a51-35228941435e"],
Cell[209897, 4993, 483, 11, 51, "Code",ExpressionUUID->"4d23889e-91dd-4ee2-9b38-dff168b41ad8"],
Cell[210383, 5006, 12604, 362, 787, "Code",ExpressionUUID->"35aa01f1-1a1b-41e6-a33b-aa73dc769642"],
Cell[222990, 5370, 734, 16, 89, "Code",ExpressionUUID->"5b989c21-0c95-49d8-b6ef-69b591608a34"],
Cell[223727, 5388, 887, 24, 72, "Code",ExpressionUUID->"c3dce509-74c5-4f00-bc44-6f6374bb0cf3"],
Cell[224617, 5414, 1418, 30, 53, "Code",ExpressionUUID->"d91bfe8b-08ec-45e2-9cbe-63d3b6ce3460"],
Cell[CellGroupData[{
Cell[226060, 5448, 1532, 35, 85, "Code",ExpressionUUID->"62b2418f-e070-498b-a5a8-779b7fcb83fa"],
Cell[227595, 5485, 12153, 276, 310, "Output",ExpressionUUID->"eb634f62-d04c-4afd-95ef-4f5a939d40d3"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[239797, 5767, 164, 3, 67, "Section",ExpressionUUID->"e5af8a7e-b017-48bc-a6b7-7205d53824d3"],
Cell[239964, 5772, 3181, 96, 171, "Code",ExpressionUUID->"225d2c57-4447-4cf0-90cd-7fb953878001"],
Cell[CellGroupData[{
Cell[243170, 5872, 4624, 115, 242, "Code",ExpressionUUID->"709ba678-2607-4bc1-9d85-e903138ccafa"],
Cell[247797, 5989, 663, 11, 32, "Output",ExpressionUUID->"afc46f1a-1b1b-4a4b-903c-8de64d123339"],
Cell[248463, 6002, 728, 14, 32, "Output",ExpressionUUID->"1d026aac-b830-44f9-8ff9-59638a600e6e"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

