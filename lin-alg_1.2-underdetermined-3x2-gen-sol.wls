#!/usr/bin/env wolframscript
(* ::Package:: *)

RowReduce[
	{
		{a,b,c,x},
		{d,e,f,y}
	}
];
MatrixForm[%]


(*1.3 - 11*)
RowReduce[
	{
		{p-i, i, p-i, p},
		{q-j, j, q-j, q},
		{r-k, k, r-k, r},
		{s-m, m, s-m, s},
		{t-n, n, t-n, t}
	}
];
MatrixForm[%]

x1 + x3 = 1
x3 is free, call it \[Alpha]

x1 + \[Alpha] = 1
x1 = 1 - \[Alpha]
solution = (1-\[Alpha], 1, \[Alpha])


(* ::InheritFromParent:: *)
(*\!\( *)
(*TagBox[*)
(*RowBox[{"(", "", GridBox[{*)
(*{"1", "0", "1", "1"},*)
(*{"0", "1", "0", "1"},*)
(*{"0", "0", "0", "0"},*)
(*{"0", "0", "0", "0"},*)
(*{"0", "0", "0", "0"}*)
(*},*)
(*GridBoxAlignment->{"Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},*)
(*GridBoxSpacings->{"Columns" -> {Offset[0.27999999999999997`], {Offset[0.7]}, Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}, "RowsIndexed" -> {}}], "", ")"}],*)
(*Function[BoxForm`e$, MatrixForm[BoxForm`e$]]]\)*)


(*1.3 - 12*)
RowReduce[
	{
		{i1, j1, k1, l1, i1+j1+k1+l1},
		{i2, j2, k2, l2, i2+j2+k2+l2},
		{i3, j3, k3, l3, i3+j3+k3+l3},
		{i4, j4, k4, l4, i4+j4+k4+l4}
	}
];
MatrixForm[%]


(* ::InheritFromParent:: *)
(*\!\( *)
(*TagBox[*)
(*RowBox[{"(", "", GridBox[{*)
(*{"1", "0", "0", "0", "1"},*)
(*{"0", "1", "0", "0", "1"},*)
(*{"0", "0", "1", "0", "1"},*)
(*{"0", "0", "0", "0", "0"}*)
(*},*)
(*GridBoxAlignment->{"Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},*)
(*GridBoxSpacings->{"Columns" -> {Offset[0.27999999999999997`], {Offset[0.7]}, Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}, "RowsIndexed" -> {}}], "", ")"}],*)
(*Function[BoxForm`e$, MatrixForm[BoxForm`e$]]]\)*)
