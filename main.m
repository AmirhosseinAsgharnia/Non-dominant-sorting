clear; clc
%%
t=0:0.01:2*pi;

x=1*cos(t);
y=1*sin(t);

figure(1)
plot(x,y,'.r'); hold on
axis([-2 2 -2 2],'square')
grid on

figure(2)
plot(x,y,'.r'); hold on
axis([-2 2 -2 2],'square')
grid on
%%
A=[x',y'];
tic
B1=NNDS(A);
toc
figure(1)
plot(B1(:,1),B1(:,2),'.b')
tic
B2=NNDS2(A);
toc
figure(2)
plot(B2(:,1),B2(:,2),'.b')

disp([numel(B1) numel(B2)])