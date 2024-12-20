{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    ctags
    # cmake
    # clang-tools
    ninja
    gdb
    gnumake
    # python3
    zip
    unzip
  ];

  imports = [
    ./ccache.nix
  ];
}
