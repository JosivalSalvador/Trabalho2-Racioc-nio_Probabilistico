% Definindo as probabilidades de cada condição da rua (Str) usando disjunção anotada
0.5::str(dry); 
0.3::str(wet); 
0.2::str(snow_covered).

% Definindo Flw (Volante do Dínamo Desgastado)
0.3::flw.

% Definindo B (Lâmpada OK)
0.9::b.

% Definindo K (Cabo OK)
0.95::k.

% Definindo R (Dínamo Deslizante) com base em Str e Flw
0.2::r :- str(dry), flw.
0.05::r :- str(dry), \+flw.
0.4::r :- str(wet), flw.
0.2::r :- str(wet), \+flw.
0.7::r :- str(snow_covered), flw.
0.5::r :- str(snow_covered), \+flw.

% Definindo V (Dínamo Mostra Tensão) com base em R
0.9::v :- r.
0.1::v :- \+r.

% Definindo Li (Luz Ligada) com base em V, B e K
0.99::li :- v, b, k.
0.9::li :- v, b, \+k.
0.7::li :- v, \+b, k.
0.5::li :- v, \+b, \+k.
0.01::li :- \+v, b, k.
0.001::li :- \+v, b, \+k.
0.005::li :- \+v, \+b, k.
0.001::li :- \+v, \+b, \+k.

