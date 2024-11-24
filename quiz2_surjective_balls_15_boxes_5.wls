#!/usr/bin/env wolframscript
(* ::Package:: *)

k:=100;
m:=5;
mbpb:=10;

Binomial[k-mbpb*m+m-1,m-1]

k=k-(mbpb-1)*m;

k-1
m-1
k-m

Binomial[k-m+m-1,k-m]
Binomial[k-1,k-m]
Binomial[k-1,m-1]
(k-1)!/((k-m)!(m-1)!)



