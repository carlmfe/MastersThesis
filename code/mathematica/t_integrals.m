(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 14.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    150786,       4092]
NotebookOptionsPosition[    141405,       3910]
NotebookOutlinePosition[    141858,       3927]
CellTagsIndexPosition[    141815,       3924]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[{
 "Mandelstam ",
 Cell[BoxData[
  FormBox["t", TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "249a2165-71bb-4134-a68b-c8c95133ee89"],
 " integrals"
}], "Chapter",
 InitializationCell->True,
 CellChangeTimes->{{3.9171627031403008`*^9, 
  3.9171627336452227`*^9}},ExpressionUUID->"6e2ebaad-e7c4-49c8-bb6a-\
da044c1d45d6"],

Cell[TextData[{
 "In this notebook, some relevant analytic integrals over the Mandelstam \
variable ",
 Cell[BoxData[
  FormBox["t", TraditionalForm]],
  FormatType->TraditionalForm,ExpressionUUID->
  "f1574a5c-1fcb-40df-8dd0-a51ed6f18704"],
 " are calculated."
}], "Text",
 InitializationCell->True,
 CellChangeTimes->{{3.917162736399844*^9, 3.917162753386963*^9}, {
  3.917162790571622*^9, 
  3.917162808152068*^9}},ExpressionUUID->"3a33d074-9a04-4cf1-9813-\
5f52e6552cb5"],

Cell[CellGroupData[{

Cell["Initialisation", "Section",
 CellChangeTimes->{{3.917081830541606*^9, 
  3.917081833082651*^9}},ExpressionUUID->"637140e6-2548-41ab-bf04-\
7eafffb9492f"],

Cell["Set up some assumptions and define integral limits.", "Text",
 CellChangeTimes->{{3.91716296764625*^9, 
  3.917162979011772*^9}},ExpressionUUID->"84840b69-a472-40fb-9aa6-\
bd9731be6713"],

Cell[BoxData[
 RowBox[{"SetOptions", "[", 
  RowBox[{
   RowBox[{"EvaluationNotebook", "[", "]"}], ",", "  ", 
   RowBox[{"CommonDefaultFormatTypes", " ", "->", " ", 
    RowBox[{"{", 
     RowBox[{"\"\<Output\>\"", " ", "->", " ", "StandardForm"}], "}"}]}]}], 
  "]"}]], "Code",
 CellChangeTimes->{{3.918093365063533*^9, 3.918093371515892*^9}},
 CellLabel->"In[1]:=",ExpressionUUID->"2cb25ba0-2497-491e-81ec-81cf0683341b"],

Cell[BoxData[
 RowBox[{
  RowBox[{"$Assumptions", " ", "=", " ", 
   RowBox[{"{", "\n", "\t", 
    RowBox[{
     RowBox[{"s", " ", "\[Element]", " ", "PositiveReals"}], ",", "\n", "\t", 
     
     RowBox[{"mi", " ", "\[Element]", " ", "PositiveReals"}], ",", "\n", "\t", 
     RowBox[{"mj", " ", "\[Element]", " ", "PositiveReals"}], ",", "\n", "\t", 
     RowBox[{"m", " ", "\[Element]", " ", "PositiveReals"}], ",", "\n", "\t", 
     
     RowBox[{"G", " ", "\[Element]", " ", "PositiveReals"}], ",", "\n", "\t", 
     
     RowBox[{"m1", " ", "\[Element]", " ", "PositiveReals"}], ",", "\n", "\t", 
     RowBox[{"G1", " ", "\[Element]", " ", "PositiveReals"}], ",", "\n", "\t", 
     RowBox[{"m2", " ", "\[Element]", " ", "PositiveReals"}], ",", "\n", "\t", 
     RowBox[{"G2", " ", "\[Element]", " ", "PositiveReals"}], ",", "\n", "\t", 
     RowBox[{"Dr", " ", "\[Element]", " ", "Reals"}], ",", "\n", "\t", 
     RowBox[{"Di", " ", "\[Element]", " ", "Reals"}], ",", "\n", "\t", 
     RowBox[{"Di", " ", "!=", " ", "0"}], ",", "\n", "\t", 
     RowBox[{"Qr", " ", "\[Element]", " ", "Reals"}], ",", "\n", "\t", 
     RowBox[{"Qi", " ", "\[Element]", " ", "Reals"}], ",", "\n", "\t", 
     RowBox[{"p", " ", "\[Element]", " ", "PositiveReals"}], ",", "\n", "\t", 
     
     RowBox[{"s", " ", ">=", " ", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"mi", " ", "+", " ", "mj"}], ")"}], "^", "2"}]}], ",", "\n", 
     "\t", 
     RowBox[{"p", " ", "<", " ", 
      FractionBox[
       RowBox[{"s", "-", 
        RowBox[{"mi", "^", "2"}], "-", 
        RowBox[{"mj", "^", "2"}]}], 
       RowBox[{"2", 
        RowBox[{"Sqrt", "[", "s", "]"}]}]]}]}], "\n", "}"}]}], ";"}]], "Code",\

 InitializationCell->True,
 CellChangeTimes->{{3.9170204325279512`*^9, 3.917020516601968*^9}, {
  3.917020617016179*^9, 3.917020687220517*^9}, {3.91702094123878*^9, 
  3.917020954187047*^9}, {3.917021171268494*^9, 3.917021195874715*^9}, {
  3.917021434212709*^9, 3.917021452367516*^9}, {3.917022371703685*^9, 
  3.917022416937015*^9}, {3.917025076145335*^9, 3.9170250840440187`*^9}},
 CellLabel->"In[2]:=",ExpressionUUID->"eed391b8-85b3-4ad5-9fbe-c4897982cc86"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"t0", " ", "=", " ", 
   RowBox[{
    FractionBox[
     RowBox[{
      RowBox[{"mi", "^", "2"}], "+", 
      RowBox[{"mj", "^", "2"}], "-", "s"}], "2"], "-", 
    RowBox[{
     RowBox[{"Sqrt", "[", "s", "]"}], "p"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"t1", " ", "=", " ", 
   RowBox[{
    FractionBox[
     RowBox[{
      RowBox[{"mi", "^", "2"}], "+", 
      RowBox[{"mj", "^", "2"}], "-", "s"}], "2"], "+", 
    RowBox[{
     RowBox[{"Sqrt", "[", "s", "]"}], "p"}]}]}], ";"}]}], "Code",
 InitializationCell->True,
 CellChangeTimes->{{3.9170204967884483`*^9, 3.917020566694899*^9}, {
  3.917021222416548*^9, 3.9170212269005346`*^9}},
 CellLabel->"In[3]:=",ExpressionUUID->"a8c75ab8-b67f-4ee4-b445-338ca3e301c8"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Breit-Wigner integrals", "Section",
 CellChangeTimes->{{3.9170815632160597`*^9, 3.917081571999548*^9}, {
  3.917163025351293*^9, 
  3.917163026698221*^9}},ExpressionUUID->"dec97eca-19fa-490c-b79a-\
f3ecef91276e"],

Cell["\<\
First, the integrals using Breit-Wigner approximations for the masses.\
\>", "Text",
 CellChangeTimes->{{3.917163031329108*^9, 
  3.917163058785891*^9}},ExpressionUUID->"12dedfac-7282-4318-b7a8-\
2bbc20fd3394"],

Cell[CellGroupData[{

Cell["0. Order", "Subsection",
 CellChangeTimes->{{3.917066565833458*^9, 
  3.9170665672648907`*^9}},ExpressionUUID->"9fdf91e5-d32a-4993-b56a-\
65d361fc20a3"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"T00", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{"1", ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"T01", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{"t", ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"T02", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{"t", "^", "2"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}]}], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.9170665713559117`*^9, 3.917066689935183*^9}, {
  3.917066784099993*^9, 3.917066801683118*^9}, {3.917067198458942*^9, 
  3.917067208521081*^9}, {3.9171631853114223`*^9, 3.917163187858511*^9}},
 CellLabel->"In[4]:=",ExpressionUUID->"41c6c59b-39e9-40f1-a065-46820d543bf2"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"T00", " ", "//", " ", "Expand"}], " ", "//", " ", 
  "Simplify"}], "\n", 
 RowBox[{
  RowBox[{"T01", " ", "//", " ", "Expand"}], " ", "//", " ", 
  "Simplify"}], "\n", 
 RowBox[{
  FractionBox[
   RowBox[{"2", "p", " ", 
    RowBox[{"Sqrt", "[", "s", "]"}]}], "3"], " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{
       FractionBox[
        RowBox[{"3", "T02"}], 
        RowBox[{"2", "p", " ", 
         RowBox[{"Sqrt", "[", "s", "]"}]}]], " ", "//", " ", "Expand"}], " ", 
      "//", " ", 
      RowBox[{
       RowBox[{"ReplaceAll", "[", 
        RowBox[{"#", ",", " ", 
         RowBox[{
          RowBox[{"p", "^", "2"}], " ", "->", " ", 
          FractionBox[
           RowBox[{
            RowBox[{"(", 
             RowBox[{"s", "-", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"mi", "+", "mj"}], ")"}], "^", "2"}]}], ")"}], 
            RowBox[{"(", 
             RowBox[{"s", "-", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{"mi", "-", "mj"}], ")"}], "^", "2"}]}], ")"}]}], 
           RowBox[{"4", "s"}]]}]}], "]"}], "&"}]}], " ", "//", " ", 
     "Expand"}], " ", "//", " ", "Simplify"}], ")"}]}]}], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917067219421116*^9, 3.917067233474332*^9}, {
  3.917067324618138*^9, 3.917067538159421*^9}, {3.917067569879106*^9, 
  3.9170675980212584`*^9}, {3.917067796128274*^9, 3.9170677978213997`*^9}},
 CellLabel->"In[7]:=",ExpressionUUID->"42d4a14a-dbc1-444d-a920-99d12f5f389a"],

Cell[BoxData[
 FormBox[
  RowBox[{"2", " ", "p", " ", 
   SqrtBox["s"]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917067221662116*^9, 3.917067233772479*^9}, 
   3.91706732889642*^9, {3.917067368728711*^9, 3.9170674536493073`*^9}, {
   3.917067490620096*^9, 3.917067538769251*^9}, {3.91706757039938*^9, 
   3.917067598480205*^9}, 3.917067755269908*^9, 3.917067798145633*^9, 
   3.917069019574316*^9, 3.917069474154286*^9, 3.917163419469124*^9},
 CellLabel->"Out[7]=",ExpressionUUID->"ad073159-71c4-4a79-a62b-90a866a28174"],

Cell[BoxData[
 FormBox[
  RowBox[{"p", " ", 
   SqrtBox["s"], " ", 
   RowBox[{"(", 
    RowBox[{
     SuperscriptBox["mi", "2"], "+", 
     SuperscriptBox["mj", "2"], "-", "s"}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.917067221662116*^9, 3.917067233772479*^9}, 
   3.91706732889642*^9, {3.917067368728711*^9, 3.9170674536493073`*^9}, {
   3.917067490620096*^9, 3.917067538769251*^9}, {3.91706757039938*^9, 
   3.917067598480205*^9}, 3.917067755269908*^9, 3.917067798145633*^9, 
   3.917069019574316*^9, 3.917069474154286*^9, 3.917163419469799*^9},
 CellLabel->"Out[8]=",ExpressionUUID->"e1040661-c1cf-46e6-a883-a19e93596636"],

Cell[BoxData[
 FormBox[
  RowBox[{
   FractionBox["2", "3"], " ", "p", " ", 
   SqrtBox["s"], " ", 
   RowBox[{"(", 
    RowBox[{
     SuperscriptBox["mi", "4"], "+", 
     RowBox[{
      SuperscriptBox["mi", "2"], " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox["mj", "2"], "-", 
        RowBox[{"2", " ", "s"}]}], ")"}]}], "+", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox["mj", "2"], "-", "s"}], ")"}], "2"]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{{3.917067221662116*^9, 3.917067233772479*^9}, 
   3.91706732889642*^9, {3.917067368728711*^9, 3.9170674536493073`*^9}, {
   3.917067490620096*^9, 3.917067538769251*^9}, {3.91706757039938*^9, 
   3.917067598480205*^9}, 3.917067755269908*^9, 3.917067798145633*^9, 
   3.917069019574316*^9, 3.917069474154286*^9, 3.917163419495597*^9},
 CellLabel->"Out[9]=",ExpressionUUID->"cad7a24e-83bd-485e-99f9-158c4f48d219"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["1.  Order", "Subsection",
 CellChangeTimes->{{3.917025227922555*^9, 3.917025271029772*^9}, {
   3.917082167105825*^9, 3.9170821710229597`*^9}, 3.917162672436358*^9, {
   3.917163002820676*^9, 
   3.917163003403139*^9}},ExpressionUUID->"f2b4ddc6-68ad-4dee-8ead-\
ce106f7bf6ec"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Integrand", " ", "=", " ", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      FractionBox["1", "2"], 
      RowBox[{"(", 
       RowBox[{
        FractionBox[
         RowBox[{"Qr", " ", "+", " ", 
          RowBox[{"\[ImaginaryI]", " ", "Qi"}]}], 
         RowBox[{"t", " ", "-", " ", 
          RowBox[{"m", "^", "2"}], " ", "-", " ", 
          RowBox[{"\[ImaginaryI]", " ", "G", " ", "m"}]}]], "+", 
        FractionBox[
         RowBox[{"Qr", " ", "-", " ", 
          RowBox[{"\[ImaginaryI]", " ", "Qi"}]}], 
         RowBox[{"t", " ", "-", " ", 
          RowBox[{"m", "^", "2"}], " ", "+", " ", 
          RowBox[{"\[ImaginaryI]", " ", "G", " ", "m"}]}]]}], ")"}]}], " ", "//",
      " ", "Expand"}], " ", "//", " ", "Simplify"}], " ", "//", " ", 
   "StandardForm"}]}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917082032274899*^9, 3.917082078930807*^9}, {
  3.917163199301344*^9, 3.917163202594666*^9}},
 CellLabel->"In[10]:=",ExpressionUUID->"fa53bb89-0ab1-4b4e-b599-84c6b2d7f606"],

