{
  lib,
  self,
  ...
}:
{
  system.stateVersion = "25.11";

  imports = [
    ./hardware-configuration.nix

    ../../modules/profiles/plasma.nix

    ./modules/boot.nix
    ./modules/hardware.nix
    ./modules/packages.nix
    ./modules/services.nix
    ./modules/system.nix
  ];

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nix.settings = {
    max-jobs = "auto";
    cores = 0;
  };

  security.sudo.extraConfig = ''
    Defaults pwfeedback
  '';

  home-manager.users.leif = import ../../home/leif;
  home-manager.useGlobalPkgs = true;
  home-manager.extraSpecialArgs = {
    inherit self;
  };

  profiles.plasma.enable = true;
}
