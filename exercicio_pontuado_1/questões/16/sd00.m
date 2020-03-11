function x = sd00(L,b)
  Ab = [L b]; 
  n=size(L,2);
  m=size(b,2);
  
  %for k=1: m
    for i=1:n
      soma = 0;
      for j=1: i-1
        soma=soma+Ab(i,j)*x(j,m);
      endfor
      x(i,m) = (b(i,m) - soma) /Ab(i,i);
    endfor
  %endfor
endfunction