% define some fixed variables for all plots
nx = 30;        % number of grid points in x direction
ny = 30;        % number of grid points in y direction
xmin =  0.0;    % minimum x value
xmax =  2.0;    % maximum x value
ymin =  0.0;    % minimum y value
ymax =  2.0;    % maximum y value




% plot the logistic equation phase diagram
k = 2;   % growth rate
C = 1;   % carrying capacity
t     = linspace(xmin,xmax,20);
inits = [0.1,0.5,1.1,1.5,2.0];  % starting points

hold on
for y0 = inits
  y = C + exp(-k*t/C)*(y0-C);
  plot(t,y,'o-','Linewidth',2)
end

xlim([xmin,xmax])
ylim([ymin,ymax])
yticks([0,1])
yticklabels({'0','C'})
xticks([0,1,2])
ylabel('Population (thousand badgers)')
xlabel('Time (years)')

yline(0,'r-.','LineWidth',5)
yline(1,'r-.','LineWidth',5)

saveas(gcf,'../fig/004-logistic.png')



  


