{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nautilus
    mpv
    qview
    bazaar
  ];
}
