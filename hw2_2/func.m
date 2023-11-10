function [y] = func(x)
    x1 = x(1,1);
    x2 = x(2,1);
    y = 2.*x1.^2 - 3.*x1.*x2 + 8.*x2.^2 + x1 - x2;
end
