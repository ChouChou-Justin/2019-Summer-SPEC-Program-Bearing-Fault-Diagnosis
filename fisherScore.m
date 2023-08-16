function fisherS =fisherScore(n,fft_1,fft_2,fft_3,fft_4,fft_5,fft_6,fft_7,fft_8,data_fft)
numerator=zeros(1,n);
denominator=zeros(1,n);
for k=1:n
    numerator(k)=numerator(k)+n*((mean(fft_1(k,:))-mean(data_fft(k,:)))^2);
    numerator(k)=numerator(k)+n*((mean(fft_2(k,:))-mean(data_fft(k,:)))^2);
    numerator(k)=numerator(k)+n*((mean(fft_3(k,:))-mean(data_fft(k,:)))^2);
    numerator(k)=numerator(k)+n*((mean(fft_4(k,:))-mean(data_fft(k,:)))^2);
    numerator(k)=numerator(k)+n*((mean(fft_5(k,:))-mean(data_fft(k,:)))^2);
    numerator(k)=numerator(k)+n*((mean(fft_6(k,:))-mean(data_fft(k,:)))^2);
    numerator(k)=numerator(k)+n*((mean(fft_7(k,:))-mean(data_fft(k,:)))^2);
    numerator(k)=numerator(k)+n*((mean(fft_8(k,:))-mean(data_fft(k,:)))^2);
    
    denominator(k)=denominator(k)+n*(var(fft_1(k,:)));
    denominator(k)=denominator(k)+n*(var(fft_2(k,:)));
    denominator(k)=denominator(k)+n*(var(fft_3(k,:)));
    denominator(k)=denominator(k)+n*(var(fft_4(k,:)));
    denominator(k)=denominator(k)+n*(var(fft_5(k,:)));
    denominator(k)=denominator(k)+n*(var(fft_6(k,:)));
    denominator(k)=denominator(k)+n*(var(fft_7(k,:)));
    denominator(k)=denominator(k)+n*(var(fft_8(k,:)));    
end
fisherS=numerator./denominator;
end

