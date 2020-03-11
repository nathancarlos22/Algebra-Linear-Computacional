clear
A = [2 -1; -1 2; 0 1];
A2 = [2 -1 3 0; -1 2 -1 1; 0 0 2 3; 1 1 3 0];

[Q R] = decomp_qr(A)
[Q R] = decomp_qr(A2)