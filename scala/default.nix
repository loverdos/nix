{ pkgs /*: NixPkgs*/ }:

pkgs.buildEnv {
  name = "ckkl-scala";
  paths = with pkgs; [
    jdk8
    
    sbt
    scala
  ];
}