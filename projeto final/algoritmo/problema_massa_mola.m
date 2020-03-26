%considerando um sistema de 3 masssas com 3 molas:

m = [20 30 40]; %Massas
k = [0.2 0.3 0.4]; %O quanto a mola expande

A = [ k(1) + k(2) -k(2) 0
      -k(2) k(2)+k(3) -k(3)
      0 -k(3) k(3)

]

b = zeros(size(m));

x = eig(A)

n = size(A);
d = diag(A);
for i = 1:n-1
  e(i) = A(i,i+1);
 endfor
 
 x = lambda_sturm(d, e)
  