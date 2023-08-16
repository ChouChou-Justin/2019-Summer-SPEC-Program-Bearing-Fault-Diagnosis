function [mean_,var_,skew_,kurts_,rms_,pp_,median_,energy_,Entropy] = featureExtractTD(data)
[row,col]=size(data);
mean_=mean(data);
var_=var(data);
skew_=skewness(data);
kurts_=kurtosis(data);
median_=median(data);
rms_=rms(data);
pp_=max(data)-min(data);
Entropy=zeros(1,col);
binwidth=1;
for i=1:col
    cubeHist=histogram(data(:,i),'BinWidth',binwidth);
    cubeHist=cubeHist.Values;
    %cubeHist(1)=cubeHist(1)-(numel(mask)-sum(sum(mask)));
    %cubeHist(cubeHist==0)=[];
    p=cubeHist./sum(cubeHist);
    E=-sum(nonzeros(p).*log2(nonzeros(p)));
    Entropy(i)=E;
end
energy_=[];
for i=1:col
    F = fft(data(:,i)); 
    energy_ =[energy_ sum(F.*conj(F))];
end
end

