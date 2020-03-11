function T = tridiagonalizacao (A)
  T = A;
  n = size(A);
  
  for i = 2:n-1
    x = T(i:n, i-1);
    y = zeros(n-i+1,1);
    y(1) = norm(x);
    v = x - y;
    Q = eye(n-i+1) - 2*(v * v')/(v' * v);
    T(i:n, i-1) = y;
    T(i-1, i:n) = y;
    T(i:n,i:n) = Q * T(i:n, i:n) * Q;
    
  endfor
endfunction