Cell[BoxData[
 FractionBox[
  RowBox[{
   RowBox[{
    RowBox[{"-", "G"}], " ", "m", " ", "Qi"}], "+", 
   RowBox[{"Qr", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", 
       SuperscriptBox["m", "2"]}], "+", "t"}], ")"}]}]}], 
  RowBox[{
   RowBox[{
    SuperscriptBox["G", "2"], " ", 
    SuperscriptBox["m", "2"]}], "+", 
   SuperscriptBox[
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox["m", "2"], "-", "t"}], ")"}], "2"]}]]], "Output",
 CellChangeTimes->{{3.917082074796085*^9, 3.917082079212967*^9}, 
   3.917163419520393*^9},
 CellLabel->
  "Out[10]//StandardForm=",ExpressionUUID->"2f4ae9fd-3a2c-446f-8e5c-\
8ebb993d3a12"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"T10", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{"Integrand", ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917020579687379*^9, 3.9170206138128*^9}, {
   3.917020650785079*^9, 3.917020712693746*^9}, {3.917020745463553*^9, 
   3.917020756275837*^9}, {3.917020839173951*^9, 3.917020916471318*^9}, {
   3.9170210200257473`*^9, 3.917021046227954*^9}, 3.917021126880755*^9, {
   3.917021479852037*^9, 3.917021481870022*^9}, {3.917021574479363*^9, 
   3.917021577324326*^9}, {3.917021760279341*^9, 3.917021777187256*^9}, {
   3.917023922689317*^9, 3.917023945001693*^9}, 3.917023995237533*^9, {
   3.917024086706421*^9, 3.917024112118618*^9}, {3.917025222456279*^9, 
   3.91702522276194*^9}, {3.917069330129574*^9, 3.917069335277862*^9}, {
   3.917081692806446*^9, 3.9170817193679733`*^9}, {3.917081963713623*^9, 
   3.9170819639616337`*^9}, 3.917082084635067*^9, {3.9171632062934313`*^9, 
   3.917163207479127*^9}},
 CellLabel->"In[11]:=",ExpressionUUID->"2040caf9-e906-4375-8f4f-06b6de25391c"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", 
  RowBox[{
   RowBox[{"T10", " ", "//", " ", "Expand"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"Qr", ",", " ", "Qi"}], "}"}], ",", " ", 
   RowBox[{
    RowBox[{"Collect", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Log", "[", "_", "]"}], ",", " ", 
        RowBox[{"ArcTan", "[", "_", "]"}]}], "}"}], ",", " ", "Simplify"}], 
     "]"}], "&"}]}], "]"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917024664794911*^9, 3.91702467752075*^9}, 
   3.9170693332386703`*^9, {3.917081725702656*^9, 3.9170817258337603`*^9}, {
   3.917081967853942*^9, 3.917081968087228*^9}},
 CellLabel->"In[12]:=",ExpressionUUID->"9c1a15a0-2a17-4b4b-9f6b-1d4556c461f8"],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubsuperscriptBox["\[Integral]", 
    RowBox[{
     FractionBox["1", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["mi", "2"], "+", 
       SuperscriptBox["mj", "2"], "-", 
       RowBox[{"2", " ", "p", " ", 
        SqrtBox["s"]}], "-", "s"}], ")"}]}], 
    RowBox[{
     FractionBox["1", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["mi", "2"], "+", 
       SuperscriptBox["mj", "2"], "+", 
       RowBox[{"2", " ", "p", " ", 
        SqrtBox["s"]}], "-", "s"}], ")"}]}]], 
   RowBox[{
    TagBox[
     FormBox[
      FractionBox[
       RowBox[{
        RowBox[{
         RowBox[{"-", "G"}], " ", "m", " ", "Qi"}], "+", 
        RowBox[{"Qr", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", 
            SuperscriptBox["m", "2"]}], "+", "t"}], ")"}]}]}], 
       RowBox[{
        RowBox[{
         SuperscriptBox["G", "2"], " ", 
         SuperscriptBox["m", "2"]}], "+", 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["m", "2"], "-", "t"}], ")"}], "2"]}]],
      StandardForm],
     StandardForm,
     Editable->True], 
    RowBox[{"\[DifferentialD]", "t"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.9170246778756657`*^9, 3.9170256228402443`*^9, 
  3.917066795740834*^9, 3.91706906981486*^9, 3.917069524302874*^9, 
  3.917081784239262*^9, 3.917163420475408*^9},
 CellLabel->"Out[12]=",ExpressionUUID->"1bc33eda-4a17-4307-b1d3-e0bece66df68"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"T11", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{"t", "*", "Integrand"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917020579687379*^9, 3.9170206138128*^9}, {
   3.917020650785079*^9, 3.917020712693746*^9}, {3.917020745463553*^9, 
   3.917020756275837*^9}, {3.917020839173951*^9, 3.917020916471318*^9}, {
   3.9170210200257473`*^9, 3.917021046227954*^9}, 3.917021126880755*^9, {
   3.917021479852037*^9, 3.917021481870022*^9}, {3.917021574479363*^9, 
   3.917021577324326*^9}, {3.917021760279341*^9, 3.917021777187256*^9}, {
   3.917023922689317*^9, 3.917023945001693*^9}, 3.917023995237533*^9, {
   3.917024086706421*^9, 3.917024112118618*^9}, {3.917025222456279*^9, 
   3.91702522276194*^9}, {3.917069330129574*^9, 3.917069335277862*^9}, {
   3.917081692806446*^9, 3.9170817468746157`*^9}, {3.917081970333468*^9, 
   3.917081971487094*^9}, 3.917082090421954*^9, {3.9171632162897377`*^9, 
   3.917163219727097*^9}},
 CellLabel->"In[13]:=",ExpressionUUID->"70a808b0-c46e-4cbe-8cfc-197ceebac57e"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", 
  RowBox[{
   RowBox[{"T11", " ", "//", " ", "Expand"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"Qr", ",", " ", "Qi"}], "}"}], ",", " ", 
   RowBox[{
    RowBox[{"Collect", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Log", "[", "_", "]"}], ",", " ", 
        RowBox[{"ArcTan", "[", "_", "]"}]}], "}"}], ",", " ", "Simplify"}], 
     "]"}], "&"}]}], "]"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917024331944708*^9, 3.917024452898083*^9}, 
   3.9170693509538913`*^9, {3.9170817565026693`*^9, 3.917081756758171*^9}, {
   3.917081975796682*^9, 3.9170819760568113`*^9}},
 CellLabel->"In[14]:=",ExpressionUUID->"9c8db76f-131b-4c44-add1-3a4ea498b615"],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubsuperscriptBox["\[Integral]", 
    RowBox[{
     FractionBox["1", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["mi", "2"], "+", 
       SuperscriptBox["mj", "2"], "-", 
       RowBox[{"2", " ", "p", " ", 
        SqrtBox["s"]}], "-", "s"}], ")"}]}], 
    RowBox[{
     FractionBox["1", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["mi", "2"], "+", 
       SuperscriptBox["mj", "2"], "+", 
       RowBox[{"2", " ", "p", " ", 
        SqrtBox["s"]}], "-", "s"}], ")"}]}]], 
   RowBox[{
    RowBox[{"t", " ", 
     TagBox[
      FormBox[
       FractionBox[
        RowBox[{
         RowBox[{
          RowBox[{"-", "G"}], " ", "m", " ", "Qi"}], "+", 
         RowBox[{"Qr", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             SuperscriptBox["m", "2"]}], "+", "t"}], ")"}]}]}], 
        RowBox[{
         RowBox[{
          SuperscriptBox["G", "2"], " ", 
          SuperscriptBox["m", "2"]}], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["m", "2"], "-", "t"}], ")"}], "2"]}]],
       StandardForm],
      StandardForm,
      Editable->True]}], 
    RowBox[{"\[DifferentialD]", "t"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.9170243762165136`*^9, 3.9170243974658422`*^9}, 
   3.917024453906012*^9, 3.9170256657245293`*^9, 3.917066837753384*^9, 
   3.9170691116698422`*^9, 3.917069566444757*^9, 3.917081811329129*^9, 
   3.917163420869763*^9},
 CellLabel->"Out[14]=",ExpressionUUID->"a283c644-8df6-47a7-adf4-4ce9e0dabf09"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"T12", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"t", "^", "2"}], "*", "Integrand"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917020579687379*^9, 3.9170206138128*^9}, {
   3.917020650785079*^9, 3.917020712693746*^9}, {3.917020745463553*^9, 
   3.917020756275837*^9}, {3.917020839173951*^9, 3.917020916471318*^9}, {
   3.9170210200257473`*^9, 3.917021046227954*^9}, 3.917021126880755*^9, {
   3.917021479852037*^9, 3.917021481870022*^9}, {3.917021574479363*^9, 
   3.917021577324326*^9}, {3.917021760279341*^9, 3.917021777187256*^9}, {
   3.917023922689317*^9, 3.917023945001693*^9}, 3.917023995237533*^9, {
   3.917024086706421*^9, 3.917024112118618*^9}, {3.917025222456279*^9, 
   3.91702522276194*^9}, {3.917069330129574*^9, 3.917069335277862*^9}, {
   3.917081692806446*^9, 3.917081752840431*^9}, {3.917081978309059*^9, 
   3.917081978559176*^9}, 3.917082093357173*^9, {3.917163223742281*^9, 
   3.917163224459754*^9}},
 CellLabel->"In[15]:=",ExpressionUUID->"f2f66b6c-683a-48a6-b3a4-ab8c0c5fc73d"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{"T12", " ", "/.", " ", 
      RowBox[{
       RowBox[{"p", "^", "2"}], " ", "->", " ", 
       FractionBox[
        RowBox[{
         RowBox[{"(", 
          RowBox[{"s", "-", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"mi", "+", "mj"}], ")"}], "^", "2"}]}], ")"}], 
         RowBox[{"(", 
          RowBox[{"s", "-", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"mi", "-", "mj"}], ")"}], "^", "2"}]}], ")"}]}], 
        RowBox[{"4", "s"}]]}]}], ")"}], " ", "//", " ", "Expand"}], ",", " ", 
   
   RowBox[{"{", 
    RowBox[{"Qr", ",", " ", "Qi"}], "}"}], ",", " ", 
   RowBox[{
    RowBox[{"Collect", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Log", "[", "_", "]"}], ",", " ", 
        RowBox[{"ArcTan", "[", "_", "]"}]}], "}"}], ",", " ", "Simplify"}], 
     "]"}], "&"}]}], "]"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917024477688204*^9, 3.917024479547676*^9}, {
   3.917024523160954*^9, 3.917024561113356*^9}, 3.91706935886095*^9, {
   3.917081760197529*^9, 3.917081760381342*^9}, {3.917081980601252*^9, 
   3.917081980840393*^9}},
 CellLabel->"In[16]:=",ExpressionUUID->"61a238c3-150c-4f14-82db-3a6c13f6ff4f"],

Cell[BoxData[
 FormBox[
  RowBox[{
   SubsuperscriptBox["\[Integral]", 
    RowBox[{
     FractionBox["1", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["mi", "2"], "+", 
       SuperscriptBox["mj", "2"], "-", 
       RowBox[{"2", " ", "p", " ", 
        SqrtBox["s"]}], "-", "s"}], ")"}]}], 
    RowBox[{
     FractionBox["1", "2"], " ", 
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["mi", "2"], "+", 
       SuperscriptBox["mj", "2"], "+", 
       RowBox[{"2", " ", "p", " ", 
        SqrtBox["s"]}], "-", "s"}], ")"}]}]], 
   RowBox[{
    RowBox[{
     SuperscriptBox["t", "2"], " ", 
     TagBox[
      FormBox[
       FractionBox[
        RowBox[{
         RowBox[{
          RowBox[{"-", "G"}], " ", "m", " ", "Qi"}], "+", 
         RowBox[{"Qr", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"-", 
             SuperscriptBox["m", "2"]}], "+", "t"}], ")"}]}]}], 
        RowBox[{
         RowBox[{
          SuperscriptBox["G", "2"], " ", 
          SuperscriptBox["m", "2"]}], "+", 
         SuperscriptBox[
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["m", "2"], "-", "t"}], ")"}], "2"]}]],
       StandardForm],
      StandardForm,
      Editable->True]}], 
    RowBox[{"\[DifferentialD]", "t"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.917024480455438*^9, 3.917024569161402*^9, 
  3.9170257131893997`*^9, 3.917066884365847*^9, 3.91706915822654*^9, 
  3.917069613052601*^9, 3.9170818320107183`*^9, 3.9171634215645638`*^9},
 CellLabel->"Out[16]=",ExpressionUUID->"a623114b-2d7b-48e5-9b8b-54d13c245867"]
}, Open  ]]
}, Closed]],

