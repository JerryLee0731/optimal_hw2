function [y] = grad(x)
    x1 = x(1,1);
    x2 = x(2,1);
    g1 = 4.*x1 - 3.*x2 + 1;
    g2 = -3.*x1 + 16.*x2 - 1;
    y = [g1;g2];
end