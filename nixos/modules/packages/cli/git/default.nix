{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    keychain
  ];
}
