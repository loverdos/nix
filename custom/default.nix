{ pkgs /*: NixPkgs*/ }:

let
  emojify    = pkgs.callPackage ./emojify.nix {};  
  whatIsMyIp = pkgs.callPackage ./whatIsMyIp.nix {};
  wtf        = pkgs.callPackage ./wtf.nix {};
in
  pkgs.buildEnv {
    name = "ckkl-custom";
    paths = [
      emojify
      whatIsMyIp
      wtf
    ];
  }