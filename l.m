function L = l(A)
  [m,n] = size(A);
  
  I=eye(n);
  L=I;
  
  for i=1 : n
     for j=1: i
       L(i,j) = A(i,j);
     endfor
  endfor
  
  for k=1 : n-1
    p = A(k,k);
     for l = 2: n
        L(l,k)=L(l,k)/p;
        
     endfor
  endfor
  
  
endfunction