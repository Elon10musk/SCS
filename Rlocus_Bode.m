%root locus plot
clc;
close all;
num=[2 5 1];
den=[1 2 3];
%g=1/((s^2+8))
tf1=tf(num,den);
%g=(s+1)/s*(s+2)*(s+5)
%g= 1 /(s*(s+1))
rlocus(tf1);

s=tf('s');
clc;close all;
g=(s+1)/s*(s+2)*(s+5);
rlocus(g);

% CASE 2:
clc; close all;
s=tf('s');
g=(s^2+8*s+17)/(s^2+4*s+13);
%g=1/((s+1)*(s+2)*(s+6)*(s-6));
rlocus(g);
%g=1/(s*(s+4)*(s^2+4*s+20))
% g is the G(s)H(s) for finding the root locus
rlocus(g);

%bode plot
clc;
close all;
num1= [ 10 2 ];
den1 = [ 1 30 5 ];
disp ('Transfer function :- ');
TF1= tf(num1 , den1);
bode (TF1);
