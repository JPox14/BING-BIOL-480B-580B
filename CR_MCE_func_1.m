function dxdt = CR_MCE_func_1(t, x, r, N)

dxdt = zeros(2,1);


dxdt(1) = x(1) * x(2) * r(1);

dxdt(2) = - x(2) * x(1);

end