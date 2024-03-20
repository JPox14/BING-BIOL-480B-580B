function dxdt = CR_MCE_func_2(t, x, r)

dxdt = zeros(3,1);

%Species 1
dxdt(1) = x(1) * x(3) * r(1);

%Species 2
dxdt(2) = x(2) * x(3) * r(2);

%Nutrients
dxdt(3) = - x(3) * (x(1)+x(2));

end