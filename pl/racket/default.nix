{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-racket";
  paths = [
    pkgs.racket
  ];
}