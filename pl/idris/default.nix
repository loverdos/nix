{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-idris";
  paths = [
    pkgs.idris
  ];
}