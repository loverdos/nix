{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-lisp";
  paths = with pkgs; [
    sbcl
    lispPackages.quicklisp
  ];
}