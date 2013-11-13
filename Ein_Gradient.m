function y = Ein_Gradient( w,Data )


[row, col] = size(Data);
y = zeros(1,col-1);
for i=1:row
    score = -Data(i,col).*w*Data(i,1:col-1)';
    y = y + sigmf(score,[1 0]).*(-Data(i,col)).*Data(i,1:col-1);
    
end
y = (1/row).*y;
end
