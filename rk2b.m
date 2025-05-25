clear
clc
a=input('a= ');
b=input('b= ');
N=input('max= ');
h=(b-a)/N;
x(1)=a;
y(1)=1;
for i=1:N-1
    k1=h*fct(x(i),y(i));
    k2=h*fct(x(i)+h,y(i)+k1);
    y(i+1)=y(i)+0.5*(k1+k2);
    x(i+1)=a+i*h;
end
plot(x,y)