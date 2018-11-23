function [x, ea]=sqrtDA(a, guess, es);
%divide and average method를 통해 제곱근을 계산하는 프로그램
%사용자로부터 제곱근을 계산하려는 수, 제곱근 추정치, 사전 정의한 최대 오차를 입력받고, 
%사전 정의한 최대 오차수준아래로 근사 상대오차가 떨어질때까지 제곱근을 추정하고 
%반복에 따른 제곱근 추정치와 근사 상대오차를 반환한다. 
%input:  
% a는 제곱근을 계산하려는 수
% guess는 사용자가 제곱근으로 추정한 수: 사용자 입력이 없다면 default값으로 a/2으로 설정
% es는 사전 정의한 최대 오차: 사용자 입력이 없다면 default로 .5*10^-3(유효숫자 5자리)로 설정
%output: 
% x = 반복 계산에 따른 제곱근 a의 추정치 벡터
% ea = 반복 마다 근사 상대 오차 기록한 벡터

if nargin<1, error('최소 하나의 인자는 입력해주세요.'), end
if nargin<2|isempty(guess) %인자가 1개이거나 추정치를 빈벡터로 준 경우 예)sqrtDA(3, [], eps)
	if a>0 guess=a/2; 	
	else guess=-a/2;	
	end %디폴트 값으로 그 절댓값의 반을 추정치로 지정
end
if nargin<3|isempty(es), es=.5*10^-3; end %인자가 2개이거나 es를 빈벡터로 준 경우 디폴트 값 지정

x = [guess]; %x 벡터에 첫번째 추정치로 guess를 넣는다. 
ea = [100]; %근사 상대오차는 계산 전이기 때문에 일단 100으로 둔다. 
k = 2; %k는 반복 횟수, 첫 반복을 guess로 두기 때문에 2부터 시작. 
det = 1; %a가 음수인 경우를 위해 det 값 마련. a가 음수라면 det를 i로 둘 것임. 

if a==0, x=0; ea=0; %a가 0이라면 제곱근은 0이다. 상대오차도 0.
else	
	if a<0, a=-a; det = i; end %a가 음수라면 앞으로 계산에 그 절댓값을 사용. 절댓값의 제곱근을 구한 후 마지막에 i를 곱해 주기 위해 det를 i로 둔다. 
	while(1)%문제에서 제시한 대로 반복문 작성
		x(k) = (guess+a/guess)/2;
		ea(k) = abs((x(k)-guess)/x(k));
		guess = x(k); 
		if ea(k)<es, break, end
		k=k+1;
	end
	x = x*det; %a가 양수였다면 x벡터는 그대로, 음수였다면 모두 i가 붙음 
end
x(k) %최종 값 출력