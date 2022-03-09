{...}@args:
let
  sources = import ./sources.nix {};
in
  import sources.haskellNix args
