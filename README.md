# BSc Numerical Analysis - Binary Conversion

- Course: BSc Computer Science.
- Available copy: November 2019.
- Assignment brief: The matching handout was not found.

## Contents

This repository contains a small MATLAB/Octave function that converts a positive integer into a binary digit string by repeated division by two.

## Tech Stack

- MATLAB/Octave source code.
- No third-party dependencies.

## Run

From MATLAB or Octave:

```matlab
addpath('src')
binary_convertor(10)
```

## Validate

```bash
make check
```

With GNU Octave available, run the semantic conversion matrix with:

```bash
make test
```
