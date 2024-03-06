function dxdt = comLV_MCE_func_1(t, x, r, s)

dxdt = zeros(1,1);

dxdt(1) = x(1) * (r(1) - s(1) * x(1));