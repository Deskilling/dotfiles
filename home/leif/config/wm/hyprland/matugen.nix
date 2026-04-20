# matugen.nix
{ pkgs, config, ... }:
{
  home.packages = with pkgs; [
    matugen
    glib
  ];

  xdg.configFile = {
    "matugen/config.toml".text = ''
      [config]
      [templates.hyprland-colors]
      input_path = "${config.xdg.configHome}/matugen/templates/hyprland-colors.conf"
      output_path = "${config.xdg.configHome}/hypr/colors.conf"
      [templates.kitty]
      input_path = "${config.xdg.configHome}/matugen/templates/kitty.conf"
      output_path = "${config.xdg.configHome}/kitty/colors.conf"
    '';

    "matugen/templates/hyprland-colors.conf".text = ''
      $primary = {{colors.primary.default.hex_stripped}}
      $background = {{colors.background.default.hex_stripped}}
      $foreground = {{colors.on_background.default.hex_stripped}}
      $surface = {{colors.surface.default.hex_stripped}}
      $error = {{colors.error.default.hex_stripped}}
      $primary_rgba = rgba({{colors.primary.default.hex_stripped}}ff)
      $surface_rgba = rgba({{colors.surface.default.hex_stripped}}ff)
    '';

    "matugen/templates/kitty.conf".text = ''
      background #{{colors.background.default.hex_stripped}}
      foreground #{{colors.on_background.default.hex_stripped}}
      selection_background #{{colors.primary.default.hex_stripped}}
      selection_foreground #{{colors.on_primary.default.hex_stripped}}
      cursor #{{colors.primary.default.hex_stripped}}
      url_color #{{colors.secondary.default.hex_stripped}}

      # normal colors
      color0  #{{colors.surface.default.hex_stripped}}
      color1  #{{colors.error.default.hex_stripped}}
      color2  #{{colors.primary.default.hex_stripped}}
      color3  #{{colors.tertiary.default.hex_stripped}}
      color4  #{{colors.secondary.default.hex_stripped}}
      color5  #{{colors.tertiary.default.hex_stripped}}
      color6  #{{colors.secondary.default.hex_stripped}}
      color7  #{{colors.on_surface.default.hex_stripped}}

      # bright colors
      color8  #{{colors.surface_variant.default.hex_stripped}}
      color9  #{{colors.error_container.default.hex_stripped}}
      color10 #{{colors.primary_container.default.hex_stripped}}
      color11 #{{colors.tertiary_container.default.hex_stripped}}
      color12 #{{colors.secondary_container.default.hex_stripped}}
      color13 #{{colors.tertiary_container.default.hex_stripped}}
      color14 #{{colors.secondary_container.default.hex_stripped}}
      color15 #{{colors.on_surface_variant.default.hex_stripped}}
    '';
  };
}
