clear all;
Ts=0.01;delay=1;Tend=2.5;t=0:Ts:Tend;
%(a)
x1=ustep(t,0)-ustep(t,-delay);h1=ustep(t,0)-ustep(t,-2*delay);
%(b)
x2=ramp(t,1,0)+ramp(t,-2,-1)+ramp(t,1,-2);h2=x2;
%(c)
x3=exp(-1*t);h3=exp(-10*t);
y=Ts*conv(x3,h3);                            %对于另外两种情况，修改x1和h1
t1=0:Ts:length(y)*Ts-Ts;
figure (1)
subplot(311)
plot(t,x1);axis([0 2.5 -0.1 1.2]);grid;ylabel('x_1(t)');
subplot(312)
plot(t,h1);axis([0 2.5 -0.1 1.2]);grid;ylabel('h_1(t)');
subplot(313)
plot(t1,y);
axis([0   5  -0.1 1.1]);
grid;
ylabel('y_1(t)');