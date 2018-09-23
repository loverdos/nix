{ pkgs /*: NixPkgs*/}:
{
  setPriority = priority: derivation:
    pkgs.lib.addMetaAttrs { inherit priority; } derivation;
}