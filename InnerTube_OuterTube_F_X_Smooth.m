clc
clear
%载入数据
load('Compression_F_X_original.mat')

%% 去噪
for i = 7
    data = eval(['data' num2str(i)]); 
    % 1. 加载数据
    X = data(:,1); % X 轴数据

    Y = data(:,2); % Y 带噪信号

    % 2. LMS 参数调整（更平滑）
    M = 64;  % 增加滤波器阶数
    mu = 0.001;  % 降低步长因子
    w = zeros(M,1);  % 滤波器权重
    N = length(Y);  
    Y_filtered = zeros(N,1); 
    error_signal = zeros(N,1); 

    % 3. LMS 滤波
    for n = M:N
        x_n = Y(n:-1:n-M+1);
        Y_filtered(n) = w' * x_n;
        error_signal(n) = Y(n) - Y_filtered(n);
        w = w + 2 * mu * error_signal(n) * x_n;
    end                                                                                                                                                                                                                   

    % 4. 额外平滑处理
    Y_smoothed = movmean(Y_filtered, 5); % 窗口大小5，增加平滑度
    
   %% 多项式拟合
    % 1. 生成数据 X 和 Y
    % 2. 选择多项式的阶数（n）
    n = 8;

    % 3. 构造不含常数项的多项式矩阵
    X_matrix = X .^ (n:-1:1);  % 仅保留 X^n 到 X^1 的项

    % 4. 计算最小二乘解
    p = X_matrix \ Y;  % 求解线性方程 X_matrix * p = Y

    % 5. 计算拟合曲线
    Y_fit = X_matrix * p;

    % 5. 绘图可视化
    figure;
    scatter(X, Y, 'r', 'filled'); hold on; % 画出原始散点
    plot(X, Y_fit, 'b', 'LineWidth', 2); % 画出拟合曲线
    title(sprintf('多项式拟合（阶数 = %d）', n));
    xlabel('X');
    ylabel('Y');
    legend('原始数据', '拟合曲线');
    grid on;
    
    eval(sprintf('data%d(:,2) = Y_fit;', i));
    
%     % 清理数组
%     X = [];
%     Y = [];
%     Y_filtered = [];
%     Y_fit = [];
%     Y_smoothed = [];
    
end

