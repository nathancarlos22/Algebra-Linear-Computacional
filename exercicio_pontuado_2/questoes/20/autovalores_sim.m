function [lambda X] = autovalores_sim (A)
  
  T = tridiagonalizacao(A)
  [m n] = size(A);

  %pegando d e e
  d = diag(T);
  for i = 1:n-1
    e(i) = T(i,i+1);
  endfor
  
  lambda = lambda_sturm(d, e)
  X = iterac_inv(d,e,lambda);
endfunction
