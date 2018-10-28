%pkg load signal

% linear frequency modulation                                            / 

% Plots a sinusoidal function of the type                / 
% s = A(t)(sin(wt+x(t)+phi)), where w = angular  / 
% velocity, x(t) = frequency modulation, phi =      / 
% phase shift, and A(t) = amplitude. Second         / 
% plot for momentary frequency values                / 

clear, clc, clf; 
fs= 8000;                               % sampling frequency
f = 1000;                             % Frequency 
w = 2*pi*f; 
phi = pi/4;                   % Initial phase shift 
f_mom = 3;          % Momentary frequency 

t = 0:1/fs:10; 
%A = 100*exp(-t);
A=1;

s = A.*sin(w*t  + phi); 

subplot(211)

plot(t,s,'r') 

title('SINUSOIDAL PLOT') 
legend('s','f_mom','2')

subplot(212)

specgram(s,256,fs)
filename = 'alone.wav';
audiowrite('alone.wav',s,fs);

shg
