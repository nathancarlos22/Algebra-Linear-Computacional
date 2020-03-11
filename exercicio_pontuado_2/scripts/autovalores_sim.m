function [lambda X] = autovalores_sim(A)
  T = tridiagonalizacao(A);
  lambda = lambda_sturm(A);
  
  e = diag(T,-1);
  d = diag(T);
  
  #X = iterac_inv(e,d, lambda)
endfunction
