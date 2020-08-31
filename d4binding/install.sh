#!/bin/sh
cargo build --release

if [ -z "${PREFIX}" ]
then
	PREFIX=/opt/local
fi

mkdir -p ${PREFIX}/include/
mkdir -p ${PREFIX}/lib/

install -m 644 include/d4.h ${PREFIX}/include
install -m 644 ../target/release/libd4binding.so ${PREFIX}/lib
