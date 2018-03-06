function J = computeCost(X, y, theta)
	
	m = length(y);

	J = 0;

	if X(:,1) != ones(size(X,1),1)
	
		x = [ones(size(X,1),1), X];

	else
	
		x = X;

	endif

	h = x * theta;

	J = (1/(2*m)) * sum((h - y).^2);

end
