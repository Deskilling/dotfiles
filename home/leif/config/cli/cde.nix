{ cde, pkgs, ... }:
{
  home.packages = [
    cde.packages.${pkgs.system}.default
  ];
}
