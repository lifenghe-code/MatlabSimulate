pso = [0.689,0.201,0.652,1.181,1.027,0.759,1.505,1.073,0.227,1.134];
mpso = [0.167,0.112,0.481,0.276,0.059,0.220,0.344,0.063,0.156,0.392];
x = 1:10;
plot(x,pso)
hold on
plot(x,mpso)
set(gca,'FontName','Times New Rome','FontSize',12);
xlabel('实验次数','FontSize',14,'FontName','宋体')
ylabel('评价指标','FontSize',14,'FontName','宋体')
