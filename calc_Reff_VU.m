function Reff_VU = calc_Reff_VU(shape_param,LWP,thickness,Zmean)

rhoW=10^6;
kR_VU = (((shape_param+2).^3) ./ (shape_param+3).*(shape_param+4).*(shape_param+5) ).^(1/3);

Reff_VU = kR_VU .* ((pi.*rhoW.*thickness.*Zmean) ./ (48.*LWP)).^(1/3);
