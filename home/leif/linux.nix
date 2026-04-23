{
  lib,
  pkgs,
  ...
}:

{
  imports = [
    ./config/packages.nix

    ./config/btop.nix
    ./config/fastfetch.nix
    ./config/git.nix

    ./config/hyprland.nix
    ./config/noctalia.nix
    ./config/kitty.nix
    ./config/qt.nix
    ./config/gtk.nix
    ./config/librewolf.nix
    ./config/zed.nix

    ./config/shell.nix

    ./config/vesktop.nix
  ];

  home.username = "leif";
  home.homeDirectory = "/home/leif";

  home.stateVersion = "25.11";
}
