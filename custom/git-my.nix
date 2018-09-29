{ pkgs /*: NixPkgs */}:

let
  owner = "davidosomething";
  repo = "git-my";
  binary = repo;
  version = "1.1.2";
  sha256 = "0jji5zw25jygj7g4f6f3k0p0s9g37r8iad8pa0s67cxbq2v4sc0v";
in
  pkgs.stdenv.mkDerivation {
    name = "${binary}-${version}";

    src = pkgs.fetchFromGitHub {
      inherit owner repo sha256;

      rev = version;
    };

    installPhase = ''
      mkdir -p $out/bin

      cp ${binary} $out/bin/
      chmod +x $out/bin/${binary}
    '';
  }