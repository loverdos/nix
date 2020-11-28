{ pkgs /*: NixPkgs*/, devenv }:

let 
  env = pkgs.buildEnv {
    name = "${devenv.name}-zig";
    paths = [
      # pkgs.zig
    ];
  };
in
  env