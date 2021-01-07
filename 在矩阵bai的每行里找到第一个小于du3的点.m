data = 10*rand(5,10);
[r,c] = size(data);
result = [];
result_c = [];
for i = 1:r
    tmp = find(data(i,:)<3);
    if length(tmp)
        result_c(i,:) = tmp(1);
        result(i,:) = data(i,tmp(1));
    else
        result_c(i,:) = NaN;
        result(i,:) = NaN;
    end
end
[result_c, result]
