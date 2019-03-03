# See https://nixos.wiki/wiki/FAQ/Pinning_Nixpkgs
let
  defaultPkgs = import <nixpkgs> {};

  owner = "NixOS";
  repo = "nixpkgs-channels";
  rev = "07e2b59812de95deeedde95fb6ba22d581d12fbc"; # @19.03 
  # nix-prefetch-git https://github.com/nixos/nixpkgs-channels REVISION
  sha256 = "1yxmv04v2dywk0a5lxvi9a2rrfq29nw8qsm33nc856impgxadpgf";

  revisedPkgs = builtins.fetchGit {
    inherit rev;
    url = "https://github.com/${owner}/${repo}";
  };

  revisedPkgsFaster = defaultPkgs.fetchFromGitHub {
    inherit owner repo rev sha256;
  };

  revisedPkgsOnceMore = fetchTarball https://github.com/NixOS/nixpkgs/archive/19.03.tar.gz;
in
  # defaultPkgs
  # import (revisedPkgs) {}
  import (revisedPkgsFaster) {}
  # import (revisedPkgsOnceMore) {}