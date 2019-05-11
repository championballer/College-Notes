%ANDNOT function using mcculoch-pitts neuron
clear;
clc;
%getting weight and threshold values
disp('enter weights');
w1=input('weight w1=');
w2=input('weight w2=');
disp('enter threshold value');
theta=input('theta=');
y=[0 0 0 0];
x1=[0 0 1 1];
x2=[0 1 0 1];
z=[0 0 1 0];


    zin=x1*w1+x2*w2;
    for i=1:4
        if zin(i)>=theta
            y(i)=1;
        else
            y(i)=0;
        end
    end
    disp('Output of Net');
    disp(y);
    con=0;
    if(y==z)
      
     % disp('equal');
    else
        disp('Net is not learning enter another set of weights and threshold value');
        w1=input('weight w1=');
        w2=input('weight w2=');
        theta=input('theta=');
    end
disp('mucculoch-pits net for ANDNOT function');
disp('Weights of Neuron');
%disp(y);
%disp(z);
disp(w1);
disp(w2);
disp('Threshold Value');
disp(theta);
