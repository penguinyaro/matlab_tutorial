%% plotting vectors
clear
close all

%% basic plotting commands

help plot %basically all the info you need to know

x = -10:0.1:10; %some x values
y = x.^2; %make a parabola

f=@(t) t.^3 ;%create a simple function
%SYNTAX: fname =@(args) expression that can use args

figure %starts a new figure
plot(x,y) %generic plot y vs x
%labeling -- optional
xlabel('x')%what to put on x-axis
ylabel('y')%what to put on y-axis
title('x^2')%what to put at top of plot
%note 'x^2' shows up nicely-- it does some TeX markup
%https://www.mathworks.com/help/matlab/ref/matlab.graphics.primitive.text-properties.html#d120e1240742

figure(2)%opens figure number 2 or switches focus back to figure numbered 2
plot(x,f(x),'rx--') %plot f(x) vs x and use red marker with x's and dashed line
% close(2) %closes figure 2

%% plotting multiple plots

%on the same figure
plot(x,y,'b-',x,f(x),'go') %you can put multiple plotting commands in one call

%you can separate and use hold on/hold off
figure
plot(x,y,'c--'); hold on %can do multiple expressions on same line if separate with semicolon
plot(1:5,ones(1,5),'g'); hold on %this hold on isn't necessary
plot(x,f(x),'ks'); hold off %good practice to turn off when finished
legend('A','B','C') %you can add legend to the figure

%%% EXERCISE %%%
% plot 0-100K in Celcius and Farenheit on same plot

%% subplots

figure
%if you want multiple 'figures' in same window
subplot(2,3,1) %SYNTAX subplot(r,c,plot_num); r is number of rows, c is number of columns, plot_num is which element we're plotting in
%plot_num counts by rows (unlike matrices)
%each subplot operates like a figure-- if you don't hold on, if you try to plot again it clears
plot(x,y)
subplot(2,3,5) %you don't have to plot in order
plot(x,f(x))
title('f(x)')