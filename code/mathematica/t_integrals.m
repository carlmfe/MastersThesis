(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 14.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[    147344,       4040]
NotebookOptionsPosition[    137973,       3858]
NotebookOutlinePosition[    138426,       3875]
CellTagsIndexPosition[    138383,       3872]
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
  3.917021222416548*^9, 3.917021226900535*^9}},
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
 CellChangeTimes->{{3.917066571355912*^9, 3.917066689935183*^9}, {
  3.917066784099993*^9, 3.917066801683118*^9}, {3.917067198458942*^9, 
  3.917067208521081*^9}, {3.917163185311423*^9, 3.917163187858511*^9}},
 CellLabel->"In[5]:=",ExpressionUUID->"41c6c59b-39e9-40f1-a065-46820d543bf2"],

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
  3.9170675980212584`*^9}, {3.917067796128274*^9, 3.9170677978214*^9}},
 CellLabel->"In[8]:=",ExpressionUUID->"42d4a14a-dbc1-444d-a920-99d12f5f389a"],

Cell[BoxData[
 RowBox[{"2", " ", "p", " ", 
  SqrtBox["s"]}]], "Output",
 CellChangeTimes->{{3.917067221662116*^9, 3.917067233772479*^9}, 
   3.91706732889642*^9, {3.917067368728711*^9, 3.9170674536493073`*^9}, {
   3.917067490620096*^9, 3.917067538769251*^9}, {3.91706757039938*^9, 
   3.917067598480205*^9}, 3.917067755269908*^9, 3.917067798145633*^9, 
   3.917069019574316*^9, 3.917069474154286*^9, 3.917163419469124*^9, 
   3.923978229031816*^9},
 CellLabel->"Out[8]=",ExpressionUUID->"44a432a0-aa6a-4a1b-ac51-b3cf318a9476"],

Cell[BoxData[
 RowBox[{"p", " ", 
  RowBox[{"(", 
   RowBox[{
    SuperscriptBox["mi", "2"], "+", 
    SuperscriptBox["mj", "2"], "-", "s"}], ")"}], " ", 
  SqrtBox["s"]}]], "Output",
 CellChangeTimes->{{3.917067221662116*^9, 3.917067233772479*^9}, 
   3.91706732889642*^9, {3.917067368728711*^9, 3.9170674536493073`*^9}, {
   3.917067490620096*^9, 3.917067538769251*^9}, {3.91706757039938*^9, 
   3.917067598480205*^9}, 3.917067755269908*^9, 3.917067798145633*^9, 
   3.917069019574316*^9, 3.917069474154286*^9, 3.917163419469124*^9, 
   3.9239782290321074`*^9},
 CellLabel->"Out[9]=",ExpressionUUID->"5aaa167e-a7ac-49c7-83b3-e948f49cff33"],

Cell[BoxData[
 RowBox[{
  FractionBox["2", "3"], " ", "p", " ", 
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
       SuperscriptBox["mj", "2"], "-", "s"}], ")"}], "2"]}], ")"}], " ", 
  SqrtBox["s"]}]], "Output",
 CellChangeTimes->{{3.917067221662116*^9, 3.917067233772479*^9}, 
   3.91706732889642*^9, {3.917067368728711*^9, 3.9170674536493073`*^9}, {
   3.917067490620096*^9, 3.917067538769251*^9}, {3.91706757039938*^9, 
   3.917067598480205*^9}, 3.917067755269908*^9, 3.917067798145633*^9, 
   3.917069019574316*^9, 3.917069474154286*^9, 3.917163419469124*^9, 
   3.923978229059676*^9},
 CellLabel->"Out[10]=",ExpressionUUID->"245df706-6eda-4560-b268-e761b71174ec"]
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
 CellLabel->"In[11]:=",ExpressionUUID->"fa53bb89-0ab1-4b4e-b599-84c6b2d7f606"],

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
   3.917163419520393*^9, 3.9239782290790663`*^9},
 CellLabel->
  "Out[11]//StandardForm=",ExpressionUUID->"d58bd887-8c04-4d8a-b317-\
3e0f4fc93e38"]
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
   3.917081692806446*^9, 3.9170817193679743`*^9}, {3.917081963713623*^9, 
   3.917081963961634*^9}, 3.917082084635067*^9, {3.9171632062934318`*^9, 
   3.917163207479127*^9}},
 CellLabel->"In[12]:=",ExpressionUUID->"2040caf9-e906-4375-8f4f-06b6de25391c"],

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
   3.91706933323867*^9, {3.917081725702656*^9, 3.9170817258337603`*^9}, {
   3.917081967853942*^9, 3.917081968087228*^9}},
 CellLabel->"In[13]:=",ExpressionUUID->"9c1a15a0-2a17-4b4b-9f6b-1d4556c461f8"],

Cell[BoxData[
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
   RowBox[{"\[DifferentialD]", "t"}]}]}]], "Output",
 CellChangeTimes->{3.9170246778756657`*^9, 3.917025622840244*^9, 
  3.917066795740834*^9, 3.91706906981486*^9, 3.917069524302874*^9, 
  3.917081784239262*^9, 3.917163420475408*^9, 3.923978230013302*^9},
 CellLabel->"Out[13]=",ExpressionUUID->"db2bac21-015c-45df-8f40-ae9434b53544"]
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
   3.917081692806446*^9, 3.9170817468746166`*^9}, {3.917081970333468*^9, 
   3.917081971487094*^9}, 3.917082090421954*^9, {3.917163216289738*^9, 
   3.917163219727097*^9}},
 CellLabel->"In[14]:=",ExpressionUUID->"70a808b0-c46e-4cbe-8cfc-197ceebac57e"],

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
   3.917069350953891*^9, {3.91708175650267*^9, 3.917081756758171*^9}, {
   3.917081975796682*^9, 3.9170819760568113`*^9}},
 CellLabel->"In[15]:=",ExpressionUUID->"9c8db76f-131b-4c44-add1-3a4ea498b615"],

Cell[BoxData[
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
   RowBox[{"\[DifferentialD]", "t"}]}]}]], "Output",
 CellChangeTimes->{{3.917024376216514*^9, 3.9170243974658422`*^9}, 
   3.917024453906012*^9, 3.9170256657245293`*^9, 3.917066837753384*^9, 
   3.9170691116698413`*^9, 3.917069566444757*^9, 3.917081811329129*^9, 
   3.917163420869763*^9, 3.9239782304403887`*^9},
 CellLabel->"Out[15]=",ExpressionUUID->"94d288c5-dbde-4ac2-a8f7-dd08a9bb62f7"]
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
 CellLabel->"In[16]:=",ExpressionUUID->"f2f66b6c-683a-48a6-b3a4-ab8c0c5fc73d"],

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
 CellLabel->"In[17]:=",ExpressionUUID->"61a238c3-150c-4f14-82db-3a6c13f6ff4f"],

