function A = u(A) 
  [m,n] = size(A);
  
  I=eye(n);
  L=I;
  
  for k=1: n
    p = A(k, k);
    
    for l = k+1: n
      A(l, :) = A(l, :) - (A(l, k)/p)*A(k, :);
      for i=2: k
        L(l,k) = A(i, k)/p  
      endfor
      
    endfor
  endfor
endfunction
