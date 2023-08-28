clc; close all;
syms s;
t=(0:0.01:10);
% declare the OLTF G(s) = Gs, assume H(a)=1
Gs= 2/(s+5);
Ts=Gs/(1+Gs);
Cs_Step=Ts/s; Cs_Ramp=Ts/s^2; Cs_Parabolic=Ts/s^3;
% Time domain responses for all three inputs
Step_Response_Time=ilaplace(Cs_Step);
Ramp_Response_Time=ilaplace(Cs_Ramp);
Parabolic_Response_Time=ilaplace(Cs_Parabolic);





% CODE - 2
% system response in time domain for different inputs
clc; close all;
t=(0:0.01:10);
Step_Response_Time = 2/7 - (2*exp(-7*t))/7;
Ramp_Response_Time = (2*t)/7 + (2*exp(-7*t))/49 - 2/49;
Parabolic_Response_Time = t.^2/7 - (2*exp(-7*t))/343 - (2*t)/49 + 2/343;
subplot(311);
plot(t,(t./t),'b',t,Step_Response_Time,'r');
axis([0 10 0 1.2]);
title('Input-Blue, Output-Red - Type 0 STEP Response');
subplot(312);
plot(t,t,'b',t,Ramp_Response_Time,'r');
%axis([0 10 0 1.2]);
title('Input-Blue, Output-Red - Type 0 RAMP Response');
subplot(313);
plot(t,(t.^2)/2,'b',t,Parabolic_Response_Time,'r');
%axis([0 10 0 1.2])
title('Input-Blue, Output-Red - - Type 0 PARABOLIC Response');


% Case 2 – steady state error finding for Type I system
clc; close all; 
syms s;
t=(0:0.01:10);
% declare the OLTF G(s) = Gs, assume H(a)=1
Gs= 4/(s*(s+5));
Ts=Gs/(1+Gs);
Cs_Step=Ts/s; Cs_Ramp=Ts/s^2; Cs_Parabolic=Ts/s^3;
% Time domain responses for all three inputs
Step_Response_Time=ilaplace(Cs_Step);
Ramp_Response_Time=ilaplace(Cs_Ramp);
Parabolic_Response_Time=ilaplace(Cs_Parabolic);
clc; close all; 
t=(0:0.01:10);
Step_Response_Time = exp(-4*t)/3 - (4*exp(-t))/3 + 1;
Ramp_Response_Time = t + (4*exp(-t))/3 - exp(-4*t)/12 - 5/4;
Parabolic_Response_Time = exp(-4*t)/48 - (4*exp(-t))/3 - (5*t)/4 + t.^2/2 + 21/16;
subplot(311);
plot(t,(t./t),'b',t,Step_Response_Time,'g');
axis([0 10 0 1.2]);
title('Input-Blue, Output-Green - Type I STEP Response');
subplot(312);
plot(t,t,'b',t,Ramp_Response_Time,'g');
%axis([0 10 0 1.2]);
title('Input-Blue, Output-Green - Type I RAMP Response');
subplot(313);
plot(t,(t.^2)/2,'b',t,Parabolic_Response_Time,'g');
%axis([0 10 0 1.2])
title('Input-Blue, Output-Green - Type I PARABOLIC Response');


% CASE 3– steady state error finding for Type II system.
% For type II system (OLTF), find the steady state error of the CLTF with –ve
% feedback with unit step, unit ramp and unit parabolic inputs.

s = tf('s');
G = ((s+1)*(s+4))/(s^2*(s+2)*(s+6));
sys_cl = feedback(G,1);
[y,t] = step(sys_cl);
u = ones(size(t));
plot(t,y,'b',t,u,'r')
% axis([0 20 0 1.6])
xlabel('Time(secs)')
ylabel('Amplitude')
title('Input-red, Output-blue - Type II STEP Response')


%%% Code for Unit Ramp Response of Type 2 System
s = tf('s');
G = ((s+1)*(s+4))/(s^2*(s+2)*(s+6));
sys_cl = feedback(G,1);
t = 0:0.1:50;
u = t;
[y,t,x] = lsim(sys_cl,u,t);
plot(t,y,'b',t,u,'r');
% change xmax value of 20 in axis command to 50, to get longer time response
% also change Ymax value of 30 in axis command to 50
axis([0,20,0,30]);
xlabel('Time(secs)');
ylabel('Amplitude');
title('Input-red, Output-blue - Type II STEP Response');


%%% Code for Unit Parabolic Response of Type 2 System
s = tf('s');
G = ((s+1)*(s+4))/(s^2*(s+2)*(s+6));
sys_cl = feedback(G,1);
t = 0:0.1:30;
u = 0.5*t.*t;
[y,x] = lsim(sys_cl,u,t);
plot(t,y,'b',t,u,'r');
% axis([0 20 0 300]) % axis([15 20 100 200]) % axis([2 10 0 100])
xlabel('Time(secs)');
ylabel('Amplitude');
title('Input-red, Output-blue - Type II STEP Response');


