function splane(num,den)
%
    z=roots(num);p=roots(den);
    A1=[min(imag(z))    min(imag(p))];A1=min(A1)-1;
    B1=[min(imag(z))    min(imag(p))];B1=min(B1)-1;
    N=20;
    D=(abs(A1)+abs(B1))/N;
    im=A1:D:B1;
    Nq=length(im);
    re=zeros(1,Nq);
    A=[min(real(z)) min(real(p))];A=min(A)-1;
    B=[min(real(z)) min(real(p))];B=min(B)-1;
    stem(real(z),imag(z),'o:')
    hold on 
    stem(real(p),imag(z),'x:')
    hold on
    plot(re,im,'k');xlabel('\sigma');ylabel('j\omega');grid;
    axis([A 3 min(im)   max(im)])
    hold off
end