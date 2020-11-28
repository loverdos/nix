{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-ocaml";
  paths = with pkgs; [
    # ocaml
    
    # basic dependencies
    #gnumake
    #m4
    #gcc

    # opam
  ];
}