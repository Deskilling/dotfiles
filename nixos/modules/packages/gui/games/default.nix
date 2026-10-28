{ pkgs, ... }:
{
  imports = [
    ./osu
    ./steam
    ./prismlauncher
  ];

  environment.systemPackages = with pkgs; [
    r2modman
    heroic
  ];
}
