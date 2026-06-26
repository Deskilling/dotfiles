{
  lib,
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
    ./config/gui/zed.nix

    # shell
    ./config/shell/direnv.nix
    ./config/shell/fzf.nix
    ./config/shell/nh.nix
    ./config/shell/starship.nix
    ./config/shell/zoxide.nix
    ./config/shell/zsh.nix
  ];

  programs.nh.flake = lib.mkForce "/Users/leifhaberecht/Documents/Github/dotfiles";

  programs.zsh.shellAliases = lib.mkForce {
    rebuild = "nh home switch --configuration leif@mac";
    update = "nh home switch --update --configuration leif@mac";
    generations = "home-manager generations";
    gcl = "nh clean all";
  };

  home.username = "leifhaberecht";
  home.homeDirectory = "/Users/leifhaberecht";
  home.stateVersion = "26.05";
}
