function out = mapFeature_reg(X1, X2)
	X = [1, X1, X2];
	for i = 2:6
		for j = 0:i
			temp = X1^j * X2^(i-j);
			X = [X, temp];
		end
	end

	out = X;
end