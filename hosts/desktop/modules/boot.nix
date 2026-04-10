{ ... }:
{
  imports = [
    ../../../modules/shared/boot/grub.nix
    ../../../modules/shared/boot/kernel.nix
    ../../../modules/shared/boot/plymouth.nix
    ../../../modules/shared/boot/systemd.nix
    ../../../modules/shared/boot/windows.nix
  ];

  boot.windows.uuid = "2E87-A21C";
}
