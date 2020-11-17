% save data for each trial in the different columns
for i = 1:20
    vecstruct(i).ppn = 1;
    vecstruct(i).condition = randi([0,1]);
    vecstruct(i).nObject = randi([1,20]);
    vecstruct(i).target = 'hadTarget';
    vecstruct(i).rt = rand()*randi([0,10]);
    vecstruct(i).correct = randi([0,1]);
    vecstruct(i).trialNumber = i; 
end
