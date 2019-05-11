%2 class classification depicted for AND gate.
set(gca,'Xlim',[-3 3]);
set(gca,'Ylim',[-3 3]);
hold on;
line([0,0],ylim);
line(xlim,[0,0]);
x = [1 1;1 -1; -1 1; -1 -1];
y = [1;-1;-1;-1];
plot(1,1,'*');plot(1,-1,'+');plot(-1,1,'+');plot(-1,-1,'+');
hold on;
ask='n';
while ask=='n'
disp('Enter 2 coordinates for drawing a decision boundary');
x1 = input('First x-coordinate : ');
y1 = input('First y-coordinate : ');
x2 = input('Second x-coordinate : ');
y2 = input('Second y-coordinate : ');
disp('Plotting decision boundary');
plot([x1 x2],[y1 y2],'r'); hold on;
ask = input('Is the data linearly separated ? (y/n) ', 's');
end
disp('On comparing, the final bias and weights are obtained');
w2 = 1;
m=(y2-y1)/(x2-x1);
w1 = -m;
b= -(1-m);
disp( 'Weights');
disp(w1); disp(w2);
disp('Bias');
disp(b);

