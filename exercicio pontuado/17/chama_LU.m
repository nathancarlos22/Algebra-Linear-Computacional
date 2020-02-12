clear
A = A = [1 2 3 %matriz C4
     2 29 26
     3 26 61];

[U L p] = LU341modif(A)

b = [-2 -1
     -34 3
     6 -35];

m = size(b,2);

for i=1: m %for para percorrer o b
  be=b(:,i); %colocando em um array
  y(:,i)=sd00(L,be) %cada posicao do array calcula o y
endfor

for i=1: m %analogamente para x
  xis=y(:,i);
  x(:,i)=sr00(U,xis)
endfor

B=A*x %logo A*x=b

pxA=p*A %logo p*A=LU
LxU= L*U