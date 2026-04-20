{
  lib,
  ...
}:

{
  imports = [
    ./config/packages.nix

    ./config/cli/btop.nix
    ./config/cli/fastfetch.nix
    ./config/cli/fish.nix
    ./config/cli/git.nix

    ./config/gui/kitty.nix
    ./config/gui/vesktop.nix

    ./config/wm/plasma.nix
    ./config/wm/hyprland/hyprland.nix
  ];
  home.username = "leif";
  home.homeDirectory = "/home/leif";
  home.stateVersion = "25.11";
}
