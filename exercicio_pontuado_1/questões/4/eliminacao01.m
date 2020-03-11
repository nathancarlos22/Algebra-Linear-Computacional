function [U b] = eliminacao01(A, b)
  Ab = [A b];
  n = size(Ab,1); %numero de linhas
  N = size(Ab,2); %numero de colunas
  
  p=zeros(n-1,1);
  
  for k=1: n-1
    Ab
    [valor mi] = max(abs(Ab(k:n,k))) %escolha do pivot
    mi = k+ mi-1;
    aux=Ab(k,k:N);
    Ab(k,k: N) = Ab(mi, k:N); %troca de linhas
    Ab(mi, k:N) = aux;
    p(k)= valor
    
    if Ab(k,k) != 0
      rows = k+1:n;
      Ab(rows, k) = Ab(rows, k)/Ab(k,k);
      Ab(rows,rows) = Ab(rows, rows) - (Ab(rows, k)*Ab(k,rows));
    endif
    
  endfor
    
    
  U = Ab(:, 1:N-1);
  b = Ab(:, N);
endfunction
