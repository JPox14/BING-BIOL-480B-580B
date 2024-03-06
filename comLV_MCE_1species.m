% Competitive Lotka Volterra
% JPalmer Biol480/580B
% jpalmer10 [at] binghamton [dot] edu
clear;clc;
close(figure(1));


%------set parameters------

r = [1];    %growth rate of species 1
s = [1];     %Self-regulation of species 1

X1 = 0.1;  %Initial abundance of Species 1


x = [X1];   %Set the vector x of the dependent variables
x0 = x;     %Define initial conditions as x0

tend = 10;
tspan = [0 tend];   %How many time steps. from 0 to ?

[t,x] = ode45(@(t,x) comLV_MCE_func_1(t, x, r, s), tspan, x0);

output = [t,x];

T = output(:,1);
s1 = output(:,2);


figure(1)
%Plot Species 1 (Light Blue)
plot(T, s1, 'color',[0.6, 0.9, 0.99],'LineWidth',2)
title('Competitive LV')
xlabel('Time')
ylabel('Abundance')
legend('Species 1')
ylim([0 2])
xlim([0 tend])
