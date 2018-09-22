{ pkgs /*: NixPkgs*/ }:

let
  emojify    = pkgs.callPackage ./emojify.nix {};  
  whatIsMyIp = pkgs.callPackage ./whatIsMyIp.nix {};
in
  pkgs.buildEnv {
    name = "ckkl-custom-stuff";
    paths = [
      emojify
      whatIsMyIp
    ];
  }