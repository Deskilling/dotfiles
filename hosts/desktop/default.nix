{
  lib,
  self,
  pkgs,
  ...
}:
{
  system.stateVersion = "26.05";

  imports = [
    ./hardware-configuration.nix

    ../../modules/profiles/hyprland.nix

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

  nixpkgs.config.permittedInsecurePackages = [
    "electron-40.10.5"
  ];

  nix.settings = {
    max-jobs = "auto";
    cores = 0;
    auto-optimise-store = true;

    trusted-substituters = [
      "https://hyprland.cachix.org"
    ];
    trusted-public-keys = [
      "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
    ];
    extra-substituters = [
      "https://noctalia.cachix.org"
    ];
    extra-trusted-public-keys = [
      "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="
    ];
  };

  security.sudo.extraConfig = ''
    Defaults pwfeedback
  '';

  environment.etc."librewolf/policies/policies.json" = {
    source = "/etc/firefox/policies/policies.json";
  };

  profiles.hyprland.enable = true;
}
