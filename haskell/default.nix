{ pkgs /*: NixPkgs*/, envName }:

let
  haskell = pkgs.haskell;
in
  pkgs.buildEnv {
    name = "${envName}-haskell";
    paths = with pkgs; [
      # stack
      haskellPackages.pandoc-citeproc
    ];
  }