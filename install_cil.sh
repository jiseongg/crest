#!/usr/bin/env sh

# install cil
PREFIX=/home/vagrant/cil
cp -r /vagrant/cil $PREFIX

cd $PREFIX
./configure
make
