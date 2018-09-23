{ pkgs /*: NixPkgs*/ }:

pkgs.buildEnv {
  name = "ckkl-logic";
  paths = with pkgs; [
    coq
    coq2html
  ];
}