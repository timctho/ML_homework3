rng('shuffle');
error = 0;

for i=1:1000
    
% generate train and test data
Data = GenerateData13();
Test = GenerateData13();

% feature transform
featureData = [Data(:,1:3) Data(:,2).*Data(:,3) Data(:,2).^2 Data(:,3).^2];
featureTest = [Test(:,1:3) Test(:,2).*Test(:,3) Test(:,2).^2 Test(:,3).^2 Test(:,4)];

w = pinv(featureData)*Data(:,4);
error = error + Error_0_1(w',featureTest);


end

fprintf('Avg Eout = %2f\n',error/1000);


