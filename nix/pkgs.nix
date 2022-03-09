{
  haskellNix ? import ./haskellNix.nix {},
  # nixpkgs をインポートし、haskell.nix が提供する nixpkgsArgs を渡す。
  # nixpkgs に渡されるこれらの引数には、いくつかのパッチが含まれ、
  # また haskell.nixの機能そのものをオーバーレイとして使用します。
  pkgs ? import
    haskellNix.sources.nixpkgs-unstable haskellNix.nixpkgsArgs
}:
  pkgs
