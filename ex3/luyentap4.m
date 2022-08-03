clc;

%load du lieu
data = load('ex3data1.mat');
X = data.X;
y = data.y;

% hien thi du lieu
msize = length(X);
idx = randperm(msize);
X1 = X(idx(1:100), :);
y1 = y(idx(1:100));
%displayData(X1);

% tinh cost
lamda = 1;
theta = zeros(400,1);
[J, grad] = lrCostfunction(X1, y1, theta, lamda);