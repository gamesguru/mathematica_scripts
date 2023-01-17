#!/usr/bin/env wolframscript
(* ::Package:: *)

Pb = 0.6 (*Player A has 60% chance of winning each point*)

(*Expected value*)
P0 = (0.6)^11
P1 = (0.6)^11 (0.4)^1 Binomial[11,1]
P2 = (0.6)^11 (0.4)^2 Binomial[12,2]
P3 = (0.6)^11 (0.4)^3 Binomial[13,3]
P4 = (0.6)^11 (0.4)^4 Binomial[14,4]
P5 = (0.6)^11 (0.4)^5 Binomial[15,5]
P6 = (0.6)^11 (0.4)^6 Binomial[16,6]
P7 = (0.6)^11 (0.4)^7 Binomial[17,7]
P8 = (0.6)^11 (0.4)^8 Binomial[18,8]
P9 = (0.6)^11 (0.4)^9 Binomial[19,9]
Pot = (0.6)^10 (0.4)^10 Binomial[20,10]
P0+P1+P2+P3+P4+P5+P6+P7+P8+P9



