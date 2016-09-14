x = linspace(0,2*pi,50);

% build an array elementwise
c = zeros(size(x));
for i = 1:length(x)
	c(i) = cos(x(i));
end

% vectorized functions
s = sin(x);
ss = cumtrapz(x,c);

% plotting
figure('Position', [100, 100, 400, 280]);
hold on;
plot(x,c,'b');
plot(x,s,'g-s');
plot(x,ss,'r','linewidth',2);
xlabel('$x$ (rad)','Interpreter','latex');
ylabel('$y$','Interpreter','latex');
legend({'cosinus','sinus','$\int$ cosinus(x) d$x$'},'Interpreter','latex');

set(gcf,'units','centimeters')
set(gcf,'papersize',[8,5])
set(gcf,'paperposition',[0,0,8,5])
print('sinus_cosinus','-dpdf')
print('sinus_cosinus','-dpng')

