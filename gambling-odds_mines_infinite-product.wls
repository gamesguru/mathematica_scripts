#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Code::Initialization::Plain:: *)
gems    := 18
mines   := 7

DiscretePlot[(
	gems - k + 1)/(gems + mines - k + 1),
	{k, 1, 18},
	PlotRange->{{0, 18}, Automatic}
];

cp := Table[
	N[
		Product[
			(gems - k + 1)/(gems + mines - k + 1),
			{k, 1, n}
		],
		3
	],
	{n,1,18}
]
Column[cp]

DiscretePlot[
	Product[
		(gems - k + 1)/(gems + mines - k + 1),
		{k, 1, n}
	],
	{n, 1, 18},
	PlotRange->{{0,18},Automatic}
]



