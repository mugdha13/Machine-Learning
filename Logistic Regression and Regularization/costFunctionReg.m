function [J, grad] = costFunctionReg(theta, X, y, lambda)

m = length(y); % number of training examples
 
J = 0;

grad = zeros(size(theta));

h_theta=sigmoid(X*theta);
J = (1/m)*(-y'*log(h_theta)-(1-y)'*log(1-h_theta))+(lambda/(2*m))*(theta(2:length(theta)))'*theta(2:length(theta));
thetaZero=theta;
thetaZero(1)=0;
grad=((1/m)*((h_theta - y)' * X))+(lambda/m)* thetaZero';

end
