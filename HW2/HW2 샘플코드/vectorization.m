t = linspace(0, 20, 9);
f=@(x) 12+5*cos((2*pi*x)/20);
y=f(t); 
y(1) = 12+6*cos(0); 