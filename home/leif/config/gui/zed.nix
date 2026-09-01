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
      theme = if config.matugen.enable then "Matugen Dark Transparent" else "Catppuccin Mocha";
    };
  };

  home.file.".config/zed/settings.json".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/home/leif/config/gui/zed/settings.json";}
