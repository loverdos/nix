{ pkgs /*: NixPkgs*/, devenv, call }:

pkgs.buildEnv {
  name = "${devenv.name}-pl";
  paths = [
    (call ./clojure {})
    (call ./go      {})
    (call ./haskell {})
    (call ./idris   {})
    (call ./java    {})
    (call ./js      {})
    (call ./kotlin  {})
    (call ./lisp    {})
    (call ./lua     {})
    (call ./ocaml   {})
    (call ./python  {})
    (call ./rust    {})
    (call ./scala   {})
    (call ./scheme  {})
    (call ./zig     {})
  ];
}