{
  lib,
  self,
  pkgs,
  ...
}:
{
  system.stateVersion = "25.11";

  imports = [
    ./hardware-configuration.nix

    ../../modules/profiles/hyprland.nix
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
    
    substituters = ["https://hyprland.cachix.org"];
    trusted-substituters = ["https://hyprland.cachix.org"];
    trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
  };

  security.sudo.extraConfig = ''
    Defaults pwfeedback
  '';

  security.polkit.extraConfig = ''
    polkit.addRule(function(action, subject) {
      if (subject.user === "leif") {
        return polkit.Result.YES;
      }
    });
  '';
  
  home-manager.users.leif = import ../../home/leif/linux.nix;
  home-manager.useGlobalPkgs = true;
  home-manager.extraSpecialArgs = {
    inherit self;
  };

  environment.etc."librewolf/policies/policies.json" = {
  source = "/etc/firefox/policies/policies.json";
  };
  
  profiles.plasma.enable = false;
  profiles.hyprland.enable = true;
}
