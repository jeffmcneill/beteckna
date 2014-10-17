#!/bin/sh
rep="$(pwd)"

rm -rf build
mkdir -p build
cd build
version=$(cat ../README.md | grep Version: | sed -e "s/Version: //g")

rm -rf beteckna-$version
git clone --depth 1 --no-hardlinks --local $(pwd | sed -e "s:beteckna/build::g")
mv fonts/beteckna ./

mv beteckna beteckna-$version
rm -rf beteckna-$version/.git
rm -rf beteckna-$version/.gitignore

tar -cf beteckna-$version.tar beteckna-$version
rm -rf beteckna-$version.tar.gz
gzip beteckna-$version.tar
mv beteckna-$version.tar.gz ../
cd ..

