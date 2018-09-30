{ pkgs /*: NixPkgs*/, devenv }:

let
  python3 = pkgs.python36;
in
  pkgs.buildEnv {
    name = "${devenv.name}-python3";
    paths = with python3.pkgs; [
      pygments

      bpython
      ipython
      ptpython

      protobuf
      thrift

      # issue tracking
      bugwarrior
    ];
  }