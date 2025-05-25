clear
clc
x=input('x= ');
eps=input('eps= ');
N=input('N= ');
n=1;
error=eps+1;
while(n<N)&&(error>eps)
    y=x-f(x)/df(x);
    error=abs((y-x)/y);
    x=y;
    n=n+1;
end
fprintf('The solution is %f with an error of %f and %g iterations',y,error,n)