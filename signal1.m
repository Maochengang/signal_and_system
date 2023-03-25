clear all
clc
f=input('frequency in Hz >>')
A=input('amplitude(>0) >>')
theta=input('phase in degrees >>')
omega= 2*pi*f;
tmax = 1/f;
time=[];n=0;
figure(1)
for t=0:tmax/36:tmax
    z=A*exp(1i*(omega*t+theta*pi/180));
    x=real(z);y=imag(z);
    time=[time t];
    subplot(121)
    compass(x,y);
    axis('square')
    subplot(122)
    plot(n*tmax/36,x,'*r')
    axis('square');
    axis([0 tmax -1.1*A 1.1*A]);grid
    hold on
    if n==0
        pause(1)
    else
        pause(0.1)
    end
        n=n+1;
end
hold off
        



