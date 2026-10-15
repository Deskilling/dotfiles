{ pkgs, ... }:
{
  imports = [
    ./osu
    ./steam
  ];
  
  environment.systemPackages = with pkgs; [
    r2modman
    heroic
  ];
}
