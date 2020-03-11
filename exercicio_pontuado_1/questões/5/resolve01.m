function [U b] = resolve01(A, b)
  Ab = [A b];
  n = size(Ab,1); %numero de linhas
  N = size(Ab,2); %numero de colunas
  
  p=zeros(n-1,1);

  for k=1: n-1
    [valor mi] = max(abs(Ab(k:n,k))) %escolha do pivot
    mi = k+ mi-1;
    aux=Ab(k,k:N);
    Ab(k,k: N) = Ab(mi, k:N); %troca de linhas
    Ab(mi, k:N) = aux;
    p(k)= valor
    
    if Ab(k,k) != 0 %eliminacao
      p = Ab(k, k);
      for l = k+1: n
        Ab(l, :) = Ab(l, :) - (Ab(l, k)/p)*Ab(k, :);
      endfor
    endif
  endfor
    
  U = Ab(:, 1:N-1); %retorno das matrizes
  b = Ab(:, N);
endfunction
