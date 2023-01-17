#!/usr/bin/env wolframscript
(* ::Package:: *)

FactorInteger[5460]
Binomial[16,2]*Binomial[16-2,2]/2
Plot[{Binomial[n,2],n^2/2},{n,2,250},PlotLegends->"Expressions"]
Plot[{Binomial[n,2]*Binomial[n-2,2]/2,n^4/8},{n,4,50},PlotLegends->"Expressions"]



