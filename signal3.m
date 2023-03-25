clc;
close all;
clear all;

N  = 20;   %切比雪夫多项式阶数
T0 = [1];
T1 = [1,0];
for ii = 2:N
    eval(['T',num2str(ii),'=','conv(','T',num2str(ii-1),',','[2,0]',')','-','[0,0,','T',num2str(ii-2),']',';']);
end
save('T20.mat','T20');
