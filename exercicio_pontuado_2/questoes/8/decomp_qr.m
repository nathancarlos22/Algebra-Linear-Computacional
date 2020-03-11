function [Q R] = decomp_qr(A)
  [m n] = size(A);
  R = zeros(n);
  Q = zeros(m,n);
  
  for j = 1:n
    proj = zeros(m,1);
    
    for i= 1:j-1
      R(i,j) = Q(:,j)' * A(:,j); 
      proj = proj + R(i,j)*Q(:,i);
    endfor
  
  v = A(:,j) - proj;
   R(j,j) = norm(v);
   Q(:,j) = v / R(j,j);
  endfor

endfunction