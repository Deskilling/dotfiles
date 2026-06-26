{ self, ... }:
{
  home.file.".config/noctalia/scripts" = {
    source = "${self}/home/leif/config/wm/noctalia/scripts";
    executable = true;
    force = true;
  };

  programs.noctalia = {
    enable = true;

    settings = {
      theme = {
        custom_palette = "matugen";
        mode = "dark";
        source = "custom";

        templates = {
          enable_builtin_templates = false;
          enable_community_templates = false;
        };
      };

      hooks = {
        wallpaper_changed = "~/.config/noctalia/scripts/wallpaper.sh";
      };

      bar = {
        default = {
          ends_margin = 130;
          background_opacity = 0.8;
          center = [ "workspaces" ];
          end = [
            "privacy"
            "tray"
            "notifications"
            "network"
            "bluetooth"
            "date"
            "clock"
            "session"
          ];

          start = [
            "media"
            "audio_visualizer"
          ];

          widget_spacing = 10;
        };

        order = [ "default" ];
      };

      control_center = {
        sidebar = "full";
      };

      shell = {
        panel = {
          control_center_placement = "floating";
        };

        settings_show_advanced = true;
      };

      wallpaper = {
        enabled = false;
      };

      weather = {
        auto_locate = true;
        enabled = false;
      };

      widget = {
        audio_visualizer = {
          centered = false;
          high_color = "on_primary";
          width = 200;
        };

        bluetooth = {
          hide_when_no_connected_device = true;
        };

        media = {
          max_length = 500;
        };

        notifications = {
          hide_when_no_unread = true;
        };

        privacy = {
          capsule = true;
          hide_inactive = true;
        };

        volume = {
          show_label = false;
        };

        workspaces = {
          active_pill_size = 3;
        };
      };
    };
  };
}
