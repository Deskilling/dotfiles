{
  lib,
  config,
  pkgs,
  ...
}:
{
  options.profiles.hyprland.enable = lib.mkEnableOption "Hyprland";
  config = lib.mkIf config.profiles.hyprland.enable {
    programs.hyprland = {
      enable = true;
      xwayland.enable = true;
    };
  };
}
