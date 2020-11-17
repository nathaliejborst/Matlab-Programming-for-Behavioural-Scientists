function rtrn = calculate_vec()
A = 1;
time_cons1 = input('Give a timeconstant: ')
time_cons2 = input('Give another timeconstant: ')
vec_begin = input('Give a starting point: ')
x = [];

while 1
    vec_end = input('Give an end point: ');
    if vec_begin < vec_end
        x = [vec_begin:vec_end]
        break
    else
        fprintf('end point has to be higher than the begin point\n');
    end
    
end

y1 = A*exp(-time_cons1*x);
y2 = A*exp(-time_cons2*x);

figure(1)
plot(x,y1,'-.r') 
hold on 
plot(x,y2,'-.g')
hold off
xlabel = 'timerange';
ylabel = 'exponential decay';
legend({sprintf('Constant:  %.0f', time_cons1),sprintf('Constant:  %.0f', time_cons2)},'Location','northeast')
end