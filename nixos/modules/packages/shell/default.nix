{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    direnv
    starship
    zoxide
  ];
}
