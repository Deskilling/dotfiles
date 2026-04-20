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
      include ~/.config/kitty/themes/noctalia.conf
    '';
  };
}