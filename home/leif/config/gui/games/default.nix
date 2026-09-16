{ pkgs, ... }:
{
  home.packages = with pkgs; [
    r2modman
    heroic
    osu-lazer-bin
  ];
}
