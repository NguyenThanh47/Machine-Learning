function [theta_0, theta_1] = gradientDescent(X, y, theta, iters, alpha)
    m = length(y);
    theta_0 = theta(1);
    theta_1 = theta(2);

    for i= 1:iters

        J = computeCost(X, y, theta);

        temp = [theta_0; theta_1];

        theta_0 = theta_0 - alpha/m *sum((X * temp - y).* X(:,1))
        theta_1 = theta_1 - alpha/m *sum((X * temp - y).* X(:,2))

    end
    return
end