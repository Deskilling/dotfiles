{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    papers
    file-roller
    gnome-disk-utility
    baobab
  ];
}
