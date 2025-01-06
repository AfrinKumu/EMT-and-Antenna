%Electromagnetic Wave.......
t = linspace(0, 10); %linspace=:operator
w = 2; %patch=area
k = pi/2;
x = ones(size(t));
c = cos(w*t - k*x); %fliplr(A)=A-column or row,flipped in the left right direction,3D
figure
patch([t fliplr(t)], [c zeros(size(c))], [zeros(size(t)) zeros(size(t))], 'green')
hold on
patch([t fliplr(t)], [zeros(size(t)) zeros(size(t))], [c zeros(size(c))], 'magenta')
hold off
grid on;
view(45, 45)