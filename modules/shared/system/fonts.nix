{ pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      inter
      noto-fonts
      noto-fonts-color-emoji
      nerd-fonts.jetbrains-mono
    ];

    fontconfig = {
      enable = true;

      defaultFonts = {
        monospace = [ "JetBrainsMono Nerd Font" ];
        serif = [ "Noto Serif" ];
        sansSerif = [
          "Inter"
          "Noto Sans"
        ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };
}
