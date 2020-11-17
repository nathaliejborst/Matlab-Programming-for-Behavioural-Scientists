function tictoc()

% Prompt user to press a button
disp('Press a key!') 
pause
figure();

randomNr = (randi([0,100]));     % Create random number
plot(1,randomNr, '*r');     % Plot number
title('If number greater than 50 press a, else 50 press');    % Show instructions
tic

pause

buttonPress = get(gcf, 'CurrentCharacter');   %Store buttonpress
toc 
reactionTime = toc;    

% Check if answer is correct 
if randomNr>50 && strcmp(buttonPress,'a')
    correct = 1;
elseif randomNr<51 && strcmp(buttonPress,'b')
    correct = 1;
else
    correct = 0;
end

if correct 
    fprintf('You answered correctly wih a reaction time of %.2f\n', reactionTime);
else
    fprintf('You answered incorrectly wih a reaction time of %.2f\n', reactionTime);
end

end
