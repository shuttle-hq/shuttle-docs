let
  # Pin to stable from https://status.nixos.org/
  nixpkgs = import (fetchTarball
    "https://github.com/NixOS/nixpkgs/archive/56911ef3403a9318b7621ce745f5452fb9ef6867.tar.gz")
    { };
in
  with nixpkgs;
  stdenv.mkDerivation {
    name = "docs_shell";
    buildInputs = with nixpkgs; [
      nodejs
    ];
  }
