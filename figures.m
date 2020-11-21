%% Figures %%

set(groot, 'defaultAxesTickLabelInterpreter','latex'); set(groot, 'defaultLegendInterpreter','latex');

figure
histfit(1e9*(S_1-S(1)),50);
fit_1 = fitdist(transpose(S_1)*1e9,'normal');
xlabel('$\Delta B_x$ [nT]')
ylabel('Frequency')
legend('Histogram',strcat('$\mathcal{N}($', num2str(mean(fit_1)-5) ,',', num2str(std(fit_1)) ,')'))
set(gca,'fontsize',20); grid on;

figure
histfit(1e9*(S_2-S(2)),50);
fit_2 = fitdist(transpose(S_2)*1e9,'normal');
xlabel('$\Delta B_y$ [nT]')
ylabel('Frequency')
legend('Histogram',strcat('$\mathcal{N}($', num2str(mean(fit_2)-5) ,',', num2str(std(fit_2)) ,')'))
set(gca,'fontsize',20); grid on;

figure
histfit(1e9*(S_3-S(3)),50);
fit_3 = fitdist(transpose(S_3)*1e9,'normal');
xlabel('$\Delta B_z$ [nT]')
ylabel('Frequency')
legend('Histogram',strcat('$\mathcal{N}($', num2str(mean(fit_3)-5) ,',', num2str(std(fit_3)) ,')'))
set(gca,'fontsize',20); grid on;


