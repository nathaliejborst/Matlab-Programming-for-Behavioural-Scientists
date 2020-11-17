function rtrn = nexthour(hour)
if hour>0 && hour<12
    rtrn = hour+1;
    return
elseif hour == 12
    rtrn = 1;
    return
else
    error('not a number between 1 and 12')
end
end