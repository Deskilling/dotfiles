{ pkgs, ... }:
{
  users.users.leif = {
    isNormalUser = true;
    description = "Leif";
    shell = pkgs.zsh;
    extraGroups = [
      "networkmanager"
      "wheel"
      "flatpak"
      "video"
      "audio"
    ];
  };
}
