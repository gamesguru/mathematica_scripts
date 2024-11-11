#!/usr/bin/env wolframscript
(* ::Package:: *)

22!/((22-18)!*18!)*4!/((4-4)!*4!)
22!;
22!/((22-18)!*18!)*2^4
4!/((4-4)!*4!);


Binomial[435,3]*100*98*96
Log10[10^(10^10)]





(*Pizza problem; basics*)
Binomial[4,1]*Binomial[3,1]*Binomial[2,1]/3!
Binomial[4,3]

Binomial[10,2]*Binomial[8,2]*Binomial[6,2]/3!
Binomial[10,6]*Binomial[6,2]*Binomial[4,2]*Binomial[2,2]/3!
Binomial[10,6]*Binomial[6,2]

Binomial[20,4]*Binomial[16,4]*Binomial[12,4]*Binomial[8,4]
Binomial[20,16]*Binomial[16,4]*Binomial[12,4]*Binomial[8,4]

Binomial[10,2]*Binomial[8,2]/2!
Binomial[10,4]*Binomial[4,2]*Binomial[2,2]/2!


(*Pizza problem; extended*)
1/2!*Binomial[13,1]Binomial[4,2]*1/3!*Binomial[12,1]Binomial[4,2]Binomial[11,1]Binomial[4,1]Binomial[10,1]Binomial[4,1]Binomial[9,1]Binomial[4,1]
Binomial[13,2](Binomial[4,2])^2*1/3!*Binomial[11,1]Binomial[4,1]Binomial[10,1]Binomial[4,1]Binomial[9,1]Binomial[4,1]


(*Necklace problem*)
n:=10;
(*My solutions*)
1/2!*(Binomial[8n,2n]Binomial[2n,n](n!)^2)*1/2!*(Binomial[6n,2n]Binomial[2n,n](n!/2)^2)(Binomial[4n,n]*Binomial[3n,n]*(n!/2)^2)(2n-1)!/2
1/2!*(Binomial[8n,2n]Binomial[2n,n](n!)^2)*1/2!*(Binomial[6n,2n]Binomial[2n,n](n!/2)^2)(Binomial[4n,2n]Binomial[2n,n]*(n!/2)^2)(2n-1)!/2
(*Cheng's solution*)
1/(2!*2!) Binomial[8n,n]Binomial[7n,n]Binomial[6n,n]Binomial[5n,n]Binomial[4n,n]Binomial[3n,n](n!)^2 (n!/2)^4 (2n-1)!/2!
(*Playground*)
Binomial[8n,2n]Binomial[2n,n]
Binomial[8n,n]Binomial[7n,n]


(*Comb Idents*)
n:=137;
k:=23;
r:=11;
Binomial[n,k]Binomial[n-k, r]
Binomial[n,k+r]Binomial[k+r,k]
Binomial[n,k+r]Binomial[k+r,r]
