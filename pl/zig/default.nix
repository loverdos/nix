{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-zig";
  paths = [
    pkgs.zig
  ];
}