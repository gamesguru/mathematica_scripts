#!/usr/bin/env wolframscript
(* ::Package:: *)

Binomial[3,2];
Binomial[4,2];

(*Probability of reaching deuce*)
Pd[a_]:=a^10 Binomial[20,10]*(1-a)^10
Pwd[a_]:=a^2/(a^2+(1-a)^2)

Plot[{Pd[x], Pwd[x]},{x,0.2,0.8}, PlotLegends->"Expressions"]

(*Probability of winning a game, if point is won with probability a*)
Pg[a_]:=a^11 Sum[Binomial[10+k,k]*(1-a)^k,{k,0,9}]

Plot[{Pg[x] + Pd[x]*Pwd[x],x},{x,0,1}, PlotLegends->"Expressions"]

(*Should add up to 1*)
FullSimplify[
	Pg[x] + Pd[x]*Pwd[x]
	+ Pg[1-x] + Pd[1-x]*Pwd[1-x]
]

(*Try to solve P(point) based on P(game)*)
NSolve[0.99==Pg[x] + Pd[x]*Pwd[x],x,Reals]


FullSimplify[a^3 (1+3(1-a)+6(1-a)^2)]
FullSimplify[a^3 (1+3(1-a)+6(1-a)^2) + (1-a)^3 (1+3*a+6*a^2)]

(*1, 3 and 5 game match odds*)
Plot[{x^2 (3-2x),x^3 (1+3(1-x)+6(1-x)^2),x},{x,0,1},PlotLegends->"Expressions"]



