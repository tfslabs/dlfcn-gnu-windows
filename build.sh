#/bin/sh

WORKDIR="$(cd "$(dirname "$0")" && pwd)"

cd WORKDIR

mkdir .bin

chmod 777 ./configure
./configure --prefix=$WORKDIR/.bin
make -j2 && make install
