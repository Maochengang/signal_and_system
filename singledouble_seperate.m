%偶奇分解
%%
clear all;clf
t = -5:0.01:5;
y1 = ramp(t,2,2.5);
y2 = ramp(t,-5,0);
y3 = ramp(t,3,-2);
y4 = ustep(t,-4);
y =y1+y2+y3+y4;
plot(t,y,'k');axis([-5 5 -3 5]);
grid