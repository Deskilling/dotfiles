{
  inputs,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ./hardware-configuration.nix
    ../../modules/system/amd.nix
  ];

  # Windows dual boot (uuid from `lsblk -f`)
  boot.loader.grub.extraEntries = lib.mkBefore ''
    menuentry "Windows" {
      search --fs-uuid --set=root D0B4-0B0C
      chainloader /EFI/Microsoft/Boot/bootmgfw.efi
    }
  '';

  system.stateVersion = "26.05";

  environment.systemPackages = [
    inputs.saft.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

  hardware.logitech.wireless.enable = true;
  hardware.wooting.enable = true;
}
