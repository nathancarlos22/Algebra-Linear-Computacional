function raizes = bissecao(a, b, d, e)
  epsilon = 1e-1;
  
  w = (b + a)/2;
  
  if ((b - a) < epsilon)
    raizes = w;
    
  else  
    raw = [];
    rawb = [];
    
    if numero_raizes(a, w, d, e) >= 1
      raw =  bissecao(a, w, d, e);
    endif
    
    if numero_raizes(w, b, d, e) >= 1
      rawb = bissecao(w, b, d, e);
    endif
  
    raizes = [raw ; rawb];
    
    
  endif
  
endfunction
