function N_VU = calc_N_VU(shape_param,LWP,thickness,Zmean)

rhoW=10^6;
kN_VU = ((shape_param+3).*(shape_param+4).*(shape_param+5)) ./ (shape_param.*(shape_param+1).*(shape_param+2));

N_VU = (kN_VU./Zmean) .* ((6.*LWP)/(pi.*rhoW.*thickness)).^2;