.PHONY: check test

check: test

test:
	octave-cli --no-gui --quiet --no-init-file tests/test_binary_convertor.m
