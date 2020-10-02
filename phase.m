x = audioread('10A.wav');
fs = 44671.7143; 
y = fft(x);
ys = fftshift(y);
L = length(y);
f = (-L/2:L/2-1)/L*fs;
figure(1)
stem(f,abs(ys))
xlabel 'Frequency (Hz)'
ylabel '|y|'
grid
th = 1e-6;
phs = angle(ys);
figure (2)
stem(f,phs)
xlabel 'Frequency (Hz)'
ylabel 'Phase / \pi'
grid
