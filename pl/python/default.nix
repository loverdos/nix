{ pkgs /*: NixPkgs*/, devenv }:

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
  ];

  python36 = pkgs.python36.withPackages pkgF;
in
  pkgs.buildEnv {
    name = "${devenv.name}-python";
    paths = [
      python36
    ];
  }