{
  lib,
  pkgs,
  ...
}:
{
  imports = [
    # cli
    ./config/cli/btop.nix
    ./config/cli/fastfetch.nix
    ./config/cli/git.nix
    ./config/cli/lazygit.nix
    ./config/cli/nix.nix

    # gui
    ./config/gui/cider.nix
    ./config/gui/essential.nix
    ./config/gui/firefox.nix
    ./config/gui/games.nix
    ./config/gui/jetbrains.nix
    ./config/gui/kitty.nix
    ./config/gui/obs.nix
    ./config/gui/pear.nix
    ./config/gui/prismlauncher.nix
    ./config/gui/vesktop.nix
    ./config/gui/vscodium.nix
    ./config/gui/zed.nix

    # shell
    ./config/shell/direnv.nix
    ./config/shell/fzf.nix
    ./config/shell/nh.nix
    ./config/shell/starship.nix
    ./config/shell/zoxide.nix
    ./config/shell/zsh.nix

    # theme
    ./config/theme/matugen.nix
    ./config/theme/gtk.nix
    ./config/theme/pointer.nix
    ./config/theme/qt.nix

    # wm
    ./config/wm/hyprland.nix
    ./config/wm/noctalia.nix

  ];

  home.username = "leif";
  home.homeDirectory = "/home/leif";

  home.stateVersion = "26.05";
}
