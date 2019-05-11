%perceptron for AND function
clear;
clc;
x=[1 1 -1 -1;1 -1 1 -1];
t=[1 -1 -1 -1];
W=[0 0];
b=0;
alpha=input('Enter learning rate');
theta=input('enter threshold value=');
con=1;
epoch=0;
while con
    con=0;
    for i=1:4
        yin=b+x(1,i)*W(1)+x(2,i)*W(2);
        if yin>theta
            y=1;
        end
        if yin<theta && yin>=-theta
            y=0;
        end
        if yin<-theta
            y=-1;
        end
        if (y-t(i))
            con=1;
            for j=1:2
                W(j)=W(j)+alpha*t(i)*x(j,i);
            end
            b=b+alpha*t(i);
        end
    end
    epoch=epoch+1;
end
disp('perceptron for And function');
disp('final weight matrix');
disp(W);
disp('final bias');
disp(b);


        
                