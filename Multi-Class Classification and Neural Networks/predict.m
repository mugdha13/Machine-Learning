function p = predict(Theta1, Theta2, X)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);
p = zeros(size(X, 1), 1);

a1 = [ones(m, 1) X];
%size(a1)
%size(Theta1)

z2 = a1 * Theta1';
a2 = sigmoid(z2);
%size(a2)

a2 = [ones(size(a2,1), 1) a2];

z3 = a2 * Theta2';
a3 = sigmoid(z3);
%size(a3)

[val, index] = max(a3,[],2);

p = index;

end
