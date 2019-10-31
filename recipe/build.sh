#!/bin/bash

export CFLAGS="-g -O2 $CFLAGS"

chmod +x configure
./configure --prefix="$PREFIX" --host=$HOST

make -j${CPU_COUNT}
make check
make install
