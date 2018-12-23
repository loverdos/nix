{ pkgs /*: NixPkgs */}:

let
  name = "runjar";
in
  pkgs.writeShellScriptBin "${name}" ''
    exec java -jar "$@"
  ''
