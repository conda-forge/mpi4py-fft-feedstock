#!/usr/bin/env bash

if [[ `uname` == 'Linux' ]]; then
    # -Bsymbolic link flag to ensure MKL FFT routines don't shadow FFTW ones.
    # see:  https://github.com/pyFFTW/pyFFTW/issues/40
    export LDFLAGS="$LDFLAGS -Wl,-Bsymbolic"
fi

$PYTHON -m pip install . --no-deps --ignore-installed -vvv
