function out = mapFeature(X)

	X1 = X(:, 2);
	X2 = X(:, 3);

	for i = 2:6
		for j = 0:i
			temp = X1.^j .* X2.^(i-j);
			X = [X, temp];
		end
	end

	out = X;
end