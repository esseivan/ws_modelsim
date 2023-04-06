% Constantes
clear;clc;

d = 10e-2;
k = 200;
h = 5;
Cp = 500;
rho = 7800;
Tint = 1400;
Tinf = 240;

V = 4/3*pi*(d/2)^3;
m = rho*V;
Cth = Cp*m

A = (4*pi*(d/2)^2);
Rconv = 1/(A*h);
