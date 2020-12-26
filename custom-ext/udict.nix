{ pkgs /*: NixPkgs */}:

let
  owner = "genuinetools";
  repo = "udict";
  version = "0.5.4";
  rev = "v${version}";
  sha256 = "0gjjm8ijf770b2picc83jw35q768j2a65v6d4qppj60b8yz5la90";
in
  pkgs.buildGoPackage rec {
    pname = repo;
    inherit version;

    goPackagePath = "github.com/${owner}/${repo}";

    src = pkgs.fetchFromGitHub {
      inherit rev owner repo sha256;
    };

  }