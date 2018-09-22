let
  pkgs = import ./pkgs.nix;
  
  clifun = pkgs.callPackage ./clifun  {};
  custom = pkgs.callPackage ./custom  {};
  misc   = pkgs.callPackage ./misc    {};

  haskell = pkgs.callPackage ./haskell {};
  python3 = pkgs.callPackage ./python  {};
  scala   = pkgs.callPackage ./scala   {};
in
  pkgs.buildEnv {
    name = "ckkl-default";
    paths = [
      custom
      clifun
      misc

      haskell
      python3
      scala
    ];
  }

