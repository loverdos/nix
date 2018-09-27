# See https://nixos.wiki/wiki/FAQ/Pinning_Nixpkgs
let
  defaultPkgs = import <nixpkgs> {};

  owner = "NixOS";
  repo = "nixpkgs-channels";
  rev = "1d497bbff1932942c1243650267d998ca7cbc6dd";

  revisedPkgs = builtins.fetchGit {
    inherit rev;
    url = "https://github.com/${owner}/${repo}";
  };

  revisedPkgsFaster = defaultPkgs.fetchFromGitHub {
    inherit owner repo rev;
    sha256 = "1bnx09z884q21035zyi7s0l3jk3prcdyj254fiham4yry879s4k7";
  };
in
  defaultPkgs
  # import (revisedPkgs) {}
  # import (revisedPkgsFaster) {}
