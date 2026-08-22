{
  lib,
  self,
  pkgs,
  ...
}:
{
  options.matugen = lib.mkOption {
    type = lib.types.submodule {
      options = {
        enable = lib.mkOption {
          type = lib.types.bool;
          default = true;
        };
        package = lib.mkOption {
          type = lib.types.package;
          default = pkgs.matugen;
        };
      };
    };
  };

  config = {
    home.username = "leif";
    home.homeDirectory = "/home/leif";

    home.stateVersion = "26.05";

    nixpkgs.config.allowUnfree = true;

    programs.nh.flake = lib.mkForce "~/dotfiles";

    programs.zsh.shellAliases = lib.mkForce {
      rebuild = "nh os switch ~/dotfiles#nixos";
      update = "nh os switch --update ~/dotfiles#nixos";
      generations = "nix profile history";
      gcl = "nh clean all --keep-last 5";
    };

    matugen = {
      enable = true;
      package = pkgs.matugen;
    };
  };

  imports = [
    # cli
    ./config/cli/btop.nix
    ./config/cli/cde.nix
    ./config/cli/fastfetch.nix
    ./config/cli/git.nix
    ./config/cli/lazygit.nix
    ./config/cli/nix.nix

    # gui
    ./config/gui/awallpicker.nix
    ./config/gui/cider.nix
    ./config/gui/essential.nix
    ./config/gui/firefox.nix
    ./config/gui/games.nix
    ./config/gui/jan.nix
    ./config/gui/jetbrains.nix
    ./config/gui/kitty.nix
    ./config/gui/obs.nix
    ./config/gui/pear.nix
    ./config/gui/prismlauncher.nix
    ./config/gui/vicinae.nix
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

    # wm
    ./config/wm/hyprland.nix
    ./config/wm/noctalia.nix
  ];
}
