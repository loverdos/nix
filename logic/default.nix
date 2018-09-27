{ pkgs /*: NixPkgs*/, envName }:

pkgs.buildEnv {
  name = "${envName}-logic";
  paths = with pkgs; [
    coq
    coq2html

    tlaplus
    tlaplusToolbox
    tlaps
  ];
}