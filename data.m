% 各组位姿偏差对补偿策略的对应液压回路的调整量
inputs = readtable('E:\GraduationDesign\inputs.xls');
% 各个位姿偏差经过PCA降维后的主要偏差的代号
postures = importdata('E:\\GraduationDesign\\data\\PriData\\priPostures.txt');
% 各组位姿偏差数据经过补偿后，最终评价指标之和
evaluating_indicators = importdata('E:\GraduationDesign\evaluating_indicator.txt');

