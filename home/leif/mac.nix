{
  lib,
  ...
}:

{
  home.username = "leifhaberecht";
  home.homeDirectory = "/Users/leifhaberecht";

  programs.nh.flake = lib.mkForce "/Users/leifhaberecht/Documents/Github/dotfiles";

  programs.zsh.shellAliases = lib.mkForce {
    rebuild = "nh home switch --configuration leif@mac";
    update = "nh home switch --update --configuration leif@mac";
  };
}
