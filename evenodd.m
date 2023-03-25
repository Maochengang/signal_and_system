function [ye,yo] = evenodd(~,y)
%偶/奇分解
%t:时间
%y:模拟信号
%ye,yo:偶分量和奇分量
%用法：[ye,yo]=evenodd(t,y)
yr = fliplr(y);
ye = 0.5*(y+yr);
yo = 0.5*(y-yr);