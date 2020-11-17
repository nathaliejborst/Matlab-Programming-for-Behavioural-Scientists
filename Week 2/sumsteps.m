function sum = sumsteps(n)
% Chapter 5.6: calculates and returns the sum of 1 to n in steps
% of 2

sum = 0;

for i = 1:2:n
    sum = sum + i;
end

end