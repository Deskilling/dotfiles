{ pkgs, ... }:
{
  programs.noctalia-shell = {
    enable = true;
    settings = {
      settingsVersion = 0;

      bar = {
        barType = "floating";
        backgroundOpacity = 0.43;
        density = "comfortable";

        widgets = {
          left = [
            {
              characterCount = 2;
              colorizeIcons = false;
              emptyColor = "secondary";
              enableScrollWheel = true;
              focusedColor = "primary";
              followFocusedScreen = true;
              fontWeight = "bold";
              groupedBorderOpacity = 1;
              hideUnoccupied = false;
              iconScale = 0.8;
              id = "Workspace";
              labelMode = "index";
              occupiedColor = "secondary";
              pillSize = 0.6;
              showApplications = true;
              showApplicationsHover = false;
              showBadge = true;
              showLabelsOnlyWhenOccupied = true;
              unfocusedIconsOpacity = 1;
            }
          ];
          center = [
            {
              compactMode = false;
              hideMode = "hidden";
              id = "MediaMini";
              maxWidth = 500;
              panelShowAlbumArt = true;
              scrollingMode = "hover";
              showAlbumArt = true;
              showArtistFirst = true;
              showProgressRing = true;
              showVisualizer = false;
              textColor = "none";
              useFixedWidth = false;
              visualizerType = "linear";
            }
            {
              colorName = "primary";
              hideWhenIdle = false;
              id = "AudioVisualizer";
              width = 200;
            }
          ];
          right = [
            { id = "plugin:privacy-indicator"; }
            { id = "Tray"; }
            { id = "Volume"; }
            { id = "Battery"; }
            {
              formatHorizontal = "HH:mm  ddd, MMM dd";
              id = "Clock";
            }
            { id = "ControlCenter"; }
          ];
        };
      };

      general = {
        compactLockScreen = true;
        lockScreenAnimations = true;
        passwordChars = true;
      };

      ui = {
        fontDefault = "JetBrainsMono Nerd Font";
        translucentWidgets = true;
      };

      location = {
        autoLocate = false;
        weatherEnabled = false;
      };

      calendar = {
        cards = [
          {
            enabled = true;
            id = "calendar-header-card";
          }
          {
            enabled = true;
            id = "calendar-month-card";
          }
          {
            enabled = false;
            id = "weather-card";
          }
        ];
      };

      colorSchemes = {
        useWallpaperColors = true;
      };

      nightLight = {
        enabled = true;
      };

      osd = {
        location = "bottom";
      };

      sessionMenu = {
        countdownDuration = 5000;
      };

      templates = {
        activeTemplates = [
          {
            enabled = true;
            id = "kitty";
          }
          {
            enabled = true;
            id = "hyprland";
          }
          {
            enabled = true;
            id = "gtk";
          }
          {
            enabled = true;
            id = "qt";
          }
          {
            enabled = true;
            id = "discord";
          }
          {
            enabled = true;
            id = "btop";
          }
        ];
      };

      appLauncher = {
        overviewLayer = true;
      };

      controlCenter = {
        shortcuts = {
          left = [
            { id = "Network"; }
            { id = "Bluetooth"; }
            { id = "WallpaperSelector"; }
            { id = "NoctaliaPerformance"; }
          ];
          right = [
            { id = "Notifications"; }
            { id = "KeepAwake"; }
            { id = "NightLight"; }
          ];
        };
        cards = [
          {
            enabled = true;
            id = "profile-card";
          }
          {
            enabled = true;
            id = "shortcuts-card";
          }
          {
            enabled = true;
            id = "audio-card";
          }
          {
            enabled = false;
            id = "brightness-card";
          }
          {
            enabled = false;
            id = "weather-card";
          }
          {
            enabled = true;
            id = "media-sysmon-card";
          }
        ];
      };

      dock = {
        pinnedStatic = true;
      };

      desktopWidgets = {
        enabled = true;
        gridSnap = true;
        monitorWidgets = [
          {
            name = "DP-1";
            widgets = [
              {
                diskPath = "/";
                id = "SystemStat";
                layout = "bottom";
                roundedCorners = true;
                scale = 1;
                showBackground = true;
                statType = "CPU";
                x = 2280;
                y = 80;
              }
              {
                diskPath = "/";
                id = "SystemStat";
                layout = "bottom";
                roundedCorners = true;
                scale = 1;
                showBackground = true;
                statType = "Memory";
                x = 2280;
                y = 240;
              }
              {
                diskPath = "/";
                id = "SystemStat";
                layout = "bottom";
                roundedCorners = true;
                scale = 1;
                showBackground = true;
                statType = "Network";
                x = 2280;
                y = 400;
              }
            ];
          }
        ];
      };
    };
  };
}
