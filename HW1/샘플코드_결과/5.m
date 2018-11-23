clear all 
clc
a=2; b=5;
x = [0:pi/40:pi/2];
y = b*exp(-a*x).*sin(b*x).*(.012*x.^4-.15*x.^3+.075*x.^2+2.5*x);
%�ּ��� �������� ����϶�� ���� ��Į��� ������ ��, �Ǵ� ��Į��������� ���� ��Ʈ�� ����� �����ڸ� ����� �ʿ䰡 ������ �����϶�� ���Դϴ�. 
%���Ϳ� ���� ��, �� ���⿡�� �຤���� ���� ���꿡�� ��Ʈ ����� ������ ����Ͻø� �˴ϴ�. 
z = y.^2;
format short g; 
w = [x' y' z'];
plot(x, y, 'rp-.', 'LineWidth', 1.5, 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'w','MarkerSize', 14)
xlabel('x')
ylabel('y, z')
hold on % �� â�� �ΰ� �׷��� �׸�
plot(x, z, 's-', 'MarkerFaceColor', 'g')
legend('y', 'z')