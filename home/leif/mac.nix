{
  lib,
  ...
}:

{
  home.username = "leifhaberecht";
  home.homeDirectory = "/Users/leifhaberecht";

  programs.nh.flake = lib.mkForce "/Users/leifhaberecht/dotfiles";

  programs.zsh.shellAliases = lib.mkForce {
    rebuild = "nh home switch --configuration leif@mac && sleep 1 && brew bundle --file='~/.Brewfile'";
    update = "nh home switch --update --configuration leif@mac && brew update && brew upgrade";
  };
}
