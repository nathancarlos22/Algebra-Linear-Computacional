function x=sr00(A,b)
  Ab = [A b]; 
  n=size(A,2);
  m=size(b,2);
  
  for i=n: -1: 1
    soma = 0;
    for j=i+1: n
      soma=soma+Ab(i,j)*x(j,m);
    endfor
    x(i,m) = (b(i,m) - soma) /Ab(i,i);
  endfor
endfunction
