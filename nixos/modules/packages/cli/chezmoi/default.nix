{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    chezmoi
  ];
}
