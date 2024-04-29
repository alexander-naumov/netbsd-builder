#!/bin/sh

set -exu

uname -a
git clone https://github.com/alexander-naumov/screen.git
cd screen/src
#export AUTOCONF_VERSION=2.71
#export AUTOMAKE_VERSION=1.15
./autogen.sh
#echo "> ./configure --disable-pam CFLAGS='-Wall -DDEBUG'"
./configure CFLAGS="-Wall"
#echo "> make"
gmake
