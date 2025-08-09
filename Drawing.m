load('Compression_Abaqus_F.mat')
load('Compression_Abaqus_X.mat')

%% 移动平均滤波
% 示例数据
X = Compression_Abaqus_X;
Y = Compression_Abaqus_F;

% 移动平均滤波
windowSize = 5; % 滤波窗口大小
Y_filtered = movmean(Y, windowSize); % 滤波后的数据

% 绘图
figure;
plot(X, Y, 'r-', 'DisplayName', 'Original Data');
hold on;
plot(X, Y_filtered, 'b-', 'LineWidth', 1.5, 'DisplayName', 'Filtered Data');
legend;
xlabel('X');
ylabel('Y');
title('Moving Average Filter');
grid on;


%% 高斯平滑滤波
% 示例数据
X = Compression_Abaqus_X;
Y = Compression_Abaqus_F;

% 高斯滤波
sigma = 2; % 高斯滤波器的标准差
windowSize = 9; % 窗口大小
gaussianKernel = fspecial('gaussian', [1, windowSize], sigma);
Y_filtered = conv(Y, gaussianKernel, 'same'); % 滤波后的数据

% 绘图
figure;
plot(X, Y, 'r-', 'DisplayName', 'Original Data');
hold on;
plot(X, Y_filtered, 'b-', 'LineWidth', 1.5, 'DisplayName', 'Filtered Data');
legend;
xlabel('X');
ylabel('Y');
title('Gaussian Filter');
grid on;


%% Savitzky-Golay 滤波
% 示例数据
X = Compression_Abaqus_X;
Y = Compression_Abaqus_F;

% Savitzky-Golay 滤波
polyOrder = 3; % 多项式阶数
windowSize = 11; % 滑动窗口大小（必须是奇数）
Y_filtered = sgolayfilt(Y, polyOrder, windowSize);

% 绘图
figure;
plot(X, Y, 'r-', 'DisplayName', 'Original Data');
hold on;
plot(X, Y_filtered, 'b-', 'LineWidth', 1.5, 'DisplayName', 'Filtered Data');
legend;
xlabel('X');
ylabel('Y');
title('Savitzky-Golay Filter');
grid on;

%% 频域滤波
% 示例数据
X = Compression_Abaqus_X;
Y = Compression_Abaqus_F;

% 快速傅里叶变换
Y_fft = fft(Y);
N = length(Y);
frequencies = (0:N-1) * (1 / (X(end) - X(1))); % 频率轴

% 创建低通滤波器
cutoff = 5; % 截止频率
lowPassFilter = frequencies <= cutoff;
Y_fft_filtered = Y_fft .* lowPassFilter;

% 逆傅里叶变换
Y_filtered = ifft(Y_fft_filtered, 'symmetric');

% 绘图
figure;
subplot(2, 1, 1);
plot(X, Y, 'r-', 'DisplayName', 'Original Data');
hold on;
plot(X, Y_filtered, 'b-', 'LineWidth', 1.5, 'DisplayName', 'Filtered Data');
legend;
xlabel('X');
ylabel('Y');
title('Frequency Domain Filter');
grid on;

subplot(2, 1, 2);
plot(frequencies, abs(Y_fft), 'r-', 'DisplayName', 'Original Spectrum');
hold on;
plot(frequencies, abs(Y_fft_filtered), 'b-', 'DisplayName', 'Filtered Spectrum');
legend;
xlabel('Frequency (Hz)');
ylabel('Amplitude');
title('Spectrum Analysis');
grid on;
