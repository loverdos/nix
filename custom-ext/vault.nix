{ pkgs /*: NixPkgs */ }:

let
  name = "vault";
  version = "1.6.1";
  filename = "${name}_${version}_linux_amd64.zip";
  url = "https://releases.hashicorp.com/${name}/${version}/${filename}";
  sha256 = "1la2pylcj9y5gr7hr4aaa49427y3lgxi2phhl46pqmr7an62pkbm";
in
  pkgs.stdenv.mkDerivation rec {
    inherit name;

    src = pkgs.fetchurl { inherit url sha256; };

    outputs = [ "out" ];

    unpackPhase = ''
      ${pkgs.unzip}/bin/unzip ${src}
    '';
    
    installPhase = ''
      mkdir -p $out
      install -Dt "$out/bin" ${name}
    '';
  }