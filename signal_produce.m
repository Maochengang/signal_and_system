%信号产生
%%
function y=ramp(t,m,ad)
clear all;
clf
t =(-5):0.01:5;
%斜变信号，支撑区间[-5,5]
y1=ramp(t,3,3);
y2=ramp(t,-6,1);
y3=ramp(t,3,0);
%单位阶跃信号，支撑区间[-5,5]
y4=-3*ustep(t,-3);
y=y1+y2+y3+y4;
plot(t,y,'k');
axis([-5 5 -1 7]);
figure(10);
grid
