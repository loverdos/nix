{ pkgs /*: NixPkgs*/, devenv, call }:

let
  emojify    = call ./emojify.nix {};
  whatIsMyIp = call ./whatIsMyIp.nix {};
  wtf        = call ./wtf.nix {};

  gitBranchStatus = call ./git-branch-status.nix {};
  gitMy           = call ./git-my.nix            {};
  gitStandup      = call ./git-standup.nix       {};
  gitWhenMerged   = call ./git-when-merged.nix   {};
in
  pkgs.buildEnv {
    name = "${devenv.name}-custom";
    paths = [
      emojify
      whatIsMyIp
      wtf

      gitBranchStatus
      gitMy
      gitStandup
      gitWhenMerged
    ];
  }