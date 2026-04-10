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

    ../../modules/shared/boot.nix
    ../../modules/shared/cleanup.nix
    ../../modules/shared/displaymanager.nix
    ../../modules/shared/fonts.nix
    ../../modules/shared/hardware.nix
    ../../modules/shared/locale.nix
    ../../modules/shared/networking.nix
    ../../modules/shared/packages.nix
    ../../modules/shared/update.nix
    ../../modules/shared/users.nix
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
