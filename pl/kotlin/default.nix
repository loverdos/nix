{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-kotlin";
  paths = [
    pkgs.kotlin
  ];
}