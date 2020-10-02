x = audioread('1A.wav');
y = audioread('1C.wav');
Fs = 44671.7143;
t = 0:1/Fs:1-1/Fs;
N = length(x);
xdft = abs(fft(x));
figure(1);
plot (xdft);
xdft = xdft(1:N/2+1);
figure(2);
plot (xdft);
psdx = (1/(Fs*N)) * abs(xdft).^2;
psdx(2:end-1) = 2*psdx(2:end-1);
freq = 0:Fs/length(x):Fs/2;
plot(freq,10*log10(psdx))
grid on
title('Periodogram Using FFT')
xlabel('Frequency (Hz)')
ylabel('Power/Frequency (dB/Hz)')
