v1 = [2; -1; 0; 4];
v2 = [-2; 3; 0; -2];
w = [1; 2; 3; 2];

Prv1 = proj_ortogonal(v1, w);
Prv2 = proj_ortogonal(v2, w);

angulo_v1_v2 = ang(v1,v2)
angulo_w_v1 = ang(w,v1)
angulo_w_prv1 = ang(w,Prv1)
angulo_w_v1_prv1 = ang(w,v1-Prv1)