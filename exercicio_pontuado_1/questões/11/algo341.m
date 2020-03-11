function [A p] = algo341(A)
  n = size(A,1); %numero de linhas
  N = size(A,2); %numero de colunas
  
  p=zeros(n-1,1);
  
  for k=1: N-1
    [valor mi] = max(abs(A(k:n,k))) %escolha do mi
    mi = k+ mi-1;
    aux=A(k,k:N);
    A(k,k: N) = A(mi, k:N); %troca de linhas
    A(mi, k:N) = aux;
    p(k)= mi;
    
    if A(k,k) != 0 
        pivot = A(k, k);
        for l = k+1: N-1
          A(l, :) = A(l, :) - (A(l, k)/pivot)*A(k, :);
        endfor
    endif
  endfor
endfunction
