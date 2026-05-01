{ pkgs, ... }:
{
  home.packages = with pkgs; [
    lazygit
    micro
    fzf

    fresh-editor

    nautilus
    celluloid

    nil
    nixd
    nixfmt

    r2modman

    cider-2
    xclicker
    obs-studio
    prismlauncher
    labymod-launcher

    kdePackages.kdenlive
  ];
}
