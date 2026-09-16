{ self, inputs, ... }:

{
  flake.nixosConfigurations."leif@desktop" =
    inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      specialArgs = {
        inherit inputs;
      };

      modules = [
        ../hosts/desktop
        inputs.home-manager.nixosModules.home-manager

        self.nixosModules.audio
        self.nixosModules.bluetooth
        self.nixosModules.boot
        self.nixosModules.displaymanager
        self.nixosModules.flatpak
        self.nixosModules.fonts
        self.nixosModules.gvfs
        self.nixosModules.hardware
        self.nixosModules.keyd
        self.nixosModules.locale
        self.nixosModules.network
        self.nixosModules.nix-ld
        self.nixosModules.users

        {
          home-manager.users.leif = {
            imports = [
              self.homeManagerModules.leif
              ../home/leif/desktop.nix

              self.homeManagerModules.zed
            ];
          };
        }
      ];
    };

  flake.homeConfigurations."leif@mac" =
    inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = inputs.nixpkgs.legacyPackages.aarch64-darwin;

      extraSpecialArgs = {
        inherit inputs;
      };

      modules = [
        self.homeManagerModules.leif
        ../home/leif/mac.nix

        self.homeManagerModules.shell
        self.homeManagerModules.zed
      ];
    };
}
