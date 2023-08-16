clc;clear; close all
load('C:\Users\LORSMIP\Desktop\Project_Bearing\Dataset\dataTrainingSet.mat');
colormap=[0 0 0; 0 0 1; 0 1 0; 0 1 1 ; 1 0 0; 1 0 1; 0.2 0.7 0.5;0.9 0.3 0.5];
address='C:\Users\LORSMIP\Desktop\Fig\';
%{
figure
hold on
plot(var(data_1),'Color',colormap(1,:))
plot(var(data_2),'Color',colormap(2,:))
plot(var(data_3),'Color',colormap(3,:))
plot(var(data_4),'Color',colormap(4,:))
plot(var(data_5),'Color',colormap(5,:))
plot(var(data_6),'Color',colormap(6,:))
plot(var(data_7),'Color',colormap(7,:))
plot(var(data_8),'Color',colormap(8,:))
legend('normal','roller','inner','outer','inner+roller','outer+inner','outer+inner+roller','outer+roller')
xlabel('# observations')
ylabel('Variance')
title('Variance of each observations')
savefig('Variance of each observation.fig')
%}
[mean_1,var_1,skew_1,kurts_1,rms_1,pp_1,median_1,energy_1,Entropy_1] = featureExtractTD(data_1);
[mean_2,var_2,skew_2,kurts_2,rms_2,pp_2,median_2,energy_2,Entropy_2] = featureExtractTD(data_2);
[mean_3,var_3,skew_3,kurts_3,rms_3,pp_3,median_3,energy_3,Entropy_3] = featureExtractTD(data_3);
[mean_4,var_4,skew_4,kurts_4,rms_4,pp_4,median_4,energy_4,Entropy_4] = featureExtractTD(data_4);
[mean_5,var_5,skew_5,kurts_5,rms_5,pp_5,median_5,energy_5,Entropy_5] = featureExtractTD(data_5);
[mean_6,var_6,skew_6,kurts_6,rms_6,pp_6,median_6,energy_6,Entropy_6] = featureExtractTD(data_6);
[mean_7,var_7,skew_7,kurts_7,rms_7,pp_7,median_7,energy_7,Entropy_7] = featureExtractTD(data_7);
[mean_8,var_8,skew_8,kurts_8,rms_8,pp_8,median_8,energy_8,Entropy_8] = featureExtractTD(data_8);

figure
hold on
plot(mean_1,'Color',colormap(1,:))
plot(mean_2,'Color',colormap(2,:))
plot(mean_3,'Color',colormap(3,:))
plot(mean_4,'Color',colormap(4,:))
plot(mean_5,'Color',colormap(5,:))
plot(mean_6,'Color',colormap(6,:))
plot(mean_7,'Color',colormap(7,:))
plot(mean_8,'Color',colormap(8,:))
legend('normal','roller','inner','outer','inner+roller','outer+inner','outer+inner+roller','outer+roller')
xlabel('# observations')
ylabel('Mean')
title('Mean of each observations')
saveas(gcf,[address,'Mean.bmp'])
data_mean=[mean_1 mean_2 mean_3 mean_4 mean_5 mean_6 mean_7 mean_8];
n=1;
fisher_mean=fisherScore(n,mean_1,mean_2,mean_3,mean_4,mean_5,mean_6,mean_7,mean_8,data_mean);



figure
hold on
plot(var_1,'Color',colormap(1,:))
plot(var_2,'Color',colormap(2,:))
plot(var_3,'Color',colormap(3,:))
plot(var_4,'Color',colormap(4,:))
plot(var_5,'Color',colormap(5,:))
plot(var_6,'Color',colormap(6,:))
plot(var_7,'Color',colormap(7,:))
plot(var_8,'Color',colormap(8,:))
legend('normal','roller','inner','outer','inner+roller','outer+inner','outer+inner+roller','outer+roller')
xlabel('# observations')
ylabel('Variance')
title('Variance of each observations')
saveas(gcf,[address,'Variance.bmp'])

data_var=[var_1 var_2 var_3 var_4 var_5 var_6 var_7 var_8];
n=1;
fisher_var=fisherScore(n,var_1,var_2,var_3,var_4,var_5,var_6,var_7,var_8,data_var);




figure
hold on
plot(skew_1,'Color',colormap(1,:))
plot(skew_2,'Color',colormap(2,:))
plot(skew_3,'Color',colormap(3,:))
plot(skew_4,'Color',colormap(4,:))
plot(skew_5,'Color',colormap(5,:))
plot(skew_6,'Color',colormap(6,:))
plot(skew_7,'Color',colormap(7,:))
plot(skew_8,'Color',colormap(8,:))
legend('normal','roller','inner','outer','inner+roller','outer+inner','outer+inner+roller','outer+roller')
xlabel('# observations')
ylabel('Skewness')
title('Skewness of each observations')
saveas(gcf,[address,'Skewness.bmp'])

