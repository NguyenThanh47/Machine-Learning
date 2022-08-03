function displayData(X)

    figure;
    hold on;
    
    for i = 1:100
        A = X(i, :);
        max_val= max(abs(A));
        B = reshape(A, 20, 20)/max_val;
        subplot(10, 10, i);
        imagesc(B, [-1 1]); 
        axis image off;
    end
end