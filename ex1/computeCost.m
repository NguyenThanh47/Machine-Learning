function J =  computeCost(X, y, theta)
    m = length(X);

    H = (X* theta -y).^2;
    J = 1/(2*m) * sum(H);
    return
end