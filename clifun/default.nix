{ pkgs /*: NixPkgs*/, devenv }:

pkgs.buildEnv {
  name = "${devenv.name}-clifun";
  paths = with pkgs; [
    cowsay
    figlet
    lolcat
    toilet
    fortune
  ];
}