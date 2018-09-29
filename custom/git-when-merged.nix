{ pkgs /*: NixPkgs */}:

let
  owner = "mhagger";
  repo = "git-when-merged";
  binary = repo;
  rev = "v1.2.0";
  sha256 = "0sw98gmsnd4iki9fx455jga9m80bxvvfgys8i1r2fc7d5whc2qa6";
in
  pkgs.stdenv.mkDerivation {
    name = "${binary}-${rev}";

    src = pkgs.fetchFromGitHub {
      inherit owner repo rev sha256;
    };

    installPhase = ''
      mkdir -p $out/bin

      cp bin/${binary} $out/bin/
      chmod +x $out/bin/${binary}
    '';
  }