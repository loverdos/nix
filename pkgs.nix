# See https://nixos.wiki/wiki/FAQ/Pinning_Nixpkgs
let
  defaultPkgs = import <nixpkgs> {};

  # use the following to get the proper sha256 value
  # nix-prefetch-git https://github.com/nixos/nixpkgs-channels REVISION

  owner = "NixOS";
  repo = "nixpkgs-channels";
  # rev = "e6ad5e75f3bfaab5e7b7f0f128bf13d534879e65"; # @19.03 
  # sha256 = "1bwjyq6cavr75xm3ip8ibwg6mymbyn393cxfaazm68n174dmck66";

  # rev = "ce9f1aaa39ee2a5b76a9c9580c859a74de65ead5"; # @19.09 2020-02-29
  # sha256 = "1s2b9rvpyamiagvpl5cggdb2nmx4f7lpylipd397wz8f0wngygpi";

  rev = "89536cd763c4bb8afddf1b8c840c3bfe5fc5b742"; # @20.03 2020-02-29
  sha256 = "0w2vhglnqslb88na8f0aq4gfb9h3hwz64zqmqgk0pjgsgf0jbpq5";

  revisedPkgs = builtins.fetchGit {
    inherit rev;
    url = "https://github.com/${owner}/${repo}";
  };

  revisedPkgsFaster = defaultPkgs.fetchFromGitHub {
    inherit owner repo rev sha256;
  };

  revisedPkgsOnceMore = fetchTarball https://github.com/NixOS/nixpkgs/archive/20.03-beta.tar.gz;
in
  # defaultPkgs
  # import (revisedPkgs) {}
  import (revisedPkgsFaster) {}
  # import (revisedPkgsOnceMore) {}