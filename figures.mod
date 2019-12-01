%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i=1:2
if i==1, cut = [0 40];
else cut = [-100 1100]; % to check if all variables converge back to zero
end

figure(i)

set(gcf,'Name','Impulse responses')

subplot(4,4,1)
plot(100*shk_omega)                         %  plot(100*shk_beta)
title('$\omega_t$','interpreter','latex')   %title('$\beta_t$','interpreter','latex')
xlim(cut)
hold on

subplot(4,4,2)
plot(100*(log(N/N_ss)))
xlim(cut)
hold on
title('$N_t$','interpreter','latex')

subplot(4,4,3)
plot(100*log(Q))
xlim(cut)
hold on
title('$Q_t$','interpreter','latex')


subplot(4,4,4)
plot(100*size_QE)
title('$QE$','interpreter','latex')
xlim(cut)
hold on

%subplot(4,4,5)
%plot(lambda)
%xlim(cut)
%hold on
%title('$\lambda_t$','interpreter','latex')

subplot(4,4,5)
plot(phi)
xlim(cut)
hold on
title('$\phi_t$','interpreter','latex')


subplot(4,4,6)
plot(100*exp_prem)
xlim(cut)
hold on
title('$R_k - R$','interpreter','latex')

subplot(4,4,7)
plot(100*log(L/L_ss))
xlim(cut)
hold on
title('$L$','interpreter','latex')

subplot(4,4,8)
plot(100*log(Loss/Loss_ss))
xlim(cut)
hold on
title('Loss','interpreter','latex')

subplot(4,4,9)
plot(400*(log(R)))
title('$R_t$','interpreter','latex')
xlim(cut)
hold on

subplot(4,4,10)
plot(100*(log(C/C_ss)))
xlim(cut)
hold on
title('$C_t$','interpreter','latex')

subplot(4,4,11)
plot(100*(log(I/(delta*K_ss))))
xlim(cut)
hold on
title('$I_t$','interpreter','latex')

subplot(4,4,12)
plot(100*(log(Y/Y_ss)))
xlim(cut)
hold on
title('$y_t$','interpreter','latex')

subplot(4,4,13)
plot(100*(log(Omega/Omega_ss)))
xlim(cut)
hold on
title('$\Omega_t$','interpreter','latex')

%subplot(4,4,14)
%plot(100*(log(eta/eta_ss)))
%xlim(cut)
%hold on
%title('$\eta_t$','interpreter','latex')

%subplot(4,4,15)
%plot(100*(log(nu/nu_ss)))
%xlim(cut)
%hold on
%title('$\nu_t$','interpreter','latex')

%subplot(4,4,16)
%plot(100*xi)
%xlim(cut)
%hold on
%title('$\xi$','interpreter','latex')

subplot(4,4,14)
plot(400*log(ir(1:end)/R_ss))
xlim(cut)
hold on
title('$ir_t$','interpreter','latex')

subplot(4,4,15)
plot(400*infl(1:end))
xlim(cut)
hold on
title('$\pi_t$','interpreter','latex')

subplot(4,4,16)
plot(100*lambda_star)
xlim(cut)
hold on
title('$\lambda^*$','interpreter','latex')

end

