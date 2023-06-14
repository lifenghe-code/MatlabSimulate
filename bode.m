%开环bode图的绘制

num1 = 1/(15.26e-4);
den1 = [1/(156.4^2) 2*0.2/156.4 1 0];
num2 = 0.056;
den2 = [1/(502.4^2) 2*0.7/502.4 1];
tf1 = tf(num1,den1);
tf2 = tf(num2,den2);
G=tf(tf1*tf2);


% num1 = 8.33e-3;
% den1 = [1/(503^2) 2*0.7/503 1];
% num2 = 1/(1.527e-3);
% den2 = [1/(49^2) 2*0.25/49 1 0];
% tf1 = tf(num1,den1);
% tf2 = tf(num2,den2);
% G=tf(tf1*tf2);


bode(G)
margin(G)
