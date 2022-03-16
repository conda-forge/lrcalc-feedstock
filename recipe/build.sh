#!/bin/bash

export CFLAGS="-g -O2 $CFLAGS"

autoreconf -fi
chmod +x configure
./configure --prefix="$PREFIX" --host=$HOST --disable-static

make -j${CPU_COUNT}
if [[ "${CONDA_BUILD_CROSS_COMPILATION}" != "1" ]]; then
  make check
fi
make install
