% 位姿偏差
errors = importdata('E:\GraduationDesign\data\PriData\priDeviations.txt');
% 各组位姿偏差对补偿策略的对应液压回路的调整量
inputs = readtable('E:\GraduationDesign\inputs.xls');
% 各个位姿偏差经过PCA降维后的主要偏差的代号
postures = importdata('E:\\GraduationDesign\\data\\PriData\\priPostures.txt');
% 各组位姿偏差数据经过补偿后，最终评价指标之和
evaluating_indicators = importdata('E:\GraduationDesign\evaluating_indicator.txt');
% 在simulink中创建双反馈
pricompen1 = []; % 主反馈1
pricompen2 = []; % 主反馈2
auxcompen = []; % 辅助反馈
x = 1:25;
y = 1:25;
tmp = [0,0];
z = zeros(100,2);
for i = 1:25
    z(i,1) = i+evaluating_indicators(i);
    z(i,2) = 0+evaluating_indicators(i);
end
for i = 26:50
    z(i,1) = 25+evaluating_indicators(i);
    z(i,2) = i-25+evaluating_indicators(i);
end
for i = 51:75
    z(i,1) = 75-i+evaluating_indicators(i);
    z(i,2) = 25+evaluating_indicators(i);
end
for i = 76:100
    z(i,1) = 1+evaluating_indicators(i);
    z(i,2) = 100-i+evaluating_indicators(i);
end
plot(z(:,1), z(:,2)); 

