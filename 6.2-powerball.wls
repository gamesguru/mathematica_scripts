#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Powerballs odds*)
(*https://michiganlotterynumbers.com/powerball*)
t:=Binomial[69,5]Binomial[26,1]

p1:=1 (*5 + Powerball*)
p2:=Binomial[25,1]
p3:=Binomial[5,4]Binomial[64,1]
p4:=Binomial[5,4]Binomial[64,1]Binomial[25,1]
p5:=Binomial[5,3]Binomial[64,2]
p6:=Binomial[5,3]Binomial[64,2]Binomial[25,1]

p1/t
N[t/p2, 10]
N[t/p3, 10]
N[t/p4, 10]
N[t/p5, 10]
N[t/p6, 10]



