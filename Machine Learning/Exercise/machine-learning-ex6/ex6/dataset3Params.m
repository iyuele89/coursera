function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

<<<<<<< HEAD





=======
list = [];

for i = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]
  for j = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30]
    predictions = svmPredict(svmTrain(X, y, i, @(x1, x2) gaussianKernel(x1, x2, j)), Xval);
    error = mean(double(predictions ~= yval));
    list = [list; i j error];
  endfor
endfor

[minval, row] = min(min(list(:, 3), [], 2));

C = list(row, 1);
sigma = list(row, 2);
>>>>>>> 2af3982479d3c83d9ffde3d3ca33eb99e23ddaa3

% =========================================================================

end
