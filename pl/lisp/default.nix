{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-lisp";
  paths = with pkgs; [
    ccl
    sbcl
    lispPackages.quicklisp
  ];
}