#!/usr/bin/env wolframscript
(* ::Package:: *)

Plot[1/2x^2-2x+1,{x,0,4},PlotRange->{-2,3}];
Plot[(x-1)(x-3)+2,{x,0,4},PlotRange->{-2,10}]

ContourPlot[{x^2-y^2 == 2x*y},{x,-4,4},{y,-4,4}]
ContourPlot[{x^2-y^2 == 1},{x,-4,4},{y,-4,4}]
ContourPlot[{x^3+y^3 == 1},{x,-2,2},{y,-2,2}]
ContourPlot[{x^4+y^4 == 1},{x,-2,2},{y,-2,2}]
ContourPlot[{x^20+y^20 == 1},{x,-2,2},{y,-2,2}]
ContourPlot[{x^21+y^21 == 1},{x,-2,2},{y,-2,2}]



