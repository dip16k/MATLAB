n=1:10;
x1 = exp(-j*2*pi*n);
x1
x = (0.5).*x1;
plot(n,x);
%%
z = 0:pi:500;
w = [0:1:500]*pi/500;

x1 = exp(i*w);
x2 = x1 - (0.5);
x = x1./x2;
plot(w,x)
%%
%according to pdf
N = 128; %number of samples we want to display
fs = 8000; %sampling frequency
f1 = 1000;
f2 = 400;
t = 1:N;
x1 = cos(2*pi*(f1/fs)*t);
x2 = cos(2*pi*(f2/fs)*t);
x = x1 + x2;
plot(t,x)
grid;
%%
x = randn(1,50);
n = 1:50;
f = fft(x);
subplot(211),plot(n,f)
subplot(212),plot(n,x);
%%
fs = 1000;  % sampling frequency
T = 1/fs;   % sampling period
L = 1500;   % length of signal
t = (0: L-1)*T; %time vector
f1 = 50;    %hz
f2 = 120;   %hz
S = 0.7 * sin(2*pi*f1*t) +  sin(2*pi*f2*t);
%compute a signal with zero mean ,variance 4
x = S + 2*randn(size(t));
%title('signal with zero mean and random noise');
%subplot(211),plot(t(1:50),x(1:50)),grid;
%subplot(212),plot(1000*t(1:50),x(1:50))%it is multiplyed with 1000 to adjust time scale
%grid;
%compute foriour transform of the signal
y = fft(x);
p2 = abs(y/L);  %compute 2sided spectrum p2
p1 = p2(1:L/2+1);
p1(2:end-1) = 2*p1(2:end-1);
%single sided spectrum
f = fs*(0:(L/2))/L;
plot(f,p1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')