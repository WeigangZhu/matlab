CAN_SPEED = [5, 10, 20, 50, 100,125, 250, 500, 1000]; % Kbps
CAN_LENGTH = [10000, 6700, 3300, 1300, 620, 530, 270, 130, 40]; % m
% CAN_LENGTH = CAN_LENGTH/1000
plot(CAN_LENGTH,CAN_SPEED, 'r','LineWidth',2)
h1=xlabel('wire length$$  [m] $$');
h2=ylabel('{speed$$   [Kbps]$$}');
set(h1,'interpreter','latex');
set(h2,'interpreter','latex');
grid on