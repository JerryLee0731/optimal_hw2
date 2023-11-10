clc; clear; close all;

lim = 1e-10; % termination criteria

% intial guess
X(:,1) = [1;1];

H = [4 -3;-3 16];

i = 1;
step = 1; % newton for 2 order

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
xticks([1 2]);
axis padded;
ylabel("f");
xlabel("iterations");