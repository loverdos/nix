{ pkgs /*: NixPkgs */}:

let
  owner = "kamranahmedse";
  repo = "git-standup";
  binary = repo;
  rev = "2012e6819a103ff0f9dd2e6bc1597cc3efd73aa4";
  sha256 = "1q1gba4y46s0krqkjkprgi0a7dnbfw6vr9ni9dryf257qh6lq8rd";
in
  pkgs.stdenv.mkDerivation {
    name = binary;

    src = pkgs.fetchFromGitHub {
      inherit owner repo rev sha256;
    };

    installPhase = ''
      mkdir -p $out/bin

      cp ${binary} $out/bin/
      chmod +x $out/bin/${binary}
    '';
  }