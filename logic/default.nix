{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-logic";
  paths = with pkgs; [
    coq
    coq2html

    # tlaplus
    # tlaplusToolbox
    # tlaps
  ];
}