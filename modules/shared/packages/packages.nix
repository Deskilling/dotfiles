{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    fastfetch
    fontconfig
    ffmpeg
    unrar
    unzip
    btop
  ];

  programs.zsh.enable = true;
}
