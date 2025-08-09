clc
clear
load('InnerTube_OuterTube_X_X.mat')
%% 13张图
% figure;
% x = 1:201;
% subplot(4,5,3);
% plot(x,data0(:,1),x,data0(:,2));
% xlim([0 200]); % 设置X轴的范围
% subplot(4,5,6);
% plot(x,data1(:,1),x,data1(:,2));
% xlim([0 200]); % 设置X轴的范围
% subplot(4,5,7);
% plot(x,data2(:,1),x,data2(:,2));
% xlim([0 200]); % 设置X轴的范围
% subplot(4,5,9);
% plot(x,data3(:,1),x,data3(:,2));
% xlim([0 200]); % 设置X轴的范围
% subplot(4,5,10);
% plot(x,data4(:,1),x,data4(:,2));
% xlim([0 200]); % 设置X轴的范围
% subplot(4,5,11);
% plot(x,data5(:,1),x,data5(:,2));
% xlim([0 200]); % 设置X轴的范围
% subplot(4,5,12);
% plot(x,data6(:,1),x,data6(:,2));
% xlim([0 200]); % 设置X轴的范围
% subplot(4,5,14);
% plot(x,data7(:,1),x,data7(:,2));
% xlim([0 200]); % 设置X轴的范围
% subplot(4,5,15);
% plot(x,data8(:,1),x,data8(:,2));
% xlim([0 200]); % 设置X轴的范围
% subplot(4,5,16);
% plot(x,data9(:,1),x,data9(:,2));
% xlim([0 200]); % 设置X轴的范围
% subplot(4,5,17);
% plot(x,data10(:,1),x,data10(:,2));
% xlim([0 200]); % 设置X轴的范围
% subplot(4,5,19);
% plot(x,data11(:,1),x,data11(:,2));
% xlim([0 200]); % 设置X轴的范围
% subplot(4,5,20);
% plot(x,data12(:,1),x,data12(:,2));
% xlim([0 200]); % 设置X轴的范围

figure;
x = 1:201;
subplot(4,3,1);
plot(x,data0(:,1),x,data0(:,2));
xlim([0 200]); % 设置X轴的范围
% xlabel('Time / s');
% ylabel('Displacement / mm');
figure;
subplot(4,3,1);
plot(x,data1(:,1),x,data1(:,2));
xlim([0 200]); % 设置X轴的范围
% xlabel('Time / s');
% ylabel('Displacement / mm');
subplot(4,3,2);
plot(x,data2(:,1),x,data2(:,2));
xlim([0 200]); % 设置X轴的范围
% xlabel('Time / s');
% ylabel('Displacement / mm');
subplot(4,3,3);
plot(x,data3(:,1),x,data3(:,2));
xlim([0 200]); % 设置X轴的范围
% xlabel('Time / s');
% ylabel('Displacement / mm');
subplot(4,3,4);
plot(x,data4(:,1),x,data4(:,2));
xlim([0 200]); % 设置X轴的范围
% xlabel('Time / s');
% ylabel('Displacement / mm');
subplot(4,3,5);
plot(x,data5(:,1),x,data5(:,2));
xlim([0 200]); % 设置X轴的范围
% xlabel('Time / s');
% ylabel('Displacement / mm');
subplot(4,3,6);
plot(x,data6(:,1),x,data6(:,2));
xlim([0 200]); % 设置X轴的范围
% xlabel('Time / s');
% ylabel('Displacement / mm');
subplot(4,3,7);
plot(x,data7(:,1),x,data7(:,2));
xlim([0 200]); % 设置X轴的范围
% xlabel('Time / s');
% ylabel('Displacement / mm');
subplot(4,3,8);
plot(x,data8(:,1),x,data8(:,2));
xlim([0 200]); % 设置X轴的范围
% xlabel('Time / s');
% ylabel('Displacement / mm');
subplot(4,3,9);
plot(x,data9(:,1),x,data9(:,2));
xlim([0 200]); % 设置X轴的范围
% xlabel('Time / s');
% ylabel('Displacement / mm');
subplot(4,3,10);
plot(x,data10(:,1),x,data10(:,2));
xlim([0 200]); % 设置X轴的范围
% xlabel('Time / s');
% ylabel('Displacement / mm');
subplot(4,3,11);
plot(x,data11(:,1),x,data11(:,2));
xlim([0 200]); % 设置X轴的范围
% xlabel('Time / s');
% ylabel('Displacement / mm');
subplot(4,3,12);
plot(x,data12(:,1),x,data12(:,2));
xlim([0 200]); % 设置X轴的范围
% xlabel('Time / s');
% ylabel('Displacement / mm');

%% 13条内管的振动曲线
figure;
plot(x,data0(:,1));
hold on
plot(x,data1(:,1));
hold on
plot(x,data2(:,1));
hold on
plot(x,data3(:,1));
hold on
plot(x,data4(:,1));
hold on
plot(x,data5(:,1));
hold on
plot(x,data6(:,1));
hold on
plot(x,data7(:,1));
hold on
plot(x,data8(:,1));
hold on
plot(x,data9(:,1));
hold on
plot(x,data10(:,1));
hold on
plot(x,data11(:,1));
hold on
plot(x,data12(:,1));
xlim([0 200]); % 设置X轴的范围
legend('G1','G2','G3','G4','G5','G6','G7','G8','G9','G10','G11','G12');


%% 13条外管的振动曲线
figure;
plot(x,data0(:,2));
hold on
plot(x,data1(:,2));
hold on
plot(x,data2(:,2));
hold on
plot(x,data3(:,2));
hold on
plot(x,data4(:,2));
hold on
plot(x,data5(:,2));
hold on
plot(x,data6(:,2));
hold on
plot(x,data7(:,2));
hold on
plot(x,data8(:,2));
hold on
plot(x,data9(:,2));
hold on
plot(x,data10(:,2));
hold on
plot(x,data11(:,2));
hold on
plot(x,data12(:,2));
xlim([0 200]); % 设置X轴的范围

%% 12个内管振动幅值变化率/相位变化率/频率变化
data = [data0(:,1),data1(:,1),data2(:,1),data3(:,1),data4(:,1),data5(:,1),data6(:,1),data7(:,1),data8(:,1),data9(:,1),data10(:,1),data11(:,1),data12(:,1)];
[maxValues,p1] = max(data);
rate_amplitude = maxValues ./ maxValues(1);
rate_amplitude(1) = [];
rate_amplitude = rate_amplitude'; %幅值变化率

rate_phase = p1 ./ p1(1);
rate_phase(1) = [];
rate_phase = rate_phase'; %相位变化率

[minValues,p2] = min(data);
frequency = p1 - p2;
rate_frequency = frequency ./ frequency(1);
rate_frequency(1) = []; 
rate_frequency = rate_frequency';%频率变化率

T1=[data0(:,1),data1(:,1),data2(:,1),data3(:,1),data4(:,1),data5(:,1),data6(:,1),data7(:,1),data8(:,1),data9(:,1),data10(:,1),data11(:,1),data12(:,1)];
T2=[data0(:,2),data1(:,2),data2(:,2),data3(:,2),data4(:,2),data5(:,2),data6(:,2),data7(:,2),data8(:,2),data9(:,2),data10(:,2),data11(:,2),data12(:,2)];