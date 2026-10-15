{ inputs, pkgs, ... }:
{
  imports = [ inputs.mangowm.nixosModules.mango ];

  programs.mango.enable = true;

  environment.systemPackages = with pkgs; [
    rio
    
    noctalia

    rofi

    wlr-randr
    wl-clipboard
    brightnessctl
  ];
}