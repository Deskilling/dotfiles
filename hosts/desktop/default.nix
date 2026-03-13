{ lib, username, ... }:
{
  imports = [
    ./hardware-configuration.nix
  ]
  ++ lib.filesystem.listFilesRecursive ../../modules/shared
  ++ lib.filesystem.listFilesRecursive ../../modules/profiles
  ++ [ ../../home/${username}/default.nix ];

  nixpkgs.config.allowUnfree = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nix.settings = {
    max-jobs = "auto";
    cores = 0;
  };

  system.stateVersion = "25.11";

  security.sudo.extraConfig = ''
    Defaults pwfeedback
  '';

  profiles.plasma.enable = true;
}
