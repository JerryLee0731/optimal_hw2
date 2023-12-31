function [y] = grad(x)
    x1 = x(1,1);
    x2 = x(2,1);
    x3 = x(3,1);
    g1 = 2.*x1 + 2.*x2 + 4.*x3;
    g2 = 2.*x1 + 6.*x2 + 2.*x3;
    g3 = 4.*x1 + 2.*x2 + 10.*x3;
    y = [g1;g2;g3];
end