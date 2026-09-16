{ pkgs, ... }:
{
  boot.loader = {
    efi.canTouchEfiVariables = true;
    grub = {
      enable = true;
      efiSupport = true;
      device = "nodev";
      extraEntries = ''
        menuentry "Reboot into BIOS/UEFI" {
          fwsetup
        }
      '';
    };
  };

  boot.loader.grub.splashImage = null;
  boot.loader.grub.theme = pkgs.minimal-grub-theme;
}
