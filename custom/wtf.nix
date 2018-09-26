{ pkgs /*: NixPkgs */ }:

let
  name = "wtf";
  date = "20180816";
  url = "https://downloads.sourceforge.net/project/bsdwtf/wtf-${date}.tar.gz";
  sha256 = "f3c2aa795a388aee5b9cbaa8f0c4636c1f49b29eeb463fef1de68194cea13e39";
in
  pkgs.stdenv.mkDerivation rec {
    inherit name;

    src = pkgs.fetchurl { inherit url sha256; };

    outputs = [ "out" "man" ];

    installPhase = ''
      WTF_MISC=/usr/share/misc
      substituteInPlace wtf --replace $WTF_MISC $out$WTF_MISC
      install -Dt "$out/bin" wtf

      mkdir -p $out$WTF_MISC
      cp acronyms* $out$WTF_MISC

      mkdir -p $man/share/man/man6
      cp wtf.6 $man/share/man/man6
    '';
  }