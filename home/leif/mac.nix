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

    # shell
    ./config/shell/direnv.nix
    ./config/shell/fzf.nix
    ./config/shell/nh.nix
    ./config/shell/starship.nix
    ./config/shell/zoxide.nix
    ./config/shell/zsh.nix
];

  home.username = "leifhaberecht";
  home.homeDirectory = "/Users/leifhaberecht";
  home.stateVersion = "25.11";
}
