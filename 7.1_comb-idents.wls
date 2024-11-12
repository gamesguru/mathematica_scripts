#!/usr/bin/env wolframscript
(* ::Package:: *)

(*Comb Idents*)
n:=137;
k:=23;
r:=11;
Binomial[n,k]Binomial[n-k, r]
Binomial[n,k+r]Binomial[k+r,k]
Binomial[n,k+r]Binomial[k+r,r]



