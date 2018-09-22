let
  pkgs = import ./pkgs.nix;
  name = "ckkl-default";
in let
  clifun = pkgs.callPackage ./clifun  {};
  custom = pkgs.callPackage ./custom  {};
  misc   = pkgs.callPackage ./misc    {};

  haskell = pkgs.callPackage ./haskell {};
  python3 = pkgs.callPackage ./python  {};
  scala   = pkgs.callPackage ./scala   {};
in let
  all = [
    custom
    clifun
    misc

    haskell
    python3
    scala
  ];
in let
  # nix-shell -A shell
  shell = pkgs.stdenv.mkDerivation {
    inherit name;

    buildInputs = all;

    shellHook = ''
    '';
  };

  # nix-build -A build
  build = pkgs.buildEnv {
    inherit name;
    paths = all;
  };

  # nix-env -iA install -f default.nix
  install = build;
in {
  inherit shell build install;
}

