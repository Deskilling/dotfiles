{ lib, ... }:
{
  ExtensionSettings =
    with builtins;
    let
      extension = shortId: uuid: defaultArea: {
        name = uuid;
        value = {
          install_url = "https://addons.mozilla.org/en-US/firefox/downloads/latest/${shortId}/latest.xpi";
          installation_mode = "force_installed";
          default_area = defaultArea;
          blocked_install_message = "mfg <3";
        };
      };
    in
    listToAttrs [
      (extension "*" "" "menupanel")
      (extension "sponsorblock" "sponsorBlocker@ajay.app" "menupanel")
      (extension "ublock-origin" "uBlock0@raymondhill.net" "navbar")
      (extension "bitwarden-password-manager" "{446900e4-71c2-419f-a6a7-df9c091e268b}" "navbar")
      (extension "pywalfox" "pywalfox@frewacom.org" "menupanel")
      (extension "consent-o-matic" "gdpr@cavi.au.dk" "menupanel")
    ];

  "3rdparty".Extensions = {
    "uBlock0@raymondhill.net".adminSettings = {
      userSettings = rec {
        uiTheme = "dark";
        uiAccentCustom = true;
        uiAccentCustom0 = "#f38ba8";
        cloudStorageEnabled = lib.mkForce false;

        importedLists = [
          "https://filters.adtidy.org/extension/ublock/filters/3.txt"
          "https://github.com/DandelionSprout/adfilt/raw/master/LegitimateURLShortener.txt"
          "https://raw.githubusercontent.com/gijsdev/ublock-hide-yt-shorts/master/list.txt"
        ];

        externalLists = lib.concatStringsSep "\n" importedLists;
      };

      selectedFilterLists = [
        "adguard-annoyance"
        "adguard-social"

        "easylist"
        "easyprivacy"

        "ublock-abuse"
        "ublock-badware"
        "ublock-filters"
        "ublock-privacy"
        "ublock-quick-fixes"
        "ublock-unbreak"

        "urlhaus-1"
      ];
    };
  };
}
