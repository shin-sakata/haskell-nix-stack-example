{ pkgs ? import ./nix/pkgs.nix {}
}:
pkgs.mkShell {
    packages = [
      pkgs.niv
      pkgs.stack
    ];
}
