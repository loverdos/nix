{ pkgs /*: NixPkgs*/, devenv }:
let
  util = rec {
    inherit pkgs;
    inherit devenv;
    
    setPriority = priority: derivation:
      pkgs.lib.addMetaAttrs { inherit priority; } derivation;

    call = pkgs.newScope {
      inherit pkgs;
      inherit devenv;
      inherit util;
      inherit call;
      inherit setPriority;
    };
  };
in
  util