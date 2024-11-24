#!/usr/bin/env wolframscript
(* ::Package:: *)

n:=5

(*Cheng*)
1/(2*2) Binomial[8n,n]Binomial[7n,n]Binomial[6n,n]Binomial[5n,n]Binomial[4n,n]Binomial[3n,n](n!)^2*(n!/2)^4*(2n-1)!/2

(*Me*)
Binomial[8n,n]n!Binomial[7n,n]n!/2!*Binomial[6n,n]n!/2*Binomial[5n,n]n!/2*1/2!*Binomial[4n,n]n!/2*Binomial[3n,n]n!/2*Binomial[2n,2n](2n-1)!/2



