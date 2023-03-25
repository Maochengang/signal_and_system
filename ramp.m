%函数功能：用来产生一个斜变函数，输入为时间t，斜率m和平移量ad
%如果ad为正数，则表示往左平移
%这里的t也需要注意，是有意义的，他表示支持区间。
function y=ramp(t,m,ad)
N=length(t);
y=zeros(1,N);
for i=1:N
    if t(i)>=-ad
        y(i)=m*(t(i)+ad);
    end
end
end





