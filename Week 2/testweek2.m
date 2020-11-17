% This is the script for testweek2. This script compares reaction times.

%% b
studentID = input("Please enter your studentID: ");

%% c
% Check if input is an int, if not throw error
if mod(studentID, 1) ~= 0
   error('This is not an integer. Please use numbers only');
end


%% d 
% Initialize row vector with length 10 
rowVec = zeros(1,10);

% Replace each element with table of 3 and measure time it takes to run
tic;
for i = 1:10
    rowVec(i) = i*3;
end
RT1 = toc;

%% e
x = 10;

% Count x down until 1 in steps of 1 and measure time it takes to run
tic;
while 1
    fprintf("current number is: %i\n", x);
    x = x-1;
    if x == 0
        break
    end
end
RT2 = toc;

%% f
% Prompt the user to continue by pressing a button
disp('Press a key to continue!')
pause;
    
% Define figures and plot RT1 & RT2
fig = figure();
xlim([0 2]);  
fig(1) = plot(1,RT1,"ob");
hold on
fig(2) = plot(1,RT2,"or");
legend('RT1', 'RT2', 'Location', 'NorthEast'); 
ylabel('Elapsed time in seconds');  
hold off

disp("The script is finished.");
