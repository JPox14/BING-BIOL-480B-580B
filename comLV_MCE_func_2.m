function dxdt = comLV_MCE_func_2(t, x, r, s, a)

dxdt = zeros(2,1);

dxdt(1) = x(1) * (r(1) - s(1) * x(1) + a(1,2)*x(2));
dxdt(2) = x(2) * (r(2) - s(2) * x(2) + a(2,1)*x(1));

end