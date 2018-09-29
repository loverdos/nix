{ pkgs /*: NixPkgs */}:

let
  owner = "mhagger";
  repo = "git-when-merged";
  binary = repo;
  version = "1.2.0";
  sha256 = "0sw98gmsnd4iki9fx455jga9m80bxvvfgys8i1r2fc7d5whc2qa6";
in
  pkgs.stdenv.mkDerivation {
    name = "${binary}-${version}";

    src = pkgs.fetchFromGitHub {
      inherit owner repo sha256;
      
      rev = "v${version}";
    };

    installPhase = ''
      mkdir -p $out/bin

      cp bin/${binary} $out/bin/
      chmod +x $out/bin/${binary}
    '';
  }