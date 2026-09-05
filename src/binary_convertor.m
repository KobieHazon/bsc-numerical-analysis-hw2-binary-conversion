function str = binary_convertor(in)
  str = "";
  while (in > 0)
    if (mod(in, 2) == 1)
      str = strcat("1", str);
    else
      str = strcat("0", str);
    endif
    in = floor(in / 2);
  endwhile
endfunction
