{ pkgs, ... }:
{
  fonts = {
    enableDefaultPackages = true;

    packages = with pkgs; [
      inter
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-color-emoji
      nerd-fonts.jetbrains-mono
    ];

    fontconfig.defaultFonts = {
      monospace = [
        "JetBrainsMono Nerd Font"
        "DejaVu Sans Mono"
      ];
      serif = [ "Noto Serif" ];
      sansSerif = [
        "Inter"
        "Noto Sans"
      ];
      emoji = [ "Noto Color Emoji" ];
    };
  };
}