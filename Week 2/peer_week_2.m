%% 5.16

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

%% Dice

function rollDice()
% Simulation of throwing a dice twice against a computer
    throw = 0;
    throw1 = randi([1,6]);
    throw2 = randi([1,6]);
    computer1 = randi([1,6]);
    computer2 = randi([1,6]);
    computer = 0;
    
    % Check if both throws are equal for player and computer to calculate
    % bonus
    if throw1 == throw2
        throw = throw1*10;
    else
        throw = throw1 + throw2;
    end
    if computer1 == computer2
        computer = computer1*10;
    else
        computer = computer1 + computer2;
    end
    
    fprintf("You threw %i and %i, score: %i\n ", throw1, throw2, throw);
    fprintf("The computer threw %i and %i, score: %i\n ", computer1, computer2, computer);
    
    % Check who wins 
    if computer > throw
        fprintf("The computer wins!\n");
    elseif computer == throw
        fprintf("It's a tie!\n");
    else
        fprintf("You win!\n");
    end
end
