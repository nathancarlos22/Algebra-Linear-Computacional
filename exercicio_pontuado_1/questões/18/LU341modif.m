function [U L D M] =LU341modif(A)
  U=A;
  n = size(U,1); %numero de linhas
  N = size(U,2); %numero de colunas
 
  L=eye(N); %matriz identidade para colocar os alfas
  
  for k=1: n-1
    [valor mi] = max(abs(U(k:n,k))) %escolha do mi
    mi = k+ mi-1;
    aux=U(k,k:N);
    U(k,1: N) = U(mi, 1:N); %troca de linhas MODIFICADA
    U(mi, k:N) = aux;
    
    if U(k,k) != 0
      pivot = U(k, k);
      rows = k+1: n
        L(rows,k)=U(rows, k)/pivot %colocando os alfas
        U(rows, :) = U(rows, :) - (U(rows, k)/pivot)*U(k, :); 
    endif
    d=diag(U); %matriz diagonal
    D=diag(d);
    dm1=diag(1./d); %elevado a menos um
    M=dm1*U; %matriz m tal que A = LUDM
  endfor
endfunction
