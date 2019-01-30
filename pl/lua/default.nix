{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-lua";
  paths = [
    pkgs.lua
  ];
}