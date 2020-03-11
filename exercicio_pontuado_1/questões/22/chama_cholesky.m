D1 = [6 6 5
      6 9 7
      5 7 6]
     
c1 = chol(D1) ;     %funcao do octave

c = cholesky(D1) %matriz inferior
cT = c' %matriz superior


D2 = [3 4 6
      4 6 9
      6 9 14]
     
c1 = chol(D2);      %funcao do octave

c = cholesky(D2) %matriz inferior
cT = c' %matriz superior


D3 = [10 20 30
      20 45 80
      30 80 171]
     
c1 = chol(D3)   ;   %funcao do octave

c = cholesky(D3) %matriz inferior
cT = c' %matriz superior