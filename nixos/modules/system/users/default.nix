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

  # Throwaway test account, remove it when you no longer need it
  users.users.guest = {
    isNormalUser = true;
    description = "Guest";
    initialPassword = "guest";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" ];
  };
}