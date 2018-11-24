{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-js";
  paths = with pkgs; [
    nodejs-10_x

    nodePackages.node2nix

    yarn
    yarn2nix
  ];
}