Cell[CellGroupData[{

Cell["2. Order", "Subsection",
 CellChangeTimes->{{3.91702526084161*^9, 
  3.917025264626442*^9}},ExpressionUUID->"ceb9f383-1bdb-416d-b30b-\
fcb82314f12e"],

Cell[BoxData[
 RowBox[{
  RowBox[{"Integrand", " ", "=", " ", 
   FractionBox[
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{
        RowBox[{"G1", " ", "m1", " ", "Qi"}], "+", 
        RowBox[{"Qr", " ", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["m1", "2"], "-", "t"}], ")"}]}]}], ")"}], " ", 
      RowBox[{"(", 
       RowBox[{
        SuperscriptBox["m2", "2"], "-", "t"}], ")"}]}], "+", 
     RowBox[{"G2", " ", "m2", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox["m1", "2"]}], " ", "Qi"}], "+", 
        RowBox[{"G1", " ", "m1", " ", "Qr"}], "+", 
        RowBox[{"Qi", " ", "t"}]}], ")"}]}]}], 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"G1", "^", "2"}], " ", 
        RowBox[{"m1", "^", "2"}]}], " ", "+", " ", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "2"], "-", "t"}], ")"}], "^", "2"}]}], ")"}], 
     " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        RowBox[{"G2", "^", "2"}], " ", 
        RowBox[{"m2", "^", "2"}]}], "+", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"-", 
           SuperscriptBox["m2", "2"]}], "+", "t"}], ")"}], "^", "2"}]}], 
      ")"}]}]]}], ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.9170253002405*^9, 3.917025330827505*^9}, {
  3.917163239441016*^9, 3.9171632483565474`*^9}},
 CellLabel->"In[17]:=",ExpressionUUID->"ab7e3c9f-908a-4ab1-aee3-47f776bbeb21"],

Cell[BoxData[
 RowBox[{
  RowBox[{"T20", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{"Integrand", ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917025169270247*^9, 3.917025181643118*^9}, {
   3.917025348601894*^9, 3.917025415445718*^9}, 3.91706942300564*^9, {
   3.9171632539605303`*^9, 3.917163255792292*^9}},
 CellLabel->"In[18]:=",ExpressionUUID->"14bba47f-1249-4443-bff9-2f48bab0ecb4"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", 
  RowBox[{
   RowBox[{"T20", " ", "//", " ", "Expand"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"Qr", ",", " ", "Qi"}], "}"}], ",", " ", 
   RowBox[{
    RowBox[{"Collect", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Log", "[", "_", "]"}], ",", " ", 
        RowBox[{"ArcTan", "[", "_", "]"}]}], "}"}], ",", " ", "Simplify"}], 
     "]"}], "&"}]}], "]"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917025201677265*^9, 3.9170252134275303`*^9}},
 CellLabel->"In[19]:=",ExpressionUUID->"df09aa63-a9a4-4e74-8026-d19fe2a34222"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"Qi", " ", 
    RowBox[{"(", 
     RowBox[{
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "2"], "-", 
          SuperscriptBox["m2", "2"]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m1", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "-", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G1", " ", "m1"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "+", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "2"], "-", 
          SuperscriptBox["m2", "2"]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m2", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "-", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G2", " ", "m2"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "+", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m2", "2"], "-", 
          SuperscriptBox["m1", "2"]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m1", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G1", " ", "m1"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "+", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m2", "2"], "-", 
          SuperscriptBox["m1", "2"]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m2", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G2", " ", "m2"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "-", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G1", " ", "m1"}], "+", 
          RowBox[{"G2", " ", "m2"}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m1", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "+", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G1", " ", "m1"}], "+", 
          RowBox[{"G2", " ", "m2"}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m2", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "+", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G1", " ", "m1"}], "+", 
          RowBox[{"G2", " ", "m2"}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m1", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "-", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G1", " ", "m1"}], "+", 
          RowBox[{"G2", " ", "m2"}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m2", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]]}], ")"}]}], "+", 
   RowBox[{"Qr", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", 
       FractionBox[
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"G1", " ", "m1"}], "+", 
           RowBox[{"G2", " ", "m2"}]}], ")"}], " ", 
         RowBox[{
          SuperscriptBox["tan", 
           RowBox[{"-", "1"}]], "(", 
          FractionBox[
           RowBox[{
            RowBox[{"2", " ", 
             SuperscriptBox["m1", "2"]}], "-", 
            SuperscriptBox["mi", "2"], "-", 
            SuperscriptBox["mj", "2"], "+", "s", "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}]}], 
           RowBox[{"2", " ", "G1", " ", "m1"}]], ")"}]}], 
        RowBox[{
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m2", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
         SuperscriptBox["m2", "4"], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}]}]]}], "-", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G1", " ", "m1"}], "+", 
          RowBox[{"G2", " ", "m2"}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m2", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "-", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G2", " ", "m2"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "+", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G1", " ", "m1"}], "+", 
          RowBox[{"G2", " ", "m2"}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m1", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G1", " ", "m1"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "+", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G1", " ", "m1"}], "+", 
          RowBox[{"G2", " ", "m2"}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m2", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G2", " ", "m2"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "+", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m2", "2"], "-", 
          SuperscriptBox["m1", "2"]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m1", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "+", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "2"], "-", 
          SuperscriptBox["m2", "2"]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m2", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "+", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "2"], "-", 
          SuperscriptBox["m2", "2"]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m1", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "+", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m2", "2"], "-", 
          SuperscriptBox["m1", "2"]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m2", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]]}], ")"}]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.917025800957698*^9, 3.917026260518846*^9, 
  3.917026432295732*^9, 3.917066971974457*^9, 3.917069245734858*^9, 
  3.917069700408498*^9, 3.917163508300467*^9},
 CellLabel->"Out[19]=",ExpressionUUID->"9c65af34-7241-4eff-ba15-97f84bac1789"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"T21", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{"t", "*", "Integrand"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917069435340947*^9, 3.917069446569913*^9}, {
  3.9171632650258427`*^9, 3.917163268070932*^9}},
 CellLabel->"In[20]:=",ExpressionUUID->"3cf1e9ed-9dd9-4793-8c9a-394053f15922"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", 
  RowBox[{
   RowBox[{"T21", " ", "//", " ", "Expand"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"Qr", ",", " ", "Qi"}], "}"}], ",", " ", 
   RowBox[{
    RowBox[{"Collect", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Log", "[", "_", "]"}], ",", " ", 
        RowBox[{"ArcTan", "[", "_", "]"}]}], "}"}], ",", " ", "Simplify"}], 
     "]"}], "&"}]}], "]"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917069457383905*^9, 3.917069465837397*^9}},
 CellLabel->"In[21]:=",ExpressionUUID->"14638c7c-f68a-47d5-a516-cc485007a02a"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"Qi", " ", 
    RowBox[{"(", 
     RowBox[{
      FractionBox[
       RowBox[{"m1", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "3"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", "m1"}], "-", 
          RowBox[{
           SuperscriptBox["m2", "2"], " ", "m1"}], "+", 
          RowBox[{"G1", " ", "G2", " ", "m2"}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m1", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "-", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G1", " ", "m1"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "-", 
      FractionBox[
       RowBox[{"m2", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G1", " ", "G2", " ", "m1"}], "+", 
          RowBox[{"m2", " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["G2", "2"], "-", 
             SuperscriptBox["m1", "2"], "+", 
             SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m2", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "-", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G2", " ", "m2"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "-", 
      FractionBox[
       RowBox[{"m1", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "3"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", "m1"}], "-", 
          RowBox[{
           SuperscriptBox["m2", "2"], " ", "m1"}], "+", 
          RowBox[{"G1", " ", "G2", " ", "m2"}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m1", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G1", " ", "m1"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "+", 
      FractionBox[
       RowBox[{"m2", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G1", " ", "G2", " ", "m1"}], "+", 
          RowBox[{"m2", " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["G2", "2"], "-", 
             SuperscriptBox["m1", "2"], "+", 
             SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m2", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G2", " ", "m2"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "-", 
      FractionBox[
       RowBox[{"m1", " ", "m2", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G2", " ", "m1"}], "+", 
          RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m1", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "+", 
      FractionBox[
       RowBox[{"m1", " ", "m2", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G2", " ", "m1"}], "+", 
          RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m2", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "+", 
      FractionBox[
       RowBox[{"m1", " ", "m2", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G2", " ", "m1"}], "+", 
          RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m1", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "-", 
      FractionBox[
       RowBox[{"m1", " ", "m2", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G2", " ", "m1"}], "+", 
          RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m2", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]]}], ")"}]}], "+", 
   RowBox[{"Qr", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"-", 
       FractionBox[
        RowBox[{"m1", " ", "m2", " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"G2", " ", "m1"}], "+", 
           RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
         RowBox[{
          SuperscriptBox["tan", 
           RowBox[{"-", "1"}]], "(", 
          FractionBox[
           RowBox[{
            RowBox[{"2", " ", 
             SuperscriptBox["m1", "2"]}], "-", 
            SuperscriptBox["mi", "2"], "-", 
            SuperscriptBox["mj", "2"], "+", "s", "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}]}], 
           RowBox[{"2", " ", "G1", " ", "m1"}]], ")"}]}], 
        RowBox[{
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m2", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
         SuperscriptBox["m2", "4"], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}]}]]}], "-", 
      FractionBox[
       RowBox[{"m1", " ", "m2", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G2", " ", "m1"}], "+", 
          RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m2", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "-", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G2", " ", "m2"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "+", 
      FractionBox[
       RowBox[{"m1", " ", "m2", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G2", " ", "m1"}], "+", 
          RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m1", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G1", " ", "m1"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "+", 
      FractionBox[
       RowBox[{"m1", " ", "m2", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G2", " ", "m1"}], "+", 
          RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m2", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G2", " ", "m2"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "-", 
      FractionBox[
       RowBox[{"m1", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "3"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", "m1"}], "-", 
          RowBox[{
           SuperscriptBox["m2", "2"], " ", "m1"}], "+", 
          RowBox[{"G1", " ", "G2", " ", "m2"}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m1", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "-", 
      FractionBox[
       RowBox[{"m2", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G1", " ", "G2", " ", "m1"}], "+", 
          RowBox[{"m2", " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["G2", "2"], "-", 
             SuperscriptBox["m1", "2"], "+", 
             SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m2", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "+", 
      FractionBox[
       RowBox[{"m1", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "3"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", "m1"}], "-", 
          RowBox[{
           SuperscriptBox["m2", "2"], " ", "m1"}], "+", 
          RowBox[{"G1", " ", "G2", " ", "m2"}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m1", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "+", 
      FractionBox[
       RowBox[{"m2", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G1", " ", "G2", " ", "m1"}], "+", 
          RowBox[{"m2", " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["G2", "2"], "-", 
             SuperscriptBox["m1", "2"], "+", 
             SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m2", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]]}], ")"}]}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.917069767212342*^9, 3.9171635749169493`*^9},
 CellLabel->"Out[21]=",ExpressionUUID->"d599bf04-fac8-4422-bafa-23ef0e6a9fae"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"T22", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"t", "^", "2"}], "*", "Integrand"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917069437284362*^9, 3.917069448637877*^9}, 
   3.917081933766244*^9, {3.917163275611054*^9, 3.9171632784286833`*^9}},
 CellLabel->"In[22]:=",ExpressionUUID->"5295891e-48e3-41a5-85d6-3cc52e2e861c"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", 
  RowBox[{
   RowBox[{"T22", " ", "//", " ", "Expand"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"Qr", ",", " ", "Qi"}], "}"}], ",", " ", 
   RowBox[{
    RowBox[{"Collect", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Log", "[", "_", "]"}], ",", " ", 
        RowBox[{"ArcTan", "[", "_", "]"}]}], "}"}], ",", " ", "Simplify"}], 
     "]"}], "&"}]}], "]"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917069461027353*^9, 3.917069463329622*^9}},
 CellLabel->"In[23]:=",ExpressionUUID->"164ad7d0-bcf9-4228-992f-bf1c83179548"],

Cell[BoxData[
 FormBox[
  RowBox[{
   RowBox[{"Qi", " ", 
    RowBox[{"(", 
     RowBox[{
      FractionBox[
       RowBox[{
        SuperscriptBox["m2", "2"], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m1", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G1", " ", "m1"}]], ")"}], " ", 
        SuperscriptBox["m1", "4"]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "+", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["m1", "2"], "+", 
             SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", 
            SuperscriptBox["m1", "2"]}], "+", 
           SuperscriptBox["mi", "2"], "+", 
           SuperscriptBox["mj", "2"], "-", "s", "-", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G1", " ", "m1"}]], ")"}], " ", 
        SuperscriptBox["m1", "2"]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "+", 
      FractionBox[
       RowBox[{
        SuperscriptBox["m2", "4"], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", 
            SuperscriptBox["m2", "2"]}], "+", 
           SuperscriptBox["mi", "2"], "+", 
           SuperscriptBox["mj", "2"], "-", "s", "-", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G2", " ", "m2"}]], ")"}], " ", 
        SuperscriptBox["m1", "2"]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "-", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "-", 
          RowBox[{
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["m1", "2"], "+", 
             SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", 
            SuperscriptBox["m1", "2"]}], "+", 
           SuperscriptBox["mi", "2"], "+", 
           SuperscriptBox["mj", "2"], "-", "s", "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G1", " ", "m1"}]], ")"}], " ", 
        SuperscriptBox["m1", "2"]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "+", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"m1", " ", 
           SuperscriptBox["G1", "3"]}], "+", 
          RowBox[{"G2", " ", "m2", " ", 
           SuperscriptBox["G1", "2"]}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["m1", "3"], "-", 
             RowBox[{"2", " ", "m1", " ", 
              SuperscriptBox["m2", "2"]}]}], ")"}], " ", "G1"}], "-", 
          RowBox[{"G2", " ", 
           SuperscriptBox["m1", "2"], " ", "m2"}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m1", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}], " ", 
        SuperscriptBox["m1", "2"]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "-", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"m1", " ", 
           SuperscriptBox["G1", "3"]}], "+", 
          RowBox[{"G2", " ", "m2", " ", 
           SuperscriptBox["G1", "2"]}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["m1", "3"], "-", 
             RowBox[{"2", " ", "m1", " ", 
              SuperscriptBox["m2", "2"]}]}], ")"}], " ", "G1"}], "-", 
          RowBox[{"G2", " ", 
           SuperscriptBox["m1", "2"], " ", "m2"}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m1", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}], " ", 
        SuperscriptBox["m1", "2"]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "+", 
      FractionBox[
       RowBox[{
        SuperscriptBox["m2", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m2", "4"], "-", 
          RowBox[{
           SuperscriptBox["m1", "2"], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["m1", "2"], "+", 
             SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", 
            SuperscriptBox["m2", "2"]}], "+", 
           SuperscriptBox["mi", "2"], "+", 
           SuperscriptBox["mj", "2"], "-", "s", "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G2", " ", "m2"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "+", 
      FractionBox[
       RowBox[{
        SuperscriptBox["m2", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["m1", "2"], "+", 
             SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m2", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G2", " ", "m2"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "-", 
      FractionBox[
       RowBox[{
        SuperscriptBox["m2", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G1", " ", "m1", " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["G2", "2"], "-", 
             SuperscriptBox["m2", "2"]}], ")"}]}], "+", 
          RowBox[{"G2", " ", "m2", " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["G2", "2"], "-", 
             RowBox[{"2", " ", 
              SuperscriptBox["m1", "2"]}], "+", 
             SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m2", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "+", 
      FractionBox[
       RowBox[{
        SuperscriptBox["m2", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G1", " ", "m1", " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["G2", "2"], "-", 
             SuperscriptBox["m2", "2"]}], ")"}]}], "+", 
          RowBox[{"G2", " ", "m2", " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["G2", "2"], "-", 
             RowBox[{"2", " ", 
              SuperscriptBox["m1", "2"]}], "+", 
             SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m2", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]]}], ")"}]}], "+", 
   RowBox[{"Qr", " ", 
    RowBox[{"(", 
     RowBox[{
      FractionBox[
       RowBox[{"m2", " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G2", " ", "m1"}], "+", 
          RowBox[{"2", " ", "G1", " ", "m2"}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m1", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G1", " ", "m1"}]], ")"}], " ", 
        SuperscriptBox["m1", "3"]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "+", 
      FractionBox[
       RowBox[{"G1", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "3"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", "m1"}], "+", 
          RowBox[{"G1", " ", "G2", " ", "m2"}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", 
            SuperscriptBox["m1", "2"]}], "+", 
           SuperscriptBox["mi", "2"], "+", 
           SuperscriptBox["mj", "2"], "-", "s", "-", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G1", " ", "m1"}]], ")"}], " ", 
        SuperscriptBox["m1", "2"]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "-", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          RowBox[{"m1", " ", 
           SuperscriptBox["G1", "3"]}], "+", 
          RowBox[{"G2", " ", "m2", " ", 
           SuperscriptBox["G1", "2"]}], "+", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["m1", "3"], "-", 
             RowBox[{"2", " ", "m1", " ", 
              SuperscriptBox["m2", "2"]}]}], ")"}], " ", "G1"}], "-", 
          RowBox[{"G2", " ", 
           SuperscriptBox["m1", "2"], " ", "m2"}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", 
            SuperscriptBox["m1", "2"]}], "+", 
           SuperscriptBox["mi", "2"], "+", 
           SuperscriptBox["mj", "2"], "-", "s", "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G1", " ", "m1"}]], ")"}], " ", 
        SuperscriptBox["m1", "2"]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "-", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "-", 
          RowBox[{
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["m1", "2"], "+", 
             SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m1", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}], " ", 
        SuperscriptBox["m1", "2"]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "+", 
      FractionBox[
       RowBox[{
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "-", 
          RowBox[{
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["m1", "2"], "+", 
             SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m1", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}], " ", 
        SuperscriptBox["m1", "2"]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "+", 
      FractionBox[
       RowBox[{
        SuperscriptBox["m2", "3"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"2", " ", "G2", " ", "m1"}], "+", 
          RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m2", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "+", "s", "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G2", " ", "m2"}]], ")"}], " ", "m1"}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "+", 
      FractionBox[
       RowBox[{"G2", " ", 
        SuperscriptBox["m2", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m2", "3"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", "m2"}], "+", 
          RowBox[{"G1", " ", "G2", " ", "m1"}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", 
            SuperscriptBox["m2", "2"]}], "+", 
           SuperscriptBox["mi", "2"], "+", 
           SuperscriptBox["mj", "2"], "-", "s", "-", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G2", " ", "m2"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "-", 
      FractionBox[
       RowBox[{
        SuperscriptBox["m2", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{"G1", " ", "m1", " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["G2", "2"], "-", 
             SuperscriptBox["m2", "2"]}], ")"}]}], "+", 
          RowBox[{"G2", " ", "m2", " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["G2", "2"], "-", 
             RowBox[{"2", " ", 
              SuperscriptBox["m1", "2"]}], "+", 
             SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
        RowBox[{
         SuperscriptBox["tan", 
          RowBox[{"-", "1"}]], "(", 
         FractionBox[
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", 
            SuperscriptBox["m2", "2"]}], "+", 
           SuperscriptBox["mi", "2"], "+", 
           SuperscriptBox["mj", "2"], "-", "s", "+", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}]}], 
          RowBox[{"2", " ", "G2", " ", "m2"}]], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m2", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
        SuperscriptBox["m2", "4"], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}]}]], "-", 
      FractionBox[
       RowBox[{
        SuperscriptBox["m2", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m2", "4"], "-", 
          RowBox[{
           SuperscriptBox["m1", "2"], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["m1", "2"], "+", 
             SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m2", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "-", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "+", 
      FractionBox[
       RowBox[{
        SuperscriptBox["m2", "2"], " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m2", "4"], "-", 
          RowBox[{
           SuperscriptBox["m1", "2"], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           RowBox[{"(", 
            RowBox[{
             SuperscriptBox["m1", "2"], "+", 
             SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"4", " ", 
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          SuperscriptBox[
           RowBox[{"(", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "2"}], " ", 
              SuperscriptBox["m2", "2"]}], "+", 
             SuperscriptBox["mi", "2"], "+", 
             SuperscriptBox["mj", "2"], "-", "s", "+", 
             RowBox[{"2", " ", "p", " ", 
              SqrtBox["s"]}]}], ")"}], "2"]}], ")"}]}], 
       RowBox[{"2", " ", 
        RowBox[{"(", 
         RowBox[{
          SuperscriptBox["m1", "4"], "+", 
          RowBox[{
           SuperscriptBox["G1", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          RowBox[{"2", " ", "G1", " ", "G2", " ", "m2", " ", "m1"}], "+", 
          SuperscriptBox["m2", "4"], "+", 
          RowBox[{
           SuperscriptBox["G2", "2"], " ", 
           SuperscriptBox["m2", "2"]}]}], ")"}]}]], "+", 
      RowBox[{"2", " ", "p", " ", 
       SqrtBox["s"]}]}], ")"}]}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.917069845357654*^9, 3.91716365263303*^9},
 CellLabel->"Out[23]=",ExpressionUUID->"24a65a5b-5073-4df9-a999-710b729cb244"]
}, Open  ]]
}, Closed]]
}, Closed]],

Cell[CellGroupData[{

Cell["Non-BW integrals", "Section",
 CellChangeTimes->{{3.917069410962013*^9, 3.917069418498351*^9}, {
  3.917081606864314*^9, 
  3.917081608481016*^9}},ExpressionUUID->"f81ebb78-53b5-4e61-bc6e-\
09828b669887"],

Cell["Integrals using real masses, with potential divergences.", "Text",
 CellChangeTimes->{{3.9171634007373133`*^9, 
  3.9171634112753353`*^9}},ExpressionUUID->"4b555f3f-45b0-462d-bfab-\
cecb9653ff4c"],

Cell[CellGroupData[{

Cell["1. Order", "Subsection",
 CellChangeTimes->{{3.917025227922555*^9, 3.917025271029772*^9}, 
   3.9171626764840384`*^9},ExpressionUUID->"7ddf84ab-1056-47f8-b280-\
9737d7932704"],

Cell[BoxData[
 RowBox[{
  RowBox[{"Integrand", " ", "=", " ", 
   FractionBox["Qr", 
    RowBox[{"(", 
     RowBox[{"t", "-", 
      RowBox[{"m", "^", "2"}]}], ")"}]]}], ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917163318622574*^9, 3.9171633296836967`*^9}},
 CellLabel->"In[4]:=",ExpressionUUID->"d2105ef0-a5c5-4fc6-9df9-126915b39fe2"],

Cell[BoxData[
 RowBox[{
  RowBox[{"T10NBW", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{"Integrand", ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917020579687379*^9, 3.9170206138128*^9}, {
   3.917020650785079*^9, 3.917020712693746*^9}, {3.917020745463553*^9, 
   3.917020756275837*^9}, {3.917020839173951*^9, 3.917020916471318*^9}, {
   3.9170210200257473`*^9, 3.917021046227954*^9}, 3.917021126880755*^9, {
   3.917021479852037*^9, 3.917021481870022*^9}, {3.917021574479363*^9, 
   3.917021577324326*^9}, {3.917021760279341*^9, 3.917021777187256*^9}, {
   3.917023922689317*^9, 3.917023945001693*^9}, 3.917023995237533*^9, {
   3.917024086706421*^9, 3.917024112118618*^9}, {3.917025222456279*^9, 
   3.91702522276194*^9}, {3.917069330129574*^9, 3.917069335277862*^9}, {
   3.917081692806446*^9, 3.9170817193679743`*^9}, {3.917082578268094*^9, 
   3.917082578414396*^9}, {3.917163310401092*^9, 3.917163312280572*^9}},
 CellLabel->"In[5]:=",ExpressionUUID->"cd197911-5dce-419d-aadb-2eb95cf13a4a"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"T10NBW", " ", "//", " ", "TrigToExp"}], " ", "//", " ", 
     "Simplify"}], " ", "//", " ", "Expand"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"Qr", ",", " ", "Qi"}], "}"}], ",", " ", 
   RowBox[{
    RowBox[{"Collect", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Log", "[", "_", "]"}], ",", " ", 
        RowBox[{"ArcTan", "[", "_", "]"}]}], "}"}], ",", " ", "Simplify"}], 
     "]"}], "&"}]}], "]"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917024664794911*^9, 3.91702467752075*^9}, 
   3.91706933323867*^9, {3.917081725702656*^9, 3.9170817258337603`*^9}, {
   3.918092493300721*^9, 3.9180925151858883`*^9}, {3.918092558647481*^9, 
   3.918092560872838*^9}},
 CellLabel->"In[7]:=",ExpressionUUID->"649388f9-60f9-44e8-b21e-a2929db41f55"],

Cell[BoxData[
 FormBox[
  RowBox[{"Qr", " ", 
   RowBox[{"log", "(", 
    RowBox[{"-", 
     FractionBox[
      RowBox[{
       RowBox[{"-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m", "2"]}]}], "+", 
       SuperscriptBox["mi", "2"], "+", 
       SuperscriptBox["mj", "2"], "+", 
       RowBox[{"2", " ", "p", " ", 
        SqrtBox["s"]}], "-", "s"}], 
      RowBox[{
       RowBox[{"2", " ", 
        SuperscriptBox["m", "2"]}], "-", 
       SuperscriptBox["mi", "2"], "-", 
       SuperscriptBox["mj", "2"], "+", 
       RowBox[{"2", " ", "p", " ", 
        SqrtBox["s"]}], "+", "s"}]]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.9170246778756657`*^9, 3.917025622840244*^9, 3.917066795740834*^9, 
   3.91706906981486*^9, 3.917069524302874*^9, 3.917081784239262*^9, 
   3.917082236503879*^9, 3.917082607574113*^9, 3.917163665840036*^9, {
   3.9180925487880507`*^9, 3.9180925626562643`*^9}},
 CellLabel->"Out[7]=",ExpressionUUID->"b0ffd75c-8119-4a2c-9450-4fb49a96c94e"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"T11NBW", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{"t", "*", "Integrand"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917020579687379*^9, 3.9170206138128*^9}, {
   3.917020650785079*^9, 3.917020712693746*^9}, {3.917020745463553*^9, 
   3.917020756275837*^9}, {3.917020839173951*^9, 3.917020916471318*^9}, {
   3.9170210200257473`*^9, 3.917021046227954*^9}, 3.917021126880755*^9, {
   3.917021479852037*^9, 3.917021481870022*^9}, {3.917021574479363*^9, 
   3.917021577324326*^9}, {3.917021760279341*^9, 3.917021777187256*^9}, {
   3.917023922689317*^9, 3.917023945001693*^9}, 3.917023995237533*^9, {
   3.917024086706421*^9, 3.917024112118618*^9}, {3.917025222456279*^9, 
   3.91702522276194*^9}, {3.917069330129574*^9, 3.917069335277862*^9}, {
   3.917081692806446*^9, 3.9170817468746166`*^9}, {3.917082582616878*^9, 
   3.917082582708736*^9}, {3.9171633353437767`*^9, 3.917163340508354*^9}},
 CellLabel->"In[8]:=",ExpressionUUID->"d0f06565-893d-4ea4-953d-817e05bfd04c"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"T11NBW", " ", "//", " ", "Simplify"}], " ", "//", " ", 
    "Expand"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"Qr", ",", " ", "Qi"}], "}"}], ",", " ", 
   RowBox[{
    RowBox[{"Collect", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Log", "[", "_", "]"}], ",", " ", 
        RowBox[{"ArcTan", "[", "_", "]"}]}], "}"}], ",", " ", "Simplify"}], 
     "]"}], "&"}]}], "]"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917024331944708*^9, 3.917024452898083*^9}, 
   3.917069350953891*^9, {3.91708175650267*^9, 3.917081756758171*^9}, {
   3.9180926061592712`*^9, 3.918092608403789*^9}},
 CellLabel->"In[9]:=",ExpressionUUID->"3c720c3b-0b03-4c4f-b328-ab6a5593fb8d"],

Cell[BoxData[
 FormBox[
  RowBox[{"Qr", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{
      SuperscriptBox["m", "2"], " ", 
      RowBox[{"(", 
       RowBox[{"-", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"-", 
           RowBox[{"2", " ", 
            SuperscriptBox["m", "2"]}]}], "+", 
          SuperscriptBox["mi", "2"], "+", 
          SuperscriptBox["mj", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "-", "s"}], ")"}]}], ")"}]}], "+", 
     RowBox[{
      SuperscriptBox["m", "2"], " ", 
      RowBox[{"log", "(", 
       RowBox[{
        RowBox[{"-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m", "2"]}]}], "+", 
        SuperscriptBox["mi", "2"], "+", 
        SuperscriptBox["mj", "2"], "+", 
        RowBox[{"2", " ", "p", " ", 
         SqrtBox["s"]}], "-", "s"}], ")"}]}], "+", 
     RowBox[{"2", " ", "p", " ", 
      SqrtBox["s"]}]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.917024376216514*^9, 3.9170243974658422`*^9}, 
   3.917024453906012*^9, 3.9170256657245293`*^9, 3.917066837753384*^9, 
   3.9170691116698413`*^9, 3.917069566444757*^9, 3.917081811329129*^9, 
   3.917082266146209*^9, 3.917082634335226*^9, 3.917163694173165*^9, 
   3.918092646404492*^9},
 CellLabel->"Out[9]=",ExpressionUUID->"71f27745-b3c4-4721-90e2-7717b0067725"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"T12NBW", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"t", "^", "2"}], "*", "Integrand"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917020579687379*^9, 3.9170206138128*^9}, {
   3.917020650785079*^9, 3.917020712693746*^9}, {3.917020745463553*^9, 
   3.917020756275837*^9}, {3.917020839173951*^9, 3.917020916471318*^9}, {
   3.9170210200257473`*^9, 3.917021046227954*^9}, 3.917021126880755*^9, {
   3.917021479852037*^9, 3.917021481870022*^9}, {3.917021574479363*^9, 
   3.917021577324326*^9}, {3.917021760279341*^9, 3.917021777187256*^9}, {
   3.917023922689317*^9, 3.917023945001693*^9}, 3.917023995237533*^9, {
   3.917024086706421*^9, 3.917024112118618*^9}, {3.917025222456279*^9, 
   3.91702522276194*^9}, {3.917069330129574*^9, 3.917069335277862*^9}, {
   3.917081692806446*^9, 3.917081752840431*^9}, {3.917082585124991*^9, 
   3.9170825852473*^9}, {3.917163344672005*^9, 3.917163347912871*^9}},
 CellLabel->"In[10]:=",ExpressionUUID->"03e00499-2b21-459b-94d0-fde456fe6d80"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{"T12NBW", " ", "/.", " ", 
       RowBox[{
        RowBox[{"p", "^", "2"}], " ", "->", " ", 
        FractionBox[
         RowBox[{
          RowBox[{"(", 
           RowBox[{"s", "-", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"mi", "+", "mj"}], ")"}], "^", "2"}]}], ")"}], 
          RowBox[{"(", 
           RowBox[{"s", "-", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"mi", "-", "mj"}], ")"}], "^", "2"}]}], ")"}]}], 
         RowBox[{"4", "s"}]]}]}], ")"}], " ", "//", " ", "Simplify"}], " ", "//",
     " ", "Expand"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"Qr", ",", " ", "Qi"}], "}"}], ",", " ", 
   RowBox[{
    RowBox[{"Collect", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Log", "[", "_", "]"}], ",", " ", 
        RowBox[{"ArcTan", "[", "_", "]"}]}], "}"}], ",", " ", "Simplify"}], 
     "]"}], "&"}]}], "]"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917024477688204*^9, 3.917024479547676*^9}, {
   3.917024523160954*^9, 3.917024561113356*^9}, 3.91706935886095*^9, {
   3.917081760197529*^9, 3.917081760381342*^9}, {3.9180926141358967`*^9, 
   3.9180926160386257`*^9}},
 CellLabel->"In[11]:=",ExpressionUUID->"91dcff84-9a02-48df-8cad-ef5bcba6e40a"],

Cell[BoxData[
 FormBox[
  RowBox[{"Qr", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"p", " ", 
      SqrtBox["s"], " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         SuperscriptBox["m", "2"]}], "+", 
        SuperscriptBox["mi", "2"], "+", 
        SuperscriptBox["mj", "2"], "-", "s"}], ")"}]}], "+", 
     RowBox[{
      SuperscriptBox["m", "4"], " ", 
      RowBox[{"(", 
       RowBox[{"-", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"-", 
           RowBox[{"2", " ", 
            SuperscriptBox["m", "2"]}]}], "+", 
          SuperscriptBox["mi", "2"], "+", 
          SuperscriptBox["mj", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "-", "s"}], ")"}]}], ")"}]}], "+", 
     RowBox[{
      SuperscriptBox["m", "4"], " ", 
      RowBox[{"log", "(", 
       RowBox[{
        RowBox[{"-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m", "2"]}]}], "+", 
        SuperscriptBox["mi", "2"], "+", 
        SuperscriptBox["mj", "2"], "+", 
        RowBox[{"2", " ", "p", " ", 
         SqrtBox["s"]}], "-", "s"}], ")"}]}]}], ")"}]}], 
  TraditionalForm]], "Output",
 CellChangeTimes->{3.917024480455438*^9, 3.917024569161402*^9, 
  3.9170257131893997`*^9, 3.917066884365847*^9, 3.91706915822654*^9, 
  3.917069613052601*^9, 3.9170818320107183`*^9, 3.917082286610065*^9, 
  3.91708265536493*^9, 3.91716371889316*^9, 3.918092667194014*^9},
 CellLabel->"Out[11]=",ExpressionUUID->"b3dd0c12-8313-45c3-90a0-2ea2f7e0c713"]
}, Open  ]]
}, Closed]],

