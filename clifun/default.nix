{ pkgs /*: NixPkgs*/, envName }:

pkgs.buildEnv {
  name = "${envName}-clifun";
  paths = with pkgs; [
    cowsay
    figlet
    lolcat
    toilet
    fortune
  ];
}