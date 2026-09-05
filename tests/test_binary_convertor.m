addpath("src");

inputs = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 13, 42, 255];
failures = 0;

for input = inputs
  actual = binary_convertor(input);
  expected = dec2bin(input);
  if (! strcmp(actual, expected))
    fprintf(
      "FAIL input=%d expected=%s actual=%s\n",
      input,
      expected,
      actual
    );
    failures += 1;
  endif
endfor

fprintf("validated %d binary conversion case(s)\n", numel(inputs));
if (failures > 0)
  error("%d binary conversion case(s) failed", failures);
endif
