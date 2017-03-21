#!/usr/bin/env bash

git clone https://github.com/Z3Prover/z3.git ~/z3
python ~/z3/scripts/mk_make.py --python
cd ~/z3/build
make
make install
cd ~
rm -rf z3
