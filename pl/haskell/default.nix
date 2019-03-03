{ pkgs /*: NixPkgs*/, devenv }:

let
  haskell = pkgs.haskell;
in
  pkgs.buildEnv {
    name = "${devenv.name}-haskell";
    paths = with pkgs; [
      # stack
      ghc
      haskellPackages.pandoc-citeproc
    ];
  }