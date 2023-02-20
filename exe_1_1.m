%% a)
clear;clc;
R = [100; 1e3];
C = 1e-3;
Ii = 10e-3;
tau = R*C;
sim_T = 5 * max(tau);

%% b)
clear;clc;
R = 1e-3;
L = [200e-6; 400e-6];
Ui = 1;
tau = L/R;
sim_T = 5 * max(tau);



