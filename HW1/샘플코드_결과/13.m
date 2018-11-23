clear all
clc
v = [10:10:80];
F = [25 70 380 550 610 1220 830 1450]; %discrete한 v에 대응하는 이산 자료들
cv = linspace(0,100); 
cF = .2741*cv.^1.9842; %continuous한 cv에 대응하는 연속적인 자료
figure(2);
plot(cv, cF, '-.k')
hold on
plot(v, F, 'om') %이산 자료는 선으로 연결하지 않으므로 -넣지 않습니다.
xlabel('v')
ylabel('F')