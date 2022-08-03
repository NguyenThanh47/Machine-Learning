clc;

%load dữ liệu
data = load('ex2data2.txt');
X = data(:, [1,2]);
Y = data(:, 3);
m = length(Y);

% hien thi du lieu
plotData(X,Y);
legend('y = 1', 'y = 0');
xlabel('Microchip Test 1');
ylabel('Microchip Test 2');

X = [ones(m, 1), X];

% tăng số lượng đặc trưng
X = mapFeature(X);

% tính cost
lamda = 1;
theta = zeros(28, 1);
[J, grad] = costFunctionReg(theta, X, Y, lamda);

% sử dụng hàm fminunc
options = optimset('GradObj', 'on', 'MaxIter', 400);

[theta, cost] =  fminunc(@(t)(costFunctionReg(t, X, Y, lamda)), theta, options);


plotDecisionBoundary_reg(X, theta)