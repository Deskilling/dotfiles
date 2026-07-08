{ pkgs, ... }:
{
  home.packages = with pkgs; [
    qt6Packages.qtstyleplugin-kvantum
    kdePackages.qtstyleplugin-kvantum
  ];

  qt = {
    enable = true;
  };
}
