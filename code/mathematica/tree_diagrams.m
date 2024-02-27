(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 14.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    382518,      10927]
NotebookOptionsPosition[    369906,      10709]
NotebookOutlinePosition[    370339,      10726]
CellTagsIndexPosition[    370296,      10723]
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
 CellChangeTimes->{{3.917849082772398*^9, 3.917849097116674*^9}, 
   3.917849200066637*^9, 3.917849445640594*^9, 3.9179345895281687`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"0d3460b3-0fd1-4266-809b-fe25d284603f"],

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
   3.917849200066637*^9, 3.917849445640594*^9, 3.917934589528866*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"12ed1ca3-802d-464b-be83-bc59676e6f04"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynCalc in your research, please evaluate \
FeynCalcHowToCite[] to learn how to cite this software.\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{{3.917849082772398*^9, 3.917849097116674*^9}, 
   3.917849200066637*^9, 3.917849445640594*^9, 3.9179345895295897`*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"9768251c-bd0a-4015-83ab-e644f320cdad"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"Please keep in mind that the proper academic attribution of \
our work is crucial to ensure the future development of this package!\"\>", 
   "Text",
   StripOnInput->False,
   FontSlant->Italic], TraditionalForm]], "Print",
 CellChangeTimes->{{3.917849082772398*^9, 3.917849097116674*^9}, 
   3.917849200066637*^9, 3.917849445640594*^9, 3.917934589529923*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"e8bc2f1a-f3f9-45a0-8e27-765aa931f617"],

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
   3.917849200066637*^9, 3.917849445640594*^9, 3.917934589566627*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"7bac0ebf-5b07-4de3-b7ac-1eb134ee5702"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\"If you use FeynArts in your research, please cite\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{{3.917849082772398*^9, 3.917849097116674*^9}, 
   3.917849200066637*^9, 3.917849445640594*^9, 3.917934589567148*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"d1642f66-b879-417e-943b-07dd079cc552"],

