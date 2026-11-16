{ pkgs, ... }:
{
  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    kernelParams = [
      "quiet"
      "splash"
    ];

    consoleLogLevel = 0;

    plymouth = {
      enable = true;
      theme = "fade-in";
    };

    loader = {
      efi.canTouchEfiVariables = true;
      grub = {
        enable = true;
        efiSupport = true;
        device = "nodev";
        splashImage = null;
        theme = pkgs.minimal-grub-theme;
        extraEntries = ''
          menuentry "Reboot into BIOS/UEFI" {
            fwsetup
          }
        '';
      };
    };
  };
}