Cell[CellGroupData[{

Cell["2.  Order", "Subsection",
 CellChangeTimes->{{3.917025227922555*^9, 3.917025271029772*^9}, {
   3.917082286067828*^9, 3.9170822861348457`*^9}, 
   3.9171626786189127`*^9},ExpressionUUID->"aa6784c4-1654-45f2-b6de-\
1e8fab4de41f"],

Cell[BoxData[
 RowBox[{
  RowBox[{"Integrand", " ", "=", " ", 
   FractionBox["Qr", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"t", "-", 
       RowBox[{"m1", "^", "2"}]}], ")"}], 
     RowBox[{"(", 
      RowBox[{"t", "-", 
       RowBox[{"m2", "^", "2"}]}], ")"}]}]]}], ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917163361683544*^9, 3.917163371704992*^9}},
 CellLabel->"In[31]:=",ExpressionUUID->"cb26f5f5-fe73-4998-9315-7d37dc3ef7cd"],

Cell[BoxData[
 RowBox[{
  RowBox[{"T20NBW", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{"Integrand", ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917020579687379*^9, 3.9170206138128*^9}, {
   3.917020650785079*^9, 3.917020712693746*^9}, {3.917020745463553*^9, 
   3.917020756275837*^9}, {3.917020839173951*^9, 3.917020916471318*^9}, {
   3.9170210200257473`*^9, 3.917021046227954*^9}, 3.917021126880755*^9, {
   3.917021479852037*^9, 3.917021481870022*^9}, {3.917021574479363*^9, 
   3.917021577324326*^9}, {3.917021760279341*^9, 3.917021777187256*^9}, {
   3.917023922689317*^9, 3.917023945001693*^9}, 3.917023995237533*^9, {
   3.917024086706421*^9, 3.917024112118618*^9}, {3.917025222456279*^9, 
   3.91702522276194*^9}, {3.917069330129574*^9, 3.917069335277862*^9}, {
   3.917081692806446*^9, 3.9170817193679733`*^9}, {3.917082291607188*^9, 
   3.9170822941193447`*^9}, {3.917082412610075*^9, 3.917082412636932*^9}, {
   3.917082550518083*^9, 3.917082555308918*^9}, {3.917083115121769*^9, 
   3.917083115177803*^9}, {3.917163366085539*^9, 3.917163367425077*^9}},
 CellLabel->"In[32]:=",ExpressionUUID->"d13db18a-36cf-444a-a278-2b69657d74bf"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{"T20NBW", " ", "/.", " ", 
      RowBox[{
       RowBox[{"p", "^", "2"}], " ", "->", " ", 
       FractionBox[
        RowBox[{
         RowBox[{"(", 
          RowBox[{"s", "-", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"mi", "+", "mj"}], ")"}], "^", "2"}]}], ")"}], 
         RowBox[{"(", 
          RowBox[{"s", "-", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"mi", "-", "mj"}], ")"}], "^", "2"}]}], ")"}]}], 
        RowBox[{"4", "s"}]]}]}], ")"}], " ", "//", " ", "Expand"}], ",", " ", 
   
   RowBox[{"{", 
    RowBox[{"Qr", ",", " ", "Qi"}], "}"}], ",", " ", 
   RowBox[{
    RowBox[{"Collect", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Log", "[", "_", "]"}], ",", " ", 
        RowBox[{"ArcTan", "[", "_", "]"}]}], "}"}], ",", " ", "Simplify"}], 
     "]"}], "&"}]}], "]"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917024664794911*^9, 3.91702467752075*^9}, 
   3.9170693332386703`*^9, {3.917081725702656*^9, 3.9170817258337603`*^9}, {
   3.917082415560532*^9, 3.9170824156353283`*^9}, {3.917083050396578*^9, 
   3.917083054848777*^9}},
 CellLabel->"In[33]:=",ExpressionUUID->"8b30bffb-67af-4d73-8090-1e86198263cf"],

Cell[BoxData[
 FormBox[
  RowBox[{"Qr", " ", 
   RowBox[{"(", 
    RowBox[{
     FractionBox[
      RowBox[{"log", "(", 
       RowBox[{
        RowBox[{"-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"]}]}], "+", 
        SuperscriptBox["mi", "2"], "+", 
        SuperscriptBox["mj", "2"], "-", 
        RowBox[{"2", " ", "p", " ", 
         SqrtBox["s"]}], "-", "s"}], ")"}], 
      RowBox[{
       SuperscriptBox["m2", "2"], "-", 
       SuperscriptBox["m1", "2"]}]], "+", 
     FractionBox[
      RowBox[{"log", "(", 
       RowBox[{
        RowBox[{"-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m2", "2"]}]}], "+", 
        SuperscriptBox["mi", "2"], "+", 
        SuperscriptBox["mj", "2"], "-", 
        RowBox[{"2", " ", "p", " ", 
         SqrtBox["s"]}], "-", "s"}], ")"}], 
      RowBox[{
       SuperscriptBox["m1", "2"], "-", 
       SuperscriptBox["m2", "2"]}]], "+", 
     FractionBox[
      RowBox[{"log", "(", 
       RowBox[{
        RowBox[{"-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"]}]}], "+", 
        SuperscriptBox["mi", "2"], "+", 
        SuperscriptBox["mj", "2"], "+", 
        RowBox[{"2", " ", "p", " ", 
         SqrtBox["s"]}], "-", "s"}], ")"}], 
      RowBox[{
       SuperscriptBox["m1", "2"], "-", 
       SuperscriptBox["m2", "2"]}]], "+", 
     FractionBox[
      RowBox[{"log", "(", 
       RowBox[{
        RowBox[{"-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m2", "2"]}]}], "+", 
        SuperscriptBox["mi", "2"], "+", 
        SuperscriptBox["mj", "2"], "+", 
        RowBox[{"2", " ", "p", " ", 
         SqrtBox["s"]}], "-", "s"}], ")"}], 
      RowBox[{
       SuperscriptBox["m2", "2"], "-", 
       SuperscriptBox["m1", "2"]}]]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.9170246778756657`*^9, 3.9170256228402443`*^9, 
  3.917066795740834*^9, 3.91706906981486*^9, 3.917069524302874*^9, 
  3.917081784239262*^9, 3.917082236503879*^9, 3.9170823210848503`*^9, 
  3.917082444165923*^9, 3.9170826676483192`*^9, 3.9170830634328136`*^9, 
  3.917083183318741*^9, 3.917163778568095*^9},
 CellLabel->"Out[33]=",ExpressionUUID->"d5519f7d-31b5-4ce8-b846-0a37c2f9603e"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"T21NBW", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{"t", "*", "Integrand"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917020579687379*^9, 3.9170206138128*^9}, {
   3.917020650785079*^9, 3.917020712693746*^9}, {3.917020745463553*^9, 
   3.917020756275837*^9}, {3.917020839173951*^9, 3.917020916471318*^9}, {
   3.9170210200257473`*^9, 3.917021046227954*^9}, 3.917021126880755*^9, {
   3.917021479852037*^9, 3.917021481870022*^9}, {3.917021574479363*^9, 
   3.917021577324326*^9}, {3.917021760279341*^9, 3.917021777187256*^9}, {
   3.917023922689317*^9, 3.917023945001693*^9}, 3.917023995237533*^9, {
   3.917024086706421*^9, 3.917024112118618*^9}, {3.917025222456279*^9, 
   3.91702522276194*^9}, {3.917069330129574*^9, 3.917069335277862*^9}, {
   3.917081692806446*^9, 3.9170817468746157`*^9}, 3.917082300672118*^9, {
   3.917082417698749*^9, 3.917082417729314*^9}, 3.917082566352906*^9, {
   3.917083117925973*^9, 3.917083117987858*^9}, {3.917163380780294*^9, 
   3.917163381083357*^9}},
 CellLabel->"In[34]:=",ExpressionUUID->"c255e267-ce5b-4c1a-bc0a-d5cbe45d6562"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{"T21NBW", " ", "/.", " ", 
      RowBox[{
       RowBox[{"p", "^", "2"}], " ", "->", " ", 
       FractionBox[
        RowBox[{
         RowBox[{"(", 
          RowBox[{"s", "-", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"mi", "+", "mj"}], ")"}], "^", "2"}]}], ")"}], 
         RowBox[{"(", 
          RowBox[{"s", "-", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"mi", "-", "mj"}], ")"}], "^", "2"}]}], ")"}]}], 
        RowBox[{"4", "s"}]]}]}], ")"}], " ", "//", " ", "Expand"}], ",", " ", 
   
   RowBox[{"{", 
    RowBox[{"Qr", ",", " ", "Qi"}], "}"}], ",", " ", 
   RowBox[{
    RowBox[{"Collect", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Log", "[", "_", "]"}], ",", " ", 
        RowBox[{"ArcTan", "[", "_", "]"}]}], "}"}], ",", " ", "Simplify"}], 
     "]"}], "&"}]}], "]"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917024331944708*^9, 3.917024452898083*^9}, 
   3.9170693509538913`*^9, {3.9170817565026693`*^9, 3.917081756758171*^9}, {
   3.9170824201871023`*^9, 3.917082420231886*^9}, {3.917083052657174*^9, 
   3.917083060786858*^9}},
 CellLabel->"In[35]:=",ExpressionUUID->"68fd3b0c-b228-4701-8882-6e95bf052fd0"],

