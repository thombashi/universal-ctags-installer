#!/usr/bin/env sh

set -e

dist=$1
curr_dir=$(pwd)
work_dir=$(mktemp --directory)
cd "$work_dir"

git clone https://github.com/universal-ctags/ctags.git
cd ctags

./autogen.sh

if [ "$dist" = "" ]; then
    ./configure
else
    ./configure --prefix="$dist"
fi

make -j2
make install

cd "$curr_dir"
rm -rf "$work_dir"
