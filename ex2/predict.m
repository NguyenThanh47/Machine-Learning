function p = predict(X, y, theta)
    p = zeros(size(y));
    
    p = sigmoid(X * theta);

    m = length(p);

    for i = 1:100
        if (p(i) >= 0.5)
            p(i) = 1;
        else
            p(i) = 0;
        end
    end
   
    
end