data_skew=[skew_1 skew_2 skew_3 skew_4 skew_5 skew_6 skew_7 skew_8];
n=1;
fisher_skew=fisherScore(n,skew_1,skew_2,skew_3,skew_4,skew_5,skew_6,skew_7,skew_8,data_skew);







figure
hold on
plot(kurts_1,'Color',colormap(1,:))
plot(kurts_2,'Color',colormap(2,:))
plot(kurts_3,'Color',colormap(3,:))
plot(kurts_4,'Color',colormap(4,:))
plot(kurts_5,'Color',colormap(5,:))
plot(kurts_6,'Color',colormap(6,:))
plot(kurts_7,'Color',colormap(7,:))
plot(kurts_8,'Color',colormap(8,:))
legend('normal','roller','inner','outer','inner+roller','outer+inner','outer+inner+roller','outer+roller')
xlabel('# observations')
ylabel('Kurtosis')
title('Kurtosis of each observations')
saveas(gcf,[address,'Kurtosis.bmp'])

data_kurts=[kurts_1 kurts_2 kurts_3 kurts_4 kurts_5 kurts_6 kurts_7 kurts_8];
n=1;
fisher_kurts=fisherScore(n,kurts_1,kurts_2,kurts_3,kurts_4,kurts_5,kurts_6,kurts_7,kurts_8,data_kurts);





figure
hold on
plot(rms_1,'Color',colormap(1,:))
plot(rms_2,'Color',colormap(2,:))
plot(rms_3,'Color',colormap(3,:))
plot(rms_4,'Color',colormap(4,:))
plot(rms_5,'Color',colormap(5,:))
plot(rms_6,'Color',colormap(6,:))
plot(rms_7,'Color',colormap(7,:))
plot(rms_8,'Color',colormap(8,:))
legend('normal','roller','inner','outer','inner+roller','outer+inner','outer+inner+roller','outer+roller')
xlabel('# observations')
ylabel('Root mean square')
title('RMS of each observations')
saveas(gcf,[address,'RMS.bmp'])

data_rms=[rms_1 rms_2 rms_3 rms_4 rms_5 rms_6 rms_7 rms_8];
n=1;
fisher_rms=fisherScore(n,rms_1,rms_2,rms_3,rms_4,rms_5,rms_6,rms_7,rms_8,data_rms);





figure
hold on
plot(pp_1,'Color',colormap(1,:))
plot(pp_2,'Color',colormap(2,:))
plot(pp_3,'Color',colormap(3,:))
plot(pp_4,'Color',colormap(4,:))
plot(pp_5,'Color',colormap(5,:))
plot(pp_6,'Color',colormap(6,:))
plot(pp_7,'Color',colormap(7,:))
plot(pp_8,'Color',colormap(8,:))
legend('normal','roller','inner','outer','inner+roller','outer+inner','outer+inner+roller','outer+roller')
xlabel('# observations')
ylabel('Peak-to-peak')
title('Peak-to-peak of each observations')
saveas(gcf,[address,'PP.bmp'])

data_pp=[pp_1 pp_2 pp_3 pp_4 pp_5 pp_6 pp_7 pp_8];
n=1;
fisher_pp=fisherScore(n,pp_1,pp_2,pp_3,pp_4,pp_5,pp_6,pp_7,pp_8,data_pp);


figure
hold on
plot(median_1,'Color',colormap(1,:))
plot(median_2,'Color',colormap(2,:))
plot(median_3,'Color',colormap(3,:))
plot(median_4,'Color',colormap(4,:))
plot(median_5,'Color',colormap(5,:))
plot(median_6,'Color',colormap(6,:))
plot(median_7,'Color',colormap(7,:))
plot(median_8,'Color',colormap(8,:))
legend('normal','roller','inner','outer','inner+roller','outer+inner','outer+inner+roller','outer+roller')
xlabel('# observations')
ylabel('Median')
title('Median of each observations')
saveas(gcf,[address,'Median.bmp'])

data_median=[median_1 median_2 median_3 median_4 median_5 median_6 median_7 median_8];
n=1;
fisher_median=fisherScore(n,median_1,median_2,median_3,median_4,median_5,median_6,median_7,median_8,data_median);


figure
hold on
plot(energy_1,'Color',colormap(1,:))
plot(energy_2,'Color',colormap(2,:))
plot(energy_3,'Color',colormap(3,:))
plot(energy_4,'Color',colormap(4,:))
plot(energy_5,'Color',colormap(5,:))
plot(energy_6,'Color',colormap(6,:))
plot(energy_7,'Color',colormap(7,:))
plot(energy_8,'Color',colormap(8,:))
legend('normal','roller','inner','outer','inner+roller','outer+inner','outer+inner+roller','outer+roller')
xlabel('# observations')
ylabel('Energy')
title('Energy of each observations')
saveas(gcf,[address,'Energy.bmp'])

