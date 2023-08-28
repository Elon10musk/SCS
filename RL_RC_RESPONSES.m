%%%%%%%%%Case 1 –Natural Response of RC Circuit

t=0:0.01:16;
R=1;C=1;Tou=R*C;
V0=1;
VC=V0.*exp(-t/Tou);
IR=VC/R;iC=-IR;

subplot(2,1,1);
plot(t,VC,'b');
title('Natural response of RC');
xlabel('Time');
ylabel('Capacitive Voltage');
grid on;

subplot(2,1,2);
plot(t,IR,'g',t,iC,'r');
title('Natural response of RC');
xlabel('Time');
ylabel('current');
legend('Resistive current','Capacitive current');
grid on;


%%%%%%%%Natural Response RC Circuits for 3 different Time Constants
figure;
t=(0:0.01:30); V0=1;
C=1; R1=1; R2=5; R3=10;
Tou1=R1*C; v1=V0*exp(-t/Tou1);
Tou2=R2*C; v2=V0*exp(-t/Tou2);
Tou3=R3*C; v3=V0*exp(-t/Tou3);
plot(t,v1,'black', t,v2,'blue',t,v3,'red');
legend ('Smallest Tou - fastest', 'Moderate Tou', 'Highest Tou - slowest');
xlabel('Time');ylabel('RC Natural Response Voltage Amplitudes');
title('RC Natural Responses with Different Time Constants & System Fastness');
grid on;


%%%%%%%%%Case 2 –Step Response of RC Circuit
figure;
t=(0:0.01:15); V0=0; C=1; R=1; Tou=R*C; Vs=1;
vC=Vs+((V0-Vs)*exp(-t/Tou));
iR=Vs/R*exp(-t/Tou);
subplot(211); plot(t,vC,'red', t, iR,'blue'); grid on;
xlabel('Time');ylabel('Capacitive Voltage &Capacitve Current');
title ('RC Step Response - Capacitive Voltage and Capacitive Current')
legend ('Capacitive Voltage','Capacitive Current')
vR=R*iR;
subplot(212); plot(t,vR,'black'); grid on;
xlabel('Time');ylabel('Resistive Voltage Amplitude');
title ('RC Step Response - Resistive Voltage')
legend ('Resistive Voltage')

figure;
%%%%%%%%RC Step Responses with Different Time Constants
t=(0:0.01:12); V0=0; Vs=1;
C=1; Ra=0.5; Rb=1; Rc=2;
TA=Ra*C; vA=Vs+((V0-Vs)*exp(-t/TA));
TB=Rb*C; vB=Vs+((V0-Vs)*exp(-t/TB));
TC=Rc*C; vC=Vs+((V0-Vs)*exp(-t/TC));
plot(t,vA,'black', t,vB,'blue',t,vC,'red');
legend('Smallest Tou - FASTEST','ModerateTou', 'Highest Tou - SLOWEST');
xlabel('Time');ylabel('Voltage Output for Step I/P');
title('RC Step I/P - Voltage Responses with Different Time Constants & System Fastness');
grid on;
%%% iA=I0*exp(-t/TA); iB=I0*exp(-t/TB); iC=I0*exp(-t/TC);

%%%%%%%Case 3- Natural Response of RL Circuit
figure;
t=(0:0.01:16); I0=1;
L=1; R=1; Tou=L/R;
iL=I0*exp(-t/Tou);
subplot(211); plot(t,iL); grid on;
title ('Inductive Current Graph')
xlabel('Time');ylabel('Current Amplitude');
title('RL Circuit Natural Response - Inductive Current');
legend ('Inductive Current')
vR=I0*R*exp(-t/Tou);
vL=-vR;
subplot(212); plot(t,vR,'red',t,vL,'blue'); grid on;
xlabel('Time');ylabel('Voltage Amplitudes');
title ('Resistive Voltage and Inductive Voltage Graph')
legend ('Resistive Voltage', 'Inductive Voltage')

%%%%%%% Natural Response for RL Circuit with Different Time Constants
figure;
t=(0:0.01:7); I0=1; L=1;
R1=1; Tou1=L/R1; i1=I0*exp(-t/Tou1); % Tou1 = 1
R2=2; Tou2=L/R2; i2=I0*exp(-t/Tou2); % Tou2 = 0.5
R3=5; Tou3=L/R3; i3=I0*exp(-t/Tou3); % Tou3 = 0.2
plot(t,i1,'black', t,i2,'blue',t,i3,'red');
legend ('Highest Tou - SLOWEST','ModerateTou', 'Smallest Tou - FASTEST')
xlabel('Time');ylabel('RL Circuit Natural Response Current Amplitudes');
title('RL Circuit Natural Responses with Different Time Constants & SystemFastness');
grid on;

%%%%%%%Case 4-Step Response of RL Circuit
figure;
t=(0:0.01:15); I0=0; L=1; R=1; Tou=L/R; Vs=1;
iL=Vs/R+((I0-(Vs/R))*exp(-t/Tou));
vL=Vs*exp(-t/Tou);
subplot(211); plot(t,iL,'red', t, vL,'blue');
legend ('Inductive Current','Inductive Voltage'); grid on;
xlabel('Time');ylabel('Inductive Current and Inducitve Voltage');
title ('Inductive Current and Inductive Voltage Graphs - RL Step Response')
vR=iL*R;
subplot(212); plot(t,vR,'black');
legend ('Resistive Voltage'); grid on;
xlabel('Time');ylabel('Resistive Voltage Amplitude');
title ('RL Step Response - Resistive Voltage Response');


% % RL Step Responses with Different Time Constants
t=(0:0.01:12)'; I0=0; Vs=1;
L=1; RA=0.5; RB=1; RC=2;
TA=L/RA; iA=Vs/RA+((I0-Vs/RA)*exp(-t/TA));
TB=L/RB; iB=Vs/RB+((I0-Vs/RB)*exp(-t/TB));
TC=L/RC; iC=Vs/RC+((I0-Vs/RC)*exp(-t/TC));
plot(t,iA,'black', t,iB,'blue',t,iC,'red');
legend ('Highest Tou - SLOWEST','ModerateTou', 'Smallest Tou - FASTEST')
xlabel('Time'); ylabel('RL Step Response Current Amplitudes');
title('RL Step Responses with Different Time Constants & System Fastness');
grid on;
