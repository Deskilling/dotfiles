{ pkgs, ... }:
{
  xdg.portal = {
    extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
    config.common.default = [ "gtk" ];
  };

  environment.systemPackages = with pkgs; [
    adw-gtk3
  ];

  environment.sessionVariables.GTK_USE_PORTAL = "1";
}
