{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-scala";
  paths = with pkgs; [
    dotty
    sbt
    scala
    scalafmt
  ];
}