{ pkgs /*: NixPkgs*/, devenv, call }:

pkgs.buildEnv {
  name = "${devenv.name}-pl";
  paths = [
    (call ./haskell {})
    (call ./idris   {})
    (call ./js      {})
    (call ./ocaml   {})
    (call ./python  {})
    (call ./racket  {})
    (call ./scala   {})
  ];
}