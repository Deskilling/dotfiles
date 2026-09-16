{ lib, config, ... }:
{
  # lsblk -> uuid für windows boot entry
  options.boot.windows.uuid = lib.mkOption {
    type = lib.types.str;
    default = "";
    description = "UUID for Windows boot entry";
  };

  config = lib.mkIf (config.boot.windows.uuid != "") {
    boot.loader.grub.extraEntries = ''
      menuentry "Windows" {
        search --fs-uuid --set=root ${config.boot.windows.uuid}
        chainloader /EFI/Microsoft/Boot/bootmgfw.efi
      }
    '';
  };
}
