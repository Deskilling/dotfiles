{ self, pkgs, ... }:
{
  home.packages = [
    pkgs.matugen
  ];

  home.file.".config/matugen".source = "${self}/home/leif/config/theme/matugen";
}
