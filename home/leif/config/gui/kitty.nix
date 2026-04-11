{ ... }:
{
  programs.kitty = {
    enable = true;

    settings = {
      font_family = "JetBrainsMono Nerd Font";
      bold_font = "JetBrainsMono Nerd Font Bold";
      italic_font = "JetBrainsMono Nerd Font Italic";
      bold_italic_font = "JetBrainsMono Nerd Font Bold Italic";

      font_size = 11.0;

      modify_font = "cell_height 110%";

      window_padding_width = 6.7;

      initial_window_width = "360c";
      initial_window_height = "50c";

      background_opacity = 0.85;
      background_blur = 1;

      draw_minimal_borders = "yes";

      cursor_shape = "beam";
      cursor_beam_thickness = 1.8;
      cursor_blink_interval = 0;

      tab_bar_edge = "bottom";
      tab_bar_style = "powerline";
      tab_powerline_style = "round";
      tab_title_template = " {title} ";

      mouse_hide_wait = 3.0;

      url_style = "curly";

      copy_on_select = "yes";

      repaint_delay = 10;
      input_delay = 3;
      sync_to_monitor = "yes";

      scrollback_lines = 10000;
      wheel_scroll_multiplier = 5.0;

      enable_audio_bell = "no";
      visual_bell_duration = 0.0;

      enabled_layouts = "horizontal,vertical";

      shell_integration = "enabled";

      foreground = "#cdd6f4";
      background = "#1e1e2e";
      selection_foreground = "#1e1e2e";
      selection_background = "#f5e0dc";

      cursor = "#f5e0dc";
      cursor_text_color = "#1e1e2e";

      scrollbar_handle_color = "#9399b2";
      scrollbar_track_color = "#45475a";

      url_color = "#f5e0dc";

      active_border_color = "#b4befe";
      inactive_border_color = "#6c7086";
      bell_border_color = "#f9e2af";

      active_tab_foreground = "#11111b";
      active_tab_background = "#cba6f7";
      inactive_tab_foreground = "#cdd6f4";
      inactive_tab_background = "#181825";
      tab_bar_background = "#11111b";

      color0 = "#45475a";
      color1 = "#f38ba8";
      color2 = "#a6e3a1";
      color3 = "#f9e2af";
      color4 = "#89b4fa";
      color5 = "#f5c2e7";
      color6 = "#94e2d5";
      color7 = "#bac2de";
      color8 = "#585b70";
      color9 = "#f38ba8";
      color10 = "#a6e3a1";
      color11 = "#f9e2af";
      color12 = "#89b4fa";
      color13 = "#f5c2e7";
      color14 = "#94e2d5";
      color15 = "#a6adc8";
    };

    keybindings = {
      "ctrl+t" = "new_tab_with_cwd";
      "ctrl+n" = "new_os_window_with_cwd";
      "ctrl+w" = "close_window";

      "ctrl+enter" = "launch --location=vsplit --cwd=current";
      "ctrl+l" = "next_layout";

      "ctrl+right" = "next_tab";
      "ctrl+left" = "previous_tab";

      "ctrl+1" = "goto_tab 1";
      "ctrl+2" = "goto_tab 2";
      "ctrl+3" = "goto_tab 3";

      "ctrl+shift+equal" = "change_font_size all +1.0";
      "ctrl+shift+minus" = "change_font_size all -1.0";
      "ctrl+shift+0" = "change_font_size all 0";
    };

    extraConfig = ''
      font_features JetBrainsMonoNF-Regular +liga +calt
      font_features JetBrainsMonoNF-Bold +liga +calt
    '';
  };
}
