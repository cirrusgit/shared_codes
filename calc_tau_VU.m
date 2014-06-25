function tau_VU = calc_tau_VU(shape_param,LWP,thickness,Zmean)

rhoW=10^6;
kR_VU = (((shape_param+2).^3) ./ (shape_param+3).*(shape_param+4).*(shape_param+5) ).^(1/3);
kext_VU = kR_VU.^(-1);

tau_VU = 1.5 .* kext_VU .* (LWP./rhoW).^(4/3) .* (48/(pi.*Zmean.*thickness)).^(1/3);