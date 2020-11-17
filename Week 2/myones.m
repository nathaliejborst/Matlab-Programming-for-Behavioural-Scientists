function mat = myones(n,m)
% Chapter 5.14: returns an n*m-matrix of all ones
mat = [];

for i = 1:n
    for j = 1:m
        mat(i,j) = 1;
    end
end    
end