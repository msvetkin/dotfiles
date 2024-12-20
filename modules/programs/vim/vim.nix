{ config, pkgs, ... }:
let
  vimCommon = import ./common.nix {
    inherit pkgs;
  };
  cocConfig = import ./coc.nix {
    inherit pkgs;
  };

in {
  programs.vim = {
    enable = vimCommon.enable;
    defaultEditor = vimCommon.defaultEditor;
    plugins = vimCommon.plugins ++ cocConfig.plugins;
    extraConfig = vimCommon.extraConfig + "\n" + cocConfig.extraConfig;
  };

  home.packages = cocConfig.packages;
}