Cell[BoxData[
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
   RowBox[{"\[DifferentialD]", "t"}]}]}]], "Output",
 CellChangeTimes->{3.917024480455438*^9, 3.917024569161402*^9, 
  3.9170257131893997`*^9, 3.917066884365847*^9, 3.91706915822654*^9, 
  3.917069613052601*^9, 3.9170818320107183`*^9, 3.9171634215645638`*^9, 
  3.9239782311413717`*^9},
 CellLabel->"Out[17]=",ExpressionUUID->"3013790f-bcf6-4d18-b88a-166c2076496b"]
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
  3.917163239441016*^9, 3.9171632483565483`*^9}},
 CellLabel->"In[18]:=",ExpressionUUID->"ab7e3c9f-908a-4ab1-aee3-47f776bbeb21"],

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
   3.9171632539605308`*^9, 3.917163255792292*^9}},
 CellLabel->"In[19]:=",ExpressionUUID->"14bba47f-1249-4443-bff9-2f48bab0ecb4"],

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
 CellLabel->"In[20]:=",ExpressionUUID->"df09aa63-a9a4-4e74-8026-d19fe2a34222"],

Cell[BoxData[
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
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G1", " ", "m1"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["m1", "2"], "-", 
         SuperscriptBox["m2", "2"]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G2", " ", "m2"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m2", "2"]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G1", " ", "m1"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m2", "2"]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G2", " ", "m2"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "-", 
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"G1", " ", "m1"}], "+", 
         RowBox[{"G2", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "+", 
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"G1", " ", "m1"}], "+", 
         RowBox[{"G2", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "+", 
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"G1", " ", "m1"}], "+", 
         RowBox[{"G2", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "-", 
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"G1", " ", "m1"}], "+", 
         RowBox[{"G2", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]]}], ")"}]}], "+", 
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
        RowBox[{"ArcTan", "[", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m1", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "-", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}], "+", "s"}], 
          RowBox[{"2", " ", "G1", " ", "m1"}]], "]"}]}], 
       RowBox[{
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m1", "2"], " ", 
         SuperscriptBox["m2", "2"]}], "+", 
        SuperscriptBox["m2", "4"]}]]}], "-", 
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"G1", " ", "m1"}], "+", 
         RowBox[{"G2", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G2", " ", "m2"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"G1", " ", "m1"}], "+", 
         RowBox[{"G2", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G1", " ", "m1"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"G1", " ", "m1"}], "+", 
         RowBox[{"G2", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G2", " ", "m2"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m2", "2"]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "+", 
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["m1", "2"], "-", 
         SuperscriptBox["m2", "2"]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "+", 
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["m1", "2"], "-", 
         SuperscriptBox["m2", "2"]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "+", 
     FractionBox[
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m2", "2"]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]]}], ")"}]}]}]], "Output",
 CellChangeTimes->{3.917025800957698*^9, 3.917026260518846*^9, 
  3.917026432295732*^9, 3.917066971974457*^9, 3.917069245734858*^9, 
  3.917069700408498*^9, 3.917163508300467*^9, 3.9239783177889357`*^9},
 CellLabel->"Out[20]=",ExpressionUUID->"c98a1853-d352-4ca6-8829-c4a9099bf5f7"]
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
  3.917163265025843*^9, 3.917163268070932*^9}},
 CellLabel->"In[21]:=",ExpressionUUID->"3cf1e9ed-9dd9-4793-8c9a-394053f15922"],

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
 CellLabel->"In[22]:=",ExpressionUUID->"14638c7c-f68a-47d5-a516-cc485007a02a"],

Cell[BoxData[
 RowBox[{
  RowBox[{"Qi", " ", 
   RowBox[{"(", 
    RowBox[{
     FractionBox[
      RowBox[{"m1", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", "m1"}], "+", 
         SuperscriptBox["m1", "3"], "+", 
         RowBox[{"G1", " ", "G2", " ", "m2"}], "-", 
         RowBox[{"m1", " ", 
          SuperscriptBox["m2", "2"]}]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G1", " ", "m1"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "-", 
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
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G2", " ", "m2"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "-", 
     FractionBox[
      RowBox[{"m1", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", "m1"}], "+", 
         SuperscriptBox["m1", "3"], "+", 
         RowBox[{"G1", " ", "G2", " ", "m2"}], "-", 
         RowBox[{"m1", " ", 
          SuperscriptBox["m2", "2"]}]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G1", " ", "m1"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
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
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G2", " ", "m2"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "-", 
     FractionBox[
      RowBox[{"m1", " ", "m2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"G2", " ", "m1"}], "+", 
         RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "+", 
     FractionBox[
      RowBox[{"m1", " ", "m2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"G2", " ", "m1"}], "+", 
         RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "+", 
     FractionBox[
      RowBox[{"m1", " ", "m2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"G2", " ", "m1"}], "+", 
         RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "-", 
     FractionBox[
      RowBox[{"m1", " ", "m2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"G2", " ", "m1"}], "+", 
         RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]]}], ")"}]}], "+", 
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
        RowBox[{"ArcTan", "[", 
         FractionBox[
          RowBox[{
           RowBox[{"2", " ", 
            SuperscriptBox["m1", "2"]}], "-", 
           SuperscriptBox["mi", "2"], "-", 
           SuperscriptBox["mj", "2"], "-", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}], "+", "s"}], 
          RowBox[{"2", " ", "G1", " ", "m1"}]], "]"}]}], 
       RowBox[{
        RowBox[{
         SuperscriptBox["G1", "2"], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        SuperscriptBox["m1", "4"], "+", 
        RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
        RowBox[{
         SuperscriptBox["G2", "2"], " ", 
         SuperscriptBox["m2", "2"]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["m1", "2"], " ", 
         SuperscriptBox["m2", "2"]}], "+", 
        SuperscriptBox["m2", "4"]}]]}], "-", 
     FractionBox[
      RowBox[{"m1", " ", "m2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"G2", " ", "m1"}], "+", 
         RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G2", " ", "m2"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
     FractionBox[
      RowBox[{"m1", " ", "m2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"G2", " ", "m1"}], "+", 
         RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G1", " ", "m1"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
     FractionBox[
      RowBox[{"m1", " ", "m2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"G2", " ", "m1"}], "+", 
         RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G2", " ", "m2"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "-", 
     FractionBox[
      RowBox[{"m1", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", "m1"}], "+", 
         SuperscriptBox["m1", "3"], "+", 
         RowBox[{"G1", " ", "G2", " ", "m2"}], "-", 
         RowBox[{"m1", " ", 
          SuperscriptBox["m2", "2"]}]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "-", 
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
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "+", 
     FractionBox[
      RowBox[{"m1", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", "m1"}], "+", 
         SuperscriptBox["m1", "3"], "+", 
         RowBox[{"G1", " ", "G2", " ", "m2"}], "-", 
         RowBox[{"m1", " ", 
          SuperscriptBox["m2", "2"]}]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "+", 
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
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]]}], ")"}]}]}]], "Output",
 CellChangeTimes->{3.917069767212342*^9, 3.9171635749169497`*^9, 
  3.9239783840269537`*^9},
 CellLabel->"Out[22]=",ExpressionUUID->"67701962-caa8-4596-974b-4ce99543acbe"]
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
   3.917081933766244*^9, {3.917163275611054*^9, 3.9171632784286838`*^9}},
 CellLabel->"In[23]:=",ExpressionUUID->"5295891e-48e3-41a5-85d6-3cc52e2e861c"],

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
 CellLabel->"In[24]:=",ExpressionUUID->"164ad7d0-bcf9-4228-992f-bf1c83179548"],

Cell[BoxData[
 RowBox[{
  RowBox[{"Qi", " ", 
   RowBox[{"(", 
    RowBox[{
     FractionBox[
      RowBox[{
       SuperscriptBox["m1", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["m1", "2"], "+", 
            SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          SuperscriptBox["mi", "2"], "+", 
          SuperscriptBox["mj", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "-", "s"}], 
         RowBox[{"2", " ", "G1", " ", "m1"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m1", "2"], " ", 
       SuperscriptBox["m2", "4"], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          SuperscriptBox["mi", "2"], "+", 
          SuperscriptBox["mj", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "-", "s"}], 
         RowBox[{"2", " ", "G2", " ", "m2"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "-", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m1", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "-", 
         RowBox[{
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["m1", "2"], "+", 
            SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          SuperscriptBox["mi", "2"], "+", 
          SuperscriptBox["mj", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "-", "s"}], 
         RowBox[{"2", " ", "G1", " ", "m1"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m2", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "-", 
         RowBox[{
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["m1", "2"], "+", 
            SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          SuperscriptBox["mi", "2"], "+", 
          SuperscriptBox["mj", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "-", "s"}], 
         RowBox[{"2", " ", "G2", " ", "m2"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m1", "4"], " ", 
       SuperscriptBox["m2", "2"], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G1", " ", "m1"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m2", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         SuperscriptBox["m2", "4"], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["m1", "2"], "+", 
            SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G2", " ", "m2"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m1", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "3"], " ", "m1"}], "+", 
         RowBox[{
          SuperscriptBox["G1", "2"], " ", "G2", " ", "m2"}], "-", 
         RowBox[{"G2", " ", 
          SuperscriptBox["m1", "2"], " ", "m2"}], "+", 
         RowBox[{"G1", " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["m1", "3"], "-", 
            RowBox[{"2", " ", "m1", " ", 
             SuperscriptBox["m2", "2"]}]}], ")"}]}]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "-", 
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
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "-", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m1", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "3"], " ", "m1"}], "+", 
         RowBox[{
          SuperscriptBox["G1", "2"], " ", "G2", " ", "m2"}], "-", 
         RowBox[{"G2", " ", 
          SuperscriptBox["m1", "2"], " ", "m2"}], "+", 
         RowBox[{"G1", " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["m1", "3"], "-", 
            RowBox[{"2", " ", "m1", " ", 
             SuperscriptBox["m2", "2"]}]}], ")"}]}]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "+", 
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
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]]}], ")"}]}], "+", 
  RowBox[{"Qr", " ", 
   RowBox[{"(", 
    RowBox[{
     RowBox[{"2", " ", "p", " ", 
      SqrtBox["s"]}], "+", 
     FractionBox[
      RowBox[{"G1", " ", 
       SuperscriptBox["m1", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", "m1"}], "+", 
         SuperscriptBox["m1", "3"], "+", 
         RowBox[{"G1", " ", "G2", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          SuperscriptBox["mi", "2"], "+", 
          SuperscriptBox["mj", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "-", "s"}], 
         RowBox[{"2", " ", "G1", " ", "m1"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
     FractionBox[
      RowBox[{"G2", " ", 
       SuperscriptBox["m2", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"G1", " ", "G2", " ", "m1"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", "m2"}], "+", 
         SuperscriptBox["m2", "3"]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          SuperscriptBox["mi", "2"], "+", 
          SuperscriptBox["mj", "2"], "-", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "-", "s"}], 
         RowBox[{"2", " ", "G2", " ", "m2"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "-", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m1", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "3"], " ", "m1"}], "+", 
         RowBox[{
          SuperscriptBox["G1", "2"], " ", "G2", " ", "m2"}], "-", 
         RowBox[{"G2", " ", 
          SuperscriptBox["m1", "2"], " ", "m2"}], "+", 
         RowBox[{"G1", " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["m1", "3"], "-", 
            RowBox[{"2", " ", "m1", " ", 
             SuperscriptBox["m2", "2"]}]}], ")"}]}]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", 
           SuperscriptBox["m1", "2"]}], "+", 
          SuperscriptBox["mi", "2"], "+", 
          SuperscriptBox["mj", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "-", "s"}], 
         RowBox[{"2", " ", "G1", " ", "m1"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "-", 
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
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{
           RowBox[{"-", "2"}], " ", 
           SuperscriptBox["m2", "2"]}], "+", 
          SuperscriptBox["mi", "2"], "+", 
          SuperscriptBox["mj", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "-", "s"}], 
         RowBox[{"2", " ", "G2", " ", "m2"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m1", "3"], " ", "m2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"G2", " ", "m1"}], "+", 
         RowBox[{"2", " ", "G1", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m1", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G1", " ", "m1"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "+", 
     FractionBox[
      RowBox[{"m1", " ", 
       SuperscriptBox["m2", "3"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", "G2", " ", "m1"}], "+", 
         RowBox[{"G1", " ", "m2"}]}], ")"}], " ", 
       RowBox[{"ArcTan", "[", 
        FractionBox[
         RowBox[{
          RowBox[{"2", " ", 
           SuperscriptBox["m2", "2"]}], "-", 
          SuperscriptBox["mi", "2"], "-", 
          SuperscriptBox["mj", "2"], "+", 
          RowBox[{"2", " ", "p", " ", 
           SqrtBox["s"]}], "+", "s"}], 
         RowBox[{"2", " ", "G2", " ", "m2"}]], "]"}]}], 
      RowBox[{
       RowBox[{
        SuperscriptBox["G1", "2"], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m1", "4"], "+", 
       RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
       RowBox[{
        SuperscriptBox["G2", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "-", 
       RowBox[{"2", " ", 
        SuperscriptBox["m1", "2"], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["m2", "4"]}]], "-", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m1", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "-", 
         RowBox[{
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["m1", "2"], "+", 
            SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "-", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m2", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "-", 
         RowBox[{
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["m1", "2"], "+", 
            SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "-", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "+", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m1", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "-", 
         RowBox[{
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["m1", "2"], "+", 
            SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]], "+", 
     FractionBox[
      RowBox[{
       SuperscriptBox["m2", "2"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "-", 
         RowBox[{
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          RowBox[{"(", 
           RowBox[{
            SuperscriptBox["m1", "2"], "+", 
            SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}], " ", 
       RowBox[{"Log", "[", 
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
            SuperscriptBox["mj", "2"], "+", 
            RowBox[{"2", " ", "p", " ", 
             SqrtBox["s"]}], "-", "s"}], ")"}], "2"]}], "]"}]}], 
      RowBox[{"2", " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{
          SuperscriptBox["G1", "2"], " ", 
          SuperscriptBox["m1", "2"]}], "+", 
         SuperscriptBox["m1", "4"], "+", 
         RowBox[{"2", " ", "G1", " ", "G2", " ", "m1", " ", "m2"}], "+", 
         RowBox[{
          SuperscriptBox["G2", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "-", 
         RowBox[{"2", " ", 
          SuperscriptBox["m1", "2"], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["m2", "4"]}], ")"}]}]]}], ")"}]}]}]], "Output",
 CellChangeTimes->{3.917069845357654*^9, 3.91716365263303*^9, 
  3.923978461972419*^9},
 CellLabel->"Out[24]=",ExpressionUUID->"57b48e06-873f-48dd-a8fe-4fe09dad140c"]
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
 CellLabel->"In[25]:=",ExpressionUUID->"d2105ef0-a5c5-4fc6-9df9-126915b39fe2"],

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
   3.917081692806446*^9, 3.917081719367975*^9}, {3.917082578268094*^9, 
   3.917082578414396*^9}, {3.917163310401092*^9, 3.917163312280572*^9}},
 CellLabel->"In[26]:=",ExpressionUUID->"cd197911-5dce-419d-aadb-2eb95cf13a4a"],

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
   3.918092493300721*^9, 3.918092515185888*^9}, {3.918092558647481*^9, 
   3.918092560872838*^9}},
 CellLabel->"In[27]:=",ExpressionUUID->"649388f9-60f9-44e8-b21e-a2929db41f55"],

Cell[BoxData[
 RowBox[{"Qr", " ", 
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
       SqrtBox["s"]}], "+", "s"}]]}], "]"}]}]], "Output",
 CellChangeTimes->{
  3.9170246778756657`*^9, 3.917025622840244*^9, 3.917066795740834*^9, 
   3.91706906981486*^9, 3.917069524302874*^9, 3.917081784239262*^9, 
   3.917082236503879*^9, 3.917082607574113*^9, 3.917163665840036*^9, {
   3.918092548788051*^9, 3.9180925626562643`*^9}, 3.923978475052444*^9},
 CellLabel->"Out[27]=",ExpressionUUID->"81bfec8a-28c1-40d9-8470-4ec479e71c8d"]
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
   3.917081692806446*^9, 3.917081746874617*^9}, {3.917082582616878*^9, 
   3.917082582708736*^9}, {3.9171633353437767`*^9, 3.917163340508354*^9}},
 CellLabel->"In[28]:=",ExpressionUUID->"d0f06565-893d-4ea4-953d-817e05bfd04c"],

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
   3.9180926061592703`*^9, 3.918092608403789*^9}},
 CellLabel->"In[29]:=",ExpressionUUID->"3c720c3b-0b03-4c4f-b328-ab6a5593fb8d"],