Cell[BoxData[
 FormBox[
  RowBox[{"Qr", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"-", 
      FractionBox[
       RowBox[{
        SuperscriptBox["m1", "2"], " ", 
        RowBox[{"log", "(", 
         RowBox[{
          RowBox[{"-", 
           RowBox[{"2", " ", 
            SuperscriptBox["m1", "2"]}]}], "+", 
          SuperscriptBox["mi", "2"], "+", 
          SuperscriptBox["mj", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "-", "s"}], ")"}]}], 
       RowBox[{
        SuperscriptBox["m1", "2"], "-", 
        SuperscriptBox["m2", "2"]}]]}], "+", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m1", "2"], " ", 
       RowBox[{"log", "(", 
        RowBox[{
         RowBox[{"-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m1", "2"]}]}], "+", 
         SuperscriptBox["mi", "2"], "+", 
         SuperscriptBox["mj", "2"], "+", 
         RowBox[{"2", " ", "p", " ", 
          SqrtBox["s"]}], "-", "s"}], ")"}]}], 
      RowBox[{
       SuperscriptBox["m1", "2"], "-", 
       SuperscriptBox["m2", "2"]}]], "+", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m2", "2"], " ", 
       RowBox[{"log", "(", 
        RowBox[{
         RowBox[{"-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"]}]}], "+", 
         SuperscriptBox["mi", "2"], "+", 
         SuperscriptBox["mj", "2"], "-", 
         RowBox[{"2", " ", "p", " ", 
          SqrtBox["s"]}], "-", "s"}], ")"}]}], 
      RowBox[{
       SuperscriptBox["m1", "2"], "-", 
       SuperscriptBox["m2", "2"]}]], "+", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m2", "2"], " ", 
       RowBox[{"log", "(", 
        RowBox[{
         RowBox[{"-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"]}]}], "+", 
         SuperscriptBox["mi", "2"], "+", 
         SuperscriptBox["mj", "2"], "+", 
         RowBox[{"2", " ", "p", " ", 
          SqrtBox["s"]}], "-", "s"}], ")"}]}], 
      RowBox[{
       SuperscriptBox["m2", "2"], "-", 
       SuperscriptBox["m1", "2"]}]]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{{3.9170243762165136`*^9, 3.9170243974658422`*^9}, 
   3.917024453906012*^9, 3.9170256657245293`*^9, 3.917066837753384*^9, 
   3.9170691116698422`*^9, 3.917069566444757*^9, 3.917081811329129*^9, 
   3.917082266146209*^9, 3.9170823405592833`*^9, 3.9170824601503487`*^9, 
   3.917082687483477*^9, 3.917083065333617*^9, 3.9170832301511307`*^9, 
   3.91716383021731*^9},
 CellLabel->"Out[35]=",ExpressionUUID->"f9499b78-6db3-421b-8053-bc2393feebbf"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"T22NBW", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"t", "^", "2"}], "*", "Integrand"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917020579687379*^9, 3.9170206138128*^9}, {
   3.917020650785079*^9, 3.917020712693746*^9}, {3.917020745463553*^9, 
   3.917020756275837*^9}, {3.917020839173951*^9, 3.917020916471318*^9}, {
   3.9170210200257473`*^9, 3.917021046227954*^9}, 3.917021126880755*^9, {
   3.917021479852037*^9, 3.917021481870022*^9}, {3.917021574479363*^9, 
   3.917021577324326*^9}, {3.917021760279341*^9, 3.917021777187256*^9}, {
   3.917023922689317*^9, 3.917023945001693*^9}, 3.917023995237533*^9, {
   3.917024086706421*^9, 3.917024112118618*^9}, {3.917025222456279*^9, 
   3.91702522276194*^9}, {3.917069330129574*^9, 3.917069335277862*^9}, {
   3.917081692806446*^9, 3.917081752840431*^9}, 3.917082307566885*^9, {
   3.9170824219827623`*^9, 3.917082422046689*^9}, 3.917082568779158*^9, {
   3.917083121806594*^9, 3.917083121881103*^9}, {3.917163384568548*^9, 
   3.917163384858014*^9}},
 CellLabel->"In[36]:=",ExpressionUUID->"38ebcec4-ceec-427f-ae59-cbc263141644"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"(", 
     RowBox[{"T22NBW", " ", "/.", " ", 
      RowBox[{
       RowBox[{"p", "^", "2"}], " ", "->", " ", 
       FractionBox[
        RowBox[{
         RowBox[{"(", 
          RowBox[{"s", "-", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"mi", "+", "mj"}], ")"}], "^", "2"}]}], ")"}], 
         RowBox[{"(", 
          RowBox[{"s", "-", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"mi", "-", "mj"}], ")"}], "^", "2"}]}], ")"}]}], 
        RowBox[{"4", "s"}]]}]}], ")"}], " ", "//", " ", "Expand"}], ",", " ", 
   
   RowBox[{"{", 
    RowBox[{"Qr", ",", " ", "Qi"}], "}"}], ",", " ", 
   RowBox[{
    RowBox[{"Collect", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Log", "[", "_", "]"}], ",", " ", 
        RowBox[{"ArcTan", "[", "_", "]"}]}], "}"}], ",", " ", "Simplify"}], 
     "]"}], "&"}]}], "]"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917024477688204*^9, 3.917024479547676*^9}, {
   3.917024523160954*^9, 3.917024561113356*^9}, 3.91706935886095*^9, {
   3.917081760197529*^9, 3.917081760381342*^9}, {3.917082425228383*^9, 
   3.917082425260157*^9}},
 CellLabel->"In[37]:=",ExpressionUUID->"689363d0-f5ac-4894-a4c3-faf2bb973b00"],

Cell[BoxData[
 FormBox[
  RowBox[{"Qr", " ", 
   RowBox[{"(", 
    RowBox[{
     FractionBox[
      RowBox[{
       SuperscriptBox["m2", "4"], " ", 
       RowBox[{"log", "(", 
        RowBox[{
         RowBox[{"-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"]}]}], "+", 
         SuperscriptBox["mi", "2"], "+", 
         SuperscriptBox["mj", "2"], "-", 
         RowBox[{"2", " ", "p", " ", 
          SqrtBox["s"]}], "-", "s"}], ")"}]}], 
      RowBox[{
       SuperscriptBox["m1", "2"], "-", 
       SuperscriptBox["m2", "2"]}]], "+", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m2", "4"], " ", 
       RowBox[{"log", "(", 
        RowBox[{
         RowBox[{"-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"]}]}], "+", 
         SuperscriptBox["mi", "2"], "+", 
         SuperscriptBox["mj", "2"], "+", 
         RowBox[{"2", " ", "p", " ", 
          SqrtBox["s"]}], "-", "s"}], ")"}]}], 
      RowBox[{
       SuperscriptBox["m2", "2"], "-", 
       SuperscriptBox["m1", "2"]}]], "-", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m1", "4"], " ", 
       RowBox[{"log", "(", 
        RowBox[{
         RowBox[{"-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m1", "2"]}]}], "+", 
         SuperscriptBox["mi", "2"], "+", 
         SuperscriptBox["mj", "2"], "-", 
         RowBox[{"2", " ", "p", " ", 
          SqrtBox["s"]}], "-", "s"}], ")"}]}], 
      RowBox[{
       SuperscriptBox["m1", "2"], "-", 
       SuperscriptBox["m2", "2"]}]], "+", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m1", "4"], " ", 
       RowBox[{"log", "(", 
        RowBox[{
         RowBox[{"-", 
          RowBox[{"2", " ", 
           SuperscriptBox["m1", "2"]}]}], "+", 
         SuperscriptBox["mi", "2"], "+", 
         SuperscriptBox["mj", "2"], "+", 
         RowBox[{"2", " ", "p", " ", 
          SqrtBox["s"]}], "-", "s"}], ")"}]}], 
      RowBox[{
       SuperscriptBox["m1", "2"], "-", 
       SuperscriptBox["m2", "2"]}]], "+", 
     RowBox[{"2", " ", "p", " ", 
      SqrtBox["s"]}]}], ")"}]}], TraditionalForm]], "Output",
 CellChangeTimes->{3.917024480455438*^9, 3.917024569161402*^9, 
  3.9170257131893997`*^9, 3.917066884365847*^9, 3.91706915822654*^9, 
  3.917069613052601*^9, 3.9170818320107183`*^9, 3.91708236519018*^9, 
  3.917082480674532*^9, 3.917082712079482*^9, 3.917083278264779*^9, 
  3.917163879242464*^9},
 CellLabel->"Out[37]=",ExpressionUUID->"8bb9a365-775e-459f-bfcc-a7b0daa39935"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["2.  Order like masses", "Subsection",
 CellChangeTimes->{{3.917025227922555*^9, 3.917025271029772*^9}, {
   3.917082286067828*^9, 3.9170822861348453`*^9}, 3.917162678618913*^9, {
   3.9180930855009823`*^9, 
   3.918093088136661*^9}},ExpressionUUID->"1167e2b7-9bf8-4207-8a25-\
519f473a54fe"],

Cell[BoxData[
 RowBox[{
  RowBox[{"Integrand", " ", "=", " ", 
   FractionBox["Qr", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"t", "-", 
       RowBox[{"m", "^", "2"}]}], ")"}], "^", "2"}]]}], ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917163361683544*^9, 3.917163371704992*^9}, {
  3.91809309196307*^9, 3.918093099342229*^9}},
 CellLabel->"In[5]:=",ExpressionUUID->"19bc3be3-59f1-4a6e-af44-0d507c3b1df8"],

Cell[BoxData[
 RowBox[{
  RowBox[{"T20NBWlm", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{"Integrand", ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917020579687379*^9, 3.9170206138128*^9}, {
   3.917020650785079*^9, 3.917020712693746*^9}, {3.917020745463553*^9, 
   3.917020756275837*^9}, {3.917020839173951*^9, 3.917020916471318*^9}, {
   3.9170210200257473`*^9, 3.917021046227954*^9}, 3.917021126880755*^9, {
   3.917021479852037*^9, 3.917021481870022*^9}, {3.917021574479363*^9, 
   3.917021577324326*^9}, {3.917021760279341*^9, 3.917021777187256*^9}, {
   3.917023922689317*^9, 3.917023945001693*^9}, 3.917023995237533*^9, {
   3.917024086706421*^9, 3.917024112118618*^9}, {3.917025222456279*^9, 
   3.91702522276194*^9}, {3.917069330129574*^9, 3.917069335277862*^9}, {
   3.917081692806446*^9, 3.9170817193679743`*^9}, {3.917082291607188*^9, 
   3.9170822941193447`*^9}, {3.917082412610075*^9, 3.917082412636932*^9}, {
   3.917082550518083*^9, 3.917082555308918*^9}, {3.917083115121769*^9, 
   3.917083115177803*^9}, {3.917163366085539*^9, 3.917163367425077*^9}, {
   3.918093110386491*^9, 3.918093112092709*^9}},
 CellLabel->"In[6]:=",ExpressionUUID->"4e8c881c-eedd-48cc-8b70-da40ff2a5181"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{"T20NBWlm", " ", "/.", " ", 
       RowBox[{
        RowBox[{"p", "^", "2"}], " ", "->", " ", 
        FractionBox[
         RowBox[{
          RowBox[{"(", 
           RowBox[{"s", "-", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"mi", "+", "mj"}], ")"}], "^", "2"}]}], ")"}], 
          RowBox[{"(", 
           RowBox[{"s", "-", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"mi", "-", "mj"}], ")"}], "^", "2"}]}], ")"}]}], 
         RowBox[{"4", "s"}]]}]}], ")"}], " ", "//", " ", "Simplify"}], " ", "//",
     " ", "Expand"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"Qr", ",", " ", "Qi"}], "}"}], ",", " ", 
   RowBox[{
    RowBox[{"Collect", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Log", "[", "_", "]"}], ",", " ", 
        RowBox[{"ArcTan", "[", "_", "]"}]}], "}"}], ",", " ", "Simplify"}], 
     "]"}], "&"}]}], "]"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917024664794911*^9, 3.91702467752075*^9}, 
   3.91706933323867*^9, {3.917081725702656*^9, 3.9170817258337603`*^9}, {
   3.917082415560532*^9, 3.9170824156353283`*^9}, {3.917083050396578*^9, 
   3.917083054848777*^9}, {3.918093116694862*^9, 3.918093116764748*^9}, {
   3.9180931671648417`*^9, 3.918093170024651*^9}},
 CellLabel->"In[7]:=",ExpressionUUID->"abfc9a24-a53a-4b73-9bee-d76fe75b334c"],

Cell[BoxData[
 FractionBox[
  RowBox[{"2", " ", "p", " ", "Qr", " ", 
   SqrtBox["s"]}], 
  RowBox[{
   SuperscriptBox["m", "4"], "+", 
   RowBox[{
    SuperscriptBox["mi", "2"], " ", 
    SuperscriptBox["mj", "2"]}], "-", 
   RowBox[{
    SuperscriptBox["m", "2"], " ", 
    RowBox[{"(", 
     RowBox[{
      SuperscriptBox["mi", "2"], "+", 
      SuperscriptBox["mj", "2"], "-", "s"}], ")"}]}]}]]], "Output",
 CellChangeTimes->{3.9170246778756657`*^9, 3.917025622840244*^9, 
  3.917066795740834*^9, 3.91706906981486*^9, 3.917069524302874*^9, 
  3.917081784239262*^9, 3.917082236503879*^9, 3.91708232108485*^9, 
  3.917082444165923*^9, 3.9170826676483192`*^9, 3.9170830634328136`*^9, 
  3.917083183318741*^9, 3.917163778568095*^9, 3.918093144216654*^9, 
  3.918093192529881*^9, 3.918093399600718*^9},
 CellLabel->"Out[7]=",ExpressionUUID->"61299a13-5d6d-4c5e-be07-e9c109c631dc"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"T21NBWlm", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{"t", "*", "Integrand"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917020579687379*^9, 3.9170206138128*^9}, {
   3.917020650785079*^9, 3.917020712693746*^9}, {3.917020745463553*^9, 
   3.917020756275837*^9}, {3.917020839173951*^9, 3.917020916471318*^9}, {
   3.9170210200257473`*^9, 3.917021046227954*^9}, 3.917021126880755*^9, {
   3.917021479852037*^9, 3.917021481870022*^9}, {3.917021574479363*^9, 
   3.917021577324326*^9}, {3.917021760279341*^9, 3.917021777187256*^9}, {
   3.917023922689317*^9, 3.917023945001693*^9}, 3.917023995237533*^9, {
   3.917024086706421*^9, 3.917024112118618*^9}, {3.917025222456279*^9, 
   3.91702522276194*^9}, {3.917069330129574*^9, 3.917069335277862*^9}, {
   3.917081692806446*^9, 3.9170817468746166`*^9}, 3.917082300672118*^9, {
   3.917082417698749*^9, 3.917082417729314*^9}, 3.917082566352906*^9, {
   3.917083117925973*^9, 3.917083117987858*^9}, {3.917163380780294*^9, 
   3.917163381083357*^9}, {3.9180931195924463`*^9, 3.918093119661571*^9}},
 CellLabel->"In[8]:=",ExpressionUUID->"70f18d77-3ecb-42df-8093-d217dec0db83"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"(", 
       RowBox[{"T21NBWlm", " ", "/.", " ", 
        RowBox[{
         RowBox[{"p", "^", "2"}], " ", "->", " ", 
         FractionBox[
          RowBox[{
           RowBox[{"(", 
            RowBox[{"s", "-", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"mi", "+", "mj"}], ")"}], "^", "2"}]}], ")"}], 
           RowBox[{"(", 
            RowBox[{"s", "-", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"mi", "-", "mj"}], ")"}], "^", "2"}]}], ")"}]}], 
          RowBox[{"4", "s"}]]}]}], ")"}], " ", "//", " ", "TrigToExp"}], " ", 
     "//", " ", "Simplify"}], " ", "//", " ", "Expand"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"Qr", ",", " ", "Qi"}], "}"}], ",", " ", 
   RowBox[{
    RowBox[{"Collect", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Log", "[", "_", "]"}], ",", " ", 
        RowBox[{"ArcTan", "[", "_", "]"}]}], "}"}], ",", " ", "Simplify"}], 
     "]"}], "&"}]}], "]"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917024331944708*^9, 3.917024452898083*^9}, 
   3.917069350953891*^9, {3.91708175650267*^9, 3.917081756758171*^9}, {
   3.9170824201871023`*^9, 3.917082420231886*^9}, {3.917083052657174*^9, 
   3.917083060786858*^9}, {3.9180931223636913`*^9, 3.9180931224122057`*^9}, {
   3.918093175209054*^9, 3.9180931805805473`*^9}},
 CellLabel->"In[9]:=",ExpressionUUID->"365ffa77-8506-4e3b-bf1d-6d3629293cd9"],

Cell[BoxData[
 RowBox[{"Qr", " ", 
  RowBox[{"(", 
   RowBox[{
    FractionBox[
     RowBox[{"2", " ", 
      SuperscriptBox["m", "2"], " ", "p", " ", 
      SqrtBox["s"]}], 
     RowBox[{
      SuperscriptBox["m", "4"], "+", 
      RowBox[{
       SuperscriptBox["mi", "2"], " ", 
       SuperscriptBox["mj", "2"]}], "-", 
      RowBox[{
       SuperscriptBox["m", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["mi", "2"], "+", 
         SuperscriptBox["mj", "2"], "-", "s"}], ")"}]}]}]], "+", 
    RowBox[{"Log", "[", 
     RowBox[{"-", 
      FractionBox[
       RowBox[{
        RowBox[{
         RowBox[{"-", "2"}], " ", 
         SuperscriptBox["m", "2"]}], "+", 
        SuperscriptBox["mi", "2"], "+", 
        SuperscriptBox["mj", "2"], "+", 
        RowBox[{"2", " ", "p", " ", 
         SqrtBox["s"]}], "-", "s"}], 
       RowBox[{
        RowBox[{"2", " ", 
         SuperscriptBox["m", "2"]}], "-", 
        SuperscriptBox["mi", "2"], "-", 
        SuperscriptBox["mj", "2"], "+", 
        RowBox[{"2", " ", "p", " ", 
         SqrtBox["s"]}], "+", "s"}]]}], "]"}]}], ")"}]}]], "Output",
 CellChangeTimes->{{3.917024376216514*^9, 3.9170243974658422`*^9}, 
   3.917024453906012*^9, 3.9170256657245293`*^9, 3.917066837753384*^9, 
   3.9170691116698413`*^9, 3.917069566444757*^9, 3.917081811329129*^9, 
   3.917082266146209*^9, 3.9170823405592833`*^9, 3.9170824601503487`*^9, 
   3.917082687483477*^9, 3.917083065333617*^9, 3.9170832301511307`*^9, 
   3.91716383021731*^9, 3.9180931600625887`*^9, 3.9180931953149853`*^9, 
   3.918093422887094*^9},
 CellLabel->"Out[9]=",ExpressionUUID->"4a3a8500-f230-4e68-8fcb-020492d91921"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"T22NBWlm", " ", "=", " ", 
   RowBox[{"Integrate", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"t", "^", "2"}], "*", "Integrand"}], ",", " ", 
     RowBox[{"{", 
      RowBox[{"t", ",", " ", "t0", ",", " ", "t1"}], "}"}]}], "]"}]}], 
  ";"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917020579687379*^9, 3.9170206138128*^9}, {
   3.917020650785079*^9, 3.917020712693746*^9}, {3.917020745463553*^9, 
   3.917020756275837*^9}, {3.917020839173951*^9, 3.917020916471318*^9}, {
   3.9170210200257473`*^9, 3.917021046227954*^9}, 3.917021126880755*^9, {
   3.917021479852037*^9, 3.917021481870022*^9}, {3.917021574479363*^9, 
   3.917021577324326*^9}, {3.917021760279341*^9, 3.917021777187256*^9}, {
   3.917023922689317*^9, 3.917023945001693*^9}, 3.917023995237533*^9, {
   3.917024086706421*^9, 3.917024112118618*^9}, {3.917025222456279*^9, 
   3.91702522276194*^9}, {3.917069330129574*^9, 3.917069335277862*^9}, {
   3.917081692806446*^9, 3.917081752840431*^9}, 3.917082307566885*^9, {
   3.9170824219827623`*^9, 3.917082422046689*^9}, 3.917082568779158*^9, {
   3.917083121806594*^9, 3.917083121881103*^9}, {3.917163384568548*^9, 
   3.917163384858014*^9}, {3.918093125210512*^9, 3.918093125276018*^9}},
 CellLabel->"In[10]:=",ExpressionUUID->"3b0efeea-35a1-4eac-9138-69a689411985"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Collect", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{"T22NBWlm", " ", "/.", " ", 
       RowBox[{
        RowBox[{"p", "^", "2"}], " ", "->", " ", 
        FractionBox[
         RowBox[{
          RowBox[{"(", 
           RowBox[{"s", "-", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"mi", "+", "mj"}], ")"}], "^", "2"}]}], ")"}], 
          RowBox[{"(", 
           RowBox[{"s", "-", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"mi", "-", "mj"}], ")"}], "^", "2"}]}], ")"}]}], 
         RowBox[{"4", "s"}]]}]}], ")"}], " ", "//", " ", "Simplify"}], " ", "//",
     " ", "Expand"}], ",", " ", 
   RowBox[{"{", 
    RowBox[{"Qr", ",", " ", "Qi"}], "}"}], ",", " ", 
   RowBox[{
    RowBox[{"Collect", "[", 
     RowBox[{"#", ",", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Log", "[", "_", "]"}], ",", " ", 
        RowBox[{"ArcTan", "[", "_", "]"}]}], "}"}], ",", " ", "Simplify"}], 
     "]"}], "&"}]}], "]"}]], "Code",
 InitializationCell->False,
 CellChangeTimes->{{3.917024477688204*^9, 3.917024479547676*^9}, {
   3.917024523160954*^9, 3.917024561113356*^9}, 3.91706935886095*^9, {
   3.917081760197529*^9, 3.917081760381342*^9}, {3.917082425228383*^9, 
   3.917082425260157*^9}, {3.9180931286087303`*^9, 3.918093128663189*^9}, {
   3.918093185022084*^9, 3.918093189118833*^9}},
 CellLabel->"In[11]:=",ExpressionUUID->"d6a66df0-6bd1-4c2c-add2-d3636c8ff857"],

