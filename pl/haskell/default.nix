{ pkgs /*: NixPkgs*/, devenv }:

let
  haskell = pkgs.haskell;
in
  pkgs.buildEnv {
    name = "${devenv.name}-haskell";
    paths = with pkgs; [
      # stack
      haskellPackages.pandoc-citeproc
    ];
  }