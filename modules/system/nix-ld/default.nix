{ pkgs, ... }:
{
  programs.nix-ld = {
    enable = true;
    libraries = [
      pkgs.hidapi
      pkgs.libusb1
    ];
  };
}
