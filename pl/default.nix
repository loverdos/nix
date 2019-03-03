{ pkgs /*: NixPkgs*/, devenv, call }:

pkgs.buildEnv {
  name = "${devenv.name}-pl";
  paths = [
    (call ./haskell {})
    (call ./idris   {})
    (call ./java    {})
    (call ./js      {})
    (call ./lua     {})
    (call ./ocaml   {})
    (call ./python  {})
    (call ./rust    {})
    (call ./scala   {})
    (call ./scheme  {})
    (call ./zig     {})
  ];
}