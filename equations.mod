% 1. Marginal utility of consumption
mu = 1/(C-hh*C(-1)) - beta*exp(shk_beta)*hh/(C(+1)-hh*C);

% 2. Stochastic discount factor
Lambda = beta*exp(shk_beta)*mu/mu(-1);

% 3. Euler equation
Lambda(+1)*R = 1;

% 4. Labor market equilibrium
Pm*(1-alpha)*Ym/L = chi*L^varphi/mu;

% 5. HH Bond holdings
Bh = Bh_ss+Lambda(+1)*(Rb(+1)-R)/kappa;

% 6. Marginal value of a unit of private assets
Lambda(+1)*Omega(+1)*(Rk(+1)-R) = theta*lambda;

% 7. Marginal value of a unit of government bonds
Lambda(+1)*Omega(+1)*(Rb(+1)-R) = Delta*theta*lambda;

% 8. Marginal value of intermediary's net worth
nu = Lambda(+1)*(Omega(+1)*R+(Omega(+1)-1)^2/(2*zeta));

% 9. Equity issuance
xi = Lambda(+1)*(Omega(+1)-1)/zeta;

% 10. Expected shadow value of a unit of wealth
Omega = 1 - sigma + sigma*eta;

% 11. Shadow value of unit wealth at the beginning of period
eta = nu/(1-lambda);

% 12. Incentive constraint
    % [mcp = 'lambda > 0']
    % lambda = 1-nu/(theta*phi);
    % lambda = max(0, 1-nu/(theta*phi));

% 13. Risk adjusted leverage
phi = (Q*Sp + Delta*q*Bb)/N;

% 14. Aggregate net worth
N = Ne + omega;

% 15. Transfer to new bankers
omega = omega_ss + shk_omega;

% 16. Existing banks' net worth accumulation
Ne = sigma*((Rk-R(-1))*Q(-1)*Sp(-1)+(Rb-R(-1))*q(-1)*Bb(-1)+R(-1)*N(-1)+xi(-1)*N(-1));

% 17. Marginal value product of effective capital
Z = Pm*alpha*Ym/K;

% 18. Return to capital
Rk = exp(ksi)*(Z+Q*(1-delta))/Q(-1);

% 19. Return to long-term bonds
Rb = (Xi+varrho*q)/q(-1);

% 20. Intermediate good production function
Ym = K^alpha*L^(1-alpha);

% 21. Optimal investment decision
Q  =  1+eta_i/2*(I/I(-1)-1)^2+eta_i*(I/I(-1)-1)*(I/I(-1))
                                 -Lambda(+1)*eta_i*(I(+1)/I-1)*(I(+1)/I)^2;
% 22. Markup
Pm = 1/X;

% 23. Retail output
Ym = Y*D;
%    Ym = Y*D_ss;

% 24. Price dispersion
D = gamma*D(-1)*exp(infl(-1))^(-gam_P*epsilon)*exp(infl)^epsilon+(1-gamma)*((1-gamma*exp(infl(-1))^(gam_P*(1-epsilon))*exp(infl)^(epsilon-1))/(1-gamma))^(-epsilon/(1-epsilon));

% 25. Optimal price choice
F = Y*Pm+gamma*Lambda(+1)*exp(infl(+1))^epsilon*(exp(infl))^(-epsilon*gam_P)*F(+1);

% 26.
H = Y+gamma*Lambda(+1)*exp(infl(+1))^(epsilon-1)*exp(infl)^(gam_P*(1-epsilon))*H(+1);

% 27. Optimal price choice
exp(inflstar) = (epsilon-1)/epsilon*epsilon/(epsilon-1)*F/H*exp(infl);

% 28. Price index
(exp(infl))^(1-epsilon) = gamma*exp(infl(-1))^(gam_P*(1-epsilon))+(1-gamma)*(exp(inflstar))^(1-epsilon);

% 29. Fisher equation
ir = R*exp(infl(+1));

% 30. Government consumption
G = g*Y_ss;

% 31. Privately held corporate bonds
Sp = S;

% 32. Privately held government bonds
Bb = (1-Gamma)*B-Bh;

% 33. Aggregate resource constraint
Y = C + G + I + eta_i/2*(I/I(-1)-1)^2*I + zeta/2*xi^2*N + tau_b1*(Gamma*B*q)+tau_b2*(Gamma*B*q)^2;

% 34. Capital accumulation equation
S = (1-delta)*K + I;

% 35. Effective capital
K = exp(ksi)*S(-1);

% 36. Expected premium
exp_prem = log(Rk(+1)) - log(R);

% 37. Capital quality shock
ksi = rhoKsi*ksi(-1) + e_ksi;

% 38. QE shock process
shk_Gamma = rho_g1*shk_Gamma(-1) + rho_g2*shk_Gamma(-2) + e_Gamma;

% 39. Shock to transfer to new bankers
shk_omega = rhoOmega*shk_omega(-1) + e_omega;

% 40. Shock to discount factor
shk_beta = rhoBeta*shk_beta(-1) + e_beta;

% 41. Excess consumption
CmhCm1 = C-hh*C(-1);

% 42. Size of QE in GDP
size_QE = Gamma*B*q/(4*Y);

% 43. Loss function
Loss = -log(CmhCm1)+chi*L^(1+varphi)/(1+varphi);

% 44. Auxiliary zlb equation
zlb = zlb(-1)+e_zlb-e_zlb(-1);

% 45. Interest rate rule
[mcp = 'ir > 1']
ir = ir(-1)^rhoIr*((1/beta)*(exp(infl))^kappaPi*(Y/Y_ss)^kappaY)^(1-rhoIr);  %*exp(e_ir)
% ir = (1/beta)^zlb*(ir(-1)^rhoIr*((1/beta)*(exp(infl))^kappaPi*(Y/Y_ss)^kappaY)^(1-rhoIr))^(1-zlb);  %*exp(e_ir)

% 46. QE rule
% [mcp = 'Gamma < 0.33']
% Gamma = 10000*log(Rb(+1)/R) + shk_Gamma;
% Gamma = -nuB*(N-N_ss)*exp(shk_Gamma);
Gamma = shk_Gamma;

% 47. lambdastar
lambda_star = 1-nu/(theta*phi);