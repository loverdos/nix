{ pkgs /*: NixPkgs */}:

let
  version = "2.0.0";
  sha256 = "0zhbfxabgllpq3sy0pj5mm79l24vj1z10kyajc4n39yq8ibhq66j";
in
  pkgs.stdenv.mkDerivation {
    name = "emojify-${version}";

    src = pkgs.fetchFromGitHub {
      owner = "mrowa44";
      repo = "emojify";
      rev = "${version}";
      sha256 = "${sha256}";
    };

    installPhase = ''
      mkdir -p $out/bin

      cp emojify $out/bin/
      chmod +x $out/bin/emojify
    '';
  }