Cell[BoxData[
 RowBox[{"Qr", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"2", " ", "p", " ", 
     SqrtBox["s"]}], "-", 
    RowBox[{
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
    RowBox[{
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
 CellChangeTimes->{{3.917024376216514*^9, 3.9170243974658422`*^9}, 
   3.917024453906012*^9, 3.9170256657245293`*^9, 3.917066837753384*^9, 
   3.917069111669841*^9, 3.917069566444757*^9, 3.917081811329129*^9, 
   3.917082266146209*^9, 3.917082634335226*^9, 3.917163694173165*^9, 
   3.918092646404492*^9, 3.923978503374556*^9},
 CellLabel->"Out[29]=",ExpressionUUID->"cda2018b-4724-4fa4-ab55-15ad3c098f2d"]
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
 CellLabel->"In[30]:=",ExpressionUUID->"03e00499-2b21-459b-94d0-fde456fe6d80"],

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
   3.9180926160386252`*^9}},
 CellLabel->"In[31]:=",ExpressionUUID->"91dcff84-9a02-48df-8cad-ef5bcba6e40a"],

Cell[BoxData[
 RowBox[{"Qr", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"p", " ", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"2", " ", 
        SuperscriptBox["m", "2"]}], "+", 
       SuperscriptBox["mi", "2"], "+", 
       SuperscriptBox["mj", "2"], "-", "s"}], ")"}], " ", 
     SqrtBox["s"]}], "-", 
    RowBox[{
     SuperscriptBox["m", "4"], " ", 
     RowBox[{"Log", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "2"}], " ", 
        SuperscriptBox["m", "2"]}], "+", 
       SuperscriptBox["mi", "2"], "+", 
       SuperscriptBox["mj", "2"], "-", 
       RowBox[{"2", " ", "p", " ", 
        SqrtBox["s"]}], "-", "s"}], "]"}]}], "+", 
    RowBox[{
     SuperscriptBox["m", "4"], " ", 
     RowBox[{"Log", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "2"}], " ", 
        SuperscriptBox["m", "2"]}], "+", 
       SuperscriptBox["mi", "2"], "+", 
       SuperscriptBox["mj", "2"], "+", 
       RowBox[{"2", " ", "p", " ", 
        SqrtBox["s"]}], "-", "s"}], "]"}]}]}], ")"}]}]], "Output",
 CellChangeTimes->{3.917024480455438*^9, 3.917024569161402*^9, 
  3.9170257131893997`*^9, 3.917066884365847*^9, 3.91706915822654*^9, 
  3.917069613052601*^9, 3.9170818320107183`*^9, 3.917082286610065*^9, 
  3.91708265536493*^9, 3.91716371889316*^9, 3.918092667194014*^9, 
  3.923978527820415*^9},
 CellLabel->"Out[31]=",ExpressionUUID->"bc4593f1-c085-4855-b426-3e71b0ca7202"]
}, Open  ]]
}, Open  ]],

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
 CellLabel->"In[32]:=",ExpressionUUID->"cb26f5f5-fe73-4998-9315-7d37dc3ef7cd"],

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
   3.917081692806446*^9, 3.9170817193679743`*^9}, {3.917082291607188*^9, 
   3.9170822941193447`*^9}, {3.917082412610075*^9, 3.917082412636932*^9}, {
   3.917082550518083*^9, 3.917082555308918*^9}, {3.917083115121769*^9, 
   3.917083115177803*^9}, {3.917163366085539*^9, 3.917163367425077*^9}},
 CellLabel->"In[33]:=",ExpressionUUID->"d13db18a-36cf-444a-a278-2b69657d74bf"],

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
   3.91706933323867*^9, {3.917081725702656*^9, 3.9170817258337603`*^9}, {
   3.917082415560532*^9, 3.9170824156353283`*^9}, {3.917083050396578*^9, 
   3.917083054848777*^9}},
 CellLabel->"In[34]:=",ExpressionUUID->"8b30bffb-67af-4d73-8090-1e86198263cf"],

Cell[BoxData[
 RowBox[{"Qr", " ", 
  RowBox[{"(", 
   RowBox[{
    FractionBox[
     RowBox[{"Log", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "2"}], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["mi", "2"], "+", 
       SuperscriptBox["mj", "2"], "-", 
       RowBox[{"2", " ", "p", " ", 
        SqrtBox["s"]}], "-", "s"}], "]"}], 
     RowBox[{
      RowBox[{"-", 
       SuperscriptBox["m1", "2"]}], "+", 
      SuperscriptBox["m2", "2"]}]], "+", 
    FractionBox[
     RowBox[{"Log", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "2"}], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["mi", "2"], "+", 
       SuperscriptBox["mj", "2"], "-", 
       RowBox[{"2", " ", "p", " ", 
        SqrtBox["s"]}], "-", "s"}], "]"}], 
     RowBox[{
      SuperscriptBox["m1", "2"], "-", 
      SuperscriptBox["m2", "2"]}]], "+", 
    FractionBox[
     RowBox[{"Log", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "2"}], " ", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["mi", "2"], "+", 
       SuperscriptBox["mj", "2"], "+", 
       RowBox[{"2", " ", "p", " ", 
        SqrtBox["s"]}], "-", "s"}], "]"}], 
     RowBox[{
      SuperscriptBox["m1", "2"], "-", 
      SuperscriptBox["m2", "2"]}]], "+", 
    FractionBox[
     RowBox[{"Log", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"-", "2"}], " ", 
        SuperscriptBox["m2", "2"]}], "+", 
       SuperscriptBox["mi", "2"], "+", 
       SuperscriptBox["mj", "2"], "+", 
       RowBox[{"2", " ", "p", " ", 
        SqrtBox["s"]}], "-", "s"}], "]"}], 
     RowBox[{
      RowBox[{"-", 
       SuperscriptBox["m1", "2"]}], "+", 
      SuperscriptBox["m2", "2"]}]]}], ")"}]}]], "Output",
 CellChangeTimes->{3.9170246778756657`*^9, 3.917025622840244*^9, 
  3.917066795740834*^9, 3.91706906981486*^9, 3.917069524302874*^9, 
  3.917081784239262*^9, 3.917082236503879*^9, 3.91708232108485*^9, 
  3.917082444165923*^9, 3.9170826676483192`*^9, 3.9170830634328136`*^9, 
  3.917083183318741*^9, 3.917163778568095*^9, 3.923978587899239*^9},
 CellLabel->"Out[34]=",ExpressionUUID->"08a381bd-497e-4a7c-a4e5-59af3301808a"]
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
   3.917081692806446*^9, 3.9170817468746166`*^9}, 3.917082300672118*^9, {
   3.917082417698749*^9, 3.917082417729314*^9}, 3.917082566352906*^9, {
   3.917083117925973*^9, 3.917083117987858*^9}, {3.917163380780294*^9, 
   3.917163381083357*^9}},
 CellLabel->"In[35]:=",ExpressionUUID->"c255e267-ce5b-4c1a-bc0a-d5cbe45d6562"],

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
   3.917069350953891*^9, {3.91708175650267*^9, 3.917081756758171*^9}, {
   3.9170824201871023`*^9, 3.917082420231886*^9}, {3.917083052657174*^9, 
   3.917083060786858*^9}},
 CellLabel->"In[36]:=",ExpressionUUID->"68fd3b0c-b228-4701-8882-6e95bf052fd0"],

