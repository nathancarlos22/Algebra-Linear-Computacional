function A=algo321(A)
  n=size(A,1);
  for k=1:n-1
    rows=k+1:n;
    A(rows,k)=A(rows,k)/A(k,k);
    A(rows,rows)=A(rows,rows)-A(rows,k)*A(k,rows);
  endfor
endfunction