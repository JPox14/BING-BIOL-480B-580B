% Predator-Prey Lotka Volterra
% JPalmer Biol480/580B
% jpalmer10 [at] binghamton [dot] edu
clear;clc;
close(figure(1));


%------set parameters------

a = 0.5;    %growth rate of prey
b = 1;     %Effect of predator on prey

c = 0.5;    %death rate of predator
d = 0.1;    %Effect of prey on predator

X1 = 1;        %Initial abundance of Prey
X2 = 0.1;        %Initial abundance of Predator

x = [X1 X2];    %Dependent variables as a vector: x
x0 = x;         %Set initial conditions

tend = 50;      %Time end
tspan = [0 tend];   %Time span

%ODE solver Runge-Kutta-Fehlberg (RKF45)
[t,x] = ode45(@(t,y) LV_MCE_func(t, y, a, b, c, d), tspan, x0);

output = [t,x];

T = output(:,1);
Prey = output(:,2);
Predator = output(:,3);

figure(1)
%Plot Prey (Light Blue)
plot(T, Prey, 'color',[0.6, 0.8, 0.99],'LineWidth',2)
title('Predator-Prey')
hold on
%Plot Predator (red)
plot(T,Predator,'color',[0.8588, 0.2667, 0.2157],'LineWidth',2)
xlabel('Time')
ylabel('Abundance')
legend('Prey','Predator')
ylim([0 10])
hold off