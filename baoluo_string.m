%(a)产生y(t)及其包络线
%%
t = sym('t');
y = exp(-t)*cos(2*pi*t);
ye = exp(-t);
figure(1)
fplot(y,2:4);
grid
hold on
fplot(ye,[-2,4])
hold on
fplot(-ye,[-2,4]);axis([-2 4 -8 8])
hold off
xlabel('t');ylabel('y(t)');title('')
% (b)产生x(t)
figure(2)
t = sym('t');
x = 1+1.5*cos(2*pi*t/10)-.6*cos(4*pi*t/10);
fplot(x,[-10,10]);grid
xlabel('t');ylabel('x(t)')