function strct = reactionTime2()

% Prompt user to press a button
disp('Press a key!') 
pause
figure();

strct.randomNr = (randi([0,100]));     % Create random number
plot(1,strct.randomNr, '*r');     % Plot number
title('If number greater than 50 press a, else 50 press');    % Show instructions
tic

pause

strct.buttonPress = get(gcf, 'CurrentCharacter');   %Store strct.buttonPress
toc 
strct.reactionTime = toc;    

% Check if answer is correct 
if strct.randomNr>50 && strcmp(strct.buttonPress,'a')
    strct.correct = 1;
elseif strct.randomNr<51 && strcmp(strct.buttonPress,'b')
    strct.correct = 1;
else
    strct.correct = 0;
end

if strct.correct 
    fprintf('You answered correctly wih a reaction time of %.2f\n', strct.reactionTime);
else
    fprintf('You answered incorrectly wih a reaction time of %.2f\n', strct.reactionTime);
end

end
