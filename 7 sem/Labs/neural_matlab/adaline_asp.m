x = [1 1 1;1 -1 1; -1 1 1; -1 -1 1];
y = [-1;1;1;-1];
w = [0.1 0.1 0.1];
epoch=0;
e=2;
alpha = 1;
desepoch= 1;
E=0;
while epoch<desepoch
    epoch=epoch+1;
    disp('Epoch number : ');
    disp(epoch);
    e=0;
    for i=1:4
        yin = x(i,:)*w(:,:)'
        t = alpha*(y(i,1)-yin)
        w = w+t*x(i,:);
        disp('Weight matrix is');
        disp(w);
    end
    for i=1:4
        yin = x(i,:)*w(:,:)';
        e = e+(y(i,1)-yin)^2;
    end
end
disp('Final error is')
disp(e);
disp('Final weights are');
disp(w);


        