{ pkgs /*: NixPkgs*/, envName }:

let
  emojify    = pkgs.callPackage ./emojify.nix {};  
  whatIsMyIp = pkgs.callPackage ./whatIsMyIp.nix {};
  wtf        = pkgs.callPackage ./wtf.nix {};
in
  pkgs.buildEnv {
    name = "${envName}-custom";
    paths = [
      emojify
      whatIsMyIp
      wtf
    ];
  }