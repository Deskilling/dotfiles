{
  description = "Saftig Knaftig";

  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-unstable";
    };

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    noctalia = {
      url = "github:noctalia-dev/noctalia";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    awallpicker = {
      url = "github:Deskilling/awallpicker";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    cde = {
      url = "github:Deskilling/cde";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      noctalia,
      awallpicker,
      cde,
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

              home-manager.extraSpecialArgs = {
                inherit awallpicker;
              };
            }
          ];
        };
      };

      homeConfigurations = {
        "leif@mac" = home-manager.lib.homeManagerConfiguration {
          pkgs = nixpkgs.legacyPackages."aarch64-darwin";
          extraSpecialArgs = { inherit self cde; };
          modules = [
            ./hosts/mac/default.nix
          ];
        };
      };
    };
}
