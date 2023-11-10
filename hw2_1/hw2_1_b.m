clc; clear; close all;

lim = 1e-10; % termination criteria

% intial guess
X(:,1) = [1;1;1];

H = [2 2 4;2 6 2;4 2 10];

i = 1;
step = 1; % newton method of order 2

while true % i < 10
    f(i,1) = func(X(:, i));
    g = grad(X(:, i));
    if (norm(g) < lim)
        break;
    end
    
    X(:, i+1) = X(:, i) - step.*inv(H)*g;
    i = i+1;
end

X(:, i) % print x at optimal

figure()
plot(f, 'x');
yscale("log");
xticks([1 2]);
axis padded;
ylabel("f (log scale)");
xlabel("iterations");
