%% 3.2 Calculate the range of four targets with beat frequencies: [0 MHz, 1.1 MHz, 13 MHz, 24 MHz].

% Define our radar system requirements
d_res = 1;  % Required resolution in meters (m)
max_range = 300;  % Required max range in meters (m)

% Find the Bsweep of chirp for 1 m resolution
c = 3*10^8;  % Speed of light in meters per second (m/s)
B_sweep = c/(2*d_res);

% Calculate the chirp time based on the Radar's Max Range
magic_number = 5.5;
Ts = magic_number*2*max_range/c; 

% Define the frequency shifts 
beat_frequencies = [0, 1.1, 13, 24] .* 1e6;
calculated_range = c*beat_frequencies*Ts/(2*B_sweep);

% Display the calculated range
disp(calculated_range);