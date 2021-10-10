clc
clear 
close all

% This program demonstrates probabilistic sleeping pattern
% of a person at night w.r.t time. 
%
% Author: Asad khan
% Created: Sep-15-2021

%% DO NOT edit or disturb this portion only use required variables below.
t = 1:5000;
prob_sleep_time = 1./(1+exp(-0.0028.*t+6.5));
n = length(t);
sdate = linspace(datenum('01-Aug-2013 09:00:00'),datenum('01-Aug-2013 12:00:00'),n);
%% You cant edit or write your code line below here

plot(sdate,prob_sleep_time)
datetick('x','HH:MMPM')
title('Prior Probability Distribution of sleep');
grid ON