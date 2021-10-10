clc
%PART(A)
X = csvread('random_integers.csv'); 
histogram(X)

%PART(B)
%(probability of x=-5)
% n = numel(A) returns the the number of elements, n , in array
p5=sum(X == -5)/numel(X);
fprintf('Probability of X=-5 is %f\n',p5);
%probability of (X=-2)
p2=sum(X == -2)/numel(X);
fprintf('Probability of X=-2 is %f\n',p2);
%probability of (X=+5)
p51=sum(X == 5)/numel(X);
fprintf('Probability of X=5 is %f\n',p51);

%PART(C)
%What is the probability that X is EVEN?
sum_even= sum(rem(X,2)==0);
p_even = sum_even /numel(X);
fprintf('Probability of EVEN X is %f\n',p_even);
%What is the probability that X is ODD?
p_odd = (numel(X)-sum_even) /numel(X);
fprintf('Probability of ODD X is %f\n',p_odd);
%probability of (X=+5 or X=-5)
p55=sum(X == 5 | X==-5 )/numel(X);
fprintf('Probability of X=5 OR X=-5 is %f\n',p55);












