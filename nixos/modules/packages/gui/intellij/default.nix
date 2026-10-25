{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    intellij-idea
  ];
}
