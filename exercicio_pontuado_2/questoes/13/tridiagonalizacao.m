function T = tridiagonalizacao (A)
  T = A;
  [m n] = size(A);
  
  for i = 1:n-2
    x = T((i+1):n,i);
    sx = size(x,1);
    y = zeros(sx,1);
    y(1) = norm(x);
    w = x - y;
    Q = eye(sx) - 2*(w * w')/(w' * w);
    T((i+1):n,i) = y;
    T(i,(i+1):n) = y;
    T((i+1):n,(i+1):n) = Q * T((i+1):n,(i+1):n) * Q;
    
  endfor
endfunction
