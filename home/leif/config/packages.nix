{ pkgs, ... }:
{
  home.packages = with pkgs; [
    librewolf
    lazygit
    micro
    fzf

    fresh-editor

    nautilus
    celluloid

    nil
    nixd
    nixfmt

    bottles
    r2modman

    cider-2
    xclicker
    obs-studio
    prismlauncher
    labymod-launcher

    kdePackages.kdenlive
  ];
}
