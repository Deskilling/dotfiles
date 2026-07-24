{ inputs, self, ... }:
{
  flake.homeConfigurations = {
    "leif@nixos" = inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = inputs.nixpkgs.legacyPackages."x86_64-linux";
      modules = [ ../home/leif/desktop.nix ];
      extraSpecialArgs = { inherit inputs self; };
    };

    "leif@mac" = inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = inputs.nixpkgs.legacyPackages."aarch64-darwin";
      modules = [ ../home/leif/mac.nix ];
      extraSpecialArgs = { inherit inputs self; };
    };
  };
}
