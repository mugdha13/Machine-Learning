function p = predictOneVsAll(all_theta, X)
m = size(X, 1);
num_labels = size(all_theta, 1);

p = zeros(size(X, 1), 1);

X = [ones(m, 1) X];
   
for i = 1:m
    RX = repmat(X(i,:),num_labels,1);
    RX = RX .* all_theta;
    SX = sum(RX,2);
    [val, index] = max(SX);
    p(i) = index;
end

end
