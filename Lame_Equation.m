% 参数设置
a = 1;  % x轴半轴
b = 1;  % y轴半轴

% 设置不同的 n 值
n_values = [0.1, 0.5 ,1, 2, 2.5, 4, 8]; 

% 创建图形
figure;
hold on;
axis equal;  % 保持 x 和 y 轴的比例一致

% 循环绘制不同 n 值的超级椭圆
for n = n_values
    % 设置 t 的范围
    t = linspace(0, 2*pi, 1000);
    
    % 参数化公式
    x = a * sign(cos(t)) .* abs(cos(t)).^(2/n);
    y = b * sign(sin(t)) .* abs(sin(t)).^(2/n);
    
    % 绘制曲线
    plot(x, y, 'LineWidth', 2, 'DisplayName', ['n = ' num2str(n)]);
end

% 添加图例
legend show;
title('Superellipse for different n values');
xlabel('x');
ylabel('y');
grid on;
hold off;
