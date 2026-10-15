{ pkgs, ... }:
{
  xdg.portal.wlr.settings.screencast = {
    chooser_type = "dmenu";
    chooser_cmd = "${pkgs.rofi}/bin/rofi -dmenu -p Share";
  };

  environment.sessionVariables.GTK_USE_PORTAL = "1";
}
