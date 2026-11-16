{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    cider-2
    loupe

    (mpv.override {
      youtubeSupport = false;
      scripts = with mpvScripts; [
        thumbfast
        mpris
        autoload
        memo
        mpv-cheatsheet-ng
      ];
    })
  ];

  programs.obs-studio.enable = true;
}
