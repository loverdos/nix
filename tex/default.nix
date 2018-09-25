{ pkgs /*: NixPkgs*/ }:

let
  tex = pkgs.texlive.combine {
    inherit (pkgs.texlive)
    scheme-small
    algorithms
    collection-langgreek
    collection-latexextra
    collection-mathscience
    collection-publishers
    latexmk;
  };
in
  pkgs.buildEnv {
    name = "ckkl-tex";
    paths = [
      tex
    ];
  }