%% Vectors and matrces
clear
close all
%% row vectors (1D matrices)

%direct assignment
a = [5 10 12 -3] %can use whitespace (any amount) to separate
b = [5,10,12,-3] %you can use commas or comma+space to separate columns

c = 1:3:10 %syntax is start:inc:max -- note 'inc' is optional, default is 1

d = linspace(-1,7,10) %syntax is linspace(start,end,number of points); I don't like this one

%EXERCISE
%{ 
	%this is a block comment%
	Make a vector who's elements go from 0 to 10 in increments of 2.
%}

%% column vectors

e = [1
	2
	3
	4] %put elements in different rows

f = [5; 6; 7; 8] %use semi-colon

g = [5 6 7 8]' %transpose a row vector; apostrophe transposes (switches rows and columns)

%% element-by-element operations

a*b %matrix multiplcation (a_ij = sum(row_i.*column_j)

a.*b %element-by-elebment operation; use period before operator to apply operation per element

%addition and subtraction element by element by default

a+b
a-b

%% matrices

%must be rectangular (e.g. 3x3, 2x5, etc.)
%must all be of same type (numerical or strings)

A = [1 2 3
	5 6 7
	8 9 10] %just put them in space as you would want

B = [1,2,3;4,5,6] %you can also use delimiters

C = [1 2 3;
	4,5,6
	9 10, 11] %or any combination-- but try to be consistent for sanity


%reshape() is a very useful function
%diag() will output diagonal of matrix

%special matrices
ones(3,5) %SYNTAX: ones(rows,columns); makes a matrix with rows rows and columns columns of 1s
zeros(1,5) %SYNTAX: zeros(rows,columns); makes a matrix with rows rows and columns columns of 0s 

ones(5) %makes 5x5 square matrix of all 1s
zeros(3) %similar

%% matrix operations

a = [1 2 3];
b = [4 5 6];

a*b' %multiplies element by element and sums
a'*b %output is a matrix

% Ax = b
A = [1 2 
	3 4];
b = [1 2]'

A\b %solves the system of equations

inv(A) %inverse of A
A^-1 %also inverse of A

A^-1*b %== A\b

%% slicing
%%% MATLAB indexing starts from 1 %%%

%use parenthesis to access elements
b(2) %second element in a
A(1,2) %first row, second column in A-- it goes rows, columns
A(2) %second element in A -- count by columns

%accessing a range of elements
t = 0:0.1:1
t([1,2,4]) %set of indexes in a vector (i.e. [])
t(5:7) %can give a range vector directly (note must be integer values)
t(end) %special index gives last element
t(8:end) %can use end in a range vector

%% useful functions
A = magic(5) %creates a 'magic' matrix

size(A) %dimensions of A
size(A,2) %the second demnsion of A-- 2 can be any number
length(A) %largest dimension of A

id = find(A==15) %inverse slicing
A(id)

min(A)
[a,b] = min(A) %what is b?
max(A)
%can also do 2 argument output for max

sum(A)
cumsum(A)
mean(A)
std(A)
var(A)

%% cells

%if you want to mix datatypes-- sort of like making a struct
% https://www.mathworks.com/help/matlab/ref/cell.html?s_tid=srchtitle