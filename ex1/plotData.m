function plotData(X, y)
    figure;
    hold on;

    plot(X, y, 'bx', 'MarkerSize',5);
    xlabel('Population');
    ylabel('Profit');

end