{ pkgs, ... }:
{
  home.packages = with pkgs; [
    hyprlock
    hypridle
    wl-clipboard
    grim
    slurp
    brightnessctl
    playerctl
    polkit_gnome

    hyprcursor
    kdePackages.breeze
  ];

  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.kdePackages.breeze;
    name = "breeze_cursors";
    size = 24;
  };

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      env = [
        "XCURSOR_THEME,breeze_cursors"
        "XCURSOR_SIZE,24"
        "HYPRCURSOR_THEME,breeze_cursors"
        "HYPRCURSOR_SIZE,24"
        "QT_QPA_PLATFORMTHEME,qt6ct"
      ];

      monitor = "DP-1,2560x1440@143.86,0x0,1";
      exec-once = [
        "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1"
        "noctalia-shell"
        "hypridle"
      ];

      general = {
        gaps_in = 5;
        gaps_out = 10;
        border_size = 2;
        layout = "dwindle";
      };

      decoration = {
        rounding = 8;
        blur = {
          enabled = true;
          size = 6;
          passes = 2;
        };
      };

      animations = {
        enabled = true;
        bezier = [
          "overshot, 0.13, 0.99, 0.29, 1.1"
          "easeOutCubic, 0.215, 0.61, 0.355, 1.0"
        ];

        animation = [
          "windows, 1, 3, overshot, slide"
          "windowsOut, 1, 3, overshot, slide"
          "windowsMove, 1, 3, overshot"
          "fade, 1, 3, easeOutCubic"
          "workspaces, 1, 3, overshot, slide"
          "specialWorkspace, 1, 3, overshot, slide"
        ];
      };

      input = {
        kb_layout = "de";
        touchpad.natural_scroll = true;
      };

      "$mod" = "CTRL ALT SUPER";
      bind = [
        "$mod, SPACE, exec, noctalia-shell ipc call launcher toggle"

        "$mod, left, movefocus, l"
        "$mod, down, movefocus, d"
        "$mod, up, movefocus, u"
        "$mod, right, movefocus, r"
        "$mod, j, movewindow, l"
        "$mod, k, movewindow, d"
        "$mod, i, movewindow, u"
        "$mod, l, movewindow, r"
        "$mod, z, layoutmsg, tiling"
        "$mod, x, togglefloating"
        "$mod, f, fullscreen"
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, w, workspace, 8"
        "$mod, d, workspace, 9"
        "$mod, q, workspace, 10"
        "$mod, c, workspace, 11"
        "$mod, v, workspace, 12"
        "$mod, m, workspace, 13"
        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"
        "$mod SHIFT, 6, movetoworkspace, 6"
        "$mod SHIFT, 7, movetoworkspace, 7"
        "$mod SHIFT, w, movetoworkspace, 8"
        "$mod SHIFT, d, movetoworkspace, 9"
        "$mod SHIFT, q, movetoworkspace, 10"
        "$mod SHIFT, c, movetoworkspace, 11"
        "$mod SHIFT, v, movetoworkspace, 12"
        "$mod SHIFT, m, movetoworkspace, 13"

        "ALT, F4, killactive"

        ",XF86AudioRaiseVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"
        ",XF86AudioLowerVolume, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
        ",XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      ];

      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];
    };

    extraConfig = ''
      source = ~/.config/hypr/noctalia/noctalia-colors.conf
    '';
  };
}
