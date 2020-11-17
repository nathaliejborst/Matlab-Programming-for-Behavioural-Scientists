% 1.1
myage = 24;
myage = myage + 2;
myage = myage - 3

% 1.3
result1 = 9*2
result2 = 9*2;

% 1.9

25 / 5 * 3
4 + 2 ^3
(4 + 1) ^2
2 \ 12 + 5
4 - 1 * 5

% 1.10
miles = 10;
km_ratio = 16093;
km = miles*km_ratio

% 1.11
ftemp = 30;
ctemp = (ftemp - 32)*(5/9)

% 1.15
rand()*30
(rand()*90) + 10
randi(20)
randi([0,20])
randi([30,80])

% 1.16
rng('shuffle')
rand(2)

% 1.17
% x is a variable
% 'x' is a character

% 1.20
'b' >= 'c' - 1      %true/1
3 == 2 + 1          %true/1
(3 == 2) + 1        %1
xor(5 < 6, 8 > 4)   %0

% 1.21
5 > 4 > 1
% you have to make two logical statements instead of one, so 5>4 and 4>1
% now it is 5 > 4 = 1 then 1 > 1 which is false 

% 1.22
result = -20;
0 <= result <= 10

% 1.25
% lowercase

% 1.31
% rem(x,y) and MOD(x,y) are equal if x and y have the same sign, but
% differ by y if x and y have different signs.

% 1.37
A = 1;
x = 2;
C =(A/x)*sqrt(2/(pi()*exp(1)))

%2.5
vector_1 = (3:8)
vector_2 = (1.3:0.4:2.5)
vector_3 = (9:-2:3)

%2.6
return_pi()

%2.7
vec = 1 1.5 2 2.5 3

%2.12
vec = [-1:0.5:1]'

%2.15
mat = rand(2,4)
mat(1,:) = 1:4
mat(:,3) = [3;4]

%2.19
mat_1 = rand(2,3)
mat_2 = rand(2,3)*5
mat_3 =(rand(2,3)*40) + 10

%2.24
% mat = fliplr(mat) updates the matrix while fliplr(mat) just displays it

% 2.27
mat = rand(3,5)
mat(3,:) = []

% 2.35
x = linspace(-pi(),pi(),20)
y = sin(x)

%2.40
mat_1 = ones(3,5)*100
mat_2 = zeros(3,5) + 100 

%3.2
r_inner = 20
r_outer = 30

volume = ((4*pi())/3)*(r_inner^3 - r_outer^3)

%3.15
% We only want to display the end-output and not every intermediate step

%3.17
x=2
y=14

plot(x,y, 'g*')

%3.18
x_1 = linspace(0,pi(),10)
x_2 = linspace(0,pi(),100)

figure(1)
plot(x_1,sin(x_1))
figure(2)
plot(x_2,sin(x_2))

%3.26 
% A script is just a file read line by line while a function you can call
% anytime and have input arguments and can produce output variables

%3.27 
inches = 30
inches_to_feet(inches)

%3.31
nr = 10
isdivby4(nr)

%3.34
nr = 8
vecout(nr)

%3.35
vec = [4:7]
pickone(x)

%3.38
A = 1;
time_cons1 = input('Give a timeconstant: ')
time_cons2 = input('Give another timeconstant: ')
vec_begin = input('Give a starting point: ')
x = [];

while 1
    vec_end = input('Give an end point: ');
    if vec_begin < vec_end
        x = [vec_begin:vec_end];
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
xlabel('timerange')
ylabel('exponential decay')
legend({sprintf('Constant:  %.0f', time_cons1),sprintf('Constant:  %.0f', time_cons2)},'Location','northeast')

%4.1
while 1
    inp = input('Enter and x: \n', 's');
    if inp == 'x'
        fprintf('Good job');
        break
    end
    warning('That''s not an x');
end

%4.2
hour = 12
nexthour = nexthour(hour)

%4.10
while 1
    char = input('Please enter a character: ', 's');
    if size(char) ~= 1
        warning('Only 1 character please')
    end
        x = linspace(-2*pi(),2*pi(),50);
        y = sin(x);
        if char == 'r'
            plot(x,y,'-*r')
            break
        else
            plot(x,y,'-+g')
            break
        end
end

%4.16
ph = input('Give a pH between 0 and 14: ');
if ph<0 || ph>14
    error('Not on the pH-scale');
end
if ph<7
    disp('acidic');
elseif ph == 7
    disp('neutral');
else
    disp('basic'); 
end

%4.20
soa = input('Please give the speed of the aircraft: ');
sos = input('Please give the speed of sound at the aircraft''s altitude: ');
mach = soa/sos;
if mach<1
    disp('subsonic');
elseif mach == 1
    disp('transonic');
else
    disp('supersonic'); 
end

%4.21
rand_i = randi(300);
if mod(rand_i,2) == 0
    fprintf('%i is an even number', rand_i);
else
    fprintf('%i is an uneven number', rand_i);
end
