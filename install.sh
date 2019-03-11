#!/usr/bin/env bash

# new-script v3.0.1

set -eux

SCRIPT_FOLDER=$(dirname ${BASH_SOURCE[0]})

nix-env -if $SCRIPT_FOLDER/install.nix
