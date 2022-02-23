% Environment properties
Vdc = 400; % Inverter DC voltage
fs = 10e4; % Frequency of supply
Ts = 5e-7; % Sample time

% Motor properties
p = 3;            % Pole pairs
psi_mfl = 0.3119; % Magnetic flux linkage, psi
Ls = 1e-3;        % Stator self-inductance per phase
Lm = 2e-3;        % Stator inductance fluctuation
Ms = 1e-3;        % Stator mutual inductance
Kt = 50;          % Torque constant 
Rs = 5;           % Not sure

% Control loop properties
Lphph = 25.19e-3;    % Phase-to-phase inductance
Rphph = 4.37;        % Phase-to-phase resistance
Ls_dq = Lphph * 1.5; % Synchronous inductance
wcc = 200;           % Closed-loop bandwidth
Kp_dq = Ls_dq * wcc; % dq controller proportional gain
Ki_dq = Rphph * wcc; % dq controller integral gain

