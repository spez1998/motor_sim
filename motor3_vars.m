%% Environment properties
Vdc = 750;  % Inverter input DC voltage
fs = 5e3;   % Inverter switching frequency
Ts = 1e-6;  % Sample time
Tsc = 1e-5; % Control loop sample time

%% Motor properties
p = 3;            % Pole pairs
psi_mfl = 0.3119; % Magnetic flux linkage, psi
Ls = 1e-3;        % Stator self-inductance per phase
Lm = 2e-3;        % Stator inductance fluctuation
Ms = 1e-3;        % Stator mutual inductance
Kt = 1.6;         % Torque constant
Pmax = 2100;      % Maximum output power
Tmax = 2.22;      % Maximum torque out
J = 0.00077;      % Inertia

%% Control loop properties
Lphph = 25.19e-3;    % Phase-to-phase inductance
Rphph = 4.37;        % Phase-to-phase resistance
Rph   = Rphph/2;     % Per-phase resistance for delta-wound stator
Ls_dq = Lphph * 1.5; % Synchronous inductance
wcc = 2*pi*200;      % Closed-loop bandwidth
Kp_dq = Ls_dq * wcc; % dq controller proportional gain
Ki_dq = Rph * wcc;   % dq controller integral gain

