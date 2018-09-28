{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-scala";
  paths = with pkgs; [
    jdk8
    
    sbt
    
    dotty
    scala
  ];
}