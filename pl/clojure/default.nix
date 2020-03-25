{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-clojure";
  paths = with pkgs; [
    boot
    clojure
    leiningen
    # lumo

    # pixie
  ];
}