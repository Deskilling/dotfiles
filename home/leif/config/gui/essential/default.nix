{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bazaar
    mpv
    nautilus
    qview
  ];
}
