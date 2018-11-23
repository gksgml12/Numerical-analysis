clear all
clc
v = [10:10:80];
F = [25 70 380 550 610 1220 830 1450]; %discrete�� v�� �����ϴ� �̻� �ڷ��
cv = linspace(0,100); 
cF = .2741*cv.^1.9842; %continuous�� cv�� �����ϴ� �������� �ڷ�
figure(2);
plot(cv, cF, '-.k')
hold on
plot(v, F, 'om') %�̻� �ڷ�� ������ �������� �����Ƿ� -���� �ʽ��ϴ�.
xlabel('v')
ylabel('F')