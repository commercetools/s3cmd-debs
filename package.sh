#! /bin/bash

set -e

rm -rf s3cmd
mkdir s3cmd
cp -r upstream/* s3cmd/
cp -r debian s3cmd/
cd s3cmd
dpkg-checkbuilddeps
dpkg-buildpackage -b
