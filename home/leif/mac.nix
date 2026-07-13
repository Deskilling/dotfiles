{
  lib,
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
          default = null;
        };
      };
    };
  };

  config = {
    home.username = "leifhaberecht";
    home.homeDirectory = "/Users/leifhaberecht";
    home.stateVersion = "26.05";

    programs.nh.flake = lib.mkForce "/Users/leifhaberecht/Documents/Github/dotfiles";

    programs.zsh.shellAliases = lib.mkForce {
      rebuild = "nh home switch --configuration leif@mac";
      update = "nh home switch --update --configuration leif@mac";
      generations = "home-manager generations";
      gcl = "nh clean all";
    };

    matugen = {
      enable = false;
      package = null;
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
    ./config/gui/zed.nix

    # shell
    ./config/shell/direnv.nix
    ./config/shell/fzf.nix
    ./config/shell/nh.nix
    ./config/shell/starship.nix
    ./config/shell/zoxide.nix
    ./config/shell/zsh.nix
  ];
}
