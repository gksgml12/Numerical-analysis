clear all 
clc
L = 6; E = 5*10^11; I=.0003; w0=250000; x=[0:.1:L]; %KMS ¥‹¿ß∑Œ ∏¬√„
y = w0/(120*E*I*L)*(-x.^5+2*L^2*x.^3-L^4*x);
figure(4), subplot(5,1,1), plot(x, y); title('displacement'); ylabel('\ity(m)');
slope = w0/(120*E*I*L)*(-5*x.^4+6*L^2*x.^2-L^4); 
subplot(5,1,2), plot(x, slope); title('slope');ylabel('\it\theta');
moment = w0/(120*L)*(-20*x.^3+12*L^2*x);
subplot(5,1,3), plot(x, moment); title('moment');ylabel('\itM');
shear = w0/(120*L)*(-60*x.^2+12*L^2);
subplot(5,1,4), plot(x, shear); title('shear');ylabel('\itV');
loading = -w0/(120*L)*(-120*x);
subplot(5,1,5), plot(x, loading); title('loading');ylabel('\itw');xlabel('\itx(m)');
