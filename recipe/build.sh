#!/bin/bash

export CFLAGS="-g -O2 $CFLAGS"

autoreconf -i
chmod +x configure
./configure --prefix="$PREFIX"

make -j${CPU_COUNT}
make check
make install
