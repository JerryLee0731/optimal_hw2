clc; clear; close all;

lim = 1e-10; % termination criteria

% intial guess
X(:,1) = [1;1;1];

i = 1;
step = 0.1;

while i < 10
    f(i,1) = func(X(:, i));
    g = grad(X(:, i));
    if (norm(g) < lim)
        break;
    end
    
    X(:, i+1) = X(:, i) - step.*g;
    i = i+1;
end

X(:, i) % print x at optimal

figure()
plot(f,'x');
yscale("log");
ylabel("f (log scale)");
xlabel("iterations");