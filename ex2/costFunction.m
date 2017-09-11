function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%

% for i=1:m
%   h = sigmoid(theta'*X(i));
%   J = J - y(i)*log(h) - (1-y(i))*log(1-h);
%   % gsum = 0;
%   % for j=1:m
%     % gsum = gsum + 
%   % end
%   % for j=1:size(theta)
%   %   grad(j) = sum()
%   % end
% end

% for j=1:size(theta)
%   test = (sigmoid(theta'*X') - y) * X(i,j)
% end
%   h = sigmoid(theta(j)*X(i))
% grad = X' * (sigmoid(X*theta)-y)
h = sigmoid(theta'*X')';
J = (1/m) * (-y'*log(h) - (1-y)'*log(1-h));
grad = (1/m) * X'*(sigmoid(X*theta) - y);
% grad = grad/m;




% =============================================================

end
