function str = binary_convertor (in)
 str = "";
while (in > 0 )
  if (mod(in, 2) == 1)
    str =strcat(str, "1");
  else
    str =strcat(str, "0");
  endif
  in = floor(in /2);
endwhile
endfunction
