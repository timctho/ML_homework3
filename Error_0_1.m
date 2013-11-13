function error = Error_0_1( w,Data)

error = 0;
[row,col] = size(Data);


for i=1:row
    error = error + 1 - (sign(w*Data(i,1:col-1)')==Data(i,col));
end

error = error/row;


end