Cell[BoxData[
 RowBox[{"Qr", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"-", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["m1", "2"], " ", 
         RowBox[{"Log", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "2"}], " ", 
            SuperscriptBox["m1", "2"]}], "+", 
           SuperscriptBox["mi", "2"], "+", 
           SuperscriptBox["mj", "2"], "-", 
           RowBox[{"2", " ", "p", " ", 
            SqrtBox["s"]}], "-", "s"}], "]"}]}], ")"}], "/", 
       RowBox[{"(", 
        RowBox[{
         SuperscriptBox["m1", "2"], "-", 
         SuperscriptBox["m2", "2"]}], ")"}]}], ")"}]}], "+", 
    RowBox[{
     FractionBox["1", 
      RowBox[{
       SuperscriptBox["m1", "2"], "-", 
       SuperscriptBox["m2", "2"]}]], 
     RowBox[{
      SuperscriptBox["m2", "2"], " ", 
      RowBox[{"Log", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "2"}], " ", 
         SuperscriptBox["m2", "2"]}], "+", 
        SuperscriptBox["mi", "2"], "+", 
        SuperscriptBox["mj", "2"], "-", 
        RowBox[{"2", " ", "p", " ", 
         SqrtBox["s"]}], "-", "s"}], "]"}]}]}], "+", 
    RowBox[{
     FractionBox["1", 
      RowBox[{
       SuperscriptBox["m1", "2"], "-", 
       SuperscriptBox["m2", "2"]}]], 
     RowBox[{
      SuperscriptBox["m1", "2"], " ", 
      RowBox[{"Log", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "2"}], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        SuperscriptBox["mi", "2"], "+", 
        SuperscriptBox["mj", "2"], "+", 
        RowBox[{"2", " ", "p", " ", 
         SqrtBox["s"]}], "-", "s"}], "]"}]}]}], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["m2", "2"], " ", 
       RowBox[{"Log", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "2"}], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["mi", "2"], "+", 
         SuperscriptBox["mj", "2"], "+", 
         RowBox[{"2", " ", "p", " ", 
          SqrtBox["s"]}], "-", "s"}], "]"}]}], ")"}], "/", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}]}]], "Output",
 CellChangeTimes->{{3.917024376216514*^9, 3.9170243974658422`*^9}, 
   3.917024453906012*^9, 3.9170256657245293`*^9, 3.917066837753384*^9, 
   3.9170691116698413`*^9, 3.917069566444757*^9, 3.917081811329129*^9, 
   3.917082266146209*^9, 3.9170823405592833`*^9, 3.9170824601503487`*^9, 
   3.917082687483477*^9, 3.917083065333617*^9, 3.9170832301511307`*^9, 
   3.91716383021731*^9, 3.923978638007139*^9},
 CellLabel->"Out[36]=",ExpressionUUID->"98ab076d-8dbf-4918-9f84-6175a137e835"]
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
 CellLabel->"In[37]:=",ExpressionUUID->"38ebcec4-ceec-427f-ae59-cbc263141644"],

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
 CellLabel->"In[38]:=",ExpressionUUID->"689363d0-f5ac-4894-a4c3-faf2bb973b00"],

