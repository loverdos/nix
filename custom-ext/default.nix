{ pkgs /*: NixPkgs*/, devenv, call }:

pkgs.buildEnv {
  name = "${devenv.name}-custom-ext";

  paths = [
    (call ./dazel.nix {})
    (call ./emojify.nix {})
    (call ./whatIsMyIp.nix {})
    
    (call ./udict.nix {})
    (call ./wtf.nix {})

    (call ./consul.nix {})
    (call ./nomad.nix {})
    (call ./terraform.nix {})
    (call ./vault.nix {})

    (call ./git-branch-status.nix {})
    (call ./git-my.nix {})
    (call ./git-standup.nix {})
    (call ./git-when-merged.nix {})
  ];
}