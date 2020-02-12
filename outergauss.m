function Ab = outergauss(A, b)
  Ab = [A b]
  n = size(Ab, 1);
  I = eye(n);
  
  for i=1: n-1
    alfa = -Ab(i+1:n,i)/Ab(i,i);
    M=I;
    M(i+1:n,i) = alfa
    Ab=M*Ab;
  endfor
endfunction
