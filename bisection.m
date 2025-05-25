clear
clc
a=input('a= ');
b=input('b= ');
eps=input('eps= ');
N=input('N= ');
n=1;
error=eps+1;
while(n<N)&&(error>eps)
    c=(a+b)/2;
    if f(a)*f(c) < 0
        b=c;
    else
        a=c;
    end
    error=abs(a-b);
    n=n+1;
end
fprintf('The solution is %f near %f \n',a,error);
fprintf('The number of iterations is %g',n)