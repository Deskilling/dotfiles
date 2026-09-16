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

        self.nixosModules.essential
        self.nixosModules.hyprland
        self.nixosModules.steam

        {
          home-manager.extraSpecialArgs = {
            inherit inputs;
          };

          home-manager.users.leif = {
            imports = [
              self.homeManagerModules.leif
              ../home/leif/desktop.nix

              self.homeManagerModules.btop
              self.homeManagerModules.cde
              self.homeManagerModules.fastfetch
              self.homeManagerModules.git
              self.homeManagerModules.lazygit
              self.homeManagerModules.nix

              self.homeManagerModules.awallpicker
              self.homeManagerModules.cider
              self.homeManagerModules.essential
              self.homeManagerModules.firefox
              self.homeManagerModules.games
              self.homeManagerModules.jetbrains
              self.homeManagerModules.kitty
              self.homeManagerModules.obs
              self.homeManagerModules.pear
              self.homeManagerModules.prismlauncher
              self.homeManagerModules.vesktop
              self.homeManagerModules.vicinae
              self.homeManagerModules.vscodium
              self.homeManagerModules.zed

              self.homeManagerModules.gtk
              self.homeManagerModules.matugen
              self.homeManagerModules.pointer

              self.homeManagerModules.hyprland
              self.homeManagerModules.noctalia
              self.homeManagerModules.quickshell

              self.homeManagerModules.shell
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
