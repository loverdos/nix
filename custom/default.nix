{ pkgs /*: NixPkgs*/, devenv, call }:

pkgs.buildEnv {
  name = "${devenv.name}-custom";

  paths = [
    (call ./runjar.nix {})
    (call ./unbuffered.nix {})
  ];
}