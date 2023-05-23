% Cours 05.22
% Analyse système mécanique

%%% Système forcé
clear; clc;

m = 1; %(Kg)
c = [0.1 0.3 0.5 1.5]; %(‐) ‐> ratio
k = 0.4; %(N/m)
t = 0:0.1:70; %(s)
B = [0; 1/m];
C = [1 0];
D = [0];
for i=1:length(c)
    A = [0 1; -k/m -c(i)/m];
    sys = ss(A, B, C, D);
    y(:,i) = step(sys, t);
end
figure;
plot(t, y)
xlabel('t (s)')
ylabel('x (m)')
legend('c = 0.1', 'c = 0.3', 'c = 0.5', 'c = 1.5')

%% Système non forcé, conditions initiales
clear; clc;

m = 1; %(Kg)
c = [0.1 0.3 0.5 1.5]; %(‐) ‐> ratio
k = 0.4; %(N/m)
t = 0:0.1:70; %(s)
B = [0; 1/m];
C = [1 0];
D = [0];
%valeurs initiales
X0 = [0.9; %Position
    0]; % Vitesse
for i=1:length(c)
    A(:,:,i) = [0 1; -k/m -c(i)/m];
    sys = ss(A(:,:,i),B,C,D);
    y(:,i) = initial(sys, X0, t);
end
figure;
plot(t, y)
xlabel('t (s)')
ylabel('x (m)')
legend('c = 0.1', 'c = 0.3', 'c = 0.5', 'c = 1.5')