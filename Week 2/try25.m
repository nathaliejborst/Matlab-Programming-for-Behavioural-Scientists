function try25()

attempt = 0 
random_int = 0
while random_int ~= 25
    attempt = attempt + 1;
    random_int = randi([0,50]);
    fprintf("%i\n",random_int);
end
fprintf("It took you %i attempts!\n", attempt);
end