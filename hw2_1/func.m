function [y] = func(x)
    x1 = x(1,1);
    x2 = x(2,1);
    x3 = x(3,1);
    y = x1.^2 + 2.*x1.*x2 + 4.*x1.*x3 + 3.*x2.^2 + 2.*x2.*x3 + 5.*x3.^2;
end