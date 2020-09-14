function [out1,out2] = foo(in1,in2)
%the comments here show up in the help
%this file should be named 'foo' or whatever the name of the function is
%it'd be good to be a short description here of what it does
%SYNTAX [out1,out2] = foo(in1,in2)
% Inputs:
%	in1 = an integer
%	in2 = another number
% Outputs:
%	out1 = [1 x in1] vector where all values are in2
%	out2 = sum of out1

%this line won't show up in the help output since there is a space above
out1 = in2*ones(in1,1);
out2 = sum(out1);

%values get returned when you assign the output value

end