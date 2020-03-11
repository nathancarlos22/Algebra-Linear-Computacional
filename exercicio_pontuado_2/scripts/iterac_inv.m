function x = iterac_inv(d,e,lambda)
  tol1 = 1, tol2 = 10e-7, epsilon = 10e-6;
  T = diag(d) + diag(e,1) + diag(e, -1);
  A = T;
  tal = lambda + epsilon;
  n = size(d,1);
  
  %escolhendo b0
  while(1)
    bo = rand(n,1);
    bo = bo/abs(bo);
    At = A - tal*eye(n);
    y1 = resolve(At, b0);
    if abs(y1) > tol1
      break
    endif
  end
  
  %calculando x
  k=1;
  while(1)
    At2 = A - tal*eye(n);
    x = resolve(At2, b0);
    x=x/abs(x);
    
    if abs(x- b0) < tol2
      break
    endif
    b0=x;
    k=k+1;
  end
endfunction
