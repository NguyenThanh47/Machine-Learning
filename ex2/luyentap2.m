clc;

%hien thi data
data = load('ex2data1.txt');

X = data(:, [1,2]);
y = data(:, 3);
m = length(y);
% hien thi du lieu
plotData(X, y)

% ham sigmoid
X = [ones(m, 1), X];
theta_init = zeros(3, 1);
Z = X * theta_init;
sigmoid(Z);

% cost
[J_x, G_x] = costFunction(theta_init, X, y);

% lựa chọn hàm fminunc
options  = optimset('GradObj', 'on', 'MaxIter', 400);
[theta, cost] = fminunc(@(t)costFunction(t, X, y), theta_init, options);

%vẽ đường bao
plotDecisionBoundary(X, theta);

% du doan
p = predict(X, y, theta)

% do chinh xac
z = eq(p, y);
accuracy = sum(z)/length(y) * 100