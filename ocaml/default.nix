{ pkgs /*: NixPkgs*/, envName }:

pkgs.buildEnv {
  name = "${envName}-ocaml";
  paths = with pkgs; [
    ocaml

    # basic dependencies
    gnumake
    m4
    gcc

    opam
  ];
}