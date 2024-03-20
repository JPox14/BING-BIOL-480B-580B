% Competitive Lotka Volterra
% JPalmer Biol480/580B
% jpalmer10 [at] binghamton [dot] edu
clear;clc;
close(figure(1));


%------set parameters------

r = [1 1];    %growth rate of species [1 2]
s = [1 1];     %Self-regulation of species [1 2]

X1 = 0.1;  %Initial abundance of Species 1
X2 = 0.2;   %Initial abundance of Species 2

a = [0   -0.1 ; 
    -0.8  0 ]; %effect of species[1 on 1 , 1 on 2; 2 on 1, 2 on 2]


x = [X1 X2];   %Set the vector x of the dependent variables
x0 = x;     %Define initial conditions as x0

tend = 20;
tspan = [0 tend];   %How many time steps. from 0 to ?

[t,x] = ode45(@(t,x) comLV_MCE_func_2(t, x, r, s, a), tspan, x0);

output = [t,x];

T = output(:,1);
X1 = output(:,2);
X2 = output(:,3);


figure(1)
%Plot Species  (Light Blue)
plot(T, X1, 'color',[0.6, 0.9, 0.99],'LineWidth',2)
hold on
%Plot Species 2 (red)
plot(T,X2,'color',[0.8588, 0.2667, 0.2157],'LineWidth',2)
title('Competitive LV')
xlabel('Time')
ylabel('Abundance')
legend('Species 1', 'Species 2')
ylim([0 2])
xlim([0 tend])
