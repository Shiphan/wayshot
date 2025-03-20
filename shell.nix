# shell.nix

{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  name = "wayshot_devel_shell";
  buildInputs = with pkgs; [
    cargo
    rustc
    scdoc
    pkg-config

    libGL.dev
    libgbm
    wayland.dev
  ];
  RUST_BACKTRACE = 1;
}
