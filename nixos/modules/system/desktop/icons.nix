{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    adwaita-icon-theme
    hicolor-icon-theme
    papirus-icon-theme
    fluent-icon-theme
    gnome-themes-extra
    shared-mime-info
    librsvg
  ];
}
