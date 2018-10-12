let
  # setup
  pkgs   = import ./pkgs.nix;
  devenv = import ./devenv.nix;
  util   = import ./util.nix { inherit pkgs devenv; };

  name = "${devenv.name}-env";
  call = util.call;
in let
  # packages
  clifun = call ./clifun  {};
  custom = call ./custom  {};
  misc   = call ./misc    {};

  tex   = call ./tex {};
  logic = call ./logic   {};
  pl    = call ./pl {};
in let
  all = [
    custom
    clifun
    logic
    misc
    pl
    tex
  ];
in let
  # nix-shell -A shell
  shell_ = pkgs.stdenv.mkDerivation {
    inherit name;
    buildInputs = all;
  };
  shell = util.setPriority 0 shell_;

  # nix-build -A build
  build_ = pkgs.buildEnv {
    inherit name;
    paths = all;
  };
  build = util.setPriority 0 build_;

  # nix-env -iA install -f default.nix
  install = build;
in {
  inherit shell build install;
}
