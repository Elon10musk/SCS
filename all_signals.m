t = -10:0.01:10;            %Time duration
sq_freq = 3;                        %square wave frequency
sin_freq = 5;           %sin wave frequency
cos_freq = 3;                       %cos wave frequency
impulse = t == 0;       %impulse signal
unit_step = t > 0;                  %unit step signal
ramp=t.*unit_step;      %ramp signal
parabolic=(t).^2.*10;%              Parabolic signal
exp_incr=exp(t.*0.2).*1;%increasing exp signal
exp_decr=exp(t.*-1.2).*1;                   %decreasing exp signal
square_wave=7.5*square(2*pi*sq_freq.*t);%square wave
sin_wave=2*sin(2*pi*sin_freq.*t);               % sin wave
cos_wave=2*cos(2*pi*cos_freq.*t);       % cos wave
triangle_wave = triang(200);
t1=0:0.01:2*pi;

D_unit_step=(t-4)>=0; %delayed unit step
A_unit_step=(t+4)>=0; % advanced unit step
I_unit_step=-t>=0; %inverted unit step

D_impulse=(t-4)==0; %delayed impulse
A_impulse=(t+4)==0; %advanced impulse


figure;

subplot(3, 2, 1);
plot(t, impulse, 'r');
title('Impulse signal');
xlabel('time');
ylabel('amplitude');
ylim([0 2]);
grid on;

subplot(3, 2, 2);
plot(t, unit_step, 'b');
title('Unit step signal');
xlabel('time');
ylabel('amplitude');
ylim([0 2]);
grid on;

subplot(3, 2, 3);
plot(t,ramp, 'y');
title('Ramp signal');
xlabel('time');
ylabel('amplitude');
xlim([-1 10]);
ylim([-1 10]);
grid on;

subplot(3, 2, 4);
plot(t,parabolic, 'cyan');
title('Parabolic signal');
xlabel('time');
ylabel('amplitude');
ylim([-1 3]);
grid on;

subplot(3, 2, 5);
plot(t,exp_incr, 'g');
title('increasing exp signal');
xlabel('time');
ylabel('amplitude');
ylim([0 2]);
grid on;

subplot(3, 2, 6);
plot(t,exp_decr, 'black');
title('decreasing exp signal');
xlabel('time');
ylabel('amplitude');
ylim([0 2]);
xlim([0 10]);
grid on;

figure;
subplot(3, 1, 1);
plot(t,square_wave, 'black');
title('Square wave signal');
xlabel('time');
ylabel('amplitude');
xlim([-2 2]);
ylim([-8 8]);
grid on;

subplot(3, 1, 2);
plot(t, sin_wave, 'm', t, cos_wave, 'r');
legend('Sin Wave', 'Cos Wave');
title('Sin and cos wave signal');
xlabel('time');
ylabel('amplitude');
xlim([-2 2]);
ylim([-2 2]);
grid on;

subplot(3, 1, 3);
plot(triangle_wave, 'b');
title('triangle wave signal');
xlabel('time');
ylabel('amplitude');
ylim([0 2]);
grid on;

figure;
hold on;
plot(t1,sin(2*t1),'m');
plot(t1,sin(3*t1),'r');
plot(t1,sin(4*t1),'b');
hold off;
xlabel('Time');
ylabel('Amplitude');
legend('sin1','sin2','sin3');
grid on;

figure;
hold on;
plot(t1,cos(2*t1),'m');
plot(t1,cos(3*t1),'r');
plot(t1,cos(4*t1),'b');
hold off;
xlabel('Time');
ylabel('Amplitude');
legend('cos1','cos2','cos3');
grid on;

figure;
subplot(4,1,1);
plot(t,unit_step);
title('unit step signal');
xlabel('Time');
ylabel('Amplitude');
ylim([0 2]);

subplot(4,1,2);
plot(t,D_unit_step);
title('Delayed unit step signal');
xlabel('Time');
ylabel('Amplitude');
ylim([0 2]);

subplot(4,1,3);
plot(t,A_unit_step);
title('Advance unit step signal');
xlabel('Time');
ylabel('Amplitude');
ylim([0 2]);

subplot(4,1,4);
plot(t,I_unit_step);
title('inverted unit step signal');
xlabel('Time');
ylabel('Amplitude');
ylim([0 2]);

figure;
subplot(3,1,1);
plot(t,impulse);
title('Impulse signal');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,2);
plot(t,D_impulse);
title('Delayed Impulse signal');
xlabel('Time');
ylabel('Amplitude');
subplot(3,1,3);
plot(t,A_impulse);
title('Advance Impulse signal');
xlabel('Time');
ylabel('Amplitude');
