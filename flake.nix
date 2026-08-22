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

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
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
    inputs@{
      flake-parts,
      ...
    }:

    let
      flakeParts = flake-parts.lib.mkFlake { inherit inputs; } {
        imports = [
          ./flake-modules/systems.nix
          ./flake-modules/nixos.nix
          ./flake-modules/home.nix
        ];
      };
    in
    flakeParts;
}
