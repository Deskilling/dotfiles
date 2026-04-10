{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    fastfetch
    fontconfig
    ffmpeg
    unrar
    btop
  ];
}
