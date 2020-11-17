function average = matrixAverage(mat)
% Returns the average of a matrix

   % Throw error if inputvariable is not a matrix
   if ismatrix(mat) == 0
       error("This is not a matrix");
   end
   
   [r c] = size(mat);
   sum = 0;
   
   % Loop through rows and columns and at matrix elements 
   for i = 1:r
       for j = 1:c
           sum = sum + mat(i,j);
       end
   end
  
   % Divide the sum by the total elements in the matrix
   average = sum / (r*c);
   
end
