{ pkgs, ... }:
{
  users.users.leif = {
    isNormalUser = true;
    description = "Leif";
    shell = pkgs.fish;
    extraGroups = [
      "networkmanager"
      "wheel"
      "flatpak"
      "video"
      "audio"
    ];
  };
}
