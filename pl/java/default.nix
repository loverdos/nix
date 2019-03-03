{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-java";
  paths = with pkgs; [
    zulu8
  ];
}