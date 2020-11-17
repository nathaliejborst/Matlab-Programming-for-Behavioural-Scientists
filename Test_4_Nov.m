%% a, b, c
% Checks if secondNumber is a 0 or 1 and checks if firstNumber is between
% 1-10, if so round to nearest int if not firstNumber is 10 
function testweek1(firstNumber,secondNumber)
    if (secondNumber ~= 0) || (secondNumber ~= 1)
            error("the second input is neither 0 nor 1.");
    end
    if (firstNumber < 10) && (firstNumber > 1)
        round(firstNumber);
    else
        firstNumber = 10;
    end        
end

%% d
% errors:
% 1. use [] or nothing, but not () for vectors
% 2. else doesn't work cause only when secondNumber = 0 and not everything
% but 1
% 3. forgot to end the if statement
% 4. use double '='-signs for comparisons

if secondNumber == 1
    myvec = ( 0, 0.1, firstNumber);
elseif secondNumber == 0
    myvec = linspace(-5, firstNumber, 100);
end
 
%% e
x = myvec;
y = sin(x);
plot(x,y,'sb');

%% f
% Replace 3rd element with random int from 1-100
rng('shuffle');
myvec(3) = randi(100);

%% g
fprintf("The function finally uses firstNumber and secondNumber to make a figure");
