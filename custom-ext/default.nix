{ pkgs /*: NixPkgs*/, devenv, call }:

pkgs.buildEnv {
  name = "${devenv.name}-custom-ext";

  paths = [
    (call ./emojify.nix {})
    (call ./whatIsMyIp.nix {})
    (call ./wtf.nix {})

    (call ./git-branch-status.nix {})
    (call ./git-my.nix {})
    (call ./git-standup.nix {})
    (call ./git-when-merged.nix {})
  ];
}