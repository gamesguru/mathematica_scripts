#!/usr/bin/env wolframscript
(* ::Package:: *)

Ntot  := 20
Pfair := 0.5
Pwins := 0.47

DiscretePlot[
	{
		PDF[BinomialDistribution[Ntot, Pfair], x],
		PDF[BinomialDistribution[Ntot, Pwins], x],
	},
	{x, Round[1/4 Ntot], Round[3/4 Ntot]}
]
