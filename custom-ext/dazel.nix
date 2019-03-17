{ pkgs /*: NixPkgs */, devenv, python3, python3Packages }:

let
  pname = "dazel";
  version = "0.0.36";
  /* curl https://pypi.org/pypi/dazel/0.0.36/json | jq '.urls | map(select(.filename == "dazel-0.0.36.tar.gz")) | .[0].digests.sha256' */
  sha256 = "7b96bbf3c4d46effe6f16f48a78e06d03fa192ca3fa349eb226f95bf2c9c9182";
in
  python3Packages.buildPythonPackage {
    inherit pname version;

    src = python3Packages.fetchPypi {
      inherit pname version sha256;
    };
  }