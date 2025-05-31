#!/usr/bin/env wolframscript
(* ::Package:: *)

ff[p_] = InverseCDF[NormalDistribution[100,15], p]

Plot[ff[x], {x,0.995,1}, Filling->Axis, PlotRange->Automatic]
