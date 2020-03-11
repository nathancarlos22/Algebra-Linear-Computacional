clear
C1 = [2 -1 1; -1 5 0; 1 0 8];
C2 = [0 -1 0 2; -1 0 1 0; 0 1 1 1; 2 0 1 0];
C3 = C2*C2

tri_c1 = tridiagonalizacao(C1)
tri_c2 = tridiagonalizacao(C2)
tri_c3 = tridiagonalizacao(C3)
