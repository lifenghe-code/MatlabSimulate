### Part 2电液伺服系统的控制

基于simulink建立了电液伺服系统的模，利用Bode图分析了其特性；

首先利用PID对其进行控制；

之后在MATLAB 中建立模糊控制模型，选择合适的隶属度函数、模糊论域等，再将其导入到simulink中

应用模糊PID对电液伺服系统进行控制，然后分别分析这两种控制方式的动态特性，并进行比较。

parameter.m	记录运行电液伺服系统模型时需要的参数

bode.m	绘制Bode图

FuzzyPID.m	对两种控制方式的效果进行分析

fuzzy_PID.fis	存储在MATLAB中生成的模糊控制模型，以便后续导入到simulink中

Fuzzy_pid.slx	电液伺服系统的模型