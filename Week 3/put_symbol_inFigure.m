function put_symbol_inFigure(loc, s, k)
 % This function places a letter (symbol) s, with colour k
 % at location loc in a figure
 % loc = array of 1 x 2, with numbers between 0 and 1 (relative in figure),
 % first is x-coordinate, second is y-coordinate
 % s = string, e.g. 'X' or 'O'
 % k = string that gives the colour, e.g. 'g' or 'r'
 
 g =text(loc(1), loc(2), s);
 set(g, 'color', k);
end

% grootte: 0.03 ong


% 1. Put one cross at a random spot in a figure. Use put_symbol_inFigure.m to do so.
% 2. Put one red cross, 11 red circles and 12 blue circles into a new figure. Which type of search
% is that? Why do we use 12 blue circles and not 11?
    % Distinctive symbol search, you want an equal balance in colours    
% 3. Put one red cross, 11 blue crosses and 12 blue circles into a new figure. Which type of
% search is this?
    % Distinctive colour search
% 4. There is one search type missing. Make a new example of this search type. Explain why
% you chose the numbers you did.
    % Conjunctive search
% 5. Make MATLAB choose a random target (both properties symbol and colour). Choose the
% symbols and colours of the distractors based on the random target and the condition (type
% of search). Do this for all three conditions and put the results in three different figures. 