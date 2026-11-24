{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    mangowm = {
      url = "github:mangowm/mango";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    cde = {
      url = "github:Deskilling/cde";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    saft = {
      url = "git+file:///home/leif/.config/quickshell";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    { nixpkgs, ... }@inputs:
    let
      mkHost =
        name:
        nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          modules = [
            ./hosts/${name}
            ./modules
            { networking.hostName = name; }
          ];
        };
    in
    {
      nixosConfigurations = nixpkgs.lib.genAttrs [ "desktop" "vm" ] mkHost;
    };
}
