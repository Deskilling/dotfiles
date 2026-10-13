{ inputs, pkgs, ... }:
{
  imports = [ inputs.mangowm.nixosModules.mango ];

  programs.mango.enable = true;

  environment.systemPackages = with pkgs; [
    rio
    
    noctalia
    
    wl-clipboard
    brightnessctl
  ];
}