#!/usr/bin/env wolframscript
(* ::Package:: *)

3^(3^3)
Sum [(n!)^2/(2n)!,{n,0,\[Infinity]}]
Plot[{x,x Log[x]},{x,0,10000},PlotLegends->"Expressions"]
(*N[Sum[1/n,{n,1,10^10}],10]*)
Sin[\[Pi]/12] ==Sqrt[2-Sqrt[3]]/2


Limit[(x^2-2x-3)/(2x-6),x->3]
Limit[(1+k*h)^(1/h), h->0]
Limit[(1+h)^(k/h),h->0]

Factor[a^2-b^2]
Factor[a^3-b^3]
Factor[a^4-b^4]
(1/10^2)^(1/10)
10^(-2/10)


Solve[{(1-h)^2+(2-k)^2==a^2,2==-(1-h)/(2-k),2==1/Sqrt[a^2-(1-h)^2] (-1+(2(1-h)^2)/(a^2-(1-h)^2))},{h,k,a}]


(1-4)^2+(2-1/2)^2
(a-b)(a+b)==-(b-a)(a+b)


Plot[{-Sqrt[225-x^2],Sqrt[225-x^2],4/3 x-25,-(4/3)x-25},{x,-20,20},PlotRange->{{-25,25},{-25,25}}]
64(12.3)-2.6(12.3)^2
Simplify[(21\[PlusMinus]Sqrt[21^2-4(6)(15)])/(2(6))]
(*Plot[(1-Cos[x])/x,{x,-\[Pi],\[Pi]}]*)
Plot[{-(1/2)x+1,-(1/2) x^3+x+2},{x,-2,2}]
Simplify[I^I]
Simplify[Log[i]]
Simplify[E^(I*\[Pi])]
Plot[Abs[x]*x,{x,-1,1}]


(*Factor[x^2+m*x+n]*)
(*DSolve[y''[t]+2y'[t]+y[t]\[Equal]Sin[r*t],y[t],t]*)
(*Plot[x!,{x,-10,5}]*)
s = NDSolve[{o''[t] + (0.05*o'[t]*Abs[o[t]] + 0.0o'[t]) + 4Sin[o[t]]==0, o[0]==\[Pi]-0.05, o'[0]==0},o,{t,0,100}]
s2 = NDSolve[{o''[t]+o[t]==0,o[0]==\[Pi]/4,o'[0]==0},o,{t,0,100}]
Plot[o[t]/.s,{t,0,100},PlotRange->All]


(*Manipulate[Plot[{x^3+k*x^2+3x-4},{x,-3,2}],{k,0,10}]*)
Plot[{2+Sqrt[2](Sqrt[1-x]+Sqrt[1+x])},{x,-1,1}]


14Sqrt[2.]
FactorInteger[2009]
Integrate[1/Sqrt[x^2-1],x]



