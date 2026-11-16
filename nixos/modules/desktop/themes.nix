{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    adw-gtk3
    adwaita-icon-theme
    hicolor-icon-theme
    papirus-icon-theme
    fluent-icon-theme
    gnome-themes-extra
    shared-mime-info
    librsvg
    matugen
  ];

  programs.dconf.profiles.user.databases = [
    {
      settings."org/gnome/desktop/interface" = {
        icon-theme = "Fluent-dark";
        gtk-theme = "adw-gtk3-dark";
        color-scheme = "prefer-dark";
      };
    }
  ];
}
