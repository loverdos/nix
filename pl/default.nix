{ pkgs /*: NixPkgs*/, devenv, call }:

let
  haskell = call ./haskell {};
  ocaml   = call ./ocaml   {};
  python3 = call ./python  {};
  scala   = call ./scala   {};
in
  pkgs.buildEnv {
    name = "${devenv.name}-pl";
    paths = [
      haskell
      ocaml
      python3
      scala
    ];
  }