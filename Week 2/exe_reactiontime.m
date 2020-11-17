function exe_reactiontime()

trials = 10;
participants = 2;

for i = 1:participants   
    for j = 1:trials
        round = reactiontime2();
        participant(i+j-1).id = i;
        participant(i+j-1).trial = j;
        participant(i+j-1).randomNr = round.randomNr;
        participant(i+j-1).buttonPress = round.buttonPress;
        participant(i+j-1).reactionTime = round.reactionTime;
        participant(i+j-1).correct = round.correct;
    end
end

participant(1)
participant(2)
end
