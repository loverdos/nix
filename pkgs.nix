# See https://nixos.wiki/wiki/FAQ/Pinning_Nixpkgs
let
  defaultPkgs = import <nixpkgs> {};

  owner = "NixOS";
  repo = "nixpkgs-channels";
  rev = "928ff62213bb3ced88e2d151760d39a5153a680b"; # @18.09 
  # nix-prefetch-git https://github.com/nixos/nixpkgs-channels REVISION
  sha256 = "1xb63rwbnsxdli3yh0fnifa7p86bddh2g7g8hnsinbv3sh40qzml";

  revisedPkgs = builtins.fetchGit {
    inherit rev;
    url = "https://github.com/${owner}/${repo}";
  };

  revisedPkgsFaster = defaultPkgs.fetchFromGitHub {
    inherit owner repo rev sha256;
  };

  revisedPkgsOnceMore = fetchTarball https://github.com/NixOS/nixpkgs/archive/18.09.tar.gz;
in
  # defaultPkgs
  # import (revisedPkgs) {}
  import (revisedPkgsFaster) {}
  # import (revisedPkgsOnceMore) {}