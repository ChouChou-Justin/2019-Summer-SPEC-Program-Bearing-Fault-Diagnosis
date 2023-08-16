function [fft_H] = featureExtractFD(data_1)
Fs = 50000;
T = 1/Fs;
L = 8192;             % Length of signal
t = (0:L-1)*T; 

f = Fs*(0:(L/2))/L;

fft_H=[];
for i=1:256
    [up,lo] = envelope(data_1(:,i));
    Y_H=normalize(up);
    Y_H=fft(Y_H);
    P2=abs(Y_H/L);
    P1=P2(1:L/2+1);
    P1(2:end-1)=2*P1(2:end-1);
    fft_H=[fft_H P1];
end

end

