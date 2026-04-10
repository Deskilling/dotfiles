{ lib, config, ... }:

{
  # lsblk -> uuid für windows boot entry
  options.boot.windows.uuid = lib.mkOption {
    type = lib.types.str;
    description = "uuid for windows boot entry";
  };

  config = {
    boot.loader.grub.extraEntries = ''
      menuentry "Windows" {
        search --fs-uuid --set=root ${config.boot.windows.uuid}
        chainloader /EFI/Microsoft/Boot/bootmgfw.efi
      }
    '';
  };
}
