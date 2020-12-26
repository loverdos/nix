{ pkgs /*: NixPkgs */ }:

let

  name = "nomad";
  version = "1.0.1";
  filename = "${name}_${version}_linux_amd64.zip";
  url = "https://releases.hashicorp.com/${name}/${version}/${filename}";
  sha256 = "1q4ga2292pism8jdh6f3a1nz5vg8vfi6zzg0ri9xc1p90hi1717k";
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