{ config, pkgs, ... }:

{
  home.packages = [
    pkgs.ccache
  ];

  xdg.configFile = {
    "ccache/ccache.conf".text = ''
    max_size = 50G
    '';
  };
}
