TrainData = dlmread('hw3_train.dat');
TestData = dlmread('hw3_test.dat');
A = ones(size(TrainData,1),1);
TrainData = [A TrainData];
B = ones(size(TestData,1),1);
TestData = [B TestData];

w = zeros(1,size(TrainData,2)-1);
eta = 0.01;

for times = 1:2000
    w = w - eta.*Ein_Gradient(w,TrainData);
end

error = Error_0_1(w,TestData);
fprintf('E_out = %2f\n',error);
