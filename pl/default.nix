{ pkgs /*: NixPkgs*/, devenv, call }:

pkgs.buildEnv {
  name = "${devenv.name}-pl";
  paths = [
    (call ./haskell {})
    (call ./idris   {})
    (call ./js      {})
    (call ./ocaml   {})
    (call ./python  {})
    (call ./rust    {})
    (call ./scala   {})
    (call ./scheme  {})
  ];
}