#!/usr/bin/env wolframscript
(* ::Package:: *)

(*The numerical simulation compared with analytic result*)
\[Rho]=1.2;
A=0.6;
Cd=0.7;
m=75;
g=9.81;\.0c
k=1/2 \[Rho]*A*Cd
Vterm=Sqrt[2*m*g/(\[Rho]*A*Cd)]

s=NDSolve[{m*v'[t]==m*g-k*v[t]^2,v[0]==0},v,{t,0,100}];
Plot[{0.9*Vterm,0.97*Vterm,0.99*Vterm,Evaluate[v[t]/.s],Sqrt[(m*g)/k]*Tanh[Sqrt[(k*g)/m]*t]},{t,1,30},PlotRange->All,PlotLegends->"Expressions"]


(*Some analytical / manual results*)
Solve[(u+a)/(u-a)==-E^(2*a*\[Gamma]*t),u]
FullSimplify[Solve[(u+a)/(u-a)==-E^(2*a*\[Gamma]*t),u]]
FullSimplify[a*(E^(2*a*\[Gamma]*t)-1)/(E^(2*a*\[Gamma]*t)+1)]



