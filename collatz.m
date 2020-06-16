%Will this program find the solution to the Collatz Conjecture?
%Probably not.

%Prompt the user for any real number and checks parameters
clc;clear
n(1) = input('Enter any real whole number: ');
a = 0;
count = 0;
while a == 0
    if isreal(n) && rem(n,1) == 0 && n>0 && n ~= 1
        a = 1;
    else
        clc
        n = input('Please enter a valid number: ');
    end
end
clc
fprintf('The Collatz Sequence for the Specified n:\n');
fprintf('-----------------------------------------\n');
fprintf('%.0f: ',count)
count = count + 1;
fprintf('%.0f\n',n);

%Using a while loop to run through the whole sequence
while n ~= 1
    if rem(n(count),2) == 0
        n(count+1) = n(count)/2;
        fprintf('%.0f: ',count);
        fprintf('%.0f\n',n(count+1));
        count = count + 1;
    else
        n(count+1) = (3*n(count))+1;
        fprintf('%.0f: ',count);
        fprintf('%.0f\n',n(count+1));
        count = count + 1;
    end
    if n(count) == 1
        fprintf('-----------------------------------------\n');
        fprintf('THIS INPUT TERMINATES, TAKING %.0f STEPS.\n', count-1);
        fprintf('-----------------------------------------\n');
    end
end

%Graphs the sequence for easier visualization
pause(5);
x = [0:count-1];
y = n;
plot(x,y, 'r'), xlabel('Sequence Step'), ylabel('Collatz Number'), title('Collatz Sequence Graph');

%Gives the user a choice to try with another number or terminate the
%program
fprintf('\n');
check = input('Continue? (1/0): ');
if check == 1
    collatz
else
    clc;clear
end 