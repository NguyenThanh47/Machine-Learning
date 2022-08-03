function [J , grad] =costFunctionReg (theta, X, Y, lamda)
    m = length(Y);
    h = sigmoid(X * theta);

    cost_1 = - Y .* log(h);
    cost_0 = (1 - Y) .* log(1 - h);

    J = (1/m) * sum(cost_1 - cost_0) + (lamda/(2*m)) * sum(theta(2:end).^2);

    for i = 1 : length(theta)
        if ( i == 1)
            grad(i) = (1/m) * sum((h - Y) .* X( :, i) );
        else
            grad(i) = (1/m) * sum((h - Y) .* X( :, i )) + lamda/m * theta(i);
        end
    end 

end