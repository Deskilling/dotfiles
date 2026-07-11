{
  config,
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    lua-language-server
  ];

  programs.zed-editor = {
    enable = true;
    mutableUserSettings = false;
    mutableUserKeymaps = false;

    extensions = [
      "nix"
      "html"
      "toml"
      "git_firefly"
      "make"
      "lua"
      "log"
      "go_snippets"
      "xmake"

      "cattpuccin"
    ];

    userSettings = {
      theme = if config.matugen.enable then "matugen-dark" else "catppuccin-mocha";
      icon_theme = "Catppuccin Mocha";

      active_pane_modifiers = {
        border_size = 0.5;
        inactive_opacity = 0.8;
      };

      bottom_dock_layout = "full";

      auto_signature_help = true;

      base_keymap = "SublimeText";

      diagnostics_max_severity = "hint";

      disable_ai = true;

      load_direnv = "shell_hook";

      double_click_in_multibuffer = "open";

      gutter = {
        runnables = false;
      };

      minimap = {
        show = "auto";
      };

      tabs = {
        git_status = true;
        activate_on_close = "left_neighbour";
        show_diagnostics = "all";
      };

      diagnostics = {
        inline = {
          enabled = true;
        };
      };

      journal = {
        hour_format = "hour24";
      };

      file_types = {
        C = [
          "c"
          "h"
        ];
      };

      languages = {
        C = {
          format_on_save = "on";
        };

      };

      telemetry = {
        diagnostics = false;
        metrics = false;
      };

      terminal = {
        button = false;
      };

      title_bar = {
        show_user_picture = false;
        show_sign_in = false;
      };

      project_panel = {
        dock = "right";
      };
    };
  };
}