Cell[BoxData[
 FormBox[
  StyleBox["\<\" \[Bullet] T. Hahn, Comput. Phys. Commun., 140, 418-431, \
2001, arXiv:hep-ph/0012260\"\>", "Text",
   StripOnInput->False], TraditionalForm]], "Print",
 CellChangeTimes->{{3.917849082772398*^9, 3.917849097116674*^9}, 
   3.917849200066637*^9, 3.917849445640594*^9, 3.917934589567449*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"756c3256-8fc0-41b4-926b-454d85e573b6"],

Cell["Successfully patched FeynArts.", "Print",
 CellChangeTimes->{{3.917849082772398*^9, 3.917849097116674*^9}, 
   3.917849200066637*^9, 3.917849445640594*^9, 3.917934589672093*^9},
 CellLabel->
  "During evaluation of \
In[1]:=",ExpressionUUID->"0f8d2a7d-21ed-4bf5-bea2-08f2bef1be1f"]
}, Open  ]]
}, Open  ]],

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
 InitializationCell->False,
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
 CellChangeTimes->{{3.917849083152671*^9, 3.917849098331381*^9}, 
   3.917849201609568*^9, 3.9178494472422943`*^9, 3.917934590333005*^9},
 CellLabel->
  "During evaluation of \
In[14]:=",ExpressionUUID->"604ceda6-0174-4d91-9f8f-49741c95e7f7"]
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
 CellLabel->"In[16]:=",ExpressionUUID->"f495b4e2-7d04-4f0e-81e0-efbc9664e28e"],

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
 InitializationCell->False,
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
 CellLabel->"In[27]:=",ExpressionUUID->"f02d3fee-ced5-4933-85ed-21304906c288"]
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
 InitializationCell->False,
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
 InitializationCell->False,
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
 InitializationCell->False,
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
        SuperscriptBox["u", "2"]}], ")"}]}], "+", 
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
           "Conjugate"], ")"}], "2"], "-", 
        SuperscriptBox[
         RowBox[{"(", 
          SubsuperscriptBox["Z", "s", "L"], ")"}], "2"], "-", 
        SuperscriptBox[
         RowBox[{"(", 
          SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}]}]}], ")"}]}],
   TraditionalForm]], "Output",
 CellChangeTimes->{{3.9178490872859*^9, 3.917849102603391*^9}, 
   3.9178492057223186`*^9, 3.917849451444145*^9, 3.917934594450756*^9},
 CellLabel->"Out[47]=",ExpressionUUID->"07490565-4b20-4e69-81c2-141fb4eb813f"]
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
             RowBox[{"Expand", "[", "#1", "]"}], "//.", "SuperChargeRules"}], 
            "]"}], "&"}], ")"}]}], "\[IndentingNewLine]", "\t", "]"}], "&"}], 
      ")"}]}], "\[IndentingNewLine]", "]"}]}], ";"}]}], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.914482400793735*^9, 3.914482456226188*^9}, {
   3.914483159715218*^9, 3.91448317182053*^9}, {3.914483217014831*^9, 
   3.91448321701833*^9}, {3.914484848873647*^9, 3.91448486664227*^9}, 
   3.9177618248692627`*^9},
 CellLabel->"In[48]:=",ExpressionUUID->"213691d6-4bdd-4d4f-8a41-03c7acde6dac"],

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
 InitializationCell->False,
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
 CellChangeTimes->{{3.917849087410779*^9, 3.917849102715042*^9}, 
   3.9178492058367157`*^9, 3.91784945158249*^9, 3.917934594569837*^9},
 CellLabel->"Out[50]=",ExpressionUUID->"7a32502a-2319-483c-ac81-2eb3f96041ae"]
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
 CellLabel->"In[51]:=",ExpressionUUID->"023e21e7-f598-4047-a226-039e1e3bfc04"],

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
 CellChangeTimes->{{3.917849087481048*^9, 3.917849102787835*^9}, 
   3.917849205908598*^9, 3.917849451671725*^9, 3.917934594642124*^9},
 CellLabel->"Out[52]=",ExpressionUUID->"0ff44a47-39ef-411b-9cc3-09f0442f76db"]
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
            RowBox[{"MSf", "[", "args", "]"}], "^", "2"}]}], ",", " ", 
          RowBox[{"DZ", "->", 
           RowBox[{
            RowBox[{"SMP", "[", "\"\<m_Z\>\"", "]"}], "^", "2"}]}], ",", " ", 
          
          RowBox[{
           RowBox[{"DSfC", "[", "args__", "]"}], "->", 
           RowBox[{
            RowBox[{"MSf", "[", "args", "]"}], "^", "2"}]}]}], "}"}]}], "]"}],
       ",", "\[IndentingNewLine]", "\t", 
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
  3.9174103977147083`*^9, 3.917410420430912*^9}},
 CellLabel->"In[54]:=",ExpressionUUID->"2fc2d697-9537-40fc-91a2-909f061b1cb0"],

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
        RowBox[{
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
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubsuperscriptBox["m", "Z", "2"]}]], " ", 
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
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
           SubsuperscriptBox["m", "Z", "2"]}]], " ", 
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
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
             "Conjugate"]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubsuperscriptBox["m", "Z", "2"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
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
           SubsuperscriptBox["m", "Z", "2"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
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
             "Abs"], "2"]}], ")"}]}]}], ")"}]}], "+", 
     RowBox[{"s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
      RowBox[{"(", 
       RowBox[{
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
             "Conjugate"]}], "-", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"L", "L"}]], " ", 
            SubsuperscriptBox["Q", "B", 
             RowBox[{"L", "L"}]]}], "-", 
           RowBox[{
            SubsuperscriptBox["Q", "A", 
             RowBox[{"R", "R"}]], " ", 
            SubsuperscriptBox["Q", "B", 
             RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubsuperscriptBox["m", "Z", "2"]}]], " ", 
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
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
          RowBox[{"s", "-", 
           SubsuperscriptBox["m", "Z", "2"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
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
          RowBox[{"s", "-", 
           SubsuperscriptBox["m", "Z", "2"]}]], " ", 
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
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
           SubsuperscriptBox["m", "Z", "2"]}]], " ", 
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["m", 
            SubscriptBox[
             OverscriptBox["q", "~"], "A"], "2"]}]], " ", 
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
         SuperscriptBox[
          RowBox[{"(", 
           FractionBox["1", 
            RowBox[{"s", "-", 
             SubsuperscriptBox["m", "Z", "2"]}]], ")"}], "2"], " ", 
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
            RowBox[{"R", "L"}]]}], ")"}]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849087571072*^9, 3.917849102880729*^9}, 
   3.917849205996833*^9, 3.917849451768791*^9, 3.917934594738974*^9},
 CellLabel->"Out[55]=",ExpressionUUID->"b9a52b31-bbaa-4a27-b804-1a992f5c2333"]
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
 InitializationCell->False,
 CellChangeTimes->{{3.9164850929771347`*^9, 3.916485303318562*^9}, {
  3.916485360092846*^9, 3.916485397220058*^9}},
 CellLabel->"In[56]:=",ExpressionUUID->"337361d3-737c-405b-9f1f-de884e445225"],

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
           SubsuperscriptBox["Z", "s", "R"], ")"}], "2"]}], ")"}]}]}], 
     ")"}]}], 
   RowBox[{
    SuperscriptBox["s", "2"], " ", 
    SubscriptBox["C", "A"]}]], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849087588623*^9, 3.917849102898104*^9}, 
   3.917849206014545*^9, 3.917849451910785*^9, 3.917934594757008*^9},
 CellLabel->"Out[56]=",ExpressionUUID->"96b22638-fa05-480d-831a-abc46d2017b2"],

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
      FractionBox["1", 
       RowBox[{"u", "-", 
        SubsuperscriptBox["\[CapitalDelta]", "B", "*"]}]], " ", 
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
          "Conjugate"]}]}], ")"}]}], "+", 
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
         SubsuperscriptBox["m", "j", "2"]}]}], ")"}], " ", 
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
          "Conjugate"]}]}], ")"}]}], "-", 
     RowBox[{"s", " ", 
      SubscriptBox["m", "i"], " ", 
      SubscriptBox["m", "j"], " ", 
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
          RowBox[{"L", "L"}]], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"L", "L"}]]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", "R"}]], " ", 
         SubsuperscriptBox["Q", "B", 
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
        RowBox[{"t", " ", "u"}], "-", 
        RowBox[{
         SubsuperscriptBox["m", "i", "2"], " ", 
         SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849087588623*^9, 3.917849102898104*^9}, 
   3.917849206014545*^9, 3.917849451910785*^9, 3.917934594794044*^9},
 CellLabel->"Out[57]=",ExpressionUUID->"b81ab8ab-8d77-4ca8-8da5-8202acd4d2fd"],

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
            "Conjugate"]}]]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubscriptBox["\[CapitalDelta]", "Z"]}]]}]}], ")"}]}], "-", 
     RowBox[{"s", " ", 
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
         SubsuperscriptBox["Z", "s", "R"]}]}], ")"}], " ", 
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
            "Conjugate"]}]]}], "+", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "*"]}]], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubscriptBox["\[CapitalDelta]", "Z"]}]]}]}], ")"}]}], "+", 
     RowBox[{
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
         FractionBox["1", 
          RowBox[{"u", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         RowBox[{"(", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{"u", "-", 
           SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]]}], "+", 
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
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubscriptBox["\[CapitalDelta]", "Z"]}]]}]}], ")"}]}], "+", 
     RowBox[{
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
         FractionBox["1", 
          RowBox[{"t", "-", 
           SubscriptBox["\[CapitalDelta]", "A"]}]], " ", 
         RowBox[{"(", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["m", "i", "2"]}], ")"}], " ", 
         RowBox[{"(", 
          RowBox[{"t", "-", 
           SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]]}], "+", 
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
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubscriptBox["\[CapitalDelta]", "Z"]}]]}]}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849087588623*^9, 3.917849102898104*^9}, 
   3.917849206014545*^9, 3.917849451910785*^9, 3.917934594830613*^9},
 CellLabel->"Out[58]=",ExpressionUUID->"daad1fa5-85a7-4501-841a-f703a86e4f12"]
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
           RowBox[{"MNeu", "[", "i", "]"}], "2"], "+", 
          SuperscriptBox[
           RowBox[{"MNeu", "[", "j", "]"}], "2"], "-", "s", "-", "t"}]}], 
        "}"}]}], "//", "Expand"}], ",", "\[IndentingNewLine]", "\t", 
     RowBox[{
      RowBox[{"Den", "[", "args1__", "]"}], 
      RowBox[{"Den", "[", "args2__", "]"}]}], ",", "\[IndentingNewLine]", 
     "\t", "Simplify"}], "\[IndentingNewLine]", "]"}]}], ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.914483136160664*^9, 3.914483152235705*^9}, 
   3.9144832170235043`*^9, {3.914484848882606*^9, 3.914484866650016*^9}},
 CellLabel->"In[59]:=",ExpressionUUID->"397c4165-053c-4434-b0b3-1dc17d856bb6"],

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
 CellLabel->"In[60]:=",ExpressionUUID->"bf9d0b1a-94a4-4976-8666-fab9971a81ed"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "994", ")"}],
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
     RowBox[{"KK", "(", "1001", ")"}],
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
     RowBox[{"KK", "(", "993", ")"}],
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
     RowBox[{"KK", "(", "992", ")"}],
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
     RowBox[{"KK", "(", "997", ")"}],
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
     RowBox[{"KK", "(", "1000", ")"}],
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
     RowBox[{"KK", "(", "1002", ")"}],
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
     RowBox[{"KK", "(", "990", ")"}],
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
     RowBox[{"KK", "(", "995", ")"}],
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
     RowBox[{"KK", "(", "999", ")"}],
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
     RowBox[{"KK", "(", "1003", ")"}],
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
     RowBox[{"KK", "(", "998", ")"}],
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
     RowBox[{"KK", "(", "971", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
      "Conjugate"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "985", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "988", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "976", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
      "Conjugate"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1005", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
      "Conjugate"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1007", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "980", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1006", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1008", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "982", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "987", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "989", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "964", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "0"]}], "+", 
   RowBox[{"2", " ", 
    TagBox[
     RowBox[{"KK", "(", "967", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "1"]}], "+", 
   RowBox[{"2", " ", 
    TagBox[
     RowBox[{"KK", "(", "968", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "2"]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849087921958*^9, 3.917849103258693*^9}, 
   3.917849206377264*^9, 3.917849452166193*^9, 3.9179345950861588`*^9},
 CellLabel->"Out[60]=",ExpressionUUID->"73463d4c-4748-45c8-a1ee-1abf67f8177e"]
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
 CellLabel->"In[62]:=",ExpressionUUID->"c3aa978d-ccf6-4348-9406-9146fd7afbd9"],

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
 CellChangeTimes->{{3.917849088129176*^9, 3.917849103456495*^9}, 
   3.917849206576509*^9, 3.91784945236657*^9, 3.917934595284071*^9},
 CellLabel->"Out[62]=",ExpressionUUID->"626b65fb-4fc8-4510-bdc3-79d501a239a9"]
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
 CellLabel->"In[63]:=",ExpressionUUID->"9185987c-c286-49a9-8e2c-abd135038383"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1057", ")"}],
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
     RowBox[{"KK", "(", "1060", ")"}],
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
     RowBox[{"KK", "(", "1071", ")"}],
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
     RowBox[{"KK", "(", "1077", ")"}],
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
     RowBox[{"KK", "(", "1079", ")"}],
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
     RowBox[{"KK", "(", "1085", ")"}],
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
     RowBox[{"KK", "(", "1090", ")"}],
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
    TagBox[
     RowBox[{"KK", "(", "1049", ")"}],
     HoldForm], " ", "p"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849088298848*^9, 3.917849103619972*^9}, 
   3.917849206739781*^9, 3.917849452529353*^9, 3.917934595458016*^9},
 CellLabel->"Out[63]=",ExpressionUUID->"35ec6adc-e395-4f77-8257-5ff3af0cc0f8"]
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
 CellLabel->"In[64]:=",ExpressionUUID->"84fccf6c-3854-43dd-a418-82c19a1daeb5"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1093", ")"}],
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
     RowBox[{"KK", "(", "1100", ")"}],
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
     RowBox[{"KK", "(", "1071", ")"}],
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
     RowBox[{"KK", "(", "1106", ")"}],
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
     RowBox[{"KK", "(", "1049", ")"}],
     HoldForm], " ", "p"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849088406578*^9, 3.917849103724911*^9}, 
   3.917849206844336*^9, 3.917849452633369*^9, 3.917934595563115*^9},
 CellLabel->"Out[65]=",ExpressionUUID->"f79ed1c0-c8bc-4b72-a1d6-ecc7ad471e31"]
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
 InitializationCell->False,
 CellChangeTimes->{{3.9144838213496*^9, 3.914483885654633*^9}, {
  3.91448485493497*^9, 3.914484866666297*^9}, {3.914485039896947*^9, 
  3.914485043477662*^9}, {3.915436999009956*^9, 3.915437004584453*^9}, {
  3.915438963031749*^9, 3.915439030506975*^9}, {3.915439092878931*^9, 
  3.915439100922414*^9}, {3.915439253598371*^9, 3.915439258760292*^9}, {
  3.915439367650406*^9, 3.915439456619598*^9}, {3.916456669528307*^9, 
  3.91645666959293*^9}},
 CellLabel->"In[66]:=",ExpressionUUID->"a9c2b922-9999-415d-a638-4a936907ff55"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1126", ")"}],
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
     RowBox[{"KK", "(", "1109", ")"}],
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
     RowBox[{"KK", "(", "1119", ")"}],
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
     RowBox[{"KK", "(", "1140", ")"}],
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
     RowBox[{"KK", "(", "1049", ")"}],
     HoldForm], " ", "p"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849088534584*^9, 3.917849103850478*^9}, 
   3.9178492069691253`*^9, 3.91784945275839*^9, 3.917934595688435*^9},
 CellLabel->"Out[67]=",ExpressionUUID->"11cb3bf6-f1bd-4127-bfce-d11e891420f1"],

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
 CellChangeTimes->{{3.917849088575029*^9, 3.917849103889083*^9}, 
   3.917849207007772*^9, 3.917849452796176*^9, 3.91793459572784*^9},
 CellLabel->
  "During evaluation of \
In[66]:=",ExpressionUUID->"926e8b5d-82f6-483e-9659-d7d0f9737c5c"]
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
 CellLabel->"In[69]:=",ExpressionUUID->"a8cd05b4-5749-429f-8a09-09100b2d1a24"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"2", " ", 
    RowBox[{"Re", "(", 
     RowBox[{
      TagBox[
       RowBox[{"KK", "(", "1071", ")"}],
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
       RowBox[{"KK", "(", "1106", ")"}],
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
    TagBox[
     RowBox[{"KK", "(", "1049", ")"}],
     HoldForm], " ", "p"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849088591772*^9, 3.917849103908987*^9}, 
   3.917849207023387*^9, 3.917849452827918*^9, 3.917934595751986*^9},
 CellLabel->"Out[69]=",ExpressionUUID->"432e2ae2-0a2b-493f-920e-cad31e06b901"]
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
 CellLabel->"In[70]:=",ExpressionUUID->"cfcb6d40-48a0-4a93-b161-1b5e167c7546"],

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
       "Complexes"}]}], "\n", "}"}]}], ";"}], "\[IndentingNewLine]"}], "\n", 
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
   3.916465771051126*^9}, 3.916465804487742*^9},
 CellLabel->"In[72]:=",ExpressionUUID->"cf05098a-c654-4851-9767-0d7f27e0f162"],

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
   3.917848009224709*^9, 3.917848021573044*^9}, 3.9178490669846783`*^9},
 CellLabel->"In[75]:=",ExpressionUUID->"cc067aff-7f1b-4d41-9980-5e2652cb2b8b"],

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
     FractionBox[
      RowBox[{"2", " ", 
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
         SubsuperscriptBox["m", "i", "4"], "+", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"s", "-", 
            RowBox[{"2", " ", 
             SubsuperscriptBox["m", "j", "2"]}]}], ")"}], " ", 
          SubsuperscriptBox["m", "i", "2"]}], "+", 
         SubsuperscriptBox["m", "j", "4"], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["s", "2"]}], "+", 
         RowBox[{"s", " ", 
          SubsuperscriptBox["m", "j", "2"]}]}], ")"}]}], 
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
     RowBox[{"2", " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "R"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{"(", 
       RowBox[{
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["Q", "B", 
             RowBox[{"R", "L"}]], ")"}]},
         "Conjugate"], "+", 
        SubsuperscriptBox["Q", "B", 
         RowBox[{"L", "R"}]]}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      TemplateBox[{
        RowBox[{"(", 
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "L"}]], ")"}]},
       "Conjugate"], " ", 
      RowBox[{"(", 
       RowBox[{
        TemplateBox[{
          RowBox[{"(", 
            SubsuperscriptBox["Q", "B", 
             RowBox[{"L", "R"}]], ")"}]},
         "Conjugate"], "+", 
        SubsuperscriptBox["Q", "B", 
         RowBox[{"R", "L"}]]}], ")"}]}], "+", 
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
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", "L"}]], " ", 
         SubsuperscriptBox["Q", "B", 
          RowBox[{"L", "R"}]]}], "+", 
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
          RowBox[{"R", "R"}]]}]}], ")"}]}], "+", 
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
          RowBox[{"2", " ", 
           SqrtBox["s"], " ", 
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
          RowBox[{"p", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "i", "2"]}], "-", 
             SubsuperscriptBox["m", "j", "2"], "+", "s", "+", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
              "Conjugate"], "+", 
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}]}]], "-", 
         
         FractionBox[
          RowBox[{"2", " ", 
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
             SubsuperscriptBox["m", "i", "2"], "-", 
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"], "-", 
             SubsuperscriptBox["m", "j", "2"]}], ")"}]}], 
          RowBox[{"p", " ", 
           SqrtBox["s"], " ", 
           RowBox[{"(", 
            RowBox[{"s", "-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
              "Conjugate"]}], ")"}]}]], "+", 
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
          RowBox[{"p", " ", 
           SqrtBox["s"], " ", 
           RowBox[{"(", 
            RowBox[{
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
              "Conjugate"], "-", 
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}]}]], "+", 
         
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
          RowBox[{"p", " ", 
           SqrtBox["s"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "i", "2"]}], "-", 
             SubsuperscriptBox["m", "j", "2"], "+", "s", "+", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
              "Conjugate"], "+", 
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}]}]], "+", 
         
         FractionBox[
          RowBox[{"2", " ", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "t"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "i", "2"]}], "-", 
             SubsuperscriptBox["m", "j", "2"], "+", 
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}], " ", 
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
              SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], 
          RowBox[{"p", " ", 
           SqrtBox["s"], " ", 
           RowBox[{"(", 
            RowBox[{"s", "-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
              "Conjugate"]}], ")"}]}]], "-", 
         FractionBox[
          RowBox[{"2", " ", 
           SqrtBox["s"], " ", 
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
              SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], 
          RowBox[{"p", " ", 
           RowBox[{"(", 
            RowBox[{"s", "-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
              "Conjugate"]}], ")"}]}]], "+", 
         FractionBox[
          RowBox[{"2", " ", 
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
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SubscriptBox["m", "i"], " ", 
                 SubscriptBox["m", "j"], " ", 
                 SubsuperscriptBox["Z", "s", "L"]}], "-", 
                RowBox[{"s", " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Z", "s", "L"], ")"}]},
                  "Conjugate"]}]}], ")"}]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SubscriptBox["m", "i"], " ", 
                 SubscriptBox["m", "j"], " ", 
                 SubsuperscriptBox["Z", "s", "R"]}], "-", 
                RowBox[{"s", " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Z", "s", "R"], ")"}]},
                  "Conjugate"]}]}], ")"}]}]}], ")"}]}], 
          RowBox[{"p", " ", 
           SqrtBox["s"], " ", 
           RowBox[{"(", 
            RowBox[{"s", "-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
              "Conjugate"]}], ")"}]}]]}], ")"}]}], ")"}], "+", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        FractionBox[
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "+", "s", "-", 
          RowBox[{"2", " ", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
            "Conjugate"]}]}], 
         RowBox[{
          SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}]], "-", 
        FractionBox[
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "+", "s", "-", 
          RowBox[{"2", " ", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}]}], 
         RowBox[{"s", "-", 
          TemplateBox[{
            RowBox[{"(", 
              SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
           "Conjugate"]}]]}], ")"}], " ", 
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
         SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], "-", 
     FractionBox[
      RowBox[{"2", " ", "s", " ", 
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
       RowBox[{"(", 
        RowBox[{"s", "-", 
         SubscriptBox["\[CapitalDelta]", "Z"]}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{"s", "-", 
         TemplateBox[{
           RowBox[{"(", 
             SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
          "Conjugate"]}], ")"}]}]]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849089140643*^9, 3.917849104439649*^9}, 
   3.917849207552886*^9, 3.917849453346538*^9, 3.9179345963033247`*^9},
 CellLabel->"Out[76]=",ExpressionUUID->"d1818861-72dc-496b-8828-cdef7a85fc9c"]
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
   3.9176866195125027`*^9, 3.917686624053633*^9}},
 CellLabel->"In[78]:=",ExpressionUUID->"119efc26-3621-4842-a9da-e214aeb673c1"],

