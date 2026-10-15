{ inputs, pkgs, ... }:
{
  environment.systemPackages = [
    inputs.awallpicker.packages.${pkgs.system}.default
  ];
}
