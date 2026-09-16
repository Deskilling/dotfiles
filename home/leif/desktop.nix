{ lib, ... }:
{
  home.username = "leif";
  home.homeDirectory = "/home/leif";

  programs.nh.flake = lib.mkForce "~/dotfiles";

  programs.zsh.shellAliases = lib.mkForce {
    rebuild = "nh os switch ~/dotfiles#leif@desktop";
    update = "nh os switch --update ~/dotfiles#leif@desktop";
  };
}
