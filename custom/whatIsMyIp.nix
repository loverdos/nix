{ pkgs /*: NixPkgs */, devenv }:

let
  name = "whatIsMyIp";
in
  pkgs.writeShellScriptBin "${name}" ''
    ${pkgs.curl}/bin/curl --silent http://httpbin.org/get \
    | ${pkgs.jq}/bin/jq --raw-output .origin
  ''
