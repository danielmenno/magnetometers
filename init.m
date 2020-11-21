vals = str2double(data_read(:,2)); ids = data_read(:,1);

S = [vlp('B_x',ids,vals) vlp('B_y',ids,vals) vlp('B_z',ids,vals)];

angle_sigma = vlp('angle_sigma',ids,vals);
off_sigma = vlp('off_sigma',ids,vals);
gain_sigma = vlp('gain_sigma',ids,vals);


theta0 = [vlp('theta0_x',ids,vals) vlp('theta0_y',ids,vals) vlp('theta0_z',ids,vals)];
phi0 = [vlp('phi0_x',ids,vals) vlp('phi0_y',ids,vals) vlp('phi0_z',ids,vals)];
O_zero = [vlp('offset_x',ids,vals); vlp('offset_y',ids,vals); vlp('offset_z',ids,vals)];
G_zero = [vlp('gain_x',ids,vals) vlp('gain_y',ids,vals) vlp('gain_z',ids,vals)];

r_IB = [vlp('x_IB',ids,vals),vlp('y_IB',ids,vals),vlp('z_IB',ids,vals)];
distance_sensors = vlp('distance_sensors',ids,vals);
delta_boom = vlp('boom_sigma',ids,vals);
b = norm(r_IB);
alpha = (b+distance_sensors)/b;
r_OB = alpha*r_IB;

boom_x = vlp('boom_x',ids,vals);
boom_y = vlp('boom_y',ids,vals);
boom_z = vlp('boom_z',ids,vals);

Lx = vlp('length_x',ids,vals);
Ly = vlp('length_y',ids,vals);
Lz = vlp('length_z',ids,vals);

lil_n = vlp('lil_n',ids,vals);
big_n = vlp('big_n',ids,vals);
sigma_pos = vlp('sigma_pos',ids,vals);
sigma_comp = vlp('sigma_comp',ids,vals);

nsimul = vlp('nsimul',ids,vals);

bool_dip = vlp('bool_dip',ids,vals);

if (bool_dip)
    path = 'data_solar_orbiter.xlsx';
    dip_table = xlsread(path);
    dip_x = dip_table(:,1); dip_y = dip_table(:,2);dip_z = dip_table(:,3);
    dip_positions = [dip_x,dip_y,dip_z]; 
    dip_components = dip_table(:,4:end);
end

%% Function %%
function find = vlp(name,ids,val)
    find = sum(ismember(ids,name).*val);
end