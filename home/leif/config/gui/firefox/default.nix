{ pkgs, config, ... }:
let
  betterfox = pkgs.fetchFromGitHub {
    owner = "yokoffing";
    repo = "Betterfox";
    rev = "150.0";
    hash = "sha256-elGsTJu+eSzyS9IAnQuEppyhdDkRQwggUP7aypuXRh8=";
  };
in
{
  home.packages = with pkgs; [
    pywalfox-native
  ];

  programs.firefox = {
    enable = true;
    configPath = "${config.xdg.configHome}/mozilla/firefox";

    policies = {
      SearchEngines = {
        Default = "DuckDuckGo";
      };

      Homepage = {
        URL = "about:blank";
        StartPage = "homepage";
      };

      NewTabPage = false;

      ExtensionSettings = {
        "uBlock0@raymondhill.net" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
          installation_mode = "force_installed";
        };
        "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/bitwarden-password-manager/latest.xpi";
          installation_mode = "force_installed";
        };
        "myallychou@gmail.com" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/youtube-recommended-videos/latest.xpi";
          installation_mode = "force_installed";
        };
        "gdpr@cavi.au.dk" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/consent-o-matic/latest.xpi";
          installation_mode = "force_installed";
        };
        "pywalfox@frewacom.org" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/pywalfox/latest.xpi";
          installation_mode = "force_installed";
        };
      };
    };

    profiles.default = {
      id = 0;
      isDefault = true;

      extraConfig = builtins.concatStringsSep "\n" [
        (builtins.readFile "${betterfox}/Securefox.js")
        (builtins.readFile "${betterfox}/Fastfox.js")
        (builtins.readFile "${betterfox}/Peskyfox.js")
        ''
          user_pref("browser.cache.disk.enable", true);
        ''
      ];

      settings = {
        "privacy.clearOnShutdown.history" = false;
        "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
      };
    };
  };
}
