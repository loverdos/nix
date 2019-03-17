{ pkgs /*: NixPkgs*/, devenv, python3 }:

let 
  pkgF = p: with p; [
    pip
    pygments
    setuptools
    tkinter
    
    # console
    bpython
    ipython
    ptpython

    #schema
    protobuf
    thrift

    # issue tracking
    bugwarrior

    virtualenv
    virtualenvwrapper
  ];
in
  pkgs.buildEnv {
    name = "${devenv.name}-python";
    paths = [
      (python3.withPackages pkgF)
    ];
  }