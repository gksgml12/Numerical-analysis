clear all 
clc
g= 9.81; y0=0; v0=28; ang = [15: 15: 75]; ang = ang*pi/180; %라디안 단위로 변환
x = [0:5:80]'; %수평거리에 따른 높이 y를 열벡터로 저장할 것이므로 수평거리도 열벡터로 표현
f = @(theta) tan(theta)*x-g*x.^2/(2*v0^2*cos(theta)^2)+y0; %초기각도를 고정시키고, x(수평거리)에 따른 y를 구하는 함수를 f로 둔다. 
y = zeros(length(x), length(ang)); % or y(length(x), length(ang)) = 0; %각 초기 각도에 대한 수평거리(x)에 대응하는 높이를 담을 행렬 생성(0으로 초기화)
for i = 1:length(ang)
y(:,i) = f(ang(i)); %초기 각도마다 수평거리에 따른 높이를 y의 각 열에 저장. 
end
figure(3)
plot(x, y)
legend({'$\theta_1=\frac{\pi}{12}$', '$\theta_1=\frac{\pi}{6}$', '$\theta_1=\frac{\pi}{4}$', '$\theta_1=\frac{\pi}{3}$', '$\theta_1=\frac{5\pi}{12}$'}, 'interpreter', 'latex') %legend에 수식으로 작성하려면 legend({'$수식$', '$수식$', ..., '$수식$'},'interpreter', 'latex') 사용
%theta, pi는 기호로 표현될 수 있게 \ 사용
%\자체를 표현하려면 두번(\\) 작성
%분수 표현은 \frac{분자}{분모}
axis([0 80 0 40]) %y축을 0부터 시작하도록 하라고 했으므로 축 조정 해줍니다. 그리고 y의 최댓값이 37.2824(workspace에서 확인 가능)이므로 40에서 자릅니다.
