{ pkgs, ... }:
{
  home.packages = with pkgs; [
    librewolf
    lazygit
    micro
    fzf

    nil
    nixd
    nixfmt

    bottles
    r2modman

    cider-2
    xclicker
    haruna
    obs-studio
    prismlauncher
    labymod-launcher

    systemdgenie
    kdePackages.kdenlive
    kdePackages.filelight
  ];
}
