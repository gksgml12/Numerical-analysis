clear all 
clc
a=2; b=5;
x = [0:pi/40:pi/2];
y = b*exp(-a*x).*sin(b*x).*(.012*x.^4-.15*x.^3+.075*x.^2+2.5*x);
%최소의 구두점을 사용하라는 말은 스칼라와 벡터의 곱, 또는 스칼라곱에서는 굳이 도트를 사용한 연산자를 사용할 필요가 없으니 자제하라는 말입니다. 
%벡터와 벡터 곱, 즉 여기에선 행벡터의 제곱 연산에만 도트 사용한 연산자 사용하시면 됩니다. 
z = y.^2;
format short g; 
w = [x' y' z'];
plot(x, y, 'rp-.', 'LineWidth', 1.5, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'w','MarkerSize', 14)
xlabel('x')
ylabel('y, z')
hold on % 한 창에 두개 그래프 그림
plot(x, z, 's-', 'MarkerFaceColor', 'g')
legend('y', 'z')