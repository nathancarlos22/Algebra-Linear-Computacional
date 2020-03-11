function  ms = msinal(w,d,e)
  n = size(d,1);
  
  pw = poli_sturm(w,d,e);
  ms1 = 0;
  for i = 1:n
    if((pw(i+1) * pw(i)) < 0 )
      ms1 = ms1 + 1;
    endif
  endfor
  
  ms = ms1
endfunction