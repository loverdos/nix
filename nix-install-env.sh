#!/usr/bin/env bash

# This is meant to be used from the Dockerfile
# See also https://github.com/loverdos/ubuntu.nix

set -eux

cd ~ \
&& git clone https://github.com/loverdos/nix.git \
&& cd nix \
&& nix-env -v -iA install -f default.nix \
&& nix-collect-garbage -d