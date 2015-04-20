#!/bin/bash
yum -y remove java-1.6.0-openjdk
yum -y remove java-1.7.0-openjdk

echo "installing JDK... takes time"
yum -y install /vagrant_data/jdk-7u79-linux-x64.rpm

echo "Development tools... Git too"
#yum -y groupinstall "Development Tools"
#yum -y install git
#not real users
#git config --global user.name "jenkinsbuilder"
#git config --global user.email "jenkinsbuilder@cable.comcast.com"

#need these for Oracle RDBMS, OFM, etc.
yum install -y binutils-2*.x86_64 compat-libcap1-1* compat-libstdc++-33*.i686 compat-libstdc++-33*.x86_64
yum install -y gcc-4*.x86_64 gcc-c++-4*.x86_64 glibc-2*.x86_64 glibc-2*.i686 glibc-devel-2*.i686
yum install -y libaio-0.*.x86_64 libaio-devel-0.*.x86_64 libgcc-4.*.x86_64 libstdc++-4.*.i686
yum install -y libstdc++-4.*.x86_64 libstdc++-devel-4.*.x86_64 libXext.i686
yum install -y libXtst.i686 sysstat-9.*.x86_64 redhat-lsb-4.*.x86_64

yum -y update
