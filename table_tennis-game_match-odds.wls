#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Probability of winning a game straight (without deuce), if point is won with probability a*)
Pgs[a_]:=a^11 Sum[Binomial[10+k,k]*(1-a)^k,{k,0,9}]

(*Probability of reaching deuce*)
Pd[a_]:=Binomial[20,10]*a^10*(1-a)^10
Pwd[a_]:=a^2/(a^2+(1-a)^2) (*x^2/(1-2*x(1-x))*)

(*Probability of WINNING [WITH DEUCE]*)
Pg[a_]:=Pgs[a] + Pd[a]*Pwd[a]

(*Probability of winning in sudden death to 5 pts*)
Pg5s[a_]:=a^5 Sum[Binomial[4+k,k]*(1-a)^k,{k,0,4}]

(*Plots*)
Plot[
{
	Pd[x],
	(*x^2,*)
	(*x^2(1+2*x(1-x)),*)
	(*x^2/(1-2*x(1-x))*)
	Pwd[x],
	x,
	Pg[x]
}
,{x,0,1}, PlotLegends->"Expressions",AxesLabel->{"P(point)","P(...)"}]
Plot[
{
	Pg[x],
	(*Pgs[x]+Pd[x]*x,*)
	Pg5s[x],
	Pwd[x],
	x
}
,{x,0,1}, PlotLegends->"Expressions",AxesLabel->{"P(point)","P(game)"}]
Simplify[p^2/(p^2+(1-p)^2)==p^2/(1-2*p(1-p))];

(*Solve P(point) based on P(game) for Pg=0-100%*)

(*Column[Table[NSolve[n/100==Pg[x] + Pd[x]*Pwd[x],x,Reals], {n,0,100}]]*)
Pg[0.162957]
Pg[0.545]
Pg[0.668]

(*Maximum chance to reach deuce*)
Pd[0.5]


(* ::InheritFromParent:: *)
(**)


(*Match odds: best of 1, 3, 5, and 7*)
Plot[
{
	x^2(1+2(1-x)),
	x^3(1+3(1-x)+6(1-x)^2),
	x^4(1+4(1-x)+10(1-x)^2+20(1-x)^3),
	x
}
,{x,0,1},PlotLegends->"Expressions",AxesLabel->{"P(g)","P(m)"}]


(*Expected score based on P(Point), e.g. 11-7*)
Es[a_] := 11 * Pg[a] + Sum[n * Binomial[11+n, n] * (1-a)^11*a^n, {n,0,10}]
Es[.1]


(*Draw Likelihood*)
Plot[{Pd[x],Pg[x]},{x,0.2,0.4}, PlotLegends->"Expressions"]
