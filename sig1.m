N = 64;	%define number of samples
n = 0:N-1;	%define vector 0,1,2,3,4,5,6
f = 1000;	%operating frequency
fs = 8000;	%sampling frequency

x = sin(2*pi*(f/fs)*n);	%generate signal

plot(n,x),grid;

title('sine wave [f=1khz fs=8khz]');
xlabel('Number of samples');
ylabel('Amplitude');