Cell[BoxData[
 FormBox[
  FractionBox[
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
        RowBox[{
         FractionBox[
          RowBox[{"2", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              RowBox[{
               SubsuperscriptBox["m", "i", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"2", " ", 
                  SubsuperscriptBox["m", "j", "2"]}], "+", "s"}], ")"}]}]}], 
             "+", 
             SubsuperscriptBox["m", "i", "4"], "-", 
             RowBox[{"s", " ", 
              SubsuperscriptBox["m", "j", "2"]}], "+", 
             SubsuperscriptBox["m", "j", "4"]}], ")"}]}], 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{"s", "-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
              "Conjugate"]}], ")"}]}]], "-", 
         FractionBox[
          RowBox[{"16", " ", 
           SuperscriptBox["p", "2"], " ", "s"}], 
          RowBox[{"3", " ", 
           RowBox[{"(", 
            RowBox[{
             SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{"s", "-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
              "Conjugate"]}], ")"}]}]]}], ")"}]}], "-", 
      FractionBox[
       RowBox[{"4", " ", "s", " ", 
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
    SuperscriptBox["s", 
     RowBox[{"3", "/", "2"}]], " ", 
    SubscriptBox["C", "A"]}]], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917849089176304*^9, 3.917849104473507*^9}, 
   3.917849207588268*^9, 3.917849453380934*^9, 3.917934596356243*^9},
 CellLabel->"Out[78]=",ExpressionUUID->"2da6665d-8d5d-4f74-ae8c-6c0ab3ac402f"]
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
             RowBox[{"Zs", "[", "__", "]"}], " ", "->", " ", "0"}]}], " ", "//",
            "\n", "\t", 
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
   3.917934637169525*^9, 3.917934726980419*^9}},
 CellLabel->
  "In[100]:=",ExpressionUUID->"0bc5fa96-2082-46ed-95ec-6a841ef74b66"],

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
          "Conjugate"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          FractionBox[
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              SubsuperscriptBox["m", "i", "2"], "-", 
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"], "-", 
              SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
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
                  SqrtBox["s"]}], "-", "s"}], ")"}]}]}], ")"}]}], 
           RowBox[{"p", " ", 
            SqrtBox["s"], " ", 
            RowBox[{"(", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
               "Conjugate"], "-", 
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}]}]], 
          ")"}]}], "+", "2"}], ")"}]}], "+", 
     RowBox[{"4", " ", 
      RowBox[{"Re", "(", 
       FractionBox[
        RowBox[{
         SqrtBox["s"], " ", 
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
             RowBox[{"R", "R"}]]}]}], ")"}], " ", 
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
               SqrtBox["s"]}], "-", "s"}], ")"}]}]}], ")"}]}], 
        RowBox[{"p", " ", 
         RowBox[{"(", 
          RowBox[{
           SubsuperscriptBox["\[CapitalDelta]", "A", "t"], "+", 
           TemplateBox[{
             RowBox[{"(", 
               SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
            "Conjugate"], "-", 
           SubsuperscriptBox["m", "i", "2"], "-", 
           SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}]], ")"}]}], 
     "+", 
     RowBox[{"2", " ", 
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
        RowBox[{"2", " ", 
         RowBox[{"Re", "(", 
          FractionBox[
           RowBox[{
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
             ")"}], " ", 
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
                  SqrtBox["s"]}], "-", "s"}], ")"}]}]}], ")"}]}], 
           RowBox[{"p", " ", 
            SqrtBox["s"], " ", 
            RowBox[{"(", 
             RowBox[{
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"], "+", 
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["\[CapitalDelta]", "B", "t"], ")"}]},
               "Conjugate"], "-", 
              SubsuperscriptBox["m", "i", "2"], "-", 
              SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}]], ")"}]}],
         "+", "2"}], ")"}]}]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.9178491045250883`*^9, 3.917849207640424*^9, 3.917849453433605*^9, 
   3.9179345964089737`*^9, {3.91793468406785*^9, 3.917934713659691*^9}, 
   3.917934746702561*^9},
 CellLabel->
  "Out[100]=",ExpressionUUID->"c03d9019-3e84-4ea2-841e-468bce312819"]
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
  RowBox[{
   RowBox[{"XSecPrefactor", " ", "*", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"%", " ", "//", "\n", "\t", "Expand"}], " ", "//", "\n", "\t",
         "CollectEffCharges"}], " ", "//", "\n", "\t", 
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
     ")"}]}], " ", "//", " ", "FRH"}]}]}], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.914746916474818*^9, 3.914746993910339*^9}, {
   3.914747150386434*^9, 3.914747296680312*^9}, {3.91474734559478*^9, 
   3.914747404170086*^9}, {3.915097189384449*^9, 3.915097216575899*^9}, {
   3.9151113380826*^9, 3.915111348164782*^9}, {3.915192300819622*^9, 
   3.915192305413743*^9}, {3.915469185529615*^9, 3.915469214119226*^9}, {
   3.915469650483439*^9, 3.915469692923979*^9}, {3.916457924892618*^9, 
   3.916457926667034*^9}, {3.916466625456874*^9, 3.916466627190196*^9}, 
   3.916466775671522*^9, {3.917686532100993*^9, 3.917686546868423*^9}},
 CellLabel->"In[80]:=",ExpressionUUID->"32a9a206-aabb-41a4-9652-02a7dc12aae2"],

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
         RowBox[{"-", 
          FractionBox[
           RowBox[{"2", " ", 
            RowBox[{"(", 
             RowBox[{
              SubsuperscriptBox["m", "i", "2"], "-", 
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], ")"}], " ", 
            RowBox[{"(", 
             RowBox[{
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"], "-", 
              SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
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
                "Conjugate"]}]}], ")"}]}], 
           RowBox[{"p", " ", 
            SqrtBox["s"], " ", 
            RowBox[{"(", 
             RowBox[{"s", "-", 
              TemplateBox[{
                RowBox[{"(", 
                  SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
               "Conjugate"]}], ")"}]}]]}], "+", 
         FractionBox[
          RowBox[{"2", " ", 
           SubsuperscriptBox["\[CapitalDelta]", "A", "t"], " ", 
           RowBox[{"(", 
            RowBox[{
             SubsuperscriptBox["\[CapitalDelta]", "A", "t"], "-", 
             SubsuperscriptBox["m", "i", "2"], "-", 
             SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
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
               "Conjugate"]}]}], ")"}]}], 
          RowBox[{"p", " ", 
           SqrtBox["s"], " ", 
           RowBox[{"(", 
            RowBox[{"s", "-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
              "Conjugate"]}], ")"}]}]], "-", 
         FractionBox[
          RowBox[{"2", " ", 
           SqrtBox["s"], " ", 
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
              SubsuperscriptBox["Z", "s", "R"]}]}], ")"}]}], 
          RowBox[{"p", " ", 
           RowBox[{"(", 
            RowBox[{"s", "-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
              "Conjugate"]}], ")"}]}]], "+", 
         FractionBox[
          RowBox[{"2", " ", 
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
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SubscriptBox["m", "i"], " ", 
                 SubscriptBox["m", "j"], " ", 
                 SubsuperscriptBox["Z", "s", "L"]}], "-", 
                RowBox[{"s", " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Z", "s", "L"], ")"}]},
                  "Conjugate"]}]}], ")"}]}], "+", 
             RowBox[{
              TemplateBox[{
                RowBox[{"(", 
                  SubsuperscriptBox["Q", "A", 
                   RowBox[{"R", "R"}]], ")"}]},
               "Conjugate"], " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 SubscriptBox["m", "i"], " ", 
                 SubscriptBox["m", "j"], " ", 
                 SubsuperscriptBox["Z", "s", "R"]}], "-", 
                RowBox[{"s", " ", 
                 TemplateBox[{
                   RowBox[{"(", 
                    SubsuperscriptBox["Z", "s", "R"], ")"}]},
                  "Conjugate"]}]}], ")"}]}]}], ")"}]}], 
          RowBox[{"p", " ", 
           SqrtBox["s"], " ", 
           RowBox[{"(", 
            RowBox[{"s", "-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
              "Conjugate"]}], ")"}]}]]}], ")"}]}], ")"}], "+", 
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
          "Conjugate"]}]}], ")"}]}], "-", 
     FractionBox[
      RowBox[{"2", " ", 
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
            RowBox[{
             RowBox[{"-", "2"}], " ", 
             TemplateBox[{
               RowBox[{"(", 
                 SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
              "Conjugate"]}], "+", 
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}], "+", 
         RowBox[{"2", " ", "s", " ", 
          TemplateBox[{
            RowBox[{"(", 
              SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
           "Conjugate"]}], "+", 
         RowBox[{"2", " ", "s", " ", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], "-", 
         RowBox[{"2", " ", 
          SubscriptBox["\[CapitalDelta]", "Z"], " ", 
          SubsuperscriptBox["\[CapitalDelta]", "A", "t"]}], "-", 
         RowBox[{"2", " ", "s", " ", 
          SubsuperscriptBox["m", "i", "2"]}], "+", 
         RowBox[{
          SubsuperscriptBox["m", "i", "2"], " ", 
          SubscriptBox["\[CapitalDelta]", "Z"]}], "-", 
         RowBox[{"2", " ", "s", " ", 
          SubsuperscriptBox["m", "j", "2"]}], "+", 
         RowBox[{
          SubsuperscriptBox["m", "j", "2"], " ", 
          SubscriptBox["\[CapitalDelta]", "Z"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["s", "2"]}], "+", 
         RowBox[{"s", " ", 
          SubscriptBox["\[CapitalDelta]", "Z"]}]}], ")"}]}], 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", 
       RowBox[{"(", 
        RowBox[{"s", "-", 
         TemplateBox[{
           RowBox[{"(", 
             SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
          "Conjugate"]}], ")"}]}]]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.917849104592415*^9, 3.917849207708568*^9, 
  3.917849453502214*^9, 3.917934596480356*^9},
 CellLabel->"Out[81]=",ExpressionUUID->"02e917e8-afff-4f1a-93a2-23b1d375d429"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Integrated Cross-Section non-BW", "Section",
 CellChangeTimes->{{3.914483093739622*^9, 3.91448311179278*^9}, {
  3.917066404003852*^9, 3.9170664079557943`*^9}, {3.917848665722604*^9, 
  3.917848669003229*^9}},ExpressionUUID->"79a2df7e-bcdb-4ad8-873d-\
f1d952727da1"],

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
 CellLabel->"In[82]:=",ExpressionUUID->"b85ecd96-a867-4a93-9044-1c051b6dc59b"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "994", ")"}],
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
     RowBox[{"KK", "(", "1001", ")"}],
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
     RowBox[{"KK", "(", "993", ")"}],
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
     RowBox[{"KK", "(", "992", ")"}],
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
     RowBox[{"KK", "(", "997", ")"}],
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
     RowBox[{"KK", "(", "1000", ")"}],
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
     RowBox[{"KK", "(", "1002", ")"}],
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
     RowBox[{"KK", "(", "990", ")"}],
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
     RowBox[{"KK", "(", "995", ")"}],
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
     RowBox[{"KK", "(", "999", ")"}],
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
     RowBox[{"KK", "(", "1003", ")"}],
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
     RowBox[{"KK", "(", "998", ")"}],
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
     RowBox[{"KK", "(", "971", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
      "Conjugate"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "985", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "988", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "976", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
      "Conjugate"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1005", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
      "Conjugate"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1007", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     TemplateBox[{
       RowBox[{"(", 
         SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]},
      "Conjugate"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "980", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1006", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1008", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "t"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "982", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "987", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "989", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     SubsuperscriptBox["\[CapitalDelta]", "A", "u"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "964", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "0"]}], "+", 
   RowBox[{"2", " ", 
    TagBox[
     RowBox[{"KK", "(", "967", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "1"]}], "+", 
   RowBox[{"2", " ", 
    TagBox[
     RowBox[{"KK", "(", "968", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "2"]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.91784910464959*^9, 3.917849207766569*^9, 
  3.91784945356106*^9, 3.917934596540662*^9},
 CellLabel->"Out[82]=",ExpressionUUID->"7d9207df-e59e-4bc6-bc40-97a426cc716b"]
}, Open  ]],

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
            RowBox[{"MNeu", "[", "i", "]"}], "^", "2"}], "+", 
           RowBox[{
            RowBox[{"MNeu", "[", "j", "]"}], "^", "2"}], "-", "s", "-", 
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
  3.917084151657811*^9}, {3.917084498774638*^9, 3.917084499165453*^9}},
 CellLabel->"In[84]:=",ExpressionUUID->"63cd6937-646b-4d7e-9135-e0422782fb29"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1184", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["q", "~"], "A"], "2"], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1180", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["q", "~"], "A"], "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1173", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1179", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["q", "~"], "A"], "2"], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1192", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["q", "~"], "A"], "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1181", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1174", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["q", "~"], "A"], "2"], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1193", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["q", "~"], "A"], "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1188", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "B"], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}], ",", 
      RowBox[{
       RowBox[{"-", 
        SubsuperscriptBox["m", 
         SubscriptBox[
          OverscriptBox["q", "~"], "A"], "2"]}], "+", 
       SubsuperscriptBox["m", "i", "2"], "+", 
       SubsuperscriptBox["m", "j", "2"], "-", "s"}]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1178", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "0"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["q", "~"], "B"], "2"], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["q", "~"], "A"], "2"]}], ")"}]}], "-", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1185", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "1"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["q", "~"], "B"], "2"], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["q", "~"], "A"], "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1191", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "2", "2"], "(", 
     RowBox[{
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["q", "~"], "B"], "2"], ",", 
      SubsuperscriptBox["m", 
       SubscriptBox[
        OverscriptBox["q", "~"], "A"], "2"]}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1183", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     RowBox[{
      RowBox[{"-", 
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["q", "~"], "A"], "2"]}], "+", 
      SubsuperscriptBox["m", "i", "2"], "+", 
      SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1190", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     RowBox[{
      RowBox[{"-", 
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["q", "~"], "A"], "2"]}], "+", 
      SubsuperscriptBox["m", "i", "2"], "+", 
      SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1187", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     RowBox[{
      RowBox[{"-", 
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["q", "~"], "A"], "2"]}], "+", 
      SubsuperscriptBox["m", "i", "2"], "+", 
      SubsuperscriptBox["m", "j", "2"], "-", "s"}], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1176", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "0"], "(", 
     SubsuperscriptBox["m", 
      SubscriptBox[
       OverscriptBox["q", "~"], "A"], "2"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1199", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "1"], "(", 
     SubsuperscriptBox["m", 
      SubscriptBox[
       OverscriptBox["q", "~"], "A"], "2"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1197", ")"}],
     HoldForm], " ", 
    RowBox[{
     SubsuperscriptBox["T", "1", "2"], "(", 
     SubsuperscriptBox["m", 
      SubscriptBox[
       OverscriptBox["q", "~"], "A"], "2"], ")"}]}], "+", 
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1195", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "0"]}], "+", 
   RowBox[{"2", " ", 
    TagBox[
     RowBox[{"KK", "(", "1177", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "1"]}], "+", 
   RowBox[{"2", " ", 
    TagBox[
     RowBox[{"KK", "(", "1194", ")"}],
     HoldForm], " ", 
    SubsuperscriptBox["T", "0", "2"]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.917849104739363*^9, 3.917849207856947*^9, 
  3.917849453650459*^9, 3.917934596632194*^9},
 CellLabel->"Out[84]=",ExpressionUUID->"494aca02-d8b3-4d10-ae89-dcb75c7ab985"]
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
           ")"}]}]}], "\[IndentingNewLine]", "]"}], " ", "//", " ", 
       "Simplify"}], " ", "//", "\n", "\t", 
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
             RowBox[{"denrem", "/", "2"}]}]], "]"}]}]}], "]"}], "&"}]}], " ", 
     "//", "\n", "\t", "Expand"}], " ", "//", "\n", "\t", 
    RowBox[{
     RowBox[{"ReplaceAll", "[", 
      RowBox[{"#", ",", " ", 
       RowBox[{
        RowBox[{"Log", "[", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"MSf", "[", "args__", "]"}], "^", "2"}], "+", 
           RowBox[{
            FractionBox["1", "2"], 
            RowBox[{"(", 
             RowBox[{"b_", "-", 
              RowBox[{"2", "p", " ", 
               RowBox[{"Sqrt", "[", "s", "]"}]}]}], ")"}]}]}], "den_"], "]"}],
         "->", 
        RowBox[{"-", 
         RowBox[{"Log", "[", 
          FractionBox["den", 
           RowBox[{
            RowBox[{
             RowBox[{"MSf", "[", "args", "]"}], "^", "2"}], "+", 
            RowBox[{
             FractionBox["1", "2"], 
             RowBox[{"(", 
              RowBox[{"b", "-", 
               RowBox[{"2", "p", " ", 
                RowBox[{"Sqrt", "[", "s", "]"}]}]}], ")"}]}]}]], "]"}]}]}]}], 
      "]"}], "&"}]}], " ", "//", "\n", "\t", 
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
   3.917092065734412*^9, 3.9170920994880133`*^9}},
 CellLabel->"In[85]:=",ExpressionUUID->"99db3548-148d-4f00-b3c4-e9bd00c99d0f"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{
      TagBox[
       RowBox[{"KK", "(", "1208", ")"}],
       HoldForm], "-", 
      TagBox[
       RowBox[{"KK", "(", "1234", ")"}],
       HoldForm]}], ")"}], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["q", "~"], "A"], "2"], "+", 
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
         OverscriptBox["q", "~"], "A"], "2"], "+", 
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
    RowBox[{"(", 
     RowBox[{
      TagBox[
       RowBox[{"KK", "(", "1218", ")"}],
       HoldForm], "-", 
      TagBox[
       RowBox[{"KK", "(", "1225", ")"}],
       HoldForm]}], ")"}], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["q", "~"], "B"], "2"], "+", 
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
         OverscriptBox["q", "~"], "B"], "2"], "+", 
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
     RowBox[{"KK", "(", "1223", ")"}],
     HoldForm], " ", "p"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.917849104983006*^9, 3.91784920810301*^9, 
  3.917849453900008*^9, 3.9179345968869743`*^9},
 CellLabel->"Out[85]=",ExpressionUUID->"0c18fd61-3c48-4fcd-98c1-3758a0346139"]
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
 CellLabel->"In[86]:=",ExpressionUUID->"23169dde-eab6-4f3d-b340-33b66b5d4d1e"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{
    TagBox[
     RowBox[{"KK", "(", "1243", ")"}],
     HoldForm], " ", 
    RowBox[{"log", "(", 
     FractionBox[
      RowBox[{
       SubsuperscriptBox["m", 
        SubscriptBox[
         OverscriptBox["q", "~"], "A"], "2"], "+", 
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
         OverscriptBox["q", "~"], "A"], "2"], "+", 
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
     RowBox[{"KK", "(", "1223", ")"}],
     HoldForm], " ", "p"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.917849105100034*^9, 3.91784920822051*^9, 
  3.9178494540325327`*^9, 3.9179345970122757`*^9},
 CellLabel->"Out[86]=",ExpressionUUID->"27882031-5196-4f30-aeed-6be6eee67870"]
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
              RowBox[{"Sqrt", "[", "s", "]"}]}]], " ", "//", " ", "FRH"}], 
           " ", "//", "\n", "\t", 
           RowBox[{
            RowBox[{"ReplaceAll", "[", 
             RowBox[{"#", ",", " ", 
              RowBox[{
               RowBox[{"Den", "[", 
                RowBox[{"s_", ",", "m_"}], "]"}], " ", "->", " ", 
               RowBox[{"1", "/", 
                RowBox[{"(", 
                 RowBox[{"s", "-", "m"}], ")"}]}]}]}], "]"}], "&"}]}], " ", "//",
           "\n", "\t", 
          RowBox[{
           RowBox[{"ReplaceAll", "[", 
            RowBox[{"#", ",", " ", 
             RowBox[{
              RowBox[{
               RowBox[{"Re", "[", "arg1_", "]"}], " ", "-", " ", 
               RowBox[{"Re", "[", "arg2_", "]"}]}], " ", "->", " ", 
              RowBox[{"Re", "[", 
               RowBox[{"arg1", "-", "arg2"}], "]"}]}]}], "]"}], "&"}]}], " ", 
         "//", "\n", "\t", "CollectEffCharges"}], " ", "//", "\n", "\t", 
        "FRH"}], " ", "//", "\n", "\t", 
       RowBox[{
        RowBox[{"ReplaceAll", "[", 
         RowBox[{"#", ",", " ", 
          RowBox[{"FeynCalc`Collect`Private`unity", " ", "->", " ", "1"}]}], 
         "]"}], "&"}]}], "\n", ")"}]}]}], ";"}], "\n"}], "\n", 
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
   3.917686332378112*^9, 3.917686335881385*^9}, 3.917849157459594*^9},
 CellLabel->"In[87]:=",ExpressionUUID->"a53ec6d8-add7-4d7b-adad-1be8e206bef7"],

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
            RowBox[{
             RowBox[{
              FractionBox[
               RowBox[{"ItotIntegralsNBW", "[", "1", "]"}], 
               RowBox[{"p", " ", 
                RowBox[{"Sqrt", "[", "s", "]"}]}]], " ", "//", " ", "FRH"}], 
             " ", "//", "\n", "\t", 
             RowBox[{
              RowBox[{"Limit", "[", 
               RowBox[{"#", ",", " ", 
                RowBox[{
                 RowBox[{"MSf", "[", 
                  RowBox[{"B", ",", "3", ",", "1"}], "]"}], "->", 
                 RowBox[{"MSf", "[", 
                  RowBox[{"A", ",", "3", ",", "1"}], "]"}]}]}], "]"}], 
              "&"}]}], " ", "//", "\n", "\t", 
            RowBox[{
             RowBox[{"ReplaceAll", "[", 
              RowBox[{"#", ",", " ", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Re", "[", "a_", "]"}], "->", 
                  RowBox[{
                   FractionBox["1", "2"], 
                   RowBox[{"(", 
                    RowBox[{"a", "+", 
                    RowBox[{"a", "\[Conjugate]"}]}], ")"}]}]}], ",", " ", 
                 RowBox[{
                  RowBox[{"Im", "[", "a_", "]"}], "->", 
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
              RowBox[{"B", "->", "A"}]}], "]"}], "&"}]}], " ", "//", "\n", 
          "\t", 
          RowBox[{
           RowBox[{"ReplaceAll", "[", 
            RowBox[{"#", ",", " ", 
             RowBox[{
              RowBox[{"Den", "[", 
               RowBox[{"s_", ",", "m_"}], "]"}], " ", "->", " ", 
              RowBox[{"1", "/", 
               RowBox[{"(", 
                RowBox[{"s", "-", "m"}], ")"}]}]}]}], "]"}], "&"}]}], " ", "//",
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
   3.917600943987866*^9}, {3.917686341319146*^9, 3.917686344557856*^9}},
 CellLabel->"In[89]:=",ExpressionUUID->"f36e9b3e-dea0-4299-ba73-17e49e2e28f4"],

