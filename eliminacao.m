function Ab = eliminacao (A, b)
  Ab = [A b];
  [m,n] = size(A);
  
  for k=1: n-1
    p = Ab(k, k);
    for l = k+1: n
      Ab(l, :) = Ab(l, :) - (Ab(l, k)/p)*Ab(k, :);
    endfor
  endfor
endfunction


