{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-js";
  paths = with pkgs; [
    nodejs-10_x

    yarn
    yarn2nix
  ];
}