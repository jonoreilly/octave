function [theta, J_history, thetalist ] = gradientDescent(X, y, alpha, num_iters)

	m = length(y); 
	J_history = zeros(num_iters, 1);

	if X(:,1) != ones(size(X,1),1)
	
		x = [ones(size(X,1),1), X];

	else
	
		x = X;

	endif

	theta = zeros(size(x,2),1);
	thetalist = zeros(size(theta,1), num_iters);

	for iter = 1:num_iters

		h = x * theta;
		theta = theta - alpha * (1/m)*((h - y)'*x)';

		thetalist(:,iter) = theta;
		J_history(iter) = computeCost(X, y, theta);

	endfor

end
