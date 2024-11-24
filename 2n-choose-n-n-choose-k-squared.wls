#!/usr/bin/env wolframscript
(* ::Package:: *)

n:=50
FullSimplify[Sum[Binomial[n,k]Binomial[n,n-k]*k,{k,0,n}]]
n/2*Binomial[2n,n]
(*k^2*)
n/2*(n-1)/2*Binomial[2n,n]+(n/2)^2;



