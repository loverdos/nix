{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-lisp";
  paths = with pkgs; [
    ccl
    clisp
    cl-launch
    picolisp
    sbcl
    lispPackages.quicklisp
  ];
}