Cell[BoxData[
 RowBox[{"Qr", " ", 
  RowBox[{"(", 
   RowBox[{
    FractionBox[
     RowBox[{"2", " ", "p", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"2", " ", 
         SuperscriptBox["m", "4"]}], "+", 
        RowBox[{
         SuperscriptBox["mi", "2"], " ", 
         SuperscriptBox["mj", "2"]}], "-", 
        RowBox[{
         SuperscriptBox["m", "2"], " ", 
         RowBox[{"(", 
          RowBox[{
           SuperscriptBox["mi", "2"], "+", 
           SuperscriptBox["mj", "2"], "-", "s"}], ")"}]}]}], ")"}], " ", 
      SqrtBox["s"]}], 
     RowBox[{
      SuperscriptBox["m", "4"], "+", 
      RowBox[{
       SuperscriptBox["mi", "2"], " ", 
       SuperscriptBox["mj", "2"]}], "-", 
      RowBox[{
       SuperscriptBox["m", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["mi", "2"], "+", 
         SuperscriptBox["mj", "2"], "-", "s"}], ")"}]}]}]], "-", 
    RowBox[{"2", " ", 
     SuperscriptBox["m", "2"], " ", 
     RowBox[{"Log", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "2"}], " ", 
        SuperscriptBox["m", "2"]}], "+", 
       SuperscriptBox["mi", "2"], "+", 
       SuperscriptBox["mj", "2"], "-", 
       RowBox[{"2", " ", "p", " ", 
        SqrtBox["s"]}], "-", "s"}], "]"}]}], "+", 
    RowBox[{"2", " ", 
     SuperscriptBox["m", "2"], " ", 
     RowBox[{"Log", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "2"}], " ", 
        SuperscriptBox["m", "2"]}], "+", 
       SuperscriptBox["mi", "2"], "+", 
       SuperscriptBox["mj", "2"], "+", 
       RowBox[{"2", " ", "p", " ", 
        SqrtBox["s"]}], "-", "s"}], "]"}]}]}], ")"}]}]], "Output",
 CellChangeTimes->{
  3.917024480455438*^9, 3.917024569161402*^9, 3.9170257131893997`*^9, 
   3.917066884365847*^9, 3.91706915822654*^9, 3.917069613052601*^9, 
   3.9170818320107183`*^9, 3.91708236519018*^9, 3.917082480674532*^9, 
   3.917082712079482*^9, 3.917083278264779*^9, 3.917163879242464*^9, {
   3.918093182771535*^9, 3.9180931970524807`*^9}, 3.918093446926453*^9},
 CellLabel->"Out[11]=",ExpressionUUID->"ce1cb405-0e85-427d-91a8-7b632c7b166b"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1383, 855},
WindowMargins->{{-2.25, Automatic}, {Automatic, -22.5}},
CommonDefaultFormatTypes->{"Output"->StandardForm},
FrontEndVersion->"14.0 for Linux x86 (64-bit) (December 12, 2023)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"b7bb3c6a-2a9f-4fa5-a21e-5e0084127ec7"
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
Cell[580, 22, 356, 11, 69, "Chapter",ExpressionUUID->"6e2ebaad-e7c4-49c8-bb6a-da044c1d45d6",
 InitializationCell->True],
Cell[939, 35, 475, 13, 35, "Text",ExpressionUUID->"3a33d074-9a04-4cf1-9813-5f52e6552cb5",
 InitializationCell->True],
Cell[CellGroupData[{
Cell[1439, 52, 159, 3, 67, "Section",ExpressionUUID->"637140e6-2548-41ab-bf04-7eafffb9492f"],
Cell[1601, 57, 192, 3, 35, "Text",ExpressionUUID->"84840b69-a472-40fb-9aa6-bd9731be6713"],
Cell[1796, 62, 423, 9, 53, "Code",ExpressionUUID->"2cb25ba0-2497-491e-81ec-81cf0683341b"],
Cell[2222, 73, 2156, 43, 427, "Code",ExpressionUUID->"eed391b8-85b3-4ad5-9fbe-c4897982cc86",
 InitializationCell->True],
Cell[4381, 118, 751, 22, 103, "Code",ExpressionUUID->"a8c75ab8-b67f-4ee4-b445-338ca3e301c8",
 InitializationCell->True]
}, Open  ]],
Cell[CellGroupData[{
Cell[5169, 145, 218, 4, 67, "Section",ExpressionUUID->"dec97eca-19fa-490c-b79a-f3ecef91276e"],
Cell[5390, 151, 220, 5, 35, "Text",ExpressionUUID->"12dedfac-7282-4318-b7a8-2bbc20fd3394"],
Cell[CellGroupData[{
Cell[5635, 160, 158, 3, 54, "Subsection",ExpressionUUID->"9fdf91e5-d32a-4993-b56a-65d361fc20a3"],
Cell[5796, 165, 987, 27, 79, "Code",ExpressionUUID->"41c6c59b-39e9-40f1-a065-46820d543bf2",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[6808, 196, 1573, 44, 99, "Code",ExpressionUUID->"42d4a14a-dbc1-444d-a920-99d12f5f389a",
 InitializationCell->False],
Cell[8384, 242, 532, 9, 34, "Output",ExpressionUUID->"ad073159-71c4-4a79-a62b-90a866a28174"],
Cell[8919, 253, 650, 14, 36, "Output",ExpressionUUID->"e1040661-c1cf-46e6-a883-a19e93596636"],
Cell[9572, 269, 937, 24, 48, "Output",ExpressionUUID->"cad7a24e-83bd-485e-99f9-158c4f48d219"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[10558, 299, 282, 5, 54, "Subsection",ExpressionUUID->"f2b4ddc6-68ad-4dee-8ead-ce106f7bf6ec"],
Cell[CellGroupData[{
Cell[10865, 308, 1039, 26, 59, "Code",ExpressionUUID->"fa53bb89-0ab1-4b4e-b599-84c6b2d7f606",
 InitializationCell->False],
Cell[11907, 336, 646, 22, 76, "Output",ExpressionUUID->"2f4ae9fd-3a2c-446f-8e5c-8ebb993d3a12"]
}, Open  ]],
Cell[12568, 361, 1163, 21, 37, "Code",ExpressionUUID->"2040caf9-e906-4375-8f4f-06b6de25391c",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[13756, 386, 747, 18, 37, "Code",ExpressionUUID->"9c1a15a0-2a17-4b4b-9f6b-1d4556c461f8",
 InitializationCell->False],
Cell[14506, 406, 1510, 47, 61, "Output",ExpressionUUID->"1bc33eda-4a17-4307-b1d3-e0bece66df68"]
}, Open  ]],
Cell[16031, 456, 1187, 22, 37, "Code",ExpressionUUID->"70a808b0-c46e-4cbe-8cfc-197ceebac57e",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[17243, 482, 750, 18, 37, "Code",ExpressionUUID->"9c8db76f-131b-4c44-add1-3a4ea498b615",
 InitializationCell->False],
Cell[17996, 502, 1614, 49, 61, "Output",ExpressionUUID->"a283c644-8df6-47a7-adf4-4ce9e0dabf09"]
}, Open  ]],
Cell[19625, 554, 1210, 23, 37, "Code",ExpressionUUID->"f2f66b6c-683a-48a6-b3a4-ab8c0c5fc73d",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[20860, 581, 1323, 37, 51, "Code",ExpressionUUID->"61a238c3-150c-4f14-82db-3a6c13f6ff4f",
 InitializationCell->False],
Cell[22186, 620, 1608, 49, 61, "Output",ExpressionUUID->"a623114b-2d7b-48e5-9b8b-54d13c245867"]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[23843, 675, 155, 3, 38, "Subsection",ExpressionUUID->"ceb9f383-1bdb-416d-b30b-fcb82314f12e"],
Cell[24001, 680, 1547, 49, 62, "Code",ExpressionUUID->"ab7e3c9f-908a-4ab1-aee3-47f776bbeb21",
 InitializationCell->False],
Cell[25551, 731, 527, 12, 37, "Code",ExpressionUUID->"14bba47f-1249-4443-bff9-2f48bab0ecb4",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[26103, 747, 624, 16, 37, "Code",ExpressionUUID->"df09aa63-a9a4-4e74-8026-d19fe2a34222",
 InitializationCell->False],
Cell[26730, 765, 19626, 550, 416, "Output",ExpressionUUID->"9c65af34-7241-4eff-ba15-97f84bac1789"]
}, Open  ]],
Cell[46371, 1318, 481, 12, 37, "Code",ExpressionUUID->"3cf1e9ed-9dd9-4793-8c9a-394053f15922",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[46877, 1334, 622, 16, 37, "Code",ExpressionUUID->"14638c7c-f68a-47d5-a516-cc485007a02a",
 InitializationCell->False],
Cell[47502, 1352, 21200, 584, 522, "Output",ExpressionUUID->"d599bf04-fac8-4422-bafa-23ef0e6a9fae"]
}, Open  ]],
Cell[68717, 1939, 531, 13, 37, "Code",ExpressionUUID->"5295891e-48e3-41a5-85d6-3cc52e2e861c",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[69273, 1956, 622, 16, 37, "Code",ExpressionUUID->"164ad7d0-bcf9-4228-992f-bf1c83179548",
 InitializationCell->False],
Cell[69898, 1974, 29885, 824, 717, "Output",ExpressionUUID->"24a65a5b-5073-4df9-a999-710b729cb244"]
}, Open  ]]
}, Closed]]
}, Closed]],
Cell[CellGroupData[{
Cell[99844, 2805, 210, 4, 53, "Section",ExpressionUUID->"f81ebb78-53b5-4e61-bc6e-09828b669887"],
Cell[100057, 2811, 202, 3, 35, "Text",ExpressionUUID->"4b555f3f-45b0-462d-bfab-cecb9653ff4c"],
Cell[CellGroupData[{
Cell[100284, 2818, 181, 3, 54, "Subsection",ExpressionUUID->"7ddf84ab-1056-47f8-b280-9737d7932704"],
Cell[100468, 2823, 359, 9, 52, "Code",ExpressionUUID->"d2105ef0-a5c5-4fc6-9df9-126915b39fe2",
 InitializationCell->False],
Cell[100830, 2834, 1135, 20, 37, "Code",ExpressionUUID->"cd197911-5dce-419d-aadb-2eb95cf13a4a",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[101990, 2858, 892, 22, 37, "Code",ExpressionUUID->"649388f9-60f9-44e8-b21e-a2929db41f55",
 InitializationCell->False],
Cell[102885, 2882, 1004, 26, 59, "Output",ExpressionUUID->"b0ffd75c-8119-4a2c-9450-4fb49a96c94e"]
}, Open  ]],
Cell[103904, 2911, 1163, 21, 37, "Code",ExpressionUUID->"d0f06565-893d-4ea4-953d-817e05bfd04c",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[105092, 2936, 795, 20, 37, "Code",ExpressionUUID->"3c720c3b-0b03-4c4f-b328-ab6a5593fb8d",
 InitializationCell->False],
Cell[105890, 2958, 1349, 36, 38, "Output",ExpressionUUID->"71f27745-b3c4-4721-90e2-7717b0067725"]
}, Open  ]],
Cell[107254, 2997, 1185, 22, 37, "Code",ExpressionUUID->"03e00499-2b21-459b-94d0-fde456fe6d80",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[108464, 3023, 1391, 38, 51, "Code",ExpressionUUID->"91dcff84-9a02-48df-8cad-ef5bcba6e40a",
 InitializationCell->False],
Cell[109858, 3063, 1514, 42, 38, "Output",ExpressionUUID->"b3dd0c12-8313-45c3-90a0-2ea2f7e0c713"]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[111421, 3111, 234, 4, 38, "Subsection",ExpressionUUID->"aa6784c4-1654-45f2-b6de-1e8fab4de41f"],
Cell[111658, 3117, 464, 13, 52, "Code",ExpressionUUID->"cb26f5f5-fe73-4998-9315-7d37dc3ef7cd",
 InitializationCell->False],
Cell[112125, 3132, 1284, 22, 37, "Code",ExpressionUUID->"d13db18a-36cf-444a-a278-2b69657d74bf",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[113434, 3158, 1332, 37, 51, "Code",ExpressionUUID->"8b30bffb-67af-4d73-8090-1e86198263cf",
 InitializationCell->False],
Cell[114769, 3197, 2195, 62, 63, "Output",ExpressionUUID->"d5519f7d-31b5-4ce8-b846-0a37c2f9603e"]
}, Open  ]],
Cell[116979, 3262, 1260, 23, 37, "Code",ExpressionUUID->"c255e267-ce5b-4c1a-bc0a-d5cbe45d6562",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[118264, 3289, 1333, 37, 51, "Code",ExpressionUUID->"68fd3b0c-b228-4701-8882-6e95bf052fd0",
 InitializationCell->False],
Cell[119600, 3328, 2553, 72, 63, "Output",ExpressionUUID->"f9499b78-6db3-421b-8053-bc2393feebbf"]
}, Open  ]],
Cell[122168, 3403, 1287, 24, 37, "Code",ExpressionUUID->"38ebcec4-ceec-427f-ae59-cbc263141644",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[123480, 3431, 1326, 37, 51, "Code",ExpressionUUID->"689363d0-f5ac-4894-a4c3-faf2bb973b00",
 InitializationCell->False],
Cell[124809, 3470, 2492, 72, 63, "Output",ExpressionUUID->"8bb9a365-775e-459f-bfcc-a7b0daa39935"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[127350, 3548, 296, 5, 54, "Subsection",ExpressionUUID->"1167e2b7-9bf8-4207-8a25-519f473a54fe"],
Cell[127649, 3555, 433, 11, 52, "Code",ExpressionUUID->"19bc3be3-59f1-4a6e-af44-0d507c3b1df8",
 InitializationCell->False],
Cell[128085, 3568, 1335, 23, 37, "Code",ExpressionUUID->"4e8c881c-eedd-48cc-8b70-da40ff2a5181",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[129445, 3595, 1489, 39, 51, "Code",ExpressionUUID->"abfc9a24-a53a-4b73-9bee-d76fe75b334c",
 InitializationCell->False],
Cell[130937, 3636, 879, 21, 59, "Output",ExpressionUUID->"61299a13-5d6d-4c5e-be07-e9c109c631dc"]
}, Open  ]],
Cell[131831, 3660, 1309, 23, 37, "Code",ExpressionUUID->"70f18d77-3ecb-42df-8093-d217dec0db83",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[133165, 3687, 1555, 40, 51, "Code",ExpressionUUID->"365ffa77-8506-4e3b-bf1d-6d3629293cd9",
 InitializationCell->False],
Cell[134723, 3729, 1663, 44, 60, "Output",ExpressionUUID->"4a3a8500-f230-4e68-8fcb-020492d91921"]
}, Open  ]],
Cell[136401, 3776, 1335, 24, 37, "Code",ExpressionUUID->"3b0efeea-35a1-4eac-9138-69a689411985",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[137761, 3804, 1487, 39, 51, "Code",ExpressionUUID->"d6a66df0-6bd1-4c2c-add2-d3636c8ff857",
 InitializationCell->False],
Cell[139251, 3845, 2102, 59, 61, "Output",ExpressionUUID->"ce1cb405-0e85-427d-91a8-7b632c7b166b"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

