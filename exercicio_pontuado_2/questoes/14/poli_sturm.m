function pw = poli_sturm(w , d, e)
  n = size(d,1);
  pw = zeros(n+1, 1);
  pw(1) = 1;
  pw(2) = w - d(1);
  
  for i = 3:n+1
    pw(i) = (w - d(i-1)) * pw(i-1) - (e(i-2)^2) * pw(i-2);
  endfor
endfunction