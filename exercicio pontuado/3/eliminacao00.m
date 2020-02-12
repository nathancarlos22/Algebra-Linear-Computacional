function [U b]=eliminacao00(A,b)
  Ab = [A b]
  
  [m,n] = size(Ab);
  
  for k=1: n-1
    p = Ab(k, k);
    for l = k+1: n
      Ab(l, :) = Ab(l, :) - (Ab(l, k)/p)*Ab(k, :);
    endfor
  endfor
  N = size(Ab,2); %tamanho da matriz completa ja escalonada
  U = Ab(:, 1:N-1);
  b = Ab(:, N);
 
endfunction
