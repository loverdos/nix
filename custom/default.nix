{ pkgs /*: NixPkgs*/, devenv, call }:

let
  emojify    = call ./emojify.nix {};
  whatIsMyIp = call ./whatIsMyIp.nix {};
  wtf        = call ./wtf.nix {};

  # git goodies
  gitWhenMerged = call ./git-when-merged.nix {};
  gitStandup    = call ./git-standup.nix     {};
in
  pkgs.buildEnv {
    name = "${devenv.name}-custom";
    paths = [
      emojify
      whatIsMyIp
      wtf

      gitWhenMerged
      gitStandup
    ];
  }