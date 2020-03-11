function x = iterac_inv(d,e,lambda)
  tol1 = 1, tol2 = 10e-7, epsilon = 10e-6;
  
  T = diag(d) + diag(e,1) + diag(e, -1);
  A = T;
  tal = lambda
  n = size(d,1);
  
  %escolhendo b0
  while(1)
    b0 = rand(n,1)
    b0 = b0/abs(b0)
    Atal = A - (tal'*(eye(n)));
    y1 = resolve(Atal, b0);
    if abs(y1) > tol1
      break
    endif
  end
  
  %calculando x
  k=1;
  while(1)
    Atal = A - (tal'*(eye(n)))
    x = resolve(Atal, b0);
    x=x/abs(x);
    
    if abs(x - b0) < tol2
       break
    endif
    b0=x;
    k=k+1;
  end
endfunction
