{ config, pkgs, ... }:
{
  home.packages = with pkgs; [
    lua-language-server
  ];

  programs.zed-editor = {
    enable = true;
    package = if stdenv.hostPlatform.isLinux then pkgs.zed-editor else null;

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
      lsp = {
        clangd = {
          binary = {
            arguments = [
              "--query-driver=/nix/store/**"
              "--compile-commands-dir=build"
            ];
          };
        };
      };

      outline_panel.dock = "right";
      git_panel.dock = "right";

      disable_ai = true;

      project_panel = {
        git_status_indicator = true;
        dock = "right";
      };

      title_bar.show_sign_in = false;

      format_on_save = "modifications";
      double_click_in_multibuffer = "open";
      base_keymap = "SublimeText";

      telemetry = {
        diagnostics = false;
        metrics = false;
        anthropic_retention = false;
      };

      icon_theme = "Catppuccin Mocha";

      auto_install_extensions = {
        cattpuccin = true;
        git_firefly = true;
        go_snippets = true;
        html = true;
        log = true;
        lua = true;
        make = true;
        nix = true;
        toml = true;
        xmake = true;
      };

      theme =
        if config.isEnabled.Matugen
        then "Matugen Dark Transparent"
        else "Catppuccin Mocha";
    };
  };
}
