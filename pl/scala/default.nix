{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-scala";
  paths = with pkgs; [
    coursier
    dotty
    sbt
    scala
    scalafmt
  ];
}