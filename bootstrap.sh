#!/usr/bin/env sh

# vagrant bootstrapping file

apt-get update

DEBIAN_FRONTEND=noninteractive apt-get install -y \
	build-essential cmake git vim ocaml perl

