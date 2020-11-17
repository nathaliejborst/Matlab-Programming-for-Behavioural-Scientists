function onex = pickone(x)
% pickone(x) returns a random element
% Input is a vector or cell array, x
% Output is one random value from the input

%Generate random position from length of input
randpos = randi(length(x));

% Check if input is a cell array or vector
if iscell(x) % cell array
    onex = x{randpos};  % index with curly brackets
else % a vector
    onex = x(randpos);  % index with parentheses
end
end

