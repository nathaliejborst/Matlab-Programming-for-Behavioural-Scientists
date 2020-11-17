function dice(players)
% Simulation of throwing dice with 2-4 players, returns the scores for the
% players

% Check if integer and number between 2 and 4
if (int32(players) ~= players) || (players < 2) || (players > 4)
    error("Please enter an integer between 2-4");
end

% Set scores for every player to 0
scores = zeros(1,players);

% Define figure
fig = figure();

% Throw dice twice for every player and assign score
for i = 1:players
    throw1 = randi([1,6]);
    throw2 = randi([1,6]);
    if throw1 == throw2
        scores(i) = throw1*10;
    else
        scores(i) = throw1 + throw2;
    end
    
    % Show throws and score to player
    fprintf("Player %i threw %i and %i, score: %i\n ", i, throw1, throw2, scores(i));
    
    % Plot score i'th player
    fig(i) = plot(i,scores(i),'*r');
    xlim([0, players+1]);
    xticks(0:1:players)
    ylim([0, 60]);
    hold on;
    
    % Prompt the user to continue by pressing a button
    disp('Press a key to continue!')
    pause;
    
    % Hide score for next player
    set(fig(i), 'Visible', 'off');
end
hold off

% Show every score in figure
set(fig(:), 'Visible', 'on');
end

