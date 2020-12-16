{ pkgs /*: NixPkgs */ }:

let
  name = "terraform";
  version = "0.12.25";
  filename = "terraform_${version}_linux_amd64.zip";
  url = "https://releases.hashicorp.com/terraform/${version}/${filename}";
  sha256 = "1c1zfd6xcn46grv3yh3sq2mz0gwpkdxzw3ylws3rycl536yslpg9";
in
  pkgs.stdenv.mkDerivation rec {
    inherit name;

    # https://releases.hashicorp.com/terraform/0.12.25/terraform_0.12.25_linux_amd64.zip
    src = pkgs.fetchurl { inherit url sha256; };

    outputs = [ "out" ];

    unpackPhase = ''
      ${pkgs.unzip}/bin/unzip ${src}
    '';
    
    installPhase = ''
      mkdir -p $out
      install -Dt "$out/bin" terraform
    '';
  }