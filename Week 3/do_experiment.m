function [reactionTime, correct] = do_experiment(n, cond, target)
% description of the function

%% Create figure using n, the condition and whether there's a target
Treisman_exp(n, cond, target)

%% Measure reaction time. Make use of tic-toc and pause. Remember that
tic     % start timer
set(gcf, 'Visible', 'on');  % show figure just after timer started

pause

buttonPress = get(gcf, 'CurrentCharacter');   % store buttonpress
toc     % end timer after button press
reactionTime = toc

%% Check whether response is correct or not
% Check if there's a target
if target == 1 || buttonPress == 'y'    % if there's a target and participant presses yes, correct
    correct = 1;
elseif target == 0 || buttonPress == 'n'    % if there's no target and participant presses no, correct
    correct = 1;
else    % incorrect if otherwise
    correct = 0;
end

% strcmp(buttonPress,'n')  doesnt work???

% Close the current figure
close 



%% USER INPUT FOR GUI 
% c = {'dcol', 'dsym', 'c'};
% conditions = {'Disjunctive Color Search', 'Disjunctive Symbol Search', 'Conjunctive Search'};
% [indx,tf] = listdlg('PromptString',{'Select a conditions.',...
%     'Only one condition can be selected at a time.',''},...
%     'SelectionMode','single','ListString',conditions);
% c{indx}
prompt = {'Studentnumber participant:','Number of trials', 'Percentage'};
dlgtitle = 'Input';
answer = inputdlg(prompt,dlgtitle)
uiwait(warndlg("WARNING MESSAGE"));

end