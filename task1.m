% (1.1)
s=0;
n=20;
for k=1:n
    s=s+k^3;
end
s

% (1.2)
A=[1 2 3;4 5 6;7 8 9];
A^3

% (2.1)
clear all;
rng(0,'twister');
n=100;
for i =1:n
    x(i)=rand();
    y(i)=rand();
end
for i=1:n
    r(i)=x(i)^2 + y(i)^2;
end
m=0;
for i=1:n
    if r(i) <=1
        m=m+1;
    end
end
p=4*m/n
%(2.2)
for i=1:n
    plot(x(i),y(i),'r.');
    hold on;
end
r = 1;
xc = 0;
yc = 0;

theta = linspace(0,2*pi);
x = r*cos(theta) + xc;
y = r*sin(theta) + yc;
plot(x,y)
axis ([0 1 0 1])
hold off;

saveas(gcf,'Barchart.png')







