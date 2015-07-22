% Enter criteria values
criteria_values_9  = [0.0403, 0.0574, 0.0580, 0.0815, 0.0192, 1.15, 1.59, 15, 0.0426, 0.1506, 0.2717, 0.0114, 0.0093, 0.0052];
criteria_values_10 = [0.0198, 0.0150, 0.0072, 0.0300, 0.0240, 5.97, 1.00, 25, 0.0327, 0.0525, 0.4102, 0.0152, 0.0294, 0.0000];
criteria_values_11 = [0.0167, 0.2550, 0.1812, 0.7687, 0.1340, 1.41, 1.00, 15, 0.0537, 0.1613, 0.2000, 0.0866, 0.0579, 0.0000];
criteria_values_12 = [0.0316, 0.0308, 0.0000, 0.1081, 0.0000, 2.82, 1.00, 10, 0.0677, 0.0815, 0.1942, 0.0157, 0.0079, 0.0000];
criteria_values_13 = [0.0508, 0.0420, 1.0000, 0.1617, 0.0116, 4.63, 1.10, 20, 0.1572, 0.1588, 0.1025, 0.0650, 0.0189, 0.0000];
criteria_values_14 = [0.0594, 0.0599, 1.0000, 0.1347, 0.0291, 5.87, 1.00, 25, 0.1066, 0.5000, 0.3584, 0.1000, 0.0354, 0.0000];
criteria_values_15 = [0.0047, 0.0048, 0.1724, 0.3182, 0.0162, 2.24, 1.00, 25, 0.0018, 0.0800, 0.0289, 0.0174, 0.0026, 0.0048];
criteria_values_16 = [0.0193, 0.0192, 0.0069, 0.0966, 0.0000, 7.68, 1.00, 15, 0.0290, 0.2692, 0.0925, 0.0169, 0.0083, 0.0000];
% Calculate ranking. Ranking is continuous variable.
% Ranking  1 --> Good
% Ranking  0 --> Medium
% Ranking -1 --> Bad
% for example ranking = 0.3 means that method is edium to good, but closer
% to medium
% Ranking for the examples in the excel document
%
% RANKING EXPLAINATION
%  0.0 < ranking <  0.5 --> MEDIUM to GOOD
%  0.5 < ranking <  1.0 --> GOOD to MEDIUM
% -0.5 < ranking <  0.0 --> MEDIUM to BAD
% -1.0 < ranking < -0.5 --> BAD to MEDIUM
% for values equal to -1, 0 and 1 we have explicitly BAD, MEDIUM, GOOD
ranking_9  = DDSS(criteria_values_9);
ranking_10 = DDSS(criteria_values_10);
ranking_11 = DDSS(criteria_values_11);
ranking_12 = DDSS(criteria_values_12);
ranking_13 = DDSS(criteria_values_13);
ranking_14 = DDSS(criteria_values_14);
ranking_15 = DDSS(criteria_values_15);
ranking_16 = DDSS(criteria_values_16);

% if you want o run a different example then
% 1) create a criteria values variable
% 2) use this vaiable as input argument to DummyDSS function
