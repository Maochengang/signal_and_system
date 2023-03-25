%李萨如图形
%%
clear all;clf
syms x y t
x=cos(2*pi*t);
A=1;figure(9)
for i = 1:2
    for k=0:3
        theta=k*pi/4;
        y=A^k*cos(2*pi*t+theta);
        if k==0,subplot(221)
            elseif k==1,subplot(222)
            elseif k==2,subplot(223)
            else subplot(224);
        end
        fplot(x,y);
        grid;
        hold on
    end
        A=0.5;figure(10)
end