%% 
clear;clc;
disp("Exercice 1.3");

C = 10e-9;
L = 1-6;
R = 250;

sim_T = 1;

A = [0, -1/C;
    1/L, -R/L];
B = [1/C;
    0];
C = [0 R];
D = [0];

