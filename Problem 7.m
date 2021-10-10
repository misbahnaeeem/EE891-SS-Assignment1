%probem 7
%%PART(A.1)
X=rand([1,100000]);
histogram(X)
M1=mean(X);
fprintf('MEAN of rand is %f\n',M1);

%PART(A.2)
Y=randi([1,100000]);
histogram(Y);
M2=mean(Y);
fprintf('MEAN of randi is %f\n',M2);

%PART(A.3)
Z=randn([1,100000]);
histogram(Z)
M3=mean(Z);
fprintf('MEAN of randn is %f\n',M3);


%PART(B)
A=randi([5,20],[1,100000]);
M_b=mean(A);
fprintf('MEAN of randI is %f\n',M_b);
V=var(A);
fprintf('VARIENCE of randi is %f\n',V);
S=std(A);
fprintf('Standarad Deviation of randi is %f\n',S);


