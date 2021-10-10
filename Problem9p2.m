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

%part(a)
p_light_nsleep = 0.8;
p_nlight_nsleep =1 - p_light_nsleep;
p_light_sleep = 0.01;
p_nlight_sleep =1 - p_light_sleep;

p_mobile_sleep=0.95;
p_mobile_nsleep=0.5;
p_nmobile_nsleep=1-p_mobile_nsleep;
p_nmobile_sleep=1-p_mobile_sleep;
fprintf("probability of not charging given sleep is %f",p_nmobile_sleep);
for i=1:n
    %(a)
    p_light_mobile=p_light_sleep*p_mobile_sleep*prob_sleep_time(i)+p_light_nsleep*p_mobile_nsleep*(1-prob_sleep_time(i));
    p_sleep_light_mobile(i)=p_light_sleep*p_mobile_sleep*prob_sleep_time(i)/p_light_mobile;
    %(b)
    p_nlight_mobile=p_nlight_sleep*p_mobile_sleep*prob_sleep_time(i)+p_nlight_nsleep*p_mobile_nsleep*(1-prob_sleep_time(i));
    p_sleep_nlight_mobile(i)=p_nlight_sleep*p_mobile_sleep*prob_sleep_time(i)/p_nlight_mobile;
    %part(c)
    p_light_nmobile=p_light_sleep*p_nmobile_sleep*prob_sleep_time(i)+p_light_nsleep*p_nmobile_nsleep*(1-prob_sleep_time(i));
    p_sleep_light_nmobile(i)=p_light_sleep*p_nmobile_sleep*prob_sleep_time(i)/p_light_nmobile;
    %part(d)
    p_nlight_nmobile=p_nlight_sleep*p_nmobile_sleep*prob_sleep_time(i)+p_nlight_nsleep*p_nmobile_nsleep*(1-prob_sleep_time(i));
    p_sleep_nlight_nmobile(i)=p_nlight_sleep*p_nmobile_sleep*prob_sleep_time(i)/p_nlight_nmobile;

end 
plot(sdate,prob_sleep_time,color='blue');
hold on
plot(sdate,p_sleep_light_mobile,color='red');
plot(sdate,p_sleep_nlight_mobile,color='green');
plot(sdate,p_sleep_light_nmobile,color='cyan');
plot(sdate,p_sleep_nlight_nmobile,color='magenta');
legend('prior probability','with LIGHT,MOBILE','with light OFF ,MOBILE ','with LIGHT ,mobile OFF','with NO light,NO mobile')
datetick('x','HH:MMPM')
title("Probability calculation of sleep with different conditions");
grid on

