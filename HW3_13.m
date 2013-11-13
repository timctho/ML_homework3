rng('shuffle');
error = 0;

for i=1:1000
    A = GenerateData13();
    X = A(:,1:3);
    w = pinv(X)*A(:,4);
    error = error + Error_0_1(w',A);
end

fprintf('Avg Ein = %2f',error/1000);