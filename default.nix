let
  # setup
  pkgs   = import ./pkgs.nix;
  devenv = import ./devenv.nix;
  util   = import ./util.nix { inherit pkgs devenv; };

  name = "${devenv.name}-env";
  call = util.call;

  all = [
    (call ./clifun {})
    (call ./custom {})
    (call ./custom-ext {})
    (call ./logic  {})
    (call ./misc   {})
    (call ./pl     {})
    (call ./tex    {})
  ];

  # nix-shell -A shell
  shell = pkgs.stdenv.mkDerivation {
    inherit name;
    buildInputs = all;
  };
  # shell = util.setPriority 0 shell_;

  # nix-build -A build
  build = pkgs.buildEnv {
    inherit name;
    paths = all;
  };
  # build = util.setPriority 0 build_;

  # nix-env -iA install -f default.nix
  install = build;
in {
  inherit shell build install;
}
