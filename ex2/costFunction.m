function [J, G] = costFunction(theta, X, y)
    m = length(y);

    h = sigmoid(X * theta);

    cost_1 = - y .* log(h);

    cost_0 = (1 .- y).* log(1 .- h)

    J = 1/m * sum(cost_1 - cost_0)

    for j = 1:3
        G(j) = 1/m * sum((h - y).*X(:, j));
    end
end

