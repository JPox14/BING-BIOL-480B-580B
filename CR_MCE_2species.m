% Competitive Lotka Volterra
% JPalmer Biol480/580B
% jpalmer10 [at] binghamton [dot] edu
clear;clc;
close(figure(1));


%------set parameters------

r = [1 1];    %growth rate of species X1
N = [1];      %Nutrients

X1 = 0.001;  %Initial abundance of Species 1
X2 = 0.01;  %Initial abundance of Species 2


x = [X1 X2 N(1)];   %Set the vector x of the dependent variables
x0 = x;     %Define initial conditions as x0

tend = 10;
tspan = [0 tend];   %How many time steps. from 0 to ?

[t,x] = ode45(@(t,x) CR_MCE_func_2(t, x, r), tspan, x0);

output = [t,x];

T = output(:,1);
x1 = output(:,2);
x2 = output(:,3);
N1 = output(:,4);


figure(1)
%Plot Species 1 (Light Blue)
plot(T, x1, 'color',[0.6, 0.9, 0.99],'LineWidth',2)
hold on
plot(T,x2, 'color', [0.2 0.7 0], 'Linewidth', 2)
plot(T, N1, 'color',[0, 0, 0], 'LineWidth',1, 'LineStyle','--')
title('Consumer Resource')
xlabel('Time')
ylabel('Abundance')
legend('Species 1','Species 2','Nutrients')
ylim([0 1.2])
xlim([0 tend])
grid on
