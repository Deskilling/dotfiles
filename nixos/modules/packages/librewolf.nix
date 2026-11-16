{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    librewolf-bin
    pywalfox-native
  ];
}
