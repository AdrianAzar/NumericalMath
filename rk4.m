clear
clc
a=input('a= ');
b=input('b= ');
N=input('max= ');
h=(b-a)/N;
x(1)=a;
y(1)=50;
for i=1:N-1
    k1=h*fct(x(i),y(i));
    k2=h*fct(x(i)+0.5*h,y(i)+0.5*k1);
    k3=h*fct(x(i)+0.5*h,y(i)+0.5*k2);
    k4=h*fct(x(i)+h,y(i)+k3);
    y(i+1)=y(i)+(k1+2*(k2+k3)+k4)/6;
    x(i+1)=a+i*h;
end
plot(x,y),xlim([0 30]),ylim([-105 55]),xlabel('v(m/s)'),ylabel('t')
saveas(gcf, 'myplot1.png')