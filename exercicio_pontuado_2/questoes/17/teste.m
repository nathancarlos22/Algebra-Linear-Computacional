clear
d = [2; 5; 4; 3; 5];
e = [1; 2; 2; 1];
#b = [1; 2; 3; 4; 5];
T = diag(d) + diag(e,1) + diag(e, -1);

#A = [2 -1 1; -1 2 3; 0 1 4];
autovalores = lambda_sturm(d, e)
autovalores_eig = eig(T)

[autovalores autovalores_eig]
