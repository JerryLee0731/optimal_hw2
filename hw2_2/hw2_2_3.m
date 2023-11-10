clc; clear; close all;

lim = 1e-10; % termination criteria

% intial guess
X(:,1) = [1;1];

i = 1;

while true %i < 20
    f(i,1) = func(X(:, i));
    g = grad(X(:, i));
    if (norm(g) < lim)
        break;
    end
    
    % line search find best step length
    x_ls = X(:, i); % initial x_ls
    lim_ls = 1e-5;
    j = 0;
    p = 1e-10.*g;
    
    step_ls = 1e-2; % initial step in opt of line search
    while true
        g_ls = func(x_ls - p) - func(x_ls);
        g_ls = g_ls./norm(p);

        if (abs(g_ls) < lim_ls)
            break;
        end
        x_ls = x_ls + step_ls.*g_ls.*g;
        j = j+1;
    end
    
    if (x_ls == X(:, i))
        break;
    end
    
    X(:, i+1) = x_ls;
    i = i+1;
end

X(:, i) % print x at optimal

figure()
plot(f, 'x');
ylabel("f");
xlabel("iterations");

