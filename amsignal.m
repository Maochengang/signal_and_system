%am信号
%%
clear all;clf
t =-5:0.001:5;
%斜变信号，支撑区间[-5,5]
y1 = ramp(0.01,1,1);                 %无法识别ramp？
y2 = ramp(t,-4,0);
y3 = ramp(t,3,-2);
y4 = ramp(t,1,-3);
y5 = ustep(t,-3);
y = y1+y2+y3+y4+y5;                 %消息
% AM调制
x = sin(5*pi*t);                    %载波
z = y.*x;
sound(100*z,1000)
figure(1)
plot(t,z,'k');hold on
plot(t,y,'r',t,-y,'r');axis([-5  5 -5 5]);grid
hold off
xlabel('t');
ylabel('z(t)');title('')