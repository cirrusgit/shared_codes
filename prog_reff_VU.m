ncfile='./input_ecsim.nc';

LWP = double(ncread(ncfile,'LWP'));
ztop = double(ncread(ncfile,'ztop'));
zbase = double(ncread(ncfile,'zbase'));
Zmean = double(ncread(ncfile,'Z'));

shape_param=8.7;
Zmean=10^(-18).*10.^(Zmean'./10);Zmean=nanmean(Zmean,2);
thickness=ztop-zbase;

REFF = calc_Reff_VU(shape_param,LWP,thickness,Zmean);
