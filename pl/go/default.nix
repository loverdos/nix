{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-go";
  paths = with pkgs; [
    go
  ];
}