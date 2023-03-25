clear all;
clc
load train
whos
sound(y,Fs)                    %聆听并绘制火车信号 
t=0:1/Fs:(length(y)-1)/Fs;
figure(2);plot(t,y');grid
ylabel('y[n]');xlabel('n')
%用函数绘制火车信号的200个样本
%%
figure(3)
n=100:299;
stem(n,y(100:299)):xlabel('n'):ylabel('y[n]')
title('火车信号片段')
axis([100 299 -0.5 0.5])