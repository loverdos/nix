{ pkgs /*: NixPkgs*/, envName }:

let
  python3 = pkgs.python36;
in
  pkgs.buildEnv {
    name = "${envName}-python3";
    paths = with python3.pkgs; [
      pygments

      bpython
      ipython
      ptpython

      protobuf
      thrift
    ];
  }