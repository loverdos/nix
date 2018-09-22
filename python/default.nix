{ pkgs /*: NixPkgs*/ }:

let
  python3 = pkgs.python36;
in
  pkgs.buildEnv {
    name = "ckkl-python3";
    paths = with python3.pkgs; [
      pygments

      bpython
      ipython
      ptpython

      protobuf
      thrift
    ];
  }