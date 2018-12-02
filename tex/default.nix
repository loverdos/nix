{ pkgs /*: NixPkgs*/, devenv }:

let
  tex = pkgs.texlive.combine {
    inherit (pkgs.texlive)
    scheme-small
    algorithms
    collection-langgreek
    collection-latexextra
    collection-mathscience
    collection-publishers
    latexmk
    
    # for scribble
    mathabx
    mathabx-type1
    ;
  };
in
  pkgs.buildEnv {
    name = "${devenv.name}-tex";
    paths = [
      tex
    ];
  }