{ pkgs, ... }:
{
  services.desktopManager.plasma6.enable = true;
  programs.kde-pim.enable = false;

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    plasma-browser-integration
    plasma-workspace-wallpapers
    konsole
    qttools
    ark
    elisa
    gwenview
    okular
    kate
    ktexteditor
    khelpcenter
    dolphin
    dolphin-plugins
    spectacle
    ffmpegthumbs
    krdp
    kconfig
    qtbase
    plasma-keyboard
    qtvirtualkeyboard

    discover
  ];
}
