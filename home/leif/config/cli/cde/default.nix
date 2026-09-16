{ inputs, pkgs, ... }:
{
  home.packages = [
    inputs.cde.packages.${pkgs.system}.default
  ];
}
