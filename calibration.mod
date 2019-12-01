tau_b1  = 0; % 1e-6;   
tau_b2  = 1e-5; 

phi_ss  = 6;
L_ss    = 1/3;
b_ss    = 7/10;
bh      = b_ss*0.75;
Dur_ss  = 7;

kappa   = 0.009; 
hh      = 0.62;
gam_P   = 0.23;
beta    = 0.995; %0.998
varphi  = 2; 
sigma   = 0.97155955; 
alpha   = 0.36;
delta   = 0.025;
g       = 0.20;
epsilon = 1.35/0.35;
eta_i   = 5.17; 
Delta   = 0.83;
zeta    = 28;   
gamma   = 0.92;

rho_mu  = 0;
rho_g1 = 1.7;
rho_g2 = (-0.71);   
rhoKsi    = 0.0;
rhoBeta   = 0.7;
rhoOmega  = 0; 
rho_TFP   = 0.95;

kappaPi   = 1.5;
kappaY    = 0.125;
rhoIr     = 0;

nuK    = 0;

R_ss   = 1/beta;
Rk_ss  = R_ss;
Rb_ss  = R_ss;
k_ss   = (1/(alpha)*(Rk_ss-1+delta))^(1/(alpha-1));
K_ss   = k_ss*L_ss;
Y_ss   = K_ss^alpha*L_ss^(1-alpha);
Ym_ss  = Y_ss;
D_ss   = 1;
C_ss   = (1-g)*Y_ss-delta*K_ss;
CmhCm1_ss = (1-hh)*C_ss;
B      = b_ss*4*Y_ss;
Bh_ss  = bh*4*Y_ss;
Bb_ss  = B-Bh_ss;
N_ss   = (K_ss+Delta*Bb_ss)/phi_ss;
omega_ss = N_ss*(1-sigma*R_ss);
xi_ss  = 0;

theta  = 1/phi_ss-0.0015;

mu_ss  = (1-beta*hh)/((1-hh)*C_ss);
chi    = ((1-alpha)*k_ss^alpha)/(L_ss^varphi*mu_ss^(-1));
varrho = R_ss-R_ss/(4*Dur_ss);
Xi     = Rb_ss-varrho;
Pm_ss  = 1;

F_ss   =   Y_ss*Pm_ss/(1-beta*gamma);
H_ss   =   Y_ss/(1-beta*gamma);

Lambda_ss  = beta;
Z_ss       = Pm_ss*alpha*Y_ss/K_ss;
I_ss       = delta*K_ss;
S_ss       = K_ss;
Sp_ss      = K_ss;
Bp_ss      = B-Bh_ss;
G_ss       = g*Y_ss;
nu_ss      = Lambda_ss*R_ss;
lambda_star_ss = 1-nu_ss/(theta*phi_ss);
X_ss       = 1/Pm_ss;
Omega_ss   = 1;
eta_ss     = 1;
Q_ss       = 1;
q_ss       = 1;
infl_ss    = 0;
inflstar_ss= 0;
ksi_ss     = 0;
lambda_ss  = 0;
Gamma_ss   = 0;
psi_ss     = 0;

Loss_ss = -log(CmhCm1_ss)+chi*L_ss^(1+varphi)/(1+varphi);

nuB    = (phi_ss/(Delta*q_ss*B));   %10;  %25;   %17.2467;
