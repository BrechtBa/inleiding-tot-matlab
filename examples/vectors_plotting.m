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
plot(x,ss,'r',linewidth,2);
xlabel('$x$ (rad)','Interpreter','latex');
ylabel('$y$','Interpreter','latex');
legend({'cosinus','sinus','$\int$ cosinus(x) d$x$'},'Interpreter','latex');

print('sinus_cosinus','-dpdf')

