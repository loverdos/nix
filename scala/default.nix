{ pkgs /*: NixPkgs*/ }:

pkgs.buildEnv {
  name = "ckkl-scala";
  paths = with pkgs; [
    sbt
    scala
  ];
}