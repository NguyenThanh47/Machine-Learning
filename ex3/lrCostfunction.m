function [J, grad] = lrCostfunction(X, y, theta, lamda)
    m = length(X);
    h = sigmoid(X*theta);

    J = (1/m) *sum( -y .* log(h) - (1 -y).*log(1 - h)) + (lamda/(2*m)) * sum(theta.^2);

    grad = (1/m) * (X' * (h -y)) + (lamda/m) * theta ;

end