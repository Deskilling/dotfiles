{ ... }:
{
  programs.plasma = {
    enable = true;

    workspace = {
      colorScheme = "BreezeDark";
      theme = "breeze-dark";
      cursor.theme = "breeze_cursors";
      iconTheme = "breeze-dark";
    };

    configFile."kdeglobals"."General" = {
      "AccentColor" = "146,110,228";
      "accentColorFromWallpaper" = false;
    };

    configFile."breezerc" = {
      "Common" = {
        "OutlineEnabled" = false;
        "ShadowColor" = "146,110,228";
        "ShadowSize" = "ShadowMedium";
        "ShadowStrength" = 204;
      };
      "Windeco" = {
        "TitleAlignment" = "AlignLeft";
      };
    };

    kwin = {
      effects = {
        wobblyWindows.enable = true;
        blur.enable = true;
        desktopSwitching.animation = "slide";
      };
      nightLight = {
        enable = true;
        temperature.night = 3500;
      };
    };

    panels = [
      {
        location = "bottom";
        floating = true;
        widgets = [
          "org.kde.plasma.kickoff"
          {
            name = "org.kde.plasma.icontasks";
            config.General.launchers = [
              "applications:systemsettings.desktop"
              "preferred://filemanager"
              "preferred://browser"
              "applications:kitty.desktop"
              "applications:steam.desktop"
              "applications:vesktop.desktop"
              "applications:cider-2.desktop"
              "applications:dev.zed.Zed.desktop"
            ];
          }
          "org.kde.plasma.systemtray"
          "org.kde.plasma.digitalclock"
          "org.kde.plasma.minimizeall"
        ];
      }
    ];
  };
}
