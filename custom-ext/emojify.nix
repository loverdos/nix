{ pkgs /*: NixPkgs */}:

let
  owner = "mrowa44";
  repo = "emojify";
  binary = repo;
  rev = "2.0.0";
  sha256 = "0zhbfxabgllpq3sy0pj5mm79l24vj1z10kyajc4n39yq8ibhq66j";
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