Cell["Printing the individual channels contributions", "Text",
 CellChangeTimes->{{3.9150962958843517`*^9, 3.915096323368978*^9}, 
   3.915341764927332*^9, {3.917600960839479*^9, 
   3.9176009705069523`*^9}},ExpressionUUID->"e15e5564-72a4-4553-99db-\
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
         RowBox[{
          RowBox[{"TotXSecNBWAB", "/", "XSecPrefactor"}], " ", "//", " ", 
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
   3.917688761362311*^9}},
 CellLabel->"In[90]:=",ExpressionUUID->"dd17a93a-c11d-4868-b030-3ca8e29a8ec9"],

Cell[BoxData[
 FormBox[
  FractionBox[
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
        RowBox[{
         FractionBox[
          RowBox[{"2", " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              RowBox[{
               SubsuperscriptBox["m", "i", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"2", " ", 
                  SubsuperscriptBox["m", "j", "2"]}], "+", "s"}], ")"}]}]}], 
             "+", 
             SubsuperscriptBox["m", "i", "4"], "-", 
             RowBox[{"s", " ", 
              SubsuperscriptBox["m", "j", "2"]}], "+", 
             SubsuperscriptBox["m", "j", "4"]}], ")"}]}], 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{"s", "-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
              "Conjugate"]}], ")"}]}]], "-", 
         FractionBox[
          RowBox[{"16", " ", 
           SuperscriptBox["p", "2"], " ", "s"}], 
          RowBox[{"3", " ", 
           RowBox[{"(", 
            RowBox[{
             SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", 
           RowBox[{"(", 
            RowBox[{"s", "-", 
             TemplateBox[{
               RowBox[{"(", 
                 SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
              "Conjugate"]}], ")"}]}]]}], ")"}]}], "-", 
      FractionBox[
       RowBox[{"4", " ", "s", " ", 
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
    SuperscriptBox["s", 
     RowBox[{"3", "/", "2"}]], " ", 
    SubscriptBox["C", "A"]}]], TraditionalForm]], "Output",
 CellChangeTimes->{3.917849130509157*^9, 3.917849234368658*^9, 
  3.917849479981105*^9, 3.917934623150519*^9},
 CellLabel->"Out[90]=",ExpressionUUID->"ad5d9791-c722-40c0-a90c-762501ee0291"]
}, Open  ]],

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
          RowBox[{"TotXSecNBWAB", "/", "XSecPrefactor"}], " ", "//.", " ", 
          RowBox[{
           RowBox[{"Zs", "[", "__", "]"}], " ", "->", " ", "0"}]}], " ", "//",
          "\n", "\t", "Expand"}], " ", "//", "\n", "\t", 
        "CollectEffCharges"}], " ", "//", "\n", "\t", 
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
          RowBox[{"TotXSecNBWAA", "/", "XSecPrefactor"}], " ", "//.", " ", 
          RowBox[{
           RowBox[{"Zs", "[", "__", "]"}], " ", "->", " ", "0"}]}], " ", "//",
          "\n", "\t", "Expand"}], " ", "//", "\n", "\t", 
        "CollectEffCharges"}], " ", "//", "\n", "\t", 
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
   3.917601065513609*^9}, {3.917601147937063*^9, 3.917601167558397*^9}},
 CellLabel->"In[91]:=",ExpressionUUID->"4237120d-d695-49ec-bacb-80440af54df9"],

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
              OverscriptBox["q", "~"], "A"], "2"]}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["q", "~"], "A"], "2"], "-", 
            SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
          RowBox[{"log", "(", 
           FractionBox[
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], "+", 
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
               OverscriptBox["q", "~"], "A"], "2"], "+", 
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
              OverscriptBox["q", "~"], "A"], "2"], "-", 
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["q", "~"], "B"], "2"]}], ")"}]}]], "+", "2"}], 
       ")"}]}], "+", 
     RowBox[{"2", " ", 
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
                 OverscriptBox["q", "~"], "A"], "2"]}], ")"}]}], "+", 
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               SubsuperscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"], "2"], "-", 
               SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}]}], ")"}],
           " ", 
          RowBox[{"log", "(", 
           FractionBox[
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], "+", 
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
               OverscriptBox["q", "~"], "A"], "2"], "+", 
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
              OverscriptBox["q", "~"], "A"], "2"], "+", 
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["q", "~"], "B"], "2"], "-", 
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
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"L", "L"}]]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]], " ", 
          SubsuperscriptBox["Q", "B", 
           RowBox[{"R", "R"}]]}]}], ")"}], " ", 
       RowBox[{"log", "(", 
        FractionBox[
         RowBox[{
          SubsuperscriptBox["m", 
           SubscriptBox[
            OverscriptBox["q", "~"], "A"], "2"], "+", 
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
            OverscriptBox["q", "~"], "A"], "2"], "+", 
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
           OverscriptBox["q", "~"], "A"], "2"], "+", 
         SubsuperscriptBox["m", 
          SubscriptBox[
           OverscriptBox["q", "~"], "B"], "2"], "-", 
         SubsuperscriptBox["m", "i", "2"], "-", 
         SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}]]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.9178491306746674`*^9, 3.917849234536126*^9, 
  3.917849480154356*^9, 3.917934623326103*^9},
 CellLabel->"Out[91]=",ExpressionUUID->"bbb95581-de04-4f1b-a0ac-0421c83da9fc"],

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
         SubsuperscriptBox["Q", "A", 
          RowBox[{"L", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", "R"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"R", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"L", "L"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"L", "L"}]], ")"}]},
          "Conjugate"]}], "+", 
        RowBox[{
         SubsuperscriptBox["Q", "A", 
          RowBox[{"R", "R"}]], " ", 
         TemplateBox[{
           RowBox[{"(", 
             SubsuperscriptBox["Q", "A", 
              RowBox[{"R", "R"}]], ")"}]},
          "Conjugate"]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        FractionBox[
         RowBox[{"16", " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", "i", "2"], "-", 
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["q", "~"], "A"], "2"]}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["q", "~"], "A"], "2"], "-", 
            SubsuperscriptBox["m", "j", "2"]}], ")"}]}], 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             RowBox[{"2", " ", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"]}]}], "+", 
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"2", " ", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"]}], "-", 
            SubsuperscriptBox["m", "i", "2"], "-", 
            SubsuperscriptBox["m", "j", "2"], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "+", "s"}], ")"}]}]], "+", 
        FractionBox[
         RowBox[{"2", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             RowBox[{"2", " ", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"]}]}], "+", 
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"]}], ")"}], " ", 
          RowBox[{"log", "(", 
           FractionBox[
            RowBox[{
             RowBox[{"-", 
              RowBox[{"2", " ", 
               SubsuperscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"], "2"]}]}], "+", 
             SubsuperscriptBox["m", "i", "2"], "+", 
             SubsuperscriptBox["m", "j", "2"], "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}], "-", "s"}], 
            RowBox[{
             RowBox[{"-", 
              RowBox[{"2", " ", 
               SubsuperscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"], "2"]}]}], "+", 
             SubsuperscriptBox["m", "i", "2"], "+", 
             SubsuperscriptBox["m", "j", "2"], "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}], "-", "s"}]], ")"}]}], 
         RowBox[{"p", " ", 
          SqrtBox["s"]}]], "+", "4"}], ")"}]}], "+", 
     RowBox[{"2", " ", 
      RowBox[{"Re", "(", 
       RowBox[{
        SubsuperscriptBox["Q", "A", 
         RowBox[{"L", "R"}]], " ", 
        SubsuperscriptBox["Q", "A", 
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
                 OverscriptBox["q", "~"], "A"], "2"]}], ")"}]}], "+", 
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], " ", 
             RowBox[{"(", 
              RowBox[{
               SubsuperscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"], "2"], "-", 
               SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}]}], ")"}],
           " ", 
          RowBox[{"log", "(", 
           FractionBox[
            RowBox[{
             RowBox[{"-", 
              RowBox[{"2", " ", 
               SubsuperscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"], "2"]}]}], "+", 
             SubsuperscriptBox["m", "i", "2"], "+", 
             SubsuperscriptBox["m", "j", "2"], "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}], "-", "s"}], 
            RowBox[{
             RowBox[{"-", 
              RowBox[{"2", " ", 
               SubsuperscriptBox["m", 
                SubscriptBox[
                 OverscriptBox["q", "~"], "A"], "2"]}]}], "+", 
             SubsuperscriptBox["m", "i", "2"], "+", 
             SubsuperscriptBox["m", "j", "2"], "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}], "-", "s"}]], ")"}]}], 
         RowBox[{"p", " ", 
          SqrtBox["s"], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"2", " ", 
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"]}], "-", 
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
           SubsuperscriptBox["Q", "A", 
            RowBox[{"L", "L"}]], ")"}], "2"], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           SubsuperscriptBox["Q", "A", 
            RowBox[{"R", "R"}]], ")"}], "2"]}], ")"}], " ", 
       RowBox[{"log", "(", 
        FractionBox[
         RowBox[{
          RowBox[{"-", 
           RowBox[{"2", " ", 
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["q", "~"], "A"], "2"]}]}], "+", 
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "-", "s"}], 
         RowBox[{
          RowBox[{"-", 
           RowBox[{"2", " ", 
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["q", "~"], "A"], "2"]}]}], "+", 
          SubsuperscriptBox["m", "i", "2"], "+", 
          SubsuperscriptBox["m", "j", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "-", "s"}]], ")"}]}], 
      RowBox[{"p", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", 
          SubsuperscriptBox["m", 
           SubscriptBox[
            OverscriptBox["q", "~"], "A"], "2"]}], "-", 
         SubsuperscriptBox["m", "i", "2"], "-", 
         SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}]]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.9178491306746674`*^9, 3.917849234536126*^9, 
  3.917849480154356*^9, 3.917934623418715*^9},
 CellLabel->"Out[92]=",ExpressionUUID->"4a275be7-e85b-4545-aeae-98cc4b660920"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{"TotXSecNBWAB", "/", "XSecPrefactor"}], " ", "//.", " ", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"Zs", "[", "_", "]"}], "^", "2"}], " ", "->", " ", "0"}], ",", 
     " ", 
     RowBox[{
      RowBox[{"Abs", "[", 
       RowBox[{"Zs", "[", "_", "]"}], "]"}], " ", "->", " ", "0"}], ",", " ", 
     
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"Zs", "[", "_", "]"}], "\[Conjugate]"}], "^", "2"}], " ", "->",
       " ", "0"}], ",", " ", 
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
 RowBox[{"InterferenceXSecNBWAB", " ", "=", " ", 
  RowBox[{
   RowBox[{"XSecPrefactor", " ", "*", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{
        RowBox[{"%", " ", "//", "\n", "\t", "Expand"}], " ", "//", "\n", "\t",
         "CollectEffCharges"}], " ", "//", "\n", "\t", 
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
     ")"}]}], " ", "//", " ", "FRH"}]}]}], "Code",
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
   3.9176901373653316`*^9, 3.917690144699491*^9}},
 CellLabel->"In[93]:=",ExpressionUUID->"dd9d7b8d-adbd-4082-b1df-d5bd055d6a29"],

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
        FractionBox[
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
             "Conjugate"], "-", 
            RowBox[{"2", " ", "s"}], "+", 
            SubscriptBox["\[CapitalDelta]", "Z"]}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", "i", "2"], "-", 
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["q", "~"], "A"], "2"]}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            SubsuperscriptBox["m", "j", "2"], "-", 
            SubsuperscriptBox["m", 
             SubscriptBox[
              OverscriptBox["q", "~"], "A"], "2"]}], ")"}], " ", 
          RowBox[{"log", "(", 
           FractionBox[
            RowBox[{
             SubsuperscriptBox["m", 
              SubscriptBox[
               OverscriptBox["q", "~"], "A"], "2"], "+", 
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
               OverscriptBox["q", "~"], "A"], "2"], "+", 
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
           RowBox[{"s", "-", 
            SubscriptBox["\[CapitalDelta]", "Z"]}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{"s", "-", 
            TemplateBox[{
              RowBox[{"(", 
                SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
             "Conjugate"]}], ")"}]}]], "-", 
        FractionBox[
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            TemplateBox[{
              RowBox[{"(", 
                SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
             "Conjugate"], "-", 
            RowBox[{"2", " ", "s"}], "+", 
            SubscriptBox["\[CapitalDelta]", "Z"]}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             RowBox[{"2", " ", 
              SubsuperscriptBox["m", 
               SubscriptBox[
                OverscriptBox["q", "~"], "A"], "2"]}]}], "+", 
            SubsuperscriptBox["m", "i", "2"], "+", 
            SubsuperscriptBox["m", "j", "2"], "+", "s"}], ")"}]}], 
         RowBox[{
          RowBox[{"(", 
           RowBox[{
            SubscriptBox["\[CapitalDelta]", "Z"], "-", "s"}], ")"}], " ", 
          RowBox[{"(", 
           RowBox[{"s", "-", 
            TemplateBox[{
              RowBox[{"(", 
                SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
             "Conjugate"]}], ")"}]}]]}], ")"}]}], "+", 
     FractionBox[
      RowBox[{"2", " ", 
       SqrtBox["s"], " ", 
       SubscriptBox["m", "i"], " ", 
       SubscriptBox["m", "j"], " ", 
       RowBox[{"(", 
        RowBox[{
         FractionBox["1", 
          RowBox[{"s", "-", 
           TemplateBox[{
             RowBox[{"(", 
               SubscriptBox["\[CapitalDelta]", "Z"], ")"}]},
            "Conjugate"]}]], "+", 
         FractionBox["1", 
          RowBox[{"s", "-", 
           SubscriptBox["\[CapitalDelta]", "Z"]}]]}], ")"}], " ", 
       RowBox[{"Re", "(", 
        RowBox[{
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"L", "L"}]], " ", 
          SubsuperscriptBox["Z", "s", "L"]}], "+", 
         RowBox[{
          SubsuperscriptBox["Q", "A", 
           RowBox[{"R", "R"}]], " ", 
          SubsuperscriptBox["Z", "s", "R"]}]}], ")"}], " ", 
       RowBox[{"log", "(", 
        FractionBox[
         RowBox[{
          SubsuperscriptBox["m", 
           SubscriptBox[
            OverscriptBox["q", "~"], "A"], "2"], "+", 
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
            OverscriptBox["q", "~"], "A"], "2"], "+", 
          RowBox[{
           FractionBox["1", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"-", 
              SubsuperscriptBox["m", "i", "2"]}], "-", 
             SubsuperscriptBox["m", "j", "2"], "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}], "+", "s"}], ")"}]}]}]], ")"}]}], "p"]}], 
    ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.917849130902939*^9, 3.917849234784333*^9, 
  3.917849480379156*^9, 3.917934623592738*^9},
 CellLabel->"Out[94]=",ExpressionUUID->"429355bf-ed94-4686-909f-e17189866b32"]
}, Open  ]]
}, Closed]]
}, Open  ]]
},
WindowSize->{1383, 855},
WindowMargins->{{1437.75, -1385.25}, {Automatic, -22.5}},
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
Cell[580, 22, 630, 20, 130, "Title",ExpressionUUID->"3113a770-5abe-44cf-abcb-7ce35a303d51"],
Cell[CellGroupData[{
Cell[1235, 46, 161, 3, 83, "Section",ExpressionUUID->"623a1251-67d0-47eb-8946-d965d9acab62"],
Cell[1399, 51, 312, 7, 43, "Text",ExpressionUUID->"c9b6c74b-bed6-40d7-93a2-94b88f4a1423"],
Cell[CellGroupData[{
Cell[1736, 62, 1530, 40, 382, "Code",ExpressionUUID->"8f3aec24-40f5-4cbe-be7d-b10e746f9f39"],
Cell[CellGroupData[{
Cell[3291, 106, 2742, 70, 37, "Print",ExpressionUUID->"0d3460b3-0fd1-4266-809b-fe25d284603f"],
Cell[6036, 178, 1923, 51, 37, "Print",ExpressionUUID->"12ed1ca3-802d-464b-be83-bc59676e6f04"],
Cell[7962, 231, 460, 9, 33, "Print",ExpressionUUID->"9768251c-bd0a-4015-83ab-e644f320cdad"],
Cell[8425, 242, 504, 11, 33, "Print",ExpressionUUID->"e8bc2f1a-f3f9-45a0-8e27-765aa931f617"],
Cell[8932, 255, 2108, 58, 37, "Print",ExpressionUUID->"7bac0ebf-5b07-4de3-b7ac-1eb134ee5702"],
Cell[11043, 315, 396, 8, 33, "Print",ExpressionUUID->"d1642f66-b879-417e-943b-07dd079cc552"],
Cell[11442, 325, 432, 9, 33, "Print",ExpressionUUID->"756c3256-8fc0-41b4-926b-454d85e573b6"],
Cell[11877, 336, 287, 5, 30, "Print",ExpressionUUID->"0f8d2a7d-21ed-4bf5-bea2-08f2bef1be1f"]
}, Open  ]]
}, Open  ]],
Cell[12191, 345, 631, 15, 137, "Code",ExpressionUUID->"cc6ff964-d048-45bc-be5a-ea7e51f04364"],
Cell[12825, 362, 486, 10, 67, "Code",ExpressionUUID->"aea92a0e-64bf-4b68-917a-d10ba669d15b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[13348, 377, 263, 5, 65, "Section",ExpressionUUID->"1c0417f8-1640-4d22-b557-b0b5f20add28"],
Cell[13614, 384, 201, 4, 43, "Text",ExpressionUUID->"4186d4a3-bada-4c67-8571-a260e389a999"],
Cell[CellGroupData[{
Cell[13840, 392, 2649, 66, 246, "Code",ExpressionUUID->"cc16bb95-c627-4203-b579-2002f02b5044",
 InitializationCell->False],
Cell[16492, 460, 15184, 361, 70, "Print",ExpressionUUID->"604ceda6-0174-4d91-9f8f-49741c95e7f7"]
}, Open  ]],
Cell[31691, 824, 1792, 39, 308, "Code",ExpressionUUID->"f495b4e2-7d04-4f0e-81e0-efbc9664e28e",
 InitializationCell->False],
Cell[33486, 865, 1573, 41, 115, "Code",ExpressionUUID->"10140aeb-b31b-4b2d-b756-899697c815c6",
 InitializationCell->False],
Cell[35062, 908, 632, 16, 43, "Text",ExpressionUUID->"41d39d94-ff21-4cc2-bd87-c1bdcf6657c6"],
Cell[35697, 926, 3270, 100, 186, "Code",ExpressionUUID->"36440b80-fc3f-4d7b-8c26-ddfba8b0a672",
 InitializationCell->False],
Cell[38970, 1028, 1168, 24, 124, "Text",ExpressionUUID->"ad4451d8-dd8b-43c5-875a-e647cd0c3590"],
Cell[40141, 1054, 1436, 29, 47, "Code",ExpressionUUID->"f02d3fee-ced5-4933-85ed-21304906c288",
 InitializationCell->False]
}, Closed]],
Cell[CellGroupData[{
Cell[41614, 1088, 220, 4, 65, "Section",ExpressionUUID->"db7b6bd3-aba9-4133-abee-dd24733cb04e"],
Cell[41837, 1094, 156, 3, 43, "Text",ExpressionUUID->"71d22fcc-faba-4d9d-8e9e-15214f0a349e"],
Cell[41996, 1099, 2739, 82, 162, "Code",ExpressionUUID->"4fd47e62-1465-4ae8-a527-695c73775065",
 InitializationCell->False],
Cell[44738, 1183, 232, 8, 43, "Text",ExpressionUUID->"eed70a53-a9f9-4d6e-8657-7c9bb7fd69d5"],
Cell[44973, 1193, 1645, 47, 162, "Code",ExpressionUUID->"295fa500-9c88-4314-9ced-4708b80f6228",
 InitializationCell->False],
Cell[46621, 1242, 327, 7, 43, "Text",ExpressionUUID->"a16dff32-b1de-40fa-b9f0-571a2c1c4ea9"],
Cell[46951, 1251, 2247, 62, 186, "Code",ExpressionUUID->"49386eef-cb3a-49d4-8239-c6b69a372a74",
 InitializationCell->False],
Cell[49201, 1315, 589, 16, 43, "Text",ExpressionUUID->"0e0afdb3-dece-41cb-a644-0edb6fe016f4"],
Cell[CellGroupData[{
Cell[49815, 1335, 2206, 62, 146, "Code",ExpressionUUID->"3f2bc887-6a25-44af-844f-f468f45193db",
 InitializationCell->False],
Cell[52024, 1399, 2644, 80, 70, "Output",ExpressionUUID->"07490565-4b20-4e69-81c2-141fb4eb813f"]
}, Open  ]],
Cell[54683, 1482, 249, 4, 37, "Text",ExpressionUUID->"4fd79281-2702-49b2-96b8-cbb432fb13de"],
Cell[54935, 1488, 2761, 74, 264, "Code",ExpressionUUID->"213691d6-4bdd-4d4f-8a41-03c7acde6dac",
 InitializationCell->False],
Cell[57699, 1564, 263, 6, 43, "Text",ExpressionUUID->"9857bd9e-f705-4970-8451-41d0c5407f3f"],
Cell[CellGroupData[{
Cell[57987, 1574, 1568, 45, 146, "Code",ExpressionUUID->"c5ea0e72-1190-4ac8-9c32-2f35ebbff4ab",
 InitializationCell->False],
Cell[59558, 1621, 1273, 42, 70, "Output",ExpressionUUID->"7a32502a-2319-483c-ac81-2eb3f96041ae"]
}, Open  ]],
Cell[60846, 1666, 300, 6, 37, "Text",ExpressionUUID->"6fead36b-cfbc-43d7-a66f-84c0c29ae693"],
Cell[CellGroupData[{
Cell[61171, 1676, 2319, 59, 148, "Code",ExpressionUUID->"023e21e7-f598-4047-a226-039e1e3bfc04",
 InitializationCell->False],
Cell[63493, 1737, 17314, 507, 70, "Output",ExpressionUUID->"0ff44a47-39ef-411b-9cc3-09f0442f76db"]
}, Open  ]],
Cell[CellGroupData[{
Cell[80844, 2249, 5090, 139, 300, "Code",ExpressionUUID->"2fc2d697-9537-40fc-91a2-909f061b1cb0",
 InitializationCell->False],
Cell[85937, 2390, 16030, 475, 70, "Output",ExpressionUUID->"b9a52b31-bbaa-4a27-b804-1a992f5c2333"]
}, Open  ]],
Cell[101982, 2868, 222, 5, 37, "Text",ExpressionUUID->"555ece66-f6f6-41bb-8d46-3e5c6a02969e"],
Cell[CellGroupData[{
Cell[102229, 2877, 2509, 66, 175, "Code",ExpressionUUID->"337361d3-737c-405b-9f1f-de884e445225",
 InitializationCell->False],
Cell[104741, 2945, 2919, 88, 70, "Output",ExpressionUUID->"96b22638-fa05-480d-831a-abc46d2017b2"],
Cell[107663, 3035, 7439, 230, 70, "Output",ExpressionUUID->"b81ab8ab-8d77-4ca8-8da5-8202acd4d2fd"],
Cell[115105, 3267, 6355, 192, 70, "Output",ExpressionUUID->"daad1fa5-85a7-4501-841a-f703a86e4f12"]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[121509, 3465, 217, 4, 65, "Section",ExpressionUUID->"e6d77a07-eeec-44aa-b43b-b09b4f430ce9"],
Cell[121729, 3471, 152, 3, 43, "Text",ExpressionUUID->"41d62fbb-5fd7-4921-bfda-aadc1a46ba8f"],
Cell[121884, 3476, 689, 18, 72, "Text",ExpressionUUID->"4a29c216-215b-42ef-936a-10919eb7f1ef"],
Cell[122576, 3496, 2359, 61, 146, "Code",ExpressionUUID->"397c4165-053c-4434-b0b3-1dc17d856bb6",
 InitializationCell->False],
Cell[124938, 3559, 1675, 31, 39, "Text",ExpressionUUID->"9c701713-f89c-44f4-827a-c3d01beef026"],
Cell[CellGroupData[{
Cell[126638, 3594, 694, 14, 68, "Code",ExpressionUUID->"bf9d0b1a-94a4-4976-8666-fab9971a81ed",
 InitializationCell->False],
Cell[127335, 3610, 8890, 302, 92, "Output",ExpressionUUID->"73463d4c-4748-45c8-a1ee-1abf67f8177e"]
}, Open  ]],
Cell[136240, 3915, 236, 6, 37, "Text",ExpressionUUID->"1a15edf9-d50e-4ae1-a315-7b64b062e5b1"],
Cell[CellGroupData[{
Cell[136501, 3925, 496, 10, 47, "Code",ExpressionUUID->"c3aa978d-ccf6-4348-9406-9146fd7afbd9",
 InitializationCell->False],
Cell[137000, 3937, 52352, 1662, 643, "Output",ExpressionUUID->"626b65fb-4fc8-4510-bdc3-79d501a239a9"]
}, Open  ]],
Cell[189367, 5602, 482, 12, 37, "Text",ExpressionUUID->"83473601-3d23-489f-8cce-22a9e8635e72"],
Cell[CellGroupData[{
Cell[189874, 5618, 2071, 49, 149, "Code",ExpressionUUID->"9185987c-c286-49a9-8e2c-abd135038383",
 InitializationCell->False],
Cell[191948, 5669, 7571, 243, 157, "Output",ExpressionUUID->"35ec6adc-e395-4f77-8257-5ff3af0cc0f8"]
}, Open  ]],
Cell[199534, 5915, 264, 6, 37, "Text",ExpressionUUID->"68798862-a218-4240-be60-22ac4c755df7"],
Cell[CellGroupData[{
Cell[199823, 5925, 3224, 86, 304, "Code",ExpressionUUID->"84fccf6c-3854-43dd-a418-82c19a1daeb5",
 InitializationCell->False],
Cell[203050, 6013, 4439, 141, 109, "Output",ExpressionUUID->"f79ed1c0-c8bc-4b72-a1d6-ecc7ad471e31"]
}, Open  ]],
Cell[207504, 6157, 312, 7, 43, "Text",ExpressionUUID->"0ab35704-1865-4dd1-8623-0a67881b741f"],
Cell[CellGroupData[{
Cell[207841, 6168, 4650, 118, 506, "Code",ExpressionUUID->"a9c2b922-9999-415d-a638-4a936907ff55",
 InitializationCell->False],
Cell[212494, 6288, 4440, 141, 109, "Output",ExpressionUUID->"11cb3bf6-f1bd-4127-bfce-d11e891420f1"],
Cell[216937, 6431, 1066, 30, 35, "Print",ExpressionUUID->"926e8b5d-82f6-483e-9659-d7d0f9737c5c"]
}, Open  ]],
Cell[218018, 6464, 504, 10, 101, "Text",ExpressionUUID->"d7b1fe24-c08d-4517-9539-93e5f5eeb6b9"],
Cell[CellGroupData[{
Cell[218547, 6478, 2273, 62, 123, "Code",ExpressionUUID->"a8cd05b4-5749-429f-8a09-09100b2d1a24",
 InitializationCell->False],
Cell[220823, 6542, 2479, 73, 61, "Output",ExpressionUUID->"432e2ae2-0a2b-493f-920e-cad31e06b901"]
}, Open  ]],
Cell[223317, 6618, 256, 6, 43, "Text",ExpressionUUID->"ba5d2886-298c-4fc5-a754-5f912ec2aaef"],
Cell[223576, 6626, 828, 20, 73, "Code",ExpressionUUID->"cfcb6d40-48a0-4a93-b161-1b5e167c7546",
 InitializationCell->False],
Cell[224407, 6648, 4786, 116, 539, "Code",ExpressionUUID->"cf05098a-c654-4851-9767-0d7f27e0f162",
 InitializationCell->False],
Cell[229196, 6766, 457, 8, 43, "Text",ExpressionUUID->"6477fda9-da4f-4eed-bd85-8b91789df1b9"],
Cell[CellGroupData[{
Cell[229678, 6778, 4118, 100, 370, "Code",ExpressionUUID->"cc067aff-7f1b-4d41-9980-5e2652cb2b8b",
 InitializationCell->False],
Cell[233799, 6880, 21238, 601, 421, "Output",ExpressionUUID->"d1818861-72dc-496b-8828-cdef7a85fc9c"]
}, Open  ]],
Cell[CellGroupData[{
Cell[255074, 7486, 4415, 104, 125, "Code",ExpressionUUID->"119efc26-3621-4842-a9da-e214aeb673c1",
 InitializationCell->False],
Cell[259492, 7592, 3212, 93, 91, "Output",ExpressionUUID->"2da6665d-8d5d-4f74-ae8c-6c0ab3ac402f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[262741, 7690, 3819, 91, 199, "Code",ExpressionUUID->"0bc5fa96-2082-46ed-95ec-6a841ef74b66",
 InitializationCell->False],
Cell[266563, 7783, 8524, 230, 314, "Output",ExpressionUUID->"c03d9019-3e84-4ea2-841e-468bce312819"]
}, Open  ]],
Cell[CellGroupData[{
Cell[275124, 8018, 3556, 93, 172, "Code",ExpressionUUID->"32a9a206-aabb-41a4-9652-02a7dc12aae2",
 InitializationCell->False],
Cell[278683, 8113, 10538, 294, 345, "Output",ExpressionUUID->"02e917e8-afff-4f1a-93a2-23b1d375d429"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[289270, 8413, 272, 4, 83, "Section",ExpressionUUID->"79a2df7e-bcdb-4ad8-873d-f1d952727da1"],
Cell[CellGroupData[{
Cell[289567, 8421, 694, 14, 68, "Code",ExpressionUUID->"b85ecd96-a867-4a93-9044-1c051b6dc59b",
 InitializationCell->False],
Cell[290264, 8437, 8861, 302, 70, "Output",ExpressionUUID->"7d9207df-e59e-4bc6-bc40-97a426cc716b"]
}, Open  ]],
Cell[CellGroupData[{
Cell[299162, 8744, 1701, 43, 97, "Code",ExpressionUUID->"63cd6937-646b-4d7e-9135-e0422782fb29",
 InitializationCell->False],
Cell[300866, 8789, 8870, 290, 70, "Output",ExpressionUUID->"494aca02-d8b3-4d10-ae89-dcb75c7ab985"]
}, Open  ]],
Cell[309751, 9082, 482, 12, 43, "Text",ExpressionUUID->"abc93d39-7fcd-4e04-ae58-bf6583a04f00"],
Cell[CellGroupData[{
Cell[310258, 9098, 4325, 105, 318, "Code",ExpressionUUID->"99db3548-148d-4f00-b3c4-e9bd00c99d0f",
 InitializationCell->False],
Cell[314586, 9205, 2605, 83, 70, "Output",ExpressionUUID->"0c18fd61-3c48-4fcd-98c1-3758a0346139"]
}, Open  ]],
Cell[317206, 9291, 264, 6, 43, "Text",ExpressionUUID->"fdb48696-dc6f-4ced-9c27-b9261b8ee8c8"],
Cell[CellGroupData[{
Cell[317495, 9301, 2294, 54, 149, "Code",ExpressionUUID->"23169dde-eab6-4f3d-b340-33b66b5d4d1e",
 InitializationCell->False],
Cell[319792, 9357, 1352, 41, 70, "Output",ExpressionUUID->"27882031-5196-4f30-aeed-6be6eee67870"]
}, Open  ]],
Cell[321159, 9401, 510, 9, 43, "Text",ExpressionUUID->"d7a98154-a6a5-4c46-bd89-a4668a9e7150"],
Cell[321672, 9412, 3409, 73, 306, "Code",ExpressionUUID->"a53ec6d8-add7-4d7b-adad-1be8e206bef7",
 InitializationCell->False],
Cell[325084, 9487, 3728, 89, 350, "Code",ExpressionUUID->"f36e9b3e-dea0-4299-ba73-17e49e2e28f4",
 InitializationCell->False],
Cell[328815, 9578, 265, 4, 43, "Text",ExpressionUUID->"e15e5564-72a4-4553-99db-ef1df9f9da6a"],
Cell[CellGroupData[{
Cell[329105, 9586, 4471, 105, 125, "Code",ExpressionUUID->"dd17a93a-c11d-4868-b030-3ca8e29a8ec9",
 InitializationCell->False],
Cell[333579, 9693, 3187, 93, 70, "Output",ExpressionUUID->"ad5d9791-c722-40c0-a90c-762501ee0291"]
}, Open  ]],
Cell[CellGroupData[{
Cell[336803, 9791, 5831, 139, 272, "Code",ExpressionUUID->"4237120d-d695-49ec-bacb-80440af54df9",
 InitializationCell->False],
Cell[342637, 9932, 8560, 245, 70, "Output",ExpressionUUID->"bbb95581-de04-4f1b-a0ac-0421c83da9fc"],
Cell[351200, 10179, 8466, 239, 70, "Output",ExpressionUUID->"4a275be7-e85b-4545-aeae-98cc4b660920"]
}, Open  ]],
Cell[CellGroupData[{
Cell[359703, 10423, 3758, 96, 172, "Code",ExpressionUUID->"dd9d7b8d-adbd-4082-b1df-d5bd055d6a29",
 InitializationCell->False],
Cell[363464, 10521, 6402, 183, 70, "Output",ExpressionUUID->"429355bf-ed94-4686-909f-e17189866b32"]
}, Open  ]]
}, Closed]]
}, Open  ]]
}
]
*)

