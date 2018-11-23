%3.18(b) 
f = @(x) exp(4*x).*sin(1./x);
x = linspace(.01,.2);
diffMaxMin(f, x);

clear all
figure(2)
%f = @(x, a, b) a*x.^2+b*x+5;%x,a,b는 본인이 알아서 정할 것.
f = @(x, a, b) a*x.^2+b*x+5;
x = linspace(-1,5);
diffMaxMin(f, x, -1, 3); 