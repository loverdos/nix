{ pkgs /*: NixPkgs*/, devenv }:

let
  py3pkgs = pkgs.python36Packages;
in
  pkgs.buildEnv {
    name = "${devenv.name}-python3";
    paths = [
      pkgs.python3
    ] ++ (with py3pkgs; 
    [
      pygments

      setuptools
      tkinter

      # console
      bpython
      ipython
      ptpython

      # schema
      protobuf
      thrift

      # issue tracking
      bugwarrior
    ]);
  }