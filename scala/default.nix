{ pkgs /*: NixPkgs*/, envName }:

pkgs.buildEnv {
  name = "${envName}-scala";
  paths = with pkgs; [
    jdk8
    
    sbt
    scala
  ];
}