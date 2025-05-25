clear
clc
x0=input('x0= ');
eps=input('eps= ');
error=eps+1;
N=input('N= ');
n=1;
while(error>eps)&&(N>n)
    x1=g(x0);
    error=abs((x1-x0)/x1);
    x0=x1;
    n=n+1;
end
fprintf('The solution is %f near %f with %g iterations',x1,error,n)