{ pkgs /*: NixPkgs */}:

let
  owner = "alexdavid";
  repo = "git-branch-status";
  binary = repo;
  rev = "14a09f6b";
  sha256 = "0yf5401w90sy6hqvz0xpyg22wlrdrfjn29jqsxy52y32zb424q68";
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