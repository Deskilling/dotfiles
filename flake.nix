{
  description = "Saftig Knaftig";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/d233902339c02a9c334e7e593de68855ad26c4cb";
    };

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    noctalia = {
      url = "github:noctalia-dev/noctalia-shell/v5";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      noctalia,
      ...
    }:
    {
      nixosConfigurations = {
        nixos = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = { inherit self; };
          modules = [
            ./hosts/desktop/default.nix
            home-manager.nixosModules.home-manager
            {
              home-manager.sharedModules = [
                noctalia.homeModules.default
              ];
            }
          ];
        };
      };

      homeConfigurations = {
        "leif@mac" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages."aarch64-darwin";
          extraSpecialArgs = { inherit self; };
          modules = [ ./hosts/mac/default.nix ];
        };
      };
    };
}
