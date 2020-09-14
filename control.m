%% ifs, loops
clear
close all
%% if statements

%{
%SYNTAX
if conditional_statement
	expressions
end
%}

if 5 < 3
	disp('dogs are cool')
end

%% else

if 5<3
	disp('dogs are cool')
else %if the if fails
	disp('cats are better')
end

%% else if

x = input('pick a number: ');%pause to get input from user

if x < 3
	disp('dogs are cool')
elseif x > 10 && x < 50 %%&& means AND or "intersect" (|| for OR or "union")
	disp('cats are better')
else
	disp('I like turtles')
end

%% while loops

%{
%SYNTAX
while conditional_statement
	expressions
end
%}

done = 0; %false %false is 0
%true is anything that's not false-- so any non-zero value
while ~done
	x = input('pick a number: ');%pause to get input from user

	%you can use CTRL+i to indent your code quickly
	if x < 3
		disp('dogs are cool')
	elseif x > 10 && x < 50 %%&& means AND or "intersect" (|| for OR or "union")
		disp('cats are better')
	else
		disp('I like turtles')
	end
	
	if x == 100
		done = true;
	end
end

%% for loops

%{
%SYNTAX
for index = values %(i.e. a vector)
	expressions
end

%excutes loop over range of variables
%}

new_arr = zeros(1,5);
for i=1:5
	new_arr(i) = (i+12)^2/3;
end

new_arr

%%% EXERCISE %%%
% make new_arr using array arithmetic on x = 1:5

%% travesing a matrix

A = magic(5);
B = zeros(size(A))

for i=1:size(A,1)
	for j=1:size(A,2)
		A(i,j) %you can access a matrix
		B(i,j) = i;%or you can fill a matrix
	end
end

B