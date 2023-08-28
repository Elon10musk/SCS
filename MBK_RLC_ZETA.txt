% i) Zeta =0
clc; close all; t=0:0.01:60;
L=1; C=1;
wn=1/sqrt(L*C);
R=0;
zeta_undamped=(R/2)*sqrt(C/L);
Pole1_undamp=1j*wn;
Pole2_undamp=-1j*wn;
ct_undamp=1-cos(wn*t);
plot(t,ct_undamp);
xlabel('time');
ylabel('ct_undamp');



% ii) Zeta =0.3
clc; close all;  
t=0:0.01:60;
L=1; C=1;
wn=1/sqrt(L*C);
R=0.6;
zeta=(R/2)*sqrt(C/L);
x=wn*sqrt(1-zeta^2);
Pole1_underdamp=-zeta*wn-1j*wn*x;
Pole2_underdamp=-zeta*wn+1j*wn*x;
ct_underdamp = 1-exp(-zeta*wn*t)/x.*(x*cos(wn*x.*t)+zeta*sin(wn*x.*t));
td=(1+0.7*zeta)/wn;
a=tan((sqrt(1-zeta^2))/zeta);
tr=(pi - a)/x;
tp=pi/x;
per_Mp=exp((-pi*zeta)/sqrt(1-zeta^2)*100);
ts_2=4/(zeta*wn);
ts_5=3/(zeta*wn);
plot(t,ct_underdamp);
xlabel('time');
ylabel('ct-underdamp');

% Inference: The system is fast with high gain and energy, the poles lie towards
% the left of the Laplace plane (real part is negative) and is slightly more stable
% than case 1 system.




% iii) Zeta =0.7
clc; close all;t=0:0.01:60;
L=1; C=1;
wn=1/sqrt(L*C);
R=1.4;
zeta=(R/2)*sqrt(C/L);
x=wn*sqrt(1-zeta^2);
Pole1_underdamp=-zeta*wn-1j*wn*x;
Pole2_underdamp=-zeta*wn+1j*wn*x;
ct_underdamp=1-exp(-zeta*wn*t)/x.*(x*cos(wn*x.*t)+zeta*sin(wn*x.*t));
td=(1+0.7*zeta)/wn;
a=atan((sqrt(1-zeta^2))/zeta);
tr=(pi - a)/x;
tp=pi/x;
per_Mp=exp((-pi*zeta)/sqrt(1-zeta^2)*100);
ts_2=4/(zeta*wn);
ts_5=3/(zeta*wn); 
plot(t,ct_underdamp); xlabel('time') ;ylabel('ct-underdamp');


% Inference: The system is slightly slower than the previous system (zeta=0.3)
% with a slightly less gain and energy, the poles lie more to the left of the plane
% and the system is more stable than when zeta=0.3 i.e., it is more damped when
% compared to the previous case.


% iv) Critically damped Condition:
Zeta = 1;
clc; close all;
t=0:0.01:60;
L=1; C=1;
wn=1/sqrt(L*C);
R=2;
zeta=(R/2)*sqrt(C/L);
x=wn*sqrt(1-zeta^2);
Pole1_underdamp=-zeta*wn-1j*wn*x;
Pole2_underdamp=-zeta*wn+1j*wn*x;
zeta_criticaldamp=(R/2)*sqrt(C/L);
x=sqrt(1-zeta_criticaldamp^2);
Pole1_criticaldamp=-zeta_criticaldamp*wn-wn*x;
Pole2_criticaldamp=-zeta_criticaldamp*wn+wn*x;
ct_criticaldamp=1-exp(-wn*t).*(1+wn*t);
plot(t,ct_criticaldamp);
xlabel('time');
ylabel('ct-critically damped');


% Inference: The system is slow and this is the optimal damping condition for any
% system, the system is marginally stable with lesser gain and energy when
% compared to the underdamped and undamped cases. The poles of this system are
% real and equal i.e. they lie on the same position.


% V) Over damped condition:
Zeta = 5;
clc; close all;t=0:0.01:60;
R=10;
L=1; C=1; wn=1/sqrt(L*C);
zeta_overdamp=(R/2)*sqrt(C/L);
y=sqrt((zeta_overdamp^2)-1);
Pole1_overdamp=-zeta_overdamp*wn-wn*y;
Pole2_overdamp=-zeta_overdamp*wn+wn*y;
s1=Pole1_overdamp;
s2=Pole2_overdamp;
ct_overdamp=1+wn/(2*y)*(exp(s1*t)/-s1-exp(s2*t)/-s2);
plot(t,ct_overdamp);
xlabel('time');
ylabel('ct-over damped');


%%vi) Zeta =3
clc; close all;t=0:0.01:60;
k=1; M=1;
wn=1/sqrt((1/k)*M);
B=1/6;
zeta=((1/B)/2)*sqrt(M*k);
x=wn*sqrt(1-zeta^2);
Pole1_underdamp=-zeta*wn-1j*wn*x;
Pole2_underdamp=-zeta*wn+1j*wn*x;
ct_underdamp=1-exp(-zeta*wn*t)/x.*(x*cos(wn*x.*t)+zeta*sin(wn*x.*t));
plot(t,ct_underdamp);
xlabel('time');
ylabel('ct-overdamped');


