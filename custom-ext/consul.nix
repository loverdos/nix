{ pkgs /*: NixPkgs */ }:

let
  name = "consul";
  version = "1.9.0";
  filename = "${name}_${version}_linux_amd64.zip";
  url = "https://releases.hashicorp.com/${name}/${version}/${filename}";
  sha256 = "1kj7s8lvm26ijwv3rdpsdzc60hg1awxgwrzpld5bm4zcki7rd6s0";
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