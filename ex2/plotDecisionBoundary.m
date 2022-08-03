function plotDecisionBoundary(X, theta)
    A = X(:, 2);
    plot(A, -(theta(1)/theta(3) + theta(2).*A/theta(3)), 'r-');
    legend('Admitted', 'Not admitted');
    axis ([30 100 30 100]);
    xlabel('Exam 1 score');
    ylabel('Exam 2 score');
end