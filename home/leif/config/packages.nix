{ pkgs, ... }:
{
  home.packages = with pkgs; [
    lazygit
    micro
    fzf

    fresh-editor

    nautilus
    (celluloid.override { youtubeSupport = false; })
    qview
    
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
