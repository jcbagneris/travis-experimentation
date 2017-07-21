#!/bin/bash
rm -rf out || exit 0;
mkdir out;
cp -a ./templates out/
cp -a ./static out/
cp -f ./build/*css out/static/css/
tar -czf release-$TRAVIS_BUILD_NUMBER.tar.gz out
