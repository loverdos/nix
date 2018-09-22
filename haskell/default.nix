{ pkgs /*: NixPkgs*/ }:

let
  haskell = pkgs.haskell;
in
  pkgs.buildEnv {
    name = "ckkl-haskell";
    paths = with pkgs; [
      # stack
      haskellPackages.pandoc-citeproc
    ];
  }