{ pkgs /*: NixPkgs */}:

let
  owner = "kamranahmedse";
  repo = "git-standup";
  binary = repo;
  rev = "2012e681";
  sha256 = "1q1gba4y46s0krqkjkprgi0a7dnbfw6vr9ni9dryf257qh6lq8rd";
in
  pkgs.stdenv.mkDerivation {
    name = "${binary}-${rev}";

    src = pkgs.fetchFromGitHub {
      inherit owner repo rev sha256;
    };

    installPhase = ''
      mkdir -p $out/bin

      cp ${binary} $out/bin/
      chmod +x $out/bin/${binary}
    '';
  }