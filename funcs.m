%% making your own functions
clear
close all
%% one-line functions (anonymous functions)
%https://www.mathworks.com/help/matlab/matlab_prog/anonymous-functions.html

%SYNTAX: fname =@(args) expression that can use args
f=@(t) t.^3;%create a simple function

disp(['f(-3) = ' num2str(f(-3))])

f2=@(a,b) disp([a num2str(b)]);

f2('I have dogs ', 10)

%% functions in scripts
%https://www.mathworks.com/help/matlab/ref/function.html

func_ex(1,2)

func_ex2(3)

%functions inside of a script need to be at the end of the file
function out = func_ex(in1,in2)
	out = in1 + in2;
end

function [out1,out2] = func_ex2(in1)
%you can have multiple outputs
	out1 = in1;
	out2 = in1^2;
end