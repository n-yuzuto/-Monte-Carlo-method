clear all;
tic;
rng(0,'twister');
n=10;
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
time=toc
%(2.2)
for i=1:n
    plot(x(i),y(i),'r.');
    hold on;
end
time=toc

%n=100,time=0.0189
%n=1000,time=0.0205
%n=10000,time=0.0241
%n=100000,time=0.1036
%n=1000000,time=0.4849
%n=10000000,time=4.6934
n=[100 1000 10000 100000 1000000 10000000];
T=[0.0189 0.0205 0.0241 0.1036 0.4849 4.6934];
loglog(n,T,'rx')
xlabel('n');
ylabel('time');
saveas(gcf,'graph1.31.png')



x=[10 100 1000 10000 100000 1000000 10000000];
P=[1.6000 3.2400 3.1600 3.1564 3.1418 3.1404 3.1418];
y=abs(P-pi);
plot(x,y,'-o');
saveas(gcf,'graph2_3.1_1.png')
set(gca,'FontSize',20);
ylim([0 10]);
xlim([0 10000000])




