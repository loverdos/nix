{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-scheme";
  paths = [
    # pkgs.racket
    pkgs.chez
  ];
}