function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

posIndex = y(:,1)==1;
xPos = X(posIndex,:);

negIndex = y(:,1)==0;
xNeg = X(negIndex,:);

plot(xPos(:,1), xPos(:,2), 'k+', 'MarkerSize', 8);
plot(xNeg(:,1), xNeg(:,2), 'ko', 'MarkerSize', 8);






% =========================================================================



hold off;

end
