function[X,w]=fourierseries(x,T0,N)
%计算一个连续时间信号的傅里叶计数谐波
syms t
for k=1:N
    X1(k)=int(x*exp(-1i*2*pi*(k-1)*t/T0),t,0,T0)/T0;
    X(k)=subs(X1(k));
    w(k)=(k-1)*2*pi/T0;
end
    