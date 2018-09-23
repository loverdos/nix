let
  pkgs = import ./pkgs.nix;
  util = pkgs.callPackage ./util.nix {};
  name = "ckkl-default";
in let
  clifun = pkgs.callPackage ./clifun  {};
  custom = pkgs.callPackage ./custom  {};
  misc   = pkgs.callPackage ./misc    {};

  logic   = pkgs.callPackage ./logic   {};
  haskell = pkgs.callPackage ./haskell {};
  python3 = pkgs.callPackage ./python  {};
  scala   = pkgs.callPackage ./scala   {};
in let
  all = [
    custom
    clifun
    misc

    logic
    haskell
    python3
    scala
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
