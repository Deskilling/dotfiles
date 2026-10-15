{ inputs, pkgs, ... }:
{
  environment.systemPackages = [
    inputs.cde.packages.${pkgs.system}.default
  ];
}
