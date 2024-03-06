function dxdt = LV_MCE_func(t, x, a, b, c, d)

dxdt = zeros(2,1);

dxdt(1) = a*x(1) - b*x(1)*x(2);

dxdt(2) = d*x(1)*x(2) - c*x(2);

end