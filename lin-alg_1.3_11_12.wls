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
