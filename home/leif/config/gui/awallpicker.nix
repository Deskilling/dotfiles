{ awallpicker, pkgs, ... }:
{
  home.packages = [
    awallpicker.packages.${pkgs.system}.default
  ];
}
