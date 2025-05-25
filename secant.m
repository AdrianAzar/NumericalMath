clear
clc
x0=input('x0= ');
x1=input('x1= ')
eps=input('eps= ');
N=input('N= ');
n=1;
error=eps+1;
while(n<N)&&(error>eps)
    x2=x1-(f(x1)*(x1-x0))/(f(x1)-f(x0));
    x0=x1;
    x1=x2;
    error=abs((x2-x1)/x2)
    n=n+1;
end
fprintf('The solution is %f with an error of %f and %g iterations',x2,error,n)