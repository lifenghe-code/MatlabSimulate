t = out.simout1.Time;
y1 = out.simout1.Data;
y2 = out.simout2.Data;
y3 = out.simout3.Data;
%模糊PID
disp("模糊PID")
[ymax,k]=max(y1);
tp=t(k);%峰值时间
disp("峰值时间")
disp([tp,ymax]);
disp("超调量")
(ymax-1)*100  % 超调量
k1=find(y1>0.10);
k2=find(y1>0.90);
disp("上升时间")
tr=t(k2(1))-t(k1(1)) %上升时间

i=length(t);
while(y1(i)>0.98) && (y1(i)<1.02)
i=i-1;
end
disp("调节时间")
setllingtime=t(i)% 调节时间


%PID
disp('PID')
[ymax,k]=max(y2);
disp("峰值时间")
tp=t(k);%峰值时间
disp([tp,ymax]);
disp("超调量")
(ymax-1)*100  % 超调量
k1=find(y2>0.10);
k2=find(y2>0.90);
disp("上升时间")
tr=t(k2(1))-t(k1(1)) %上升时间
i=length(t);
while(y2(i)>0.98) && (y2(i)<1.02)
i=i-1;
end
disp("调节时间")
setllingtime=t(i)% 调节时间








% %普通反馈
% disp("普通反馈")
% [ymax,k]=max(y1);
% tp=t(k);%峰值时间
% disp([tp,ymax]);
% (ymax-1)*100  % 超调量
% k1=find(y1>0.10);
% k2=find(y1>0.90);
% tr=t(k2(1))-t(k1(1)) %上升时间
% 
% i=length(t);
% while(y1(i)>0.98) && (y1(i)<1.02)
% i=i-1;
% end
% setllingtime=t(i)% 调节时间
plot(t,y1,t,y2)
grid on