Cell[BoxData[
 RowBox[{"Qr", " ", 
  RowBox[{"(", 
   RowBox[{
    RowBox[{"2", " ", "p", " ", 
     SqrtBox["s"]}], "-", 
    RowBox[{
     FractionBox["1", 
      RowBox[{
       SuperscriptBox["m1", "2"], "-", 
       SuperscriptBox["m2", "2"]}]], 
     RowBox[{
      SuperscriptBox["m1", "4"], " ", 
      RowBox[{"Log", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "2"}], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        SuperscriptBox["mi", "2"], "+", 
        SuperscriptBox["mj", "2"], "-", 
        RowBox[{"2", " ", "p", " ", 
         SqrtBox["s"]}], "-", "s"}], "]"}]}]}], "+", 
    RowBox[{
     FractionBox["1", 
      RowBox[{
       SuperscriptBox["m1", "2"], "-", 
       SuperscriptBox["m2", "2"]}]], 
     RowBox[{
      SuperscriptBox["m2", "4"], " ", 
      RowBox[{"Log", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "2"}], " ", 
         SuperscriptBox["m2", "2"]}], "+", 
        SuperscriptBox["mi", "2"], "+", 
        SuperscriptBox["mj", "2"], "-", 
        RowBox[{"2", " ", "p", " ", 
         SqrtBox["s"]}], "-", "s"}], "]"}]}]}], "+", 
    RowBox[{
     FractionBox["1", 
      RowBox[{
       SuperscriptBox["m1", "2"], "-", 
       SuperscriptBox["m2", "2"]}]], 
     RowBox[{
      SuperscriptBox["m1", "4"], " ", 
      RowBox[{"Log", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "2"}], " ", 
         SuperscriptBox["m1", "2"]}], "+", 
        SuperscriptBox["mi", "2"], "+", 
        SuperscriptBox["mj", "2"], "+", 
        RowBox[{"2", " ", "p", " ", 
         SqrtBox["s"]}], "-", "s"}], "]"}]}]}], "+", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{
       SuperscriptBox["m2", "4"], " ", 
       RowBox[{"Log", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"-", "2"}], " ", 
          SuperscriptBox["m2", "2"]}], "+", 
         SuperscriptBox["mi", "2"], "+", 
         SuperscriptBox["mj", "2"], "+", 
         RowBox[{"2", " ", "p", " ", 
          SqrtBox["s"]}], "-", "s"}], "]"}]}], ")"}], "/", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"-", 
        SuperscriptBox["m1", "2"]}], "+", 
       SuperscriptBox["m2", "2"]}], ")"}]}]}], ")"}]}]], "Output",
 CellChangeTimes->{3.917024480455438*^9, 3.917024569161402*^9, 
  3.9170257131893997`*^9, 3.917066884365847*^9, 3.91706915822654*^9, 
  3.917069613052601*^9, 3.9170818320107183`*^9, 3.91708236519018*^9, 
  3.917082480674532*^9, 3.917082712079482*^9, 3.917083278264779*^9, 
  3.917163879242464*^9, 3.9239786879953737`*^9},
 CellLabel->"Out[38]=",ExpressionUUID->"b5f30824-8ccd-4bf8-bfb5-73b39b71df51"]
}, Open  ]]
}, Closed]],

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
 CellLabel->"In[39]:=",ExpressionUUID->"19bc3be3-59f1-4a6e-af44-0d507c3b1df8"],

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
   3.917081692806446*^9, 3.917081719367975*^9}, {3.917082291607188*^9, 
   3.9170822941193447`*^9}, {3.917082412610075*^9, 3.917082412636932*^9}, {
   3.917082550518083*^9, 3.917082555308918*^9}, {3.917083115121769*^9, 
   3.917083115177803*^9}, {3.917163366085539*^9, 3.917163367425077*^9}, {
   3.918093110386491*^9, 3.918093112092709*^9}},
 CellLabel->"In[40]:=",ExpressionUUID->"4e8c881c-eedd-48cc-8b70-da40ff2a5181"],

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
   3.918093167164841*^9, 3.918093170024651*^9}},
 CellLabel->"In[41]:=",ExpressionUUID->"abfc9a24-a53a-4b73-9bee-d76fe75b334c"],

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
  3.918093192529881*^9, 3.918093399600718*^9, 3.923978700646448*^9},
 CellLabel->"Out[41]=",ExpressionUUID->"3a81a102-c83b-45f0-b94e-a6c055706128"]
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
   3.917081692806446*^9, 3.917081746874617*^9}, 3.917082300672118*^9, {
   3.917082417698749*^9, 3.917082417729314*^9}, 3.917082566352906*^9, {
   3.917083117925973*^9, 3.917083117987858*^9}, {3.917163380780294*^9, 
   3.917163381083357*^9}, {3.9180931195924463`*^9, 3.918093119661571*^9}},
 CellLabel->"In[42]:=",ExpressionUUID->"70f18d77-3ecb-42df-8093-d217dec0db83"],

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
   3.917083060786858*^9}, {3.918093122363691*^9, 3.9180931224122057`*^9}, {
   3.918093175209054*^9, 3.9180931805805473`*^9}},
 CellLabel->"In[43]:=",ExpressionUUID->"365ffa77-8506-4e3b-bf1d-6d3629293cd9"],

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
   3.917069111669841*^9, 3.917069566444757*^9, 3.917081811329129*^9, 
   3.917082266146209*^9, 3.9170823405592833`*^9, 3.9170824601503487`*^9, 
   3.917082687483477*^9, 3.917083065333617*^9, 3.9170832301511307`*^9, 
   3.91716383021731*^9, 3.9180931600625887`*^9, 3.918093195314985*^9, 
   3.918093422887094*^9, 3.923978719678576*^9},
 CellLabel->"Out[43]=",ExpressionUUID->"010b4812-fc26-435f-9edc-9f777ac84bc0"]
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
 CellLabel->"In[44]:=",ExpressionUUID->"3b0efeea-35a1-4eac-9138-69a689411985"],

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
 CellLabel->"In[45]:=",ExpressionUUID->"d6a66df0-6bd1-4c2c-add2-d3636c8ff857"],

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
   3.918093182771535*^9, 3.9180931970524807`*^9}, 3.918093446926453*^9, 
   3.923978746361569*^9},
 CellLabel->"Out[45]=",ExpressionUUID->"42374f15-d82f-4075-8cd1-9c2211f56e85"]
}, Open  ]]
}, Closed]]
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
Cell[4381, 118, 749, 22, 103, "Code",ExpressionUUID->"a8c75ab8-b67f-4ee4-b445-338ca3e301c8",
 InitializationCell->True]
}, Open  ]],
Cell[CellGroupData[{
Cell[5167, 145, 218, 4, 67, "Section",ExpressionUUID->"dec97eca-19fa-490c-b79a-f3ecef91276e"],
Cell[5388, 151, 220, 5, 35, "Text",ExpressionUUID->"12dedfac-7282-4318-b7a8-2bbc20fd3394"],
Cell[CellGroupData[{
Cell[5633, 160, 158, 3, 54, "Subsection",ExpressionUUID->"9fdf91e5-d32a-4993-b56a-65d361fc20a3"],
Cell[5794, 165, 983, 27, 79, "Code",ExpressionUUID->"41c6c59b-39e9-40f1-a065-46820d543bf2",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[6802, 196, 1569, 44, 99, "Code",ExpressionUUID->"42d4a14a-dbc1-444d-a920-99d12f5f389a",
 InitializationCell->False],
Cell[8374, 242, 528, 9, 70, "Output",ExpressionUUID->"44a432a0-aa6a-4a1b-ac51-b3cf318a9476"],
Cell[8905, 253, 641, 13, 70, "Output",ExpressionUUID->"5aaa167e-a7ac-49c7-83b3-e948f49cff33"],
Cell[9549, 268, 917, 23, 70, "Output",ExpressionUUID->"245df706-6eda-4560-b268-e761b71174ec"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[10515, 297, 282, 5, 54, "Subsection",ExpressionUUID->"f2b4ddc6-68ad-4dee-8ead-ce106f7bf6ec"],
Cell[CellGroupData[{
Cell[10822, 306, 1039, 26, 59, "Code",ExpressionUUID->"fa53bb89-0ab1-4b4e-b599-84c6b2d7f606",
 InitializationCell->False],
Cell[11864, 334, 670, 22, 70, "Output",ExpressionUUID->"d58bd887-8c04-4d8a-b317-3e0f4fc93e38"]
}, Open  ]],
Cell[12549, 359, 1161, 21, 37, "Code",ExpressionUUID->"2040caf9-e906-4375-8f4f-06b6de25391c",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[13735, 384, 744, 18, 37, "Code",ExpressionUUID->"9c1a15a0-2a17-4b4b-9f6b-1d4556c461f8",
 InitializationCell->False],
Cell[14482, 404, 1460, 46, 70, "Output",ExpressionUUID->"db2bac21-015c-45df-8f40-ae9434b53544"]
}, Open  ]],
Cell[15957, 453, 1185, 22, 37, "Code",ExpressionUUID->"70a808b0-c46e-4cbe-8cfc-197ceebac57e",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[17167, 479, 745, 18, 37, "Code",ExpressionUUID->"9c8db76f-131b-4c44-add1-3a4ea498b615",
 InitializationCell->False],
Cell[17915, 499, 1565, 48, 70, "Output",ExpressionUUID->"94d288c5-dbde-4ac2-a8f7-dd08a9bb62f7"]
}, Open  ]],
Cell[19495, 550, 1210, 23, 37, "Code",ExpressionUUID->"f2f66b6c-683a-48a6-b3a4-ab8c0c5fc73d",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[20730, 577, 1323, 37, 51, "Code",ExpressionUUID->"61a238c3-150c-4f14-82db-3a6c13f6ff4f",
 InitializationCell->False],
Cell[22056, 616, 1563, 49, 70, "Output",ExpressionUUID->"3013790f-bcf6-4d18-b88a-166c2076496b"]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[23668, 671, 155, 3, 38, "Subsection",ExpressionUUID->"ceb9f383-1bdb-416d-b30b-fcb82314f12e"],
Cell[23826, 676, 1547, 49, 61, "Code",ExpressionUUID->"ab7e3c9f-908a-4ab1-aee3-47f776bbeb21",
 InitializationCell->False],
Cell[25376, 727, 527, 12, 37, "Code",ExpressionUUID->"14bba47f-1249-4443-bff9-2f48bab0ecb4",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[25928, 743, 624, 16, 37, "Code",ExpressionUUID->"df09aa63-a9a4-4e74-8026-d19fe2a34222",
 InitializationCell->False],
Cell[26555, 761, 18761, 536, 70, "Output",ExpressionUUID->"c98a1853-d352-4ca6-8829-c4a9099bf5f7"]
}, Open  ]],
Cell[45331, 1300, 479, 12, 37, "Code",ExpressionUUID->"3cf1e9ed-9dd9-4793-8c9a-394053f15922",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[45835, 1316, 622, 16, 37, "Code",ExpressionUUID->"14638c7c-f68a-47d5-a516-cc485007a02a",
 InitializationCell->False],
Cell[46460, 1334, 20198, 567, 70, "Output",ExpressionUUID->"67701962-caa8-4596-974b-4ce99543acbe"]
}, Open  ]],
Cell[66673, 1904, 531, 13, 37, "Code",ExpressionUUID->"5295891e-48e3-41a5-85d6-3cc52e2e861c",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[67229, 1921, 622, 16, 37, "Code",ExpressionUUID->"164ad7d0-bcf9-4228-992f-bf1c83179548",
 InitializationCell->False],
Cell[67854, 1939, 28437, 800, 70, "Output",ExpressionUUID->"57b48e06-873f-48dd-a8fe-4fe09dad140c"]
}, Open  ]]
}, Closed]]
}, Closed]],
Cell[CellGroupData[{
Cell[96352, 2746, 210, 4, 53, "Section",ExpressionUUID->"f81ebb78-53b5-4e61-bc6e-09828b669887"],
Cell[96565, 2752, 202, 3, 35, "Text",ExpressionUUID->"4b555f3f-45b0-462d-bfab-cecb9653ff4c"],
Cell[CellGroupData[{
Cell[96792, 2759, 181, 3, 54, "Subsection",ExpressionUUID->"7ddf84ab-1056-47f8-b280-9737d7932704"],
Cell[96976, 2764, 360, 9, 52, "Code",ExpressionUUID->"d2105ef0-a5c5-4fc6-9df9-126915b39fe2",
 InitializationCell->False],
Cell[97339, 2775, 1134, 20, 37, "Code",ExpressionUUID->"cd197911-5dce-419d-aadb-2eb95cf13a4a",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[98498, 2799, 891, 22, 37, "Code",ExpressionUUID->"649388f9-60f9-44e8-b21e-a2929db41f55",
 InitializationCell->False],
Cell[99392, 2823, 977, 25, 58, "Output",ExpressionUUID->"81bfec8a-28c1-40d9-8470-4ec479e71c8d"]
}, Open  ]],
Cell[100384, 2851, 1162, 21, 37, "Code",ExpressionUUID->"d0f06565-893d-4ea4-953d-817e05bfd04c",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[101571, 2876, 796, 20, 37, "Code",ExpressionUUID->"3c720c3b-0b03-4c4f-b328-ab6a5593fb8d",
 InitializationCell->False],
Cell[102370, 2898, 1245, 33, 35, "Output",ExpressionUUID->"cda2018b-4724-4fa4-ab55-15ad3c098f2d"]
}, Open  ]],
Cell[103630, 2934, 1185, 22, 37, "Code",ExpressionUUID->"03e00499-2b21-459b-94d0-fde456fe6d80",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[104840, 2960, 1391, 38, 51, "Code",ExpressionUUID->"91dcff84-9a02-48df-8cad-ef5bcba6e40a",
 InitializationCell->False],
Cell[106234, 3000, 1405, 39, 35, "Output",ExpressionUUID->"bc4593f1-c085-4855-b426-3e71b0ca7202"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[107688, 3045, 234, 4, 54, "Subsection",ExpressionUUID->"aa6784c4-1654-45f2-b6de-1e8fab4de41f"],
Cell[107925, 3051, 464, 13, 52, "Code",ExpressionUUID->"cb26f5f5-fe73-4998-9315-7d37dc3ef7cd",
 InitializationCell->False],
Cell[108392, 3066, 1284, 22, 37, "Code",ExpressionUUID->"d13db18a-36cf-444a-a278-2b69657d74bf",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[109701, 3092, 1329, 37, 51, "Code",ExpressionUUID->"8b30bffb-67af-4d73-8090-1e86198263cf",
 InitializationCell->False],
Cell[111033, 3131, 2171, 63, 59, "Output",ExpressionUUID->"08a381bd-497e-4a7c-a4e5-59af3301808a"]
}, Open  ]],
Cell[113219, 3197, 1260, 23, 37, "Code",ExpressionUUID->"c255e267-ce5b-4c1a-bc0a-d5cbe45d6562",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[114504, 3224, 1328, 37, 51, "Code",ExpressionUUID->"68fd3b0c-b228-4701-8882-6e95bf052fd0",
 InitializationCell->False],
Cell[115835, 3263, 2730, 79, 85, "Output",ExpressionUUID->"98ab076d-8dbf-4918-9f84-6175a137e835"]
}, Open  ]],
Cell[118580, 3345, 1287, 24, 37, "Code",ExpressionUUID->"38ebcec4-ceec-427f-ae59-cbc263141644",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[119892, 3373, 1326, 37, 51, "Code",ExpressionUUID->"689363d0-f5ac-4894-a4c3-faf2bb973b00",
 InitializationCell->False],
Cell[121221, 3412, 2583, 77, 85, "Output",ExpressionUUID->"b5f30824-8ccd-4bf8-bfb5-73b39b71df51"]
}, Open  ]]
}, Closed]],
Cell[CellGroupData[{
Cell[123853, 3495, 296, 5, 38, "Subsection",ExpressionUUID->"1167e2b7-9bf8-4207-8a25-519f473a54fe"],
Cell[124152, 3502, 434, 11, 52, "Code",ExpressionUUID->"19bc3be3-59f1-4a6e-af44-0d507c3b1df8",
 InitializationCell->False],
Cell[124589, 3515, 1334, 23, 37, "Code",ExpressionUUID->"4e8c881c-eedd-48cc-8b70-da40ff2a5181",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[125948, 3542, 1488, 39, 51, "Code",ExpressionUUID->"abfc9a24-a53a-4b73-9bee-d76fe75b334c",
 InitializationCell->False],
Cell[127439, 3583, 902, 21, 59, "Output",ExpressionUUID->"3a81a102-c83b-45f0-b94e-a6c055706128"]
}, Open  ]],
Cell[128356, 3607, 1308, 23, 37, "Code",ExpressionUUID->"70f18d77-3ecb-42df-8093-d217dec0db83",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[129689, 3634, 1554, 40, 51, "Code",ExpressionUUID->"365ffa77-8506-4e3b-bf1d-6d3629293cd9",
 InitializationCell->False],
Cell[131246, 3676, 1682, 44, 60, "Output",ExpressionUUID->"010b4812-fc26-435f-9edc-9f777ac84bc0"]
}, Open  ]],
Cell[132943, 3723, 1335, 24, 37, "Code",ExpressionUUID->"3b0efeea-35a1-4eac-9138-69a689411985",
 InitializationCell->False],
Cell[CellGroupData[{
Cell[134303, 3751, 1487, 39, 51, "Code",ExpressionUUID->"d6a66df0-6bd1-4c2c-add2-d3636c8ff857",
 InitializationCell->False],
Cell[135793, 3792, 2128, 60, 61, "Output",ExpressionUUID->"42374f15-d82f-4075-8cd1-9c2211f56e85"]
}, Open  ]]
}, Closed]]
}, Open  ]]
}, Open  ]]
}
]
*)

