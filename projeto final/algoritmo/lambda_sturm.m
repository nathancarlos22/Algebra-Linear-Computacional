function lambda = lambda_sturm(d, e)
  [a b] = gershgorin(d, e);
  
  lambda = bissecao(a, b, d, e);

endfunction
