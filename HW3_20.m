TrainData = dlmread('hw3_train.dat');
TestData = dlmread('hw3_test.dat');
A = ones(size(TrainData,1),1);
TrainData = [A TrainData];
B = ones(size(TestData,1),1);
TestData = [B TestData];

w = zeros(1,size(TrainData,2)-1);
eta = 0.001;
[row,col] = size(TrainData);

for times = 1:2000
    i = mod(times-1,row)+1;
    score = -TrainData(i,col).*w*TrainData(i,1:col-1)';
    w = w + eta.*sigmf(score,[1 0]).*(TrainData(i,col)).*TrainData(i,1:col-1);
end

error = Error_0_1(w,TestData);
fprintf('E_out = %2f\n',error);
