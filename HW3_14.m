rng('shuffle');

Data = GenerateData13();
featureData = [Data(:,1:3) Data(:,2).*Data(:,3) Data(:,2).^2 Data(:,3).^2];

w =  pinv(featureData)*Data(:,4);
disp(w);
