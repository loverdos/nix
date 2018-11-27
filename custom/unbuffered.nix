{ pkgs /*: NixPkgs */, devenv}:

let
  name = "unbuffered";
  unbuffered = pkgs.writeShellScriptBin name ''
  exec ${pkgs.coreutils}/bin/stdbuf -i0 -o0 -e0  "$@" 
  '';
in
  pkgs.buildEnv {
    name = "${devenv.name}-${name}";
    paths = [ unbuffered ];
  }