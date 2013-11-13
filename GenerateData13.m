function Data = GenerateData13(  )
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
Data = zeros(1000,4) - 1;
Data = Data + 2*rand(1000,4);
Data(:,1)=1;


DataSquare = Data.^2;

for i=1:1000
    if(rand()<0.1)
        Data(i,4) = -sign(DataSquare(i,2)+DataSquare(i,3)-0.6);
    else
        Data(i,4) = sign(DataSquare(i,2)+DataSquare(i,3)-0.6);
    end
end



end

