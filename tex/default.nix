{ pkgs /*: NixPkgs*/, devenv }:

let
  tex = pkgs.texlive.combine {
    inherit (pkgs.texlive)
    scheme-medium

    algorithms
    collection-bibtexextra
    collection-fontsextra
    collection-formatsextra
    collection-langgreek
    collection-latexextra
    collection-mathscience
    collection-publishers
    latexmk
    pstricks
    
    # for scribble
    mathabx
    mathabx-type1
    ;
  };
in
  pkgs.buildEnv {
    name = "${devenv.name}-tex";
    paths = [
      # tex

      # pkgs.hevea
      # pkgs.lyx
      # pkgs.texmaker
      # pkgs.texstudio
    ];
  }