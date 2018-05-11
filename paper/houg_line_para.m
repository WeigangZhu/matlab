clear,clc
data = load('./hough/hough_line_parameters.txt');

figure(1)
X = reshape(data(1:780,2),[30,26]);
Y = reshape(data(1:780,3),[30,26]);
Z = reshape(data(1:780,4),[30,26]);

% plot3(X, Y, Z, 'r.')
mesh(X,Y,Z)
h1 = xlabel('$$MinLength$$');
h2 = ylabel('$$LineGap$$');
h3 = zlabel('$$LineNumber$$');
grid on
set([h1, h2, h3],'interpreter','latex');
set([h1, h2, h3],'FontName','Times New Roman','Color','Black', 'FontSize',10.5);
set(gca, 'FontName','Times New Roman','FontSize',10.5)
grid on

%%
figure(2)
X2 = reshape(data(781:780*2,2),[30,26]);
Y2 = reshape(data(781:780*2,3),[30,26]);
Z2 = reshape(data(781:780*2,4),[30,26]);

% plot3(X, Y, Z, 'r.')
mesh(X2,Y2,Z2)
h1 = xlabel('$$MinLength$$');
h2 = ylabel('$$LineGap$$');
h3 = zlabel('$$LineNumber$$');
grid on
set([h1, h2, h3],'interpreter','latex');
set([h1, h2, h3],'FontName','Times New Roman','Color','Black', 'FontSize',10.5);
set(gca, 'FontName','Times New Roman','FontSize',10.5)
grid on

%%
figure(3)
X3 = reshape(data(780*2+1:780*3,2),[30,26]);
Y3 = reshape(data(780*2+1:780*3,3),[30,26]);
Z3 = reshape(data(780*2+1:780*3,4),[30,26]);

% plot3(X, Y, Z, 'r.')
mesh(X3,Y3,Z3)
h1 = xlabel('$$MinLength$$');
h2 = ylabel('$$LineGap$$');
h3 = zlabel('$$LineNumber$$');
grid on
set([h1, h2, h3],'interpreter','latex');
set([h1, h2, h3],'FontName','Times New Roman','Color','Black', 'FontSize',10.5);
set(gca, 'FontName','Times New Roman','FontSize',10.5)
grid on

%%
figure(4)
X4 = reshape(data(780*3+1:780*4,2),[30,26]);
Y4 = reshape(data(780*3+1:780*4,3),[30,26]);
Z4 = reshape(data(780*3+1:780*4,4),[30,26]);

% plot3(X, Y, Z, 'r.')
mesh(X4,Y4,Z4)
h1 = xlabel('$$MinLength$$');
h2 = ylabel('$$LineGap$$');
h3 = zlabel('$$LineNumber$$');
grid on
set([h1, h2, h3],'interpreter','latex');
set([h1, h2, h3],'FontName','Times New Roman','Color','Black', 'FontSize',10.5);
set(gca, 'FontName','Times New Roman','FontSize',10.5)
grid on

%%
figure(5)
X5 = reshape(data(780*4+1:780*5,2),[30,26]);
Y5 = reshape(data(780*4+1:780*5,3),[30,26]);
Z5 = reshape(data(780*4+1:780*5,4),[30,26]);

% plot3(X, Y, Z, 'r.')
mesh(X5,Y5,Z5)
h1 = xlabel('$$MinLength$$');
h2 = ylabel('$$LineGap$$');
h3 = zlabel('$$LineNumber$$');
grid on
set([h1, h2, h3],'interpreter','latex');
set([h1, h2, h3],'FontName','Times New Roman','Color','Black', 'FontSize',10.5);
set(gca, 'FontName','Times New Roman','FontSize',10.5)
grid on

%%
figure(6)
X6 = reshape(data(780*5+1:780*6,2),[30,26]);
Y6 = reshape(data(780*5+1:780*6,3),[30,26]);
Z6 = reshape(data(780*5+1:780*6,4),[30,26]);

% plot3(X, Y, Z, 'r.')
mesh(X6,Y6,Z6)
h1 = xlabel('$$MinLength$$');
h2 = ylabel('$$LineGap$$');
h3 = zlabel('$$LineNumber$$');
grid on
set([h1, h2, h3],'interpreter','latex');
set([h1, h2, h3],'FontName','Times New Roman','Color','Black', 'FontSize',10.5);
set(gca, 'FontName','Times New Roman','FontSize',10.5)
grid on

%%
