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

%my code here
p_light_sleep = 0.01;
%part(a)
p_nlight_sleep =1 - p_light_sleep;
fprintf('probability of no light given sleep is %f',p_nlight_sleep);

p_light_nsleep = 0.8;
p_nlight_nsleep =1 - p_light_nsleep;

for i = 1:n
    p_light =p_light_sleep * prob_sleep_time(i)+p_light_nsleep *(1-prob_sleep_time(i));
    p_sleep_light(i)=p_light_sleep * prob_sleep_time(i) / p_light;
    %probbaility of sleep given no light%
    p_nlight=p_nlight_sleep * prob_sleep_time(i) + p_nlight_nsleep * (1-prob_sleep_time(i));
    p_sleep_nlight(i) = p_nlight_sleep * prob_sleep_time(i) / p_nlight;
end
plot(sdate,prob_sleep_time,color='blue');
hold on
plot(sdate,p_sleep_light,color='red');
plot(sdate,p_sleep_nlight,color='green');
legend('prior probability','with LIGHT','with NO LIGHT')
datetick('x','HH:MMPM')
title("Probability calculation of sleep with light ON and OFF")
grid on

   


