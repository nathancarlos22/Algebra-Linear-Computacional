function [U L p] =LU341modif(A)
  U=A;
  n = size(U,1); %numero de linhas
  N = size(U,2); %numero de colunas
 
  L=eye(N); %matriz identidade para colocar os alfas
  p=zeros(n,N); %matriz de permutação
  %permut=zeros(n,N); %matriz de permutação com mesmo numero de colunas e linhas
  
  for k=1: n-1
    [valor mi] = max(abs(U(k:n,k))) %escolha do mi
    mi = k+ mi-1;
    aux=U(k,k:N);
    U(k,1: N) = U(mi, 1:N); %troca de linhas MODIFICADA
    U(mi, k:N) = aux;
    p(mi,k)= 1;
    
    if U(k,k) != 0
      pivot = U(k, k);
      rows = k+1: n
        L(rows,k)=U(rows, k)/pivot %colocando os alfas
        U(rows, :) = U(rows, :) - (U(rows, k)/pivot)*U(k, :); 
    endif
    if k ==2 %o ultimo mi nao é calculado, portanto coloquei um if
      [valor mi] = max(abs(U(k+1:n,k+1)))
       p(mi,k+1)=1
    endif
  endfor
endfunction
