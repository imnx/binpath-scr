#!/bin/bash
pwdDIR=$(pwd)
if [[ -e /usr/src/youtube-dl ]]; then
  rm -r /usr/src/youtube-dl
fi
mkdir -p "${HOME}/src"
outDir="${HOME}/src/youtube-dl"
git clone -b master --depth=1 http://github.com/imnx/youtube-dl ${outDir}
cd ${outDir}
mv Makefile Makefile2; cat Makefile2 | sed "s/\/usr\/local/\/usr/g" > Makefile; rm Makefile2
make -j4 && /usr/bin/sudo make -j4 install
cd ${pwdDIR}
