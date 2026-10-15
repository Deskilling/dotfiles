{ pkgs, ... }:
{
  programs.fish.enable = true;

  users.users.leif = {
    isNormalUser = true;
    description = "Leif";
    shell = pkgs.fish;
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };
}