
%% 1
figure
xlim([0,1]);
ylim([0,1]);
put_symbol_inFigure(rand(1,2),'U','r')

%% 2
% Distinctive symbol search, you want an equal balance in colours 
blue = 12;
red = 11;
target = 1;

fig1 = figure('Name','Symbol');

for i = 1:blue
    put_symbol_inFigure(rand(1,2),'o','b');
    hold on
end
for i = 1:red
    put_symbol_inFigure(rand(1,2),'o','r');
    hold on
end
for i = 1:target
    put_symbol_inFigure(rand(1,2),'x','r');
    hold on
end
hold off

%% 3
% Distinctive colour search
blueCross = 11;
blueCircle = 12;
target = 1;

fig2 = figure('Name','Colour');

for i = 1:blueCross
    put_symbol_inFigure(rand(1,2),'x','b');
    hold on
end
for i = 1:blueCircle
    put_symbol_inFigure(rand(1,2),'o','b');
    hold on
end
for i = 1:target
    put_symbol_inFigure(rand(1,2),'x','r');
    hold on
end
hold off

%% 4
% Conjunctive search
blueCross = 7;
blueCircle = 8;
redCircle = 8;
target = 1;

fig3 = figure('Name','Conjunctive');

for i = 1:blueCross
    put_symbol_inFigure(rand(1,2),'x','b');
    hold on
end
for i = 1:blueCircle
    put_symbol_inFigure(rand(1,2),'o','b');
    hold on
end
for i = 1:redCircle
    put_symbol_inFigure(rand(1,2),'o','r');
    hold on
end
for i = 1:target
    put_symbol_inFigure(rand(1,2),'x','r');
    hold on
end
hold off




