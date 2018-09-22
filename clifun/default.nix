{ pkgs /*: NixPkgs*/ }:

pkgs.buildEnv {
  name = "ckkl-clifun";
  paths = with pkgs; [
    cowsay
    figlet
    lolcat
    toilet
    fortune
  ];
}