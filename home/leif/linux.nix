{
  lib,
  ...
}:

{
  imports = [
    ./config/packages.nix

    ./config/btop.nix
    ./config/fastfetch.nix
    ./config/fish.nix
    ./config/git.nix

    ./config/matugen.nix

    ./config/hyprland.nix
    ./config/kitty.nix

    ./config/vesktop.nix
  ];
  home.username = "leif";
  home.homeDirectory = "/home/leif";
  home.stateVersion = "25.11";
}
