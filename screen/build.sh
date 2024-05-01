#!/bin/sh

set -exu

uname -a
#PATH="/usr/pkg/sbin:/usr/pkg/bin:$PATH"
#PKG_PATH="https://cdn.NetBSD.org/pub/pkgsrc/packages"
#PKG_PATH="$PKG_PATH/NetBSD/$(uname -p)/$(uname -r)/All/"
#export PATH PKG_PATH
#pkg_add pkgin
#pkgin install git automake autoconf gmake
git -c http.sslVerify=false clone https://github.com/alexander-naumov/screen.git
cd screen/src
#export AUTOCONF_VERSION=2.71
#export AUTOMAKE_VERSION=1.15
./autogen.sh
#echo "> ./configure --disable-pam CFLAGS='-Wall -DDEBUG'"
./configure CFLAGS="-Wall"
#echo "> make"
gmake
./screen -v
./screen --help
