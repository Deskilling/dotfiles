{ pkgs, ... }:
{
  home.packages = with pkgs; [
    librewolf
    zed-editor
    lazygit
    micro
    fzf

    nil
    nixd

    bottles
    r2modman

    cider-2
    xclicker
    cemu
    haruna
    obs-studio
    prismlauncher
    labymod-launcher

    systemdgenie
    kdePackages.kdenlive
    kdePackages.filelight
  ];
}
