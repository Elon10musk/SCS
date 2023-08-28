% Case1: Single real pole case
% i) s=4
clc; close all;
syms s;
c_t=1/(s-4);
ilaplace(c_t)
clc; close all;
t=(0:0.01:50);
c=exp(4*t);plot(t,c);xlabel('time');ylabel('c(t)');
title('Timedomain responseofsingle polesystem(s=4)');

% ii) s=-5
clc; close all;
syms s;
c_t=1/(s+5);
ilaplace(c_t)
clc;close all;
t=(0:0.01:50);
c=exp(-5*t);
plot(t,c)
plot(t,c);
xlabel('time');
ylabel('c(t)');
title('Time domain response of single pole system (s=-5)');



% 1)s=-2, and-4
clc; close all;
syms s;
c_t=1/((s+1)*(s+4));
ilaplace(c_t)
clc; close all;
t=(0:0.01:50);
c=exp(-t)/3 - exp(-4*t)/3;
plot(t,c)
title('Time domain response of double pole system (s=-2,-4)');
xlabel('time');ylabel('c_t');


% 2) s=0,and -2
clc; close all;
syms s;c_t=1/((s)*(s+2));
ilaplace(c_t)
clc; close all;
t=(0:0.01:50);
c= 1/2 - exp(-2*t)/2;
plot(t,c);
title('Time domain response of double pole system (s=0,-2)');
xlabel('time');
ylabel('c_t');

% 3)s=-5, and-5
clc; close all;
syms s;
c_t=1/((s+5)*(s+5));
ilaplace(c_t)
t=(0:0.01:50);
c=t.*exp(-5*t);
plot(t,c);
title('Time domain response of double pole system (s=-5,-5)');
xlabel('time');
ylabel('c_t');


% 4)s=-2, and 3
clc; close all;
syms s;
c_t=1/((s+2)*(s-3));
ilaplace(c_t);
t=(0:0.01:50);
c=exp(3*t)/5 -exp(-2*t)/5;
plot(t,c);
title('Time domain response of double pole system (s=-2,3)');
xlabel('time');
ylabel('c_t');


% 1) s=-2,-4 ,-6
clc;close all;
syms s;
c_t=1/((s+2)*(s+4)*(s+6));
ilaplace(c_t);
t=(0:0.01:50);
c=exp(-2*t)/8 - exp(-4*t)/4 + exp(-6*t)/8;
plot(t,c);
title('Time domain response of triple pole system (s=-2,-4,-6)');
xlabel('time');
ylabel('c_t');

% 2)s=-2,-6, 0
clc;close all;
syms s;
c_t=1/((s+2)*(s+6)*(s));
ilaplace(c_t);
t=(0:0.01:50);
c=exp(-6*t)/24 - exp(-2*t)/8 + 1/12;plot(t,c);
title('Time domain response of triple pole system (s=-2,-6,0)');
xlabel('time');ylabel('c_t');

% 3)s =-4,-2 , 3
clc;close all;
syms s;c_t=1/((s+4)*(s+2)*(s-3));
ilaplace(c_t);
t=(0:0.01:50);
c=exp(3*t)/35 - exp(-2*t)/10 + exp(-4*t)/14;
plot(t,c);
title('Time domain response of triple pole system (s=-4,-2,3)');
xlabel('time');ylabel('c_t');


% Case4:s1 =+j3,s2=-j3
clc; close all;
t=(0:0.01:50);
symss;
c_t=1/(s^2+9);
ilaplace(c_t);
c=sin(3*t)/3;
plot(t,c)
title('Time domain response of double pole system (s=3i,-3i)');
xlabel('time');
ylabel('c_t');


% Case5: s1 =-2+j4, s2 =-2 – j4
clc;closeall;
t=(0:0.01:50);
symss;
c_t=1/(s^2+(4*s)+20);
ilaplace(c_t)
c=(sin(4*t).*exp(-2*t))/4;
plot(t,c)
title('Time domain response of double pole system (s=-2+4i,-2-4i)');
xlabel('time');ylabel('c_t');

% Case 6: s1 = 3 + j5, s2 = 3 - j5
clc; close all;
t=(0:0.01:50);
syms s;
c_t=1/(s^2-(6*s)+34);
ilaplace(c_t);
c=(sin(5*t).*exp(3*t))/5;plot(t,c);
title('Time domain response of double pole system (s=3+5i,3-5i)');
xlabel('time');
ylabel('c_t');

