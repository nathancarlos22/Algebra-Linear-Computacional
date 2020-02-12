function x = sd00(L,b)
  Ab = [L b]; 
  n=size(L,2);
  for i=1:n
    soma = 0;
    for j=1: i-1
      soma=soma+L(i,j)*x(j);
    endfor
    x(i) = (b(i) - soma) /L(i,i);
  endfor
endfunction