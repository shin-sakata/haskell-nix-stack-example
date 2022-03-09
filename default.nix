{ pkgs ? import ./nix/pkgs.nix {}
}:
pkgs.haskell-nix.project {
  # 'cleanGit' は git が知っているファイルに基づいてソースディレクトリを掃除します。
  src = pkgs.haskell-nix.haskellLib.cleanGit {
    name = "haskell-nix-project";
    src = ./.;
  };
}
