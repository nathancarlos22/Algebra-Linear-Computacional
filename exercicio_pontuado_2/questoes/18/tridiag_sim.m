function x = tridiag_sim(d, e, b)
  T = diag(d) + diag(e,1) + diag(e, -1);

  A = T;
  Ab = [A b]; 
  n=size(A,2);
  
  for i=n: -1: 1
    soma = 0;
    for j=i+1: n
      soma=soma+Ab(i,j)*x(j);
    endfor
    x(i) = (b(i) - soma) /Ab(i,i);
  endfor
endfunction