data_energy=[energy_1 energy_2 energy_3 energy_4 energy_5 energy_6 energy_7 energy_8];
n=1;
fisher_energy=fisherScore(n,energy_1,energy_2,energy_3,energy_4,energy_5,energy_6,energy_7,energy_8,data_energy);



figure
hold on
plot(Entropy_1,'Color',colormap(1,:))
plot(Entropy_2,'Color',colormap(2,:))
plot(Entropy_3,'Color',colormap(3,:))
plot(Entropy_4,'Color',colormap(4,:))
plot(Entropy_5,'Color',colormap(5,:))
plot(Entropy_6,'Color',colormap(6,:))
plot(Entropy_7,'Color',colormap(7,:))
plot(Entropy_8,'Color',colormap(8,:))
legend('normal','roller','inner','outer','inner+roller','outer+inner','outer+inner+roller','outer+roller')
xlabel('# observations')
ylabel('Entropy')
title('Entropy of each observations')
saveas(gcf,[address,'Entropy.bmp'])

data_Entropy=[Entropy_1 Entropy_2 Entropy_3 Entropy_4 Entropy_5 Entropy_6 Entropy_7 Entropy_8];
n=1;
fisher_Entropy=fisherScore(n,Entropy_1,Entropy_2,Entropy_3,Entropy_4,Entropy_5,Entropy_6,Entropy_7,Entropy_8,data_Entropy);


%% Frequency domain
Fs = 50000;
T = 1/Fs;
L = 8192;             % Length of signal
t = (0:L-1)*T; 

f = Fs*(0:(L/2))/L;

fft_1=featureExtractFD(data_1);
fft_2=featureExtractFD(data_2);
fft_3=featureExtractFD(data_3);
fft_4=featureExtractFD(data_4);
fft_5=featureExtractFD(data_5);
fft_6=featureExtractFD(data_6);
fft_7=featureExtractFD(data_7);
fft_8=featureExtractFD(data_8);

[~,loc_fft2]=max(fft_2(:,1));
[~,loc_fft3]=max(fft_3(:,1));
[~,loc_fft4]=max(fft_4(:,1));

data_fft=[fft_1 fft_2 fft_3 fft_4 fft_5 fft_6 fft_7 fft_8];
n=4097;
fisherS=fisherScore(n,fft_1,fft_2,fft_3,fft_4,fft_5,fft_6,fft_7,fft_8,data_fft);

[fisherVal, loc]=sort(fisherS,'descend');

%data_fft=data_fft.';
%dataTrainingF=[data_fft(:,loc_fft2) data_fft(:,loc_fft3) data_fft(:,loc_fft4) data_fft(:,loc(1))];

n=1;
fisher_loc_fft2=fisherScore(n,fft_1(loc_fft2(1),:),fft_2(loc_fft2(1),:),fft_3(loc_fft2(1),:),fft_4(loc_fft2(1),:),fft_5(loc_fft2(1),:),fft_6(loc_fft2(1),:),fft_7(loc_fft2(1),:),fft_8(loc_fft2(1),:),data_fft(loc_fft2(1),:));
fisher_loc_fft3=fisherScore(n,fft_1(loc_fft3(1),:),fft_2(loc_fft3(1),:),fft_3(loc_fft3(1),:),fft_4(loc_fft3(1),:),fft_5(loc_fft3(1),:),fft_6(loc_fft3(1),:),fft_7(loc_fft3(1),:),fft_8(loc_fft3(1),:),data_fft(loc_fft3(1),:));
fisher_loc_fft4=fisherScore(n,fft_1(loc_fft4(1),:),fft_2(loc_fft4(1),:),fft_3(loc_fft4(1),:),fft_4(loc_fft4(1),:),fft_5(loc_fft4(1),:),fft_6(loc_fft4(1),:),fft_7(loc_fft4(1),:),fft_8(loc_fft4(1),:),data_fft(loc_fft4(1),:));


c = categorical({'Mean','Variance','Skewness','Kurtosis','RMS','PP','Median','Energy','Entropy','BSF','BPFI','BPFO','23 Hz'});
fisherSet = [fisher_mean fisher_var fisher_skew fisher_kurts fisher_rms fisher_pp fisher_median fisher_energy fisher_Entropy,fisher_loc_fft2,fisher_loc_fft3,fisher_loc_fft4,fisherVal(1)];
figure
bar(c,fisherSet)

ylabel('Score')
title('Fisher score of each feature');
saveas(gcf,[address,'FisherScore.bmp'])

data_Training=[data_Entropy.' data_var.' data_rms.' data_pp.' data_energy.' data_fft(loc_fft2(1),:).' data_fft(loc_fft3(1),:).' data_fft(loc_fft4(1),:).' data_fft(loc(1),:).'];
csvwrite('TrainingSet.csv',data_Training);



