{ inputs, pkgs, ... }:
{
  home.packages = [
    inputs.awallpicker.packages.${pkgs.system}.default
  ];
}
