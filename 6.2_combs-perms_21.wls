#!/usr/bin/env wolframscript
(* ::Package:: *)

22!/((22-18)!*18!)*4!/((4-4)!*4!)
22!;
22!/((22-18)!*18!)*2^4
4!/((4-4)!*4!);


Binomial[435,3]*100*98*96
Log10[10^(10^10)]


(*Pizza problem; basics*)
(*4 ingreds, 3 indistinct pizzas; no reusing ingreds. Solution: 4 ways*)
1/3!*
Binomial[4,1]*Binomial[3,1]*Binomial[2,1]

Binomial[4,3] (*Why is this not the full story?*)

1/4!*
Binomial[4,3]*Binomial[4,1]*Binomial[3,1]*Binomial[2,1]


(*10 ingreds, 3 indistinct pizzas; no reusing ingreds*)
1/3!*
Binomial[10,2]*Binomial[8,2]*Binomial[6,2]

Binomial[10,6]*Binomial[6,2] (*Why is this not the full story?*)

1/3!*
Binomial[10,6]*Binomial[6,2]*Binomial[4,2]*Binomial[2,2]


(*20 ingreds, 4 indistinct pizzas; no reusing ingreds*)
1/4!*Binomial[20,4]*Binomial[16,4]*Binomial[12,4]*Binomial[8,4]
1/4!*Binomial[20,16]Binomial[16,4]*Binomial[12,4]*Binomial[8,4]


(*20 ingreds, 4 distinct pizzas; no reusing ingreds*)
Binomial[20,4]*Binomial[16,4]*Binomial[12,4]*Binomial[8,4]
Binomial[20,16]Binomial[16,4]*Binomial[12,4]*Binomial[8,4]


(*10 ingreds, 2 indistinct/small/thin-crust pizzas; no reusing ingreds*)
1/2!*Binomial[10,2]*Binomial[8,2]
1/2!*Binomial[10,4]*Binomial[4,2]*Binomial[2,2]


(*Card problem; Sample Test 2, #10*)
(*2 pairs [of different rank]*)
(*3 single cards [not of the same rank]*)

(*Prof Cheng*)
1/2!*
Binomial[13,1]Binomial[4,2]*
Binomial[12,1]Binomial[4,2]*
1/3!*
Binomial[11,1]Binomial[4,1]*
Binomial[10,1]Binomial[4,1]*
Binomial[9,1]*Binomial[4,1]


(*Me*)
Binomial[13,2](Binomial[4,2])^2*
1/3!*
Binomial[11,1]Binomial[4,1]*
Binomial[10,1]Binomial[4,1]*
Binomial[9,1]*Binomial[4,1]

(*Even simpler, but why, how?*)
(*Why no factorials, like above or with pizza examples?*)
Binomial[13,2]Binomial[4,2]^2*Binomial[11,3]Binomial[4,1]^3


(*Necklace problem*)
n:=5;

(*My solutions*)
1/2!*
(Binomial[8n,2n]Binomial[2n,n]*(n!)^2)*           (*Necklaces indistinct*)
1/2!*
(Binomial[6n,2n]Binomial[2n,n]*(n!/2)^2)*         (*Necklaces indistinct*)
(Binomial[4n,n]*Binomial[3n,n]*(n!/2)^2)(2n-1)!/2  (*Necklaces distinct*)


1/2!*
(Binomial[8n,2n]Binomial[2n,n]*(n!)^2)*           (*Necklaces indistinct*)
1/2!*
(Binomial[6n,2n]Binomial[2n,n]*(n!/2)^2)*         (*Necklaces indistinct*)
(Binomial[4n,2n]Binomial[2n,n]*(n!/2)^2)(2n-1)!/2 (*Necklaces distinct*)

(*Cheng's solution*)
1/(2!*2!)*
Binomial[8n,n]Binomial[7n,n]Binomial[6n,n]*
Binomial[5n,n]Binomial[4n,n]Binomial[3n,n]*
(n!)^2 (n!/2)^4 (2n-1)!/2!

(*Playground*)
Binomial[8n,2n]Binomial[2n,n]
Binomial[8n,n]*Binomial[7n,n]


(*Comb Idents*)
n:=137;
k:=23;
r:=11;
Binomial[n,k]Binomial[n-k, r]
Binomial[n,k+r]Binomial[k+r,k]
Binomial[n,k+r]Binomial[k+r,r]



