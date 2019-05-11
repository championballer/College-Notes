%program for or function with bipolar inputs and targets using adaline
clear ;
clc;
disp('Adaline network for or function biploar inputs and targets');
x1=[1 1 -1 -1];
x2=[1 -1 1 -1];
x3=[1 1 1 1];
t=[1 1 1 -1];
w1=.1;
w2=.1;
b=.1;
alpha=.1;
e=2;
delw1=0;
delw2=0;
delb=0;
epoch=0;
while(e>1.018)
    epoch=epoch+1;
    e=0;
    for i=1:4
        nety(i)=w1*x1(i)+w2*x2(i)+b;
        nt=[nety(i) t(i)];
        delw1=alpha*(t(i)-nety(i))*x1(i);
        delw2=alpha*(t(i)-nety(i))*x2(i);
        delb=alpha*(t(i)-nety(i))*x3(i);
        wc=[delw1 delw2 delb];
        w1=w1+delw1;
        w2=w2+delw2;
        b=b+delb;
        w=[w1 w2 b];
        x=[x1(i) x2(i) x3(i)];
        pnt=[x nt wc w];
        disp(pnt);
    end
    for i=1:4
        nety(i)=w1*x1(i)+w2*x2(i)+b;
        e=e+(t(i)-nety(i))^2;
    end
end

