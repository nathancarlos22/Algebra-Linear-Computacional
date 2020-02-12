A = [
2 4 -2
0 3 4
0 0 -7
];
b=[4;1; 8];

Ab = [A b];

n=size(A,2);

linha_i= 1; %linha a ser substituida
linha_k = 2; %linha a ser multiplicada

alfa = 2; % alfa q vai multiplicar a linha k

for i=1: n
  for j=1:n
    if i== linha_i && j==linha_k
      Ab(linha_i, :) = eye(n) + alfa*(Ab(linha_k, :)')
    endif
  endfor
endfor
