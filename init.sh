#!/bin/bash
yum install openssl openssl-devel zlib zlib-devel
cd /tmp/
wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.0.tar.gz
tar xvf ruby-2.1.0.tar.gz
cd ruby-2.1.0
./configure --prefix=/usr/local --disable-install-doc --with-opt-dir=/usr/local/lib
make && make install
export PATH=/usr/local/bin/ruby:$PATH
export PATH=/usr/local/bin/gem:$PATH
