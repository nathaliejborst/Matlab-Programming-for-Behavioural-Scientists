%%5.5
mat = randi(10,3);
[row col] = size(mat);
for i= 1:row
    prod_mat = cumprod(mat,2);
    fprintf('The product of row %d is %d\n',i, prod_mat(i,end));
end

%%5.6
% See sumsteps.m

%% 5.13
% your outer loop be over the rows: for i = i:r
% your outer loop be over the columns: for j = j:c (nested in first
% for-loop)

%% 5.14
% See myones.m

%% 5.22
% See try25.m



