{ inputs, ... }:
{
  flake.nixosConfigurations = {
    nixos = inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = { inherit inputs; self = inputs.self; };
      modules = [
        ../hosts/desktop/default.nix
        inputs.home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.extraSpecialArgs = { inherit inputs; self = inputs.self; };
          home-manager.users.leif = { imports = [ ../home/leif/desktop.nix ]; };
        }
      ];
    };
  };
}
