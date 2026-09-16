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

  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-hyprland
      xdg-desktop-portal-gtk
    ];
    config = {
      hyprland = {
        default = [
          "hyprland"
          "gtk"
        ];
      };
    };
  };

  home.file.".config/hypr" = {
    source = ./config;
    recursive = true;
    force = true;
  };
}
