function n = calc_DSD(r, shape_param)

% FUNCTION n = calc_DSD(r, shape_param)
% 
% it will retrieve the droplet size distribution "n" of particles of
% radius r (from 0 to Inf) and with a peak centered on r_mode. The shape
% parameter shape_param controls the relative amount of small/larger
% droplets in the distribution.

if ~isempty(find(r<0,1))
    disp('ERROR: there are negative radii');
    stop;
end

Rn = r_m / shape_param;

n = N/(Rn*gamma(shape_param)) .* (r/Rn).^(shape_param-1) .* exp(-r/Rn);