{ pkgs, ... }:
{
  home.packages = with pkgs; [
    wl-clipboard
    grim
    slurp

    brightnessctl
    playerctl

    hyprcursor
    kdePackages.breeze

    awww
  ];

  home.file.".config/hypr" = {
    source = ./config;
    recursive = true;
    force = true;
  };
}
