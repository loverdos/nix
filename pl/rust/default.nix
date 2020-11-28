{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-rust";
  paths = [
    # pkgs.rustup
  ];
}