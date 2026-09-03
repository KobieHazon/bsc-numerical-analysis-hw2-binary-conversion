# BSc Numerical Analysis - Binary Conversion

A historical archive of my CS BSc coursework.

## Contents

This repository contains a small MATLAB/Octave function that converts a positive integer into a binary digit string by repeated division by two.

## Provenance

- Era: CS BSc.
- Last recovered work: November 2019 archive copy.
- Original handout status: the exact matching handout was not recovered, so the first commit records that fact.

## Tech Stack

- MATLAB/Octave source code.
- No third-party dependencies.

## Run

From MATLAB or Octave:

```matlab
addpath('src')
binary_convertor(10)
```

This machine does not currently have Octave or MATLAB available in the shell, so the local validation performed for this revision is a static repository check rather than an execution check.

## Validate

```bash
make check
```
