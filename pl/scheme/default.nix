{ pkgs /*: NixPkgs*/, devenv, util }:

# does not work
# util.setPriority 0 pkgs.ghostscript

pkgs.buildEnv {
  name = "${devenv.name}-scheme";
  paths = with pkgs; [
    # racket
    chez
    chibi
    chicken

    # creates a conflict for gsc (between christos-tex and christos-pl)
    gambit

    gauche

    gerbil-unstable
    guile
  ];
}