{ inputs, ... }:
{
  nixpkgs.config = {
    allowUnfree = true;
  };

  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      max-jobs = "auto";
      cores = 0;
      trusted-users = [ "@wheel" ];
    };

    optimise.automatic = true;

    channel.enable = false;
    registry.nixpkgs.flake = inputs.nixpkgs;
    nixPath = [ "nixpkgs=${inputs.nixpkgs}" ];
  };

  programs.nh = {
    enable = true;
    flake = "~/dotfiles/nixos";
    clean = {
      enable = true;
      extraArgs = "--keep 5 --keep-since 7d";
    };
  };

  documentation = {
    nixos.enable = false;
    doc.enable = false;
    info.enable = false;
  };
}
