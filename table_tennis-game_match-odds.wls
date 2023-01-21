#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Probability of reaching deuce*)
Pd[a_]:=a^10 Binomial[20,10]*(1-a)^10
Pwd[a_]:=a^2/(a^2+(1-a)^2)

Plot[{Pd[x], Pwd[x]},{x,0.2,0.8}, PlotLegends->"Expressions"]

(*Probability of winning a game, if point is won with probability a*)
Pg[a_]:=a^11 Sum[Binomial[10+k,k]*(1-a)^k,{k,0,9}]

Plot[{Pg[x] + Pd[x]*Pwd[x],Pg[x]+Pd[x]*x,x},{x,0,1}, PlotLegends->"Expressions"]

(*Try to solve P(point) based on P(game)*)
NSolve[0.8==Pg[x] + Pd[x]*Pwd[x],x,Reals]


(*1, 3, 5, and 7 game match odds*)
Plot[
{
	x^2(1+2(1-x)),
	x^3(1+3(1-x)+6(1-x)^2),
	x^4(1+4(1-x)+10(1-x)^2+20(1-x)^3),
	x
}
,{x,0,1},PlotLegends->"Expressions"]