{ self, inputs, ... }:

{
  flake.nixosConfigurations."leif@desktop" = inputs.nixpkgs.lib.nixosSystem {
    system = "x86_64-linux";

    specialArgs = {
      inherit inputs;
    };

    modules = [
      ../hosts/desktop
      inputs.home-manager.nixosModules.home-manager
    ]

    ++ (with self.nixosModules; [
      audio
      bluetooth
      boot
      displaymanager
      flatpak
      fonts
      gvfs
      hardware
      keyd
      locale
      network
      users
      essential

      hyprland
      steam
    ])

    ++ [
      self.nixosModules.nix-ld

      {
        home-manager.extraSpecialArgs = {
          inherit inputs;
        };

        home-manager.users.leif = {
          imports = [
            self.homeManagerModules.leif
            ../home/leif/desktop.nix
          ]

          ++ (with self.homeManagerModules; [
            btop
            cde
            fastfetch
            git
            lazygit
            nix

            awallpicker
            cider
            essential
            firefox
            games
            jetbrains
            kitty
            obs
            pear
            prismlauncher
            vesktop
            vicinae
            vscodium
            zed

            gtk
            matugen
            pointer

            hyprland
            noctalia
            quickshell

            shell
          ]);
        };
      }
    ];
  };

  flake.homeConfigurations."leif@mac" = inputs.home-manager.lib.homeManagerConfiguration {
    pkgs = inputs.nixpkgs.legacyPackages.aarch64-darwin;

    extraSpecialArgs = {
      inherit inputs;
    };

    modules = [
      self.homeManagerModules.leif
      ../home/leif/mac.nix
    ]

    ++ (with self.homeManagerModules; [
      shell
      zed
    ]);
  };
}
