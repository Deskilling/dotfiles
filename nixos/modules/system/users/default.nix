{ pkgs, ... }:
{
  programs.zsh.enable = true;

  users.users.leif = {
    isNormalUser = true;
    description = "Leif";
    shell = pkgs.zsh;
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };
}