#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Probability of reaching deuce*)
Pd[a_]:=a^10 Binomial[20,10]*(1-a)^10
Pwd[a_]:=a^2/(a^2+(1-a)^2)
Pnaivewd[a_]:=a^2(1+2*a(1-a))

(*Probability of winning a game, if point is won with probability a (without deuce)*)
Pg[a_]:=a^11 Sum[Binomial[10+k,k]*(1-a)^k,{k,0,9}]

(*Probability of winning in sudden death to 5 pts*)
Pg5s[a_]:=a^5 Sum[Binomial[4+k,k]*(1-a)^k,{k,0,4}]

(*Plots*)
Plot[
{
	Pd[x],
	x^2,
	Pnaivewd[x],
	x^2/(1-2*x(1-x)),
	Pwd[x]
},{x,0.2,0.8}, PlotLegends->"Expressions"]
Plot[
{
	Pg[x] + Pd[x]*Pwd[x],
	Pg5s[x],
	(*Pg[x]+Pd[x]*x,*)
	x
}
,{x,0,1}, PlotLegends->"Expressions"]
Simplify[p^2/(p^2+(1-p)^2)==p^2/(1-2*p(1-p))];

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
