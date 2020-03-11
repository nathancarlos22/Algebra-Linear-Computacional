function [L, U] = lu321(A)
  n = size(A,1);
  L = eye(n,n);
  
  for j = 1: n-1
    for i = j+1:n
      L(i,j) = A(i,j)/A(j,j); % multiplicadores
      A(i,:) = A(i,:) - L(i,j)*A(j,:);  % zerar
    endfor
  endfor
  U = A;
endfunction