%example 3.3
w = [0:1:500]*pi/500; %0:pi equaly spaced axis are divided into 501 points
x = exp(j*w)./(exp(j*w)-0.5*ones(1,501));
magx = abs(x);
xang = angle(x);
xreal = real(x);
ximg = imag(x);

subplot(221),plot(w/pi,ximg),title('imaginery part');grid;
subplot(222),plot(w/pi,magx),title('magnitude of x');grid;
subplot(223),plot(w/pi,xang),title('angle');grid;
subplot(224),plot(w/pi,xreal),title('real signal');grid;
%conclusion img and angle have similar curve
%and real and magnitude have similar curve
%%
n = -1:3;
x = 1:5;
k = 0:500;
w = (pi/500)*k;
% to draw magnitude ,real and imaginary axis of a signal
y = x *(exp(-j*pi/500).^(n'*k));
xmag = abs(y);
subplot(221),plot(k/500,xmag),title('magnitude');grid;
xang = angle(y);
subplot(222),plot(k/500,xang),title('angle');grid;
xreal = real(y);
subplot(223),plot(k/500,xreal),title('real');grid;
ximg = imag(y);
subplot(224),plot(k/500,ximg),title('imag');grid;

%%
