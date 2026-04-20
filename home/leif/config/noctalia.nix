{ pkgs, ... }:
{
  programs.noctalia-shell = {
    enable = true;
    settings = {
      ui.fontDefault = "JetBrainsMono Nerd Font";

      colorSchemes = {
        useWallpaperColors = true;
        darkMode = true;
        generationMethod = "tonal-spot";
        syncGsettings = true;
      };

      templates = {
        activeTemplates = [
        {
           "enabled" = true;
           "id" = "kitty";
        }
        {
           "enabled" = true;
           "id" = "hyprland";
        }
        ];
        enableUserTheming = false;
      };
    };
  };
}