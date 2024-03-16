%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%           Loading Sensor Parameters           %
%-----------------------------------------------%
% Author(s): Minhyun                            %
% Description:                                  %
%   1. Load parameters 
% Last Modification: 24.03.05 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%.. Clear workspace, command windows, figures
clear all; 
close all; 
clc;

%% 1. Constants
Hz2rad              =   2*pi;                                               % [-] Unit conversion from Hz to rad

%% 2. Simulation parameters
sim.dt              =   1/(10*2*10^4);                                      % [-] To prevent aliasing at resonance, set to be 10 x (natural frequency)
sim.g               =   9.8067;                                             % [m/s^2] Gravitational acceleration

%% 1. Accelerometers
%.. Mechanical part (all types of accelerometer, incl. simple 2nd-order dynamics)


acc.on_2nd_dyn      =   1;                                                  % [-] Switch for acceleration dynamics



acc.mass_proof      =   10^-6;                                              % [kg] Sensor proof mass
acc.stiffness       =   (2*10^4*Hz2rad)^2*acc.mass_proof;                	% [N/m] Stiffness of mass-spring-damper model
acc.damping         =   2*sqrt(acc.mass_proof*acc.stiffness)*0.707;         % [N*s/m] Damping coefficient of mass-spring-damper model

acc.constantbias    =   [0; 0; 0];