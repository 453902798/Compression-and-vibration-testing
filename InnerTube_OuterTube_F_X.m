clc
clear

%% 绘制12个条曲线(平滑)
load('Compression_F_X_smooth.mat')

%% Energy absorption
data11 = data11 / 3 * 4;
data12 = data12 / 5 * 4;

A = [diff(x0),diff(x1),diff(x2),diff(x3),diff(x4),diff(x5),diff(x6),diff(x7),diff(x8),diff(x9),diff(x10),diff(x11)];
A12 = diff(x12);
B = [data0,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11];
B(1,:) = [];
B12 = data12;
B12(1,:) = [];
Energy_absorption = sum(A .* B);
Energy_absorption12 = sum(A12 .* B12);
Energy_absorption = [Energy_absorption,Energy_absorption12];
Energy_absorption = Energy_absorption ./ Energy_absorption(1);
Energy_absorption(1) = [];
Energy_absorption(11) = Energy_absorption(11) / 3 * 4;
Energy_absorption(12) = Energy_absorption(12) / 5 * 4;
Energy_absorption = Energy_absorption';


figure;
plot(x1,data1,x2,data2,x3,data3,x4,data4,x5,data5,x6,data6,x7,data7,x8,data8,x9,data9,x10,data10,x11,data11,x12,data12);
xlabel('Displacement(mm)');
ylabel('Force(N)');
legend('G1','G2','G3','G4','G5','G6','G7','G8','G9','G10','G11','G12');
xlim([0 10]); % 设置X轴的范围


%% Width of QZS interval
a0 = diff(data0);
a1 = diff(data1);
a2 = diff(data2);
a3 = diff(data3);
a4 = diff(data4);
a5 = diff(data5);
a6 = diff(data6);
a7 = diff(data7);
a8 = diff(data8);
a9 = diff(data9);
a10 = diff(data10);
a11 = diff(data11);
a12 = diff(data12);
[mina0, indexa0] = min(abs(a0));
[mina1, indexa1] = min(abs(a1));
[mina2, indexa2] = min(abs(a2));
[mina3, indexa3] = min(abs(a3));
[mina4, indexa4] = min(abs(a4));
[mina5, indexa5] = min(abs(a5));
[mina6, indexa6] = min(abs(a6));
[mina7, indexa7] = min(abs(a7));
[mina8, indexa8] = min(abs(a8));
[mina9, indexa9] = min(abs(a9));
[mina10, indexa10] = min(abs(a10));
[mina11, indexa11] = min(abs(a11));
[mina12, indexa12] = min(abs(a12));

% 绘制12个条曲线(原图)
clc 
clear
load('Compression_F_X_Smooth.mat')

data11(:,2) = data11(:,2) / 3 * 4;
data12(:,2) = data12(:,2) / 5 * 4;

figure;
plot(data0(:,1),data0(:,2));
hold on
plot(data1(:,1),data1(:,2));
hold on
plot(data2(:,1),data2(:,2));
hold on
plot(data3(:,1),data3(:,2));
hold on
plot(data4(:,1),data4(:,2));
hold on
plot(data5(:,1),data5(:,2));
hold on
plot(data6(:,1),data6(:,2));
hold on
plot(data7(:,1),data7(:,2));
hold on
plot(data8(:,1),data8(:,2));
hold on
plot(data9(:,1),data9(:,2));
hold on
plot(data10(:,1),data10(:,2));
hold on
plot(data11(:,1),data11(:,2));
hold on
plot(data12(:,1),data12(:,2));
xlabel('Displacement / mm');
ylabel('Force / N');
legend('G0','G1','G2','G3','G4','G5','G6','G7','G8','G9','G10','G11','G12');
box off     % 取消边框
ax1 = axes('Position',get(gca,'Position'),'XAxisLocation','top',...
    'YAxisLocation','right','Color','none','XColor','k','YColor','k');  % 设置坐标区
set(ax1,'XTick', [],'YTick', []);   % 去掉xy轴刻度
hold off %这一行代码可以要也可以不要

