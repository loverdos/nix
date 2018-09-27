let
  env = import ./env.nix;
  pkgs = import ./pkgs.nix;
  callPackage = pkgs.newScope env;
in let
  clifun = callPackage ./clifun  {};
  custom = callPackage ./custom  {};
  misc   = callPackage ./misc    {};

  tex = callPackage ./tex {};

  logic   = callPackage ./logic   {};
  haskell = callPackage ./haskell {};
  ocaml   = callPackage ./ocaml   {};
  python3 = callPackage ./python  {};
  scala   = callPackage ./scala   {};
in let
  all = [
    custom
    clifun
    misc

    tex

    logic
    haskell
    ocaml
    python3
    scala
  ];
in let
  name = "${env.envName}-env";
  util = callPackage ./util.nix {};

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
