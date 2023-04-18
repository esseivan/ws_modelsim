% constantes
clear;

L = 0.1;
h = 10;
r = 10e-2; %m
A = pi*r^2; % m^2
rho = 8940; % kg/m3

Rconv = 1/(A*h);
Cp = 2700;
m = A*L*rho;
C = Cp*m;

tau = Rconv*C;
Ta = 100; %degC
Tb = 10; %degC
Tint0 = 25; %degC

T_stop = 330 * 3600; % 330h