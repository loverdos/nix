# See https://nixos.wiki/wiki/FAQ/Pinning_Nixpkgs
let
  defaultPkgs = import <nixpkgs> {};

  owner = "NixOS";
  repo = "nixpkgs-channels";
  rev = "e6ad5e75f3bfaab5e7b7f0f128bf13d534879e65"; # @19.03 
  # nix-prefetch-git https://github.com/nixos/nixpkgs-channels REVISION
  sha256 = "1bwjyq6cavr75xm3ip8ibwg6mymbyn393cxfaazm68n174dmck66";

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