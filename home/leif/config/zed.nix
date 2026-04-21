{ ... }:
{
  programs.zed-editor = {
    enable = true;
    mutableUserSettings = false;

    userSettings = {
      theme = "Noctalia Dark Transparent";
      icon_theme = "Catppuccin Mocha";
      title_bar = {
        show_sign_in = false;
        show_branch_icon = true;
      };

      status_bar = {
        cursor_position_button = false;
      };

      project_panel = {
        dock = "right";
      };

      disable_ai = true;
      diff_view_style = "unified";
      double_click_in_multibuffer = "open";
      autosave = "on_focus_change";
      auto_update = false;

      telemetry = {
        diagnostics = false;
        metrics = false;
      };
    };
  };
}
