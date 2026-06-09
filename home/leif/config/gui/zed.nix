{ ... }:
{
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

      "cattpuccin"
    ];

    userSettings = {
      # I will add Noctalia back once the template is available again in v5
      theme = "Catppuccin Mocha";
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

      indent_guides = {
        enabled = true;
        coloring = "indent_aware";
      };

      journal = {
        hour_format = "hour24";
      };

      languages = {
        C = {
          format_on_save = "on";
        };

        Lua = {
          enable_language_server = false;
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
