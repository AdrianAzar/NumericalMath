clear
clc
a=input('a= ');
b=input('b= ');
N=input('max= ');
h=(b-a)/N;
x(1)=a;
y(1)=1;
for i=1:N-1
    y(i+1)=y(i)+h*fct(x(i),y(i));
    x(i+1)=a+i*h;
end
plot(x,y)