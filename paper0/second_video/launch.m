clc;clear;close all
%%
data = load('time_position.txt');

figure
subplot(221)
plot(data(:,1),data(:,2),'linewidth',2)
grid on
xlabel('time: s')
ylabel('x postion unit: pixel')
legend('x position')

subplot(223)
plot(data(:,1),data(:,3),'linewidth',2)
grid on
xlabel('time: s')
ylabel('y postion unit: pixel')
legend('y position')

vel = zeros(255,3);
vel(:,1) = data(:,1);
vel(2:end,2:3) = diff(data(:,2:3));

subplot(222)
plot(data(:,1),vel(:,2),'linewidth',2)
grid on
xlabel('time: s')
ylabel('x velocity unit: pixel/s')
legend('x velocity')

subplot(224)
plot(data(:,1),vel(:,3),'linewidth',2)
grid on
xlabel('time: s')
ylabel('y velocity unit: pixel/s')
legend('y velocity')

save('time_vel.txt','vel','-ascii')