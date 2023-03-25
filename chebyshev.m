%切比雪夫多项式
%%
clf
syms x y t
x= cos(2*pi*t);
figure(8)
for k=1:4
    y=cos(2*pi*k*t);
    if k==1,subplot(221)
        elseif k==2, subplot(222)
        elseif k==3, subplot(223)
            else subplot(224);
    end
    fplot(x,y);                %不推荐使用ezplot，图示对应于n=1，2，3，4的情形
    grid;
    hold on
end
hold off
     