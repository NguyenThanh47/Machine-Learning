function plotDecisionBoundary_reg(X, theta)
	u = linspace(-1, 1.5, 50);
	v = linspace(-1, 1.5, 50);

	z = zeros(length(u), length(v));

	for i = 1:length(u)
		for j = 1:length(v)
		    z(i,j) = mapFeature_reg(u(i), v(j)) * theta;
		end
	end

	z = z';
	contour(u, v, z, [0, 0], 'LineWidth', 2)
end