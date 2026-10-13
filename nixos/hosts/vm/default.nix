{ pkgs, ... }:
{
  imports = [

    ./hardware-configuration.nix
    ../../modules/system


    ../../modules/packages/cli
    ../../modules/packages/wm
    ../../modules/packages/gui
    ../../modules/packages/shell
  ];

  networking.hostName = "vm";

  nixpkgs.config.allowUnfree = true;

  boot.kernelParams = [ "video=Virtual-1:2560x1440" ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  services.openssh = {
    enable = true;
    settings.AllowUsers = [ "leif" ];
  };


  # NEVER TOUCH
  system.stateVersion = "26.05";
}
