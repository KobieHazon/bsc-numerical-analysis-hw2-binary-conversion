check:
	python3 scripts/check_repository.py

test:
	octave-cli --no-gui --quiet --no-init-file tests/test_binary_convertor.m
