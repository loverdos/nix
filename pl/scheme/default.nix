{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-scheme";
  paths = with pkgs; [
    # racket
    chez
    chicken
    gambit
    gerbil-unstable
    guile
  ];
}