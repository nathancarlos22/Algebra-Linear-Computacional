function c = cholesky(A)
  n=size(A);
  soma=0;
  soma2=0;
  
  for k =1: n
    for j=1: k-1
      soma = c(k,j)*c(k,j);
    endfor
    c(k,k) = sqrt(A(k,k)-soma);
    
    for i = k+1: n
      for j=1: k-1
        soma2 = c(k,j)*c(i,j);
      endfor
      c(i,k) = (A(i,k)-soma2)/c(k,k);
    endfor
  endfor  
endfunction