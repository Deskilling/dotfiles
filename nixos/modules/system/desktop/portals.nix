{pkgs, ...}:
{
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gnome
      xdg-desktop-portal-gtk
    ];
  };

  environment.sessionVariables.GTK_USE_PORTAL = "1";
}
