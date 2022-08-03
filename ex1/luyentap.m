clc;
%phan 2: linear voi mot bien

%load du lieu
data = load('ex1data1.txt');
X = data(:, 1);
y = data(:, 2);
m = length(data);

% hien thi du lieu
plotData(X,y);

% gradient
X = [ones(m,1), X]; % them cot bias vao dau vao
theta = zeros(2,1); %tao ma tra theta ban dau : X*theta = y
iter = 1500;
alpha = 0.01;
computeCost(X, y, theta)

[theta_3, theta_4] = gradientDescent(X, y, theta, iter, alpha)

predict1 = [1, 3.5] * [theta_3; theta_4];
predict2 = [1, 7] * [theta_3; theta_4];

%ve ham gia thuyet
plot(X(:,2), X * [theta_3; theta_4], 'r-')
legend('Trainning data', 'Linear regression', 'location', 'southeast')

