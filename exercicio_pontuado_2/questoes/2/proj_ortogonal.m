function z = proj_ortogonal(v, w)
  z = ((v'*w)/(w'*w))*w;